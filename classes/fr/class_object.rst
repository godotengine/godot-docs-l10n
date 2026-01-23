:github_url: hide

.. _class_Object:

Object
======

**Hérité par :** :ref:`AudioServer<class_AudioServer>`, :ref:`CameraServer<class_CameraServer>`, :ref:`ClassDB<class_ClassDB>`, :ref:`DisplayServer<class_DisplayServer>`, :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>`, :ref:`EditorInterface<class_EditorInterface>`, :ref:`EditorPaths<class_EditorPaths>`, :ref:`EditorSelection<class_EditorSelection>`, :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`, :ref:`EditorVCSInterface<class_EditorVCSInterface>`, :ref:`Engine<class_Engine>`, :ref:`EngineDebugger<class_EngineDebugger>`, :ref:`FramebufferCacheRD<class_FramebufferCacheRD>`, :ref:`GDExtensionManager<class_GDExtensionManager>`, :ref:`Geometry2D<class_Geometry2D>`, :ref:`Geometry3D<class_Geometry3D>`, :ref:`GodotInstance<class_GodotInstance>`, :ref:`Input<class_Input>`, :ref:`InputMap<class_InputMap>`, :ref:`IP<class_IP>`, :ref:`JavaClassWrapper<class_JavaClassWrapper>`, :ref:`JavaScriptBridge<class_JavaScriptBridge>`, :ref:`JNISingleton<class_JNISingleton>`, :ref:`JSONRPC<class_JSONRPC>`, :ref:`MainLoop<class_MainLoop>`, :ref:`Marshalls<class_Marshalls>`, :ref:`MovieWriter<class_MovieWriter>`, :ref:`NativeMenu<class_NativeMenu>`, :ref:`NavigationMeshGenerator<class_NavigationMeshGenerator>`, :ref:`NavigationServer2D<class_NavigationServer2D>`, :ref:`NavigationServer2DManager<class_NavigationServer2DManager>`, :ref:`NavigationServer3D<class_NavigationServer3D>`, :ref:`NavigationServer3DManager<class_NavigationServer3DManager>`, :ref:`Node<class_Node>`, :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>`, :ref:`OpenXRInteractionProfileMetadata<class_OpenXRInteractionProfileMetadata>`, :ref:`OS<class_OS>`, :ref:`Performance<class_Performance>`, :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`, :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`, :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`, :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`, :ref:`PhysicsServer2D<class_PhysicsServer2D>`, :ref:`PhysicsServer2DManager<class_PhysicsServer2DManager>`, :ref:`PhysicsServer3D<class_PhysicsServer3D>`, :ref:`PhysicsServer3DManager<class_PhysicsServer3DManager>`, :ref:`PhysicsServer3DRenderingServerHandler<class_PhysicsServer3DRenderingServerHandler>`, :ref:`ProjectSettings<class_ProjectSettings>`, :ref:`RefCounted<class_RefCounted>`, :ref:`RenderData<class_RenderData>`, :ref:`RenderingDevice<class_RenderingDevice>`, :ref:`RenderingServer<class_RenderingServer>`, :ref:`RenderSceneData<class_RenderSceneData>`, :ref:`ResourceLoader<class_ResourceLoader>`, :ref:`ResourceSaver<class_ResourceSaver>`, :ref:`ResourceUID<class_ResourceUID>`, :ref:`ScriptLanguage<class_ScriptLanguage>`, :ref:`ShaderIncludeDB<class_ShaderIncludeDB>`, :ref:`TextServerManager<class_TextServerManager>`, :ref:`ThemeDB<class_ThemeDB>`, :ref:`TileData<class_TileData>`, :ref:`Time<class_Time>`, :ref:`TranslationServer<class_TranslationServer>`, :ref:`TreeItem<class_TreeItem>`, :ref:`UndoRedo<class_UndoRedo>`, :ref:`UniformSetCacheRD<class_UniformSetCacheRD>`, :ref:`WorkerThreadPool<class_WorkerThreadPool>`, :ref:`XRServer<class_XRServer>`, :ref:`XRVRS<class_XRVRS>`

Classe de base pour toutes les autres classes du moteur.

.. rst-class:: classref-introduction-group

Description
-----------

Un type de :ref:`Variant<class_Variant>` avancé. Toutes les classes du moteur héritent d'Object. Chaque classe peut définir de nouvelles propriétés, méthodes ou signaux, disponibles pour toutes les classes héritantes. Par exemple, une instance de :ref:`Sprite2D<class_Sprite2D>` peut appeler :ref:`Node.add_child()<class_Node_method_add_child>` parce qu'elle hérite de :ref:`Node<class_Node>`.

Vous pouvez créer de nouvelles instances en utilisant ``Object.new()`` en GDScript, ou ``new GodotObject`` dans C#.

Pour supprimer une instance objet, appelez :ref:`free()<class_Object_method_free>`. Cela est nécessaire pour la plupart des classes héritant d'Objet, parce qu'ils ne gèrent pas la mémoire toute seules, et provoquera sinon des fuites de mémoire quand ils ne sont plus utilisés. Il y a quelques classes qui effectuent la gestion de la mémoire. Par exemple, :ref:`RefCounted<class_RefCounted>` (et par extension :ref:`Resource<class_Resource>`) se supprime lorsqu'il n'est plus référencé, et :ref:`Node<class_Node>` supprime ses enfants lorsqu'il est libéré.

Les objets peuvent avoir un :ref:`Script<class_Script>` attaché à eux. Une fois le :ref:`Script<class_Script>` instancié, il agit efficacement comme une extension à la classe de base, lui permettant de définir et d'hériter de nouvelles propriétés, méthodes et signaux.

Dans un :ref:`Script<class_Script>`, :ref:`_get_property_list()<class_Object_private_method__get_property_list>` peut être redéfini pour personnaliser les propriétés de plusieurs façons. Cela leur permet d'être disponibles pour l'éditeur, de les afficher sous forme de listes d'options, de sous-diviser en groupes, d'enregistrer sur disque, etc. Les langages de Scripting offrent des façons plus faciles de personnaliser les propriétés, comme avec l'annotation :ref:`@GDScript.@export<class_@GDScript_annotation_@export>`.

Godot est très dynamique. Le script d'un objet, et donc ses propriétés, méthodes et signaux, peuvent être modifiés à l'exécution. Pour cette raison, il peut y avoir des occasions où, par exemple, une propriété requise par une méthode peut ne pas exister. Pour éviter les erreurs durant l'exécution, voir des méthodes telles que :ref:`set()<class_Object_method_set>`, :ref:`get()<class_Object_method_get>`, :ref:`call()<class_Object_method_call>`, :ref:`has_method()<class_Object_method_has_method>`, :ref:`has_signal()<class_Object_method_has_signal>`, etc. Notez que ces méthodes sont **beaucoup** plus lentes que les références directes.

En GDScript, vous pouvez également vérifier si un nom de propriété, de méthode ou de signal donné existe dans un objet avec l'opérateur ``in``\  :

::

    var noeud = Node.new()
    print("name" in noeud)         # Affiche true
    print("get_parent" in noeud)   # Affiche true
    print("tree_entered" in noeud) # Affiche true
    print("inconnu" in noeud)      # Affiche false

Les notifications sont des constantes :ref:`int<class_int>` généralement envoyées et reçues par des objets. Par exemple, sur chaque trame rendue, le :ref:`SceneTree<class_SceneTree>` notifie les nœuds à l'intérieur de l'arbre avec un :ref:`Node.NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`. Les nœuds la reçoivent et peuvent appeler :ref:`Node._process()<class_Node_private_method__process>` pour se mettre à jour. Pour utiliser les notifications, voir :ref:`notification()<class_Object_method_notification>` et :ref:`_notification()<class_Object_private_method__notification>`.

Enfin, chaque objet peut également contenir des métadonnées (des données sur des données). :ref:`set_meta()<class_Object_method_set_meta>` peut être utile pour stocker des informations sur lesquelles l'objet lui-même ne dépend pas. Pour garder votre code propre, faire un usage excessif des métadonnées est déconseillé.

\ **Note :** Contrairement aux références à un :ref:`RefCounted<class_RefCounted>`, les références à un objet stocké dans une variable peuvent devenir invalides sans être définies à ``null``. Pour vérifier si un objet a été supprimé, ne le comparez *pas* avec ``null``. Au lieu de cela, utilisez :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`. Il est également recommandé d'hériter de :ref:`RefCounted<class_RefCounted>` pour les classes qui stockent des données au lieu d'**Object**.

\ **Note :** Le ``script`` n'est pas exposé comme la plupart des propriétés. Pour définir ou obtenir le :ref:`Script<class_Script>` d'un objet dans le code, utilisez :ref:`set_script()<class_Object_method_set_script>` et :ref:`get_script()<class_Object_method_get_script>` respectivement.

\ **Note :** Dans un contexte booléen, un **Object** évaluera à ``false`` s'il est égal à ``null`` ou s'il a été libéré. Dans le cas contraire, un **Object** évaluera toujours à ``true``. Voir aussi :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Introduction au classes d'objets <../engine_details/architecture/object_class>`

- :doc:`Quand et comment éviter d'utiliser des nœuds pour tout <../tutorials/best_practices/node_alternatives>`

- :doc:`Notifications d'objets <../tutorials/best_practices/godot_notifications>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`_get<class_Object_private_method__get>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual|                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_property_list<class_Object_private_method__get_property_list>`\ (\ ) |virtual|                                                                                                                                                |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_init<class_Object_private_method__init>`\ (\ ) |virtual|                                                                                                                                                                          |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`_iter_get<class_Object_private_method__iter_get>`\ (\ iter\: :ref:`Variant<class_Variant>`\ ) |virtual|                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_iter_init<class_Object_private_method__iter_init>`\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual|                                                                                                                              |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_iter_next<class_Object_private_method__iter_next>`\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual|                                                                                                                              |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_notification<class_Object_private_method__notification>`\ (\ what\: :ref:`int<class_int>`\ ) |virtual|                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_property_can_revert<class_Object_private_method__property_can_revert>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual|                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`_property_get_revert<class_Object_private_method__property_get_revert>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual|                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_set<class_Object_private_method__set>`\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |virtual|                                                                                     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_to_string<class_Object_private_method__to_string>`\ (\ ) |virtual|                                                                                                                                                                |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_validate_property<class_Object_private_method__validate_property>`\ (\ property\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual|                                                                                                |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_user_signal<class_Object_method_add_user_signal>`\ (\ signal\: :ref:`String<class_String>`, arguments\: :ref:`Array<class_Array>` = []\ )                                                                                      |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`call<class_Object_method_call>`\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`call_deferred<class_Object_method_call_deferred>`\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                                                |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`callv<class_Object_method_callv>`\ (\ method\: :ref:`StringName<class_StringName>`, arg_array\: :ref:`Array<class_Array>`\ )                                                                                                       |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_translate_messages<class_Object_method_can_translate_messages>`\ (\ ) |const|                                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`cancel_free<class_Object_method_cancel_free>`\ (\ )                                                                                                                                                                                |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`connect<class_Object_method_connect>`\ (\ signal\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ )                                                           |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`disconnect<class_Object_method_disconnect>`\ (\ signal\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ )                                                                                        |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`emit_signal<class_Object_method_emit_signal>`\ (\ signal\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                                                    |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`free<class_Object_method_free>`\ (\ )                                                                                                                                                                                              |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get<class_Object_method_get>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                        |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_class<class_Object_method_get_class>`\ (\ ) |const|                                                                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_incoming_connections<class_Object_method_get_incoming_connections>`\ (\ ) |const|                                                                                                                                              |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_indexed<class_Object_method_get_indexed>`\ (\ property_path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                                       |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_instance_id<class_Object_method_get_instance_id>`\ (\ ) |const|                                                                                                                                                                |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_meta<class_Object_method_get_meta>`\ (\ name\: :ref:`StringName<class_StringName>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const|                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_meta_list<class_Object_method_get_meta_list>`\ (\ ) |const|                                                                                                                                                                    |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_method_argument_count<class_Object_method_get_method_argument_count>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                              |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_method_list<class_Object_method_get_method_list>`\ (\ ) |const|                                                                                                                                                                |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_property_list<class_Object_method_get_property_list>`\ (\ ) |const|                                                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_script<class_Object_method_get_script>`\ (\ ) |const|                                                                                                                                                                          |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_signal_connection_list<class_Object_method_get_signal_connection_list>`\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_signal_list<class_Object_method_get_signal_list>`\ (\ ) |const|                                                                                                                                                                |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_translation_domain<class_Object_method_get_translation_domain>`\ (\ ) |const|                                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_connections<class_Object_method_has_connections>`\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_meta<class_Object_method_has_meta>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_method<class_Object_method_has_method>`\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_signal<class_Object_method_has_signal>`\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_user_signal<class_Object_method_has_user_signal>`\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_blocking_signals<class_Object_method_is_blocking_signals>`\ (\ ) |const|                                                                                                                                                        |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class<class_Object_method_is_class>`\ (\ class\: :ref:`String<class_String>`\ ) |const|                                                                                                                                         |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_connected<class_Object_method_is_connected>`\ (\ signal\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ ) |const|                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_queued_for_deletion<class_Object_method_is_queued_for_deletion>`\ (\ ) |const|                                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`notification<class_Object_method_notification>`\ (\ what\: :ref:`int<class_int>`, reversed\: :ref:`bool<class_bool>` = false\ )                                                                                                    |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`notify_property_list_changed<class_Object_method_notify_property_list_changed>`\ (\ )                                                                                                                                              |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`property_can_revert<class_Object_method_property_can_revert>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                        |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`property_get_revert<class_Object_method_property_get_revert>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                        |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_meta<class_Object_method_remove_meta>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                    |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_user_signal<class_Object_method_remove_user_signal>`\ (\ signal\: :ref:`StringName<class_StringName>`\ )                                                                                                                    |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set<class_Object_method_set>`\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                         |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_block_signals<class_Object_method_set_block_signals>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_deferred<class_Object_method_set_deferred>`\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                       |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_indexed<class_Object_method_set_indexed>`\ (\ property_path\: :ref:`NodePath<class_NodePath>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                        |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_message_translation<class_Object_method_set_message_translation>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                      |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_meta<class_Object_method_set_meta>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_script<class_Object_method_set_script>`\ (\ script\: :ref:`Variant<class_Variant>`\ )                                                                                                                                          |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_translation_domain<class_Object_method_set_translation_domain>`\ (\ domain\: :ref:`StringName<class_StringName>`\ )                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`to_string<class_Object_method_to_string>`\ (\ )                                                                                                                                                                                    |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`tr<class_Object_method_tr>`\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                      |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`tr_n<class_Object_method_tr_n>`\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Object_signal_property_list_changed:

.. rst-class:: classref-signal

**property_list_changed**\ (\ ) :ref:`🔗<class_Object_signal_property_list_changed>`

Émis lorsque :ref:`notify_property_list_changed()<class_Object_method_notify_property_list_changed>` est appelée.

.. rst-class:: classref-item-separator

----

.. _class_Object_signal_script_changed:

.. rst-class:: classref-signal

**script_changed**\ (\ ) :ref:`🔗<class_Object_signal_script_changed>`

Émis lorsque le script de l'objet est changé.

\ **Note :** Lorsque ce signal est émis, le nouveau script n'est pas encore initialisé. Si vous devez accéder au nouveau script, reportez les connexions à ce signal avec :ref:`CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Object_ConnectFlags:

.. rst-class:: classref-enumeration

enum **ConnectFlags**: :ref:`🔗<enum_Object_ConnectFlags>`

.. _class_Object_constant_CONNECT_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_DEFERRED** = ``1``

Deferred connections trigger their :ref:`Callable<class_Callable>`\ s on idle time (at the end of the frame), rather than instantly.

.. _class_Object_constant_CONNECT_PERSIST:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_PERSIST** = ``2``

Persisting connections are stored when the object is serialized (such as when using :ref:`PackedScene.pack()<class_PackedScene_method_pack>`). In the editor, connections created through the Signals dock are always persisting.

\ **Note:** Connections to lambda functions (that is, when the function code is embedded in the :ref:`connect()<class_Object_method_connect>` call) cannot be made persistent.

.. _class_Object_constant_CONNECT_ONE_SHOT:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_ONE_SHOT** = ``4``

Les connections uniques (one-shot) se déconnectent après l'émission.

.. _class_Object_constant_CONNECT_REFERENCE_COUNTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_REFERENCE_COUNTED** = ``8``

Les connexions comptées par référence peuvent être assignées au même :ref:`Callable<class_Callable>` plusieurs fois. Chaque déconnexion diminue le compteur interne. Le signal se déconnecte entièrement seulement lorsque le compteur atteint 0.

.. _class_Object_constant_CONNECT_APPEND_SOURCE_OBJECT:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_APPEND_SOURCE_OBJECT** = ``16``

On signal emission, the source object is automatically appended after the original arguments of the signal, regardless of the connected :ref:`Callable<class_Callable>`'s unbinds which affect only the original arguments of the signal (see :ref:`Callable.unbind()<class_Callable_method_unbind>`, :ref:`Callable.get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>`).

::

    extends Object

    signal test_signal

    func test():
        print(self) # Prints e.g. <Object#35332818393>
        test_signal.connect(prints.unbind(1), CONNECT_APPEND_SOURCE_OBJECT)
        test_signal.emit("emit_arg_1", "emit_arg_2") # Prints emit_arg_1 <Object#35332818393>

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Object_constant_NOTIFICATION_POSTINITIALIZE:

.. rst-class:: classref-constant

**NOTIFICATION_POSTINITIALIZE** = ``0`` :ref:`🔗<class_Object_constant_NOTIFICATION_POSTINITIALIZE>`

Notification reçue lorsque l'objet est initialisé, avant que son script soit attaché. Utilisé en interne.

.. _class_Object_constant_NOTIFICATION_PREDELETE:

.. rst-class:: classref-constant

**NOTIFICATION_PREDELETE** = ``1`` :ref:`🔗<class_Object_constant_NOTIFICATION_PREDELETE>`

Notification received when the object is about to be deleted. Can be used like destructors in object-oriented programming languages.

This notification is sent in reversed order.

.. _class_Object_constant_NOTIFICATION_EXTENSION_RELOADED:

.. rst-class:: classref-constant

**NOTIFICATION_EXTENSION_RELOADED** = ``2`` :ref:`🔗<class_Object_constant_NOTIFICATION_EXTENSION_RELOADED>`

Notification reçue lorsque l'objet termine le rechargement à chaud. Cette notification n'est envoyée que pour les classes d'extension et leurs dérivées.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Object_private_method__get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| :ref:`🔗<class_Object_private_method__get>`

Redéfinissez cette méthode pour personnaliser le comportement de :ref:`get()<class_Object_method_get>`. Devrait renvoyer la valeur de la propriété ``property`` donnée, ou ``null`` si ``property`` devrait être traitée normalement.

Combiné avec :ref:`_set()<class_Object_private_method__set>` et :ref:`_get_property_list()<class_Object_private_method__get_property_list>`, cette méthode permet de définir des propriétés personnalisées, ce qui est particulièrement utile pour les plugins éditeurs.

\ **Note :** Cette méthode n'est pas appelée pour obtenir des propriétés intégrées d'un objet, y compris les propriétés définies avec :ref:`@GDScript.@export<class_@GDScript_annotation_@export>`.


.. tabs::

 .. code-tab:: gdscript

    func _get(property) :
        if property == "fausse_propriete" :
            print("Obtenir ma propriété !")
            return 4

    func _get_property_list() :
        return [
            { "name" : "fausse_propriete", "type" : TYPE_INT }
        ]

 .. code-tab:: csharp

    public override Variant _Get(StringName property)
    {
        if (property == "FaussePropriete")
        {
            GD.Print("Obtenir ma propriété !") ;
            return 4 ;
        }
        return default ;
    }

    public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetPropertyList()
    {
        return
        [
            new Godot.Collections.Dictionary()
            {
                { "name", "FaussePropriete" },
                { "type", (int)Variant.Type.Int },
            },
        ] ;
    }



\ **Note :** Contrairement à d'autres méthodes virtuelles, cette méthode est appelée automatiquement pour chaque script qui l'écrase. Cela signifie que la mise en œuvre de base ne doit pas être appelée via ``super`` dans GDScript ou ses équivalents dans d'autres langues. La sous-classe la plus basse sera appelée en premier, avec des appels subséquents ascendant la hiérarchie de classe. La chaîne d'appels s'arrête sur la première classe qui retourne une valeur non-``null``.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_property_list**\ (\ ) |virtual| :ref:`🔗<class_Object_private_method__get_property_list>`

Override this method to provide a custom list of additional properties to handle by the engine.

Should return a property list, as an :ref:`Array<class_Array>` of dictionaries. The result is added to the array of :ref:`get_property_list()<class_Object_method_get_property_list>`, and should be formatted in the same way. Each :ref:`Dictionary<class_Dictionary>` must at least contain the ``name`` and ``type`` entries.

You can use :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` and :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` to customize the default values of the properties added by this method.

The example below displays a list of numbers shown as words going from ``ZERO`` to ``FIVE``, with ``number_count`` controlling the size of the list:


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends Node

    @export var number_count = 3:
        set(nc):
            number_count = nc
            numbers.resize(number_count)
            notify_property_list_changed()

    var numbers = PackedInt32Array([0, 0, 0])

    func _get_property_list():
        var properties = []

        for i in range(number_count):
            properties.append({
                "name": "number_%d" % i,
                "type": TYPE_INT,
                "hint": PROPERTY_HINT_ENUM,
                "hint_string": "ZERO,ONE,TWO,THREE,FOUR,FIVE",
            })

        return properties

    func _get(property):
        if property.begins_with("number_"):
            var index = property.get_slice("_", 1).to_int()
            return numbers[index]

    func _set(property, value):
        if property.begins_with("number_"):
            var index = property.get_slice("_", 1).to_int()
            numbers[index] = value
            return true
        return false

 .. code-tab:: csharp

    [Tool]
    public partial class MyNode : Node
    {
        private int _numberCount;

        [Export]
        public int NumberCount
        {
            get => _numberCount;
            set
            {
                _numberCount = value;
                _numbers.Resize(_numberCount);
                NotifyPropertyListChanged();
            }
        }

        private Godot.Collections.Array<int> _numbers = [];

        public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetPropertyList()
        {
            Godot.Collections.Array<Godot.Collections.Dictionary> properties = [];

            for (int i = 0; i < _numberCount; i++)
            {
                properties.Add(new Godot.Collections.Dictionary()
                {
                    { "name", $"number_{i}" },
                    { "type", (int)Variant.Type.Int },
                    { "hint", (int)PropertyHint.Enum },
                    { "hint_string", "Zero,One,Two,Three,Four,Five" },
                });
            }

            return properties;
        }

        public override Variant _Get(StringName property)
        {
            string propertyName = property.ToString();
            if (propertyName.StartsWith("number_"))
            {
                int index = int.Parse(propertyName.Substring("number_".Length));
                return _numbers[index];
            }
            return default;
        }

        public override bool _Set(StringName property, Variant value)
        {
            string propertyName = property.ToString();
            if (propertyName.StartsWith("number_"))
            {
                int index = int.Parse(propertyName.Substring("number_".Length));
                _numbers[index] = value.As<int>();
                return true;
            }
            return false;
        }
    }



\ **Note:** This method is intended for advanced purposes. For most common use cases, the scripting languages offer easier ways to handle properties. See :ref:`@GDScript.@export<class_@GDScript_annotation_@export>`, :ref:`@GDScript.@export_enum<class_@GDScript_annotation_@export_enum>`, :ref:`@GDScript.@export_group<class_@GDScript_annotation_@export_group>`, etc. If you want to customize exported properties, use :ref:`_validate_property()<class_Object_private_method__validate_property>`.

\ **Note:** If the object's script is not :ref:`@GDScript.@tool<class_@GDScript_annotation_@tool>`, this method will not be called in the editor.

\ **Note:** Unlike other virtual methods, this method is called automatically for every script that overrides it. This means that the base implementation should not be called via ``super`` in GDScript or its equivalents in other languages. The bottom-most sub-class will be called first, with subsequent calls ascending the class hierarchy.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__init:

.. rst-class:: classref-method

|void| **_init**\ (\ ) |virtual| :ref:`🔗<class_Object_private_method__init>`

Appelé lorsque le script de l'objet est instancié, souvent après l'initialisation de l'objet en mémoire (via ``Object.new()`` en GDScript, ou ``new GodotObject`` en C#). Elle peut également être définie pour prendre des paramètres. Cette méthode est semblable à un constructeur dans la plupart des langages de programmation.

\ **Note :** Si :ref:`_init()<class_Object_private_method__init>` est défini avec des paramètres *obligatoires*, l'Object avec le script ne peut être créé que directement. Si d'autres moyens (comme :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` ou :ref:`Node.duplicate()<class_Node_method_duplicate>`) sont utilisés, l'initialisation du script échouera.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_iter_get**\ (\ iter\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_get>`

Renvoie la valeur itérable courante. ``iter`` stocke l'état de l'itération, mais contrairement à :ref:`_iter_init()<class_Object_private_method__iter_init>` et :ref:`_iter_next()<class_Object_private_method__iter_next>`, l'état est censé être en lecture seule, donc il n'y a pas de wrapper :ref:`Array<class_Array>`.

\ **Astuce :** En GDScript, vous pouvez utiliser un sous-type de :ref:`Variant<class_Variant>` comme type de retour pour :ref:`_iter_get()<class_Object_private_method__iter_get>`. Le type spécifié sera utilisé pour définir le type de la variable d'itération dans les boucles ``for``, améliorant la sûreté du typage.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_init:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_iter_init**\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_init>`

Initialise l'itérateur. ``iter`` stocke l'état d'itération. Puisque GDScript ne supporte pas le passage d'arguments par référence, un tableau avec un seul élément est utilisé comme wrapper. Renvoie ``true`` tant que l'itérateur n'a pas atteint la fin.

::

    class MonIntervalle:
        var _de
        var _vers

        func _init(de, vers):
            assert(de <= vers)
            _de = de
            _vers = vers

        func _iter_init(iter):
            iter[0] = _de
            return iter[0] < _vers

        func _iter_next(iter):
            iter[0] += 1
            return iter[0] < _vers

        func _iter_get(iter):
            return iter

    func _ready():
        var mon_intervalle = MonIntervalle.new(2, 5)
        for x in mon_intervalle:
            print(x) # Affiche 2, 3, 4.

\ **Note :** Sinon, vous pouvez ignorer ``iter`` et utiliser l'état de l'objet à la place, voir `la documentation en ligne <../tutorials/scripting/gdscript/gdscript_advanced.html#custom-iterators>`__ par exemple. Notez que dans ce cas vous ne serez pas en mesure de réutiliser la même instance d'itérateur dans les boucles imbriquées. Assurez-vous également de réinitialiser l'état de l'itérateur dans cette méthode si vous voulez réutiliser la même instance plusieurs fois.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_next:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_iter_next**\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_next>`

Déplace l'itérateur à la prochaine itération. ``iter`` stocke l'état de l'itération. Puisque GDScript ne supporte pas les arguments de passés par référence, un tableau avec un seul élément est utilisé comme wrapper. Renvoie ``true`` tant que l'itérateur n'a pas atteint la fin.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__notification:

.. rst-class:: classref-method

|void| **_notification**\ (\ what\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_Object_private_method__notification>`

Called when the object receives a notification, which can be identified in ``what`` by comparing it with a constant. See also :ref:`notification()<class_Object_method_notification>`.


.. tabs::

 .. code-tab:: gdscript

    func _notification(what):
        if what == NOTIFICATION_PREDELETE:
            print("Goodbye!")

 .. code-tab:: csharp

    public override void _Notification(int what)
    {
        if (what == NotificationPredelete)
        {
            GD.Print("Goodbye!");
        }
    }



\ **Note:** The base **Object** defines a few notifications (:ref:`NOTIFICATION_POSTINITIALIZE<class_Object_constant_NOTIFICATION_POSTINITIALIZE>` and :ref:`NOTIFICATION_PREDELETE<class_Object_constant_NOTIFICATION_PREDELETE>`). Inheriting classes such as :ref:`Node<class_Node>` define a lot more notifications, which are also received by this method.

\ **Note:** Unlike other virtual methods, this method is called automatically for every script that overrides it. This means that the base implementation should not be called via ``super`` in GDScript or its equivalents in other languages. Call order depends on the ``reversed`` argument of :ref:`notification()<class_Object_method_notification>` and varies between different notifications. Most notifications are sent in the forward order (i.e. Object class first, most derived class last).

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__property_can_revert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_property_can_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| :ref:`🔗<class_Object_private_method__property_can_revert>`

Override this method to customize the given ``property``'s revert behavior. Should return ``true`` if the ``property`` has a custom default value and is revertible in the Inspector dock. Use :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` to specify the ``property``'s default value.

\ **Note:** This method must return consistently, regardless of the current value of the ``property``.

\ **Note:** Unlike other virtual methods, this method is called automatically for every script that overrides it. This means that the base implementation should not be called via ``super`` in GDScript or its equivalents in other languages. The bottom-most sub-class will be called first, with subsequent calls ascending the class hierarchy. The call chain will stop on the first class that returns ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__property_get_revert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_property_get_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| :ref:`🔗<class_Object_private_method__property_get_revert>`

Override this method to customize the given ``property``'s revert behavior. Should return the default value for the ``property``. If the default value differs from the ``property``'s current value, a revert icon is displayed in the Inspector dock.

\ **Note:** :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` must also be overridden for this method to be called.

\ **Note:** Unlike other virtual methods, this method is called automatically for every script that overrides it. This means that the base implementation should not be called via ``super`` in GDScript or its equivalents in other languages. The bottom-most sub-class will be called first, with subsequent calls ascending the class hierarchy. The call chain will stop on the first class that returns a non-``null`` value.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__set:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_set**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Object_private_method__set>`

Redéfinissez cette méthode pour personnaliser le comportement de :ref:`set()<class_Object_method_set>`. Doit définir la propriété ``property`` à la valeur ``value`` et renvoyer ``true``, ou ``false`` si la propriété ``property`` devrait être manipulée normalement. La façon *exacte* de configurer ``property`` dépend de l'implémentation de cette méthode.

Combiné avec :ref:`_get()<class_Object_private_method__get>` et :ref:`_get_property_list()<class_Object_private_method__get_property_list>`, cette méthode permet de définir des propriétés personnalisées, ce qui est particulièrement utile pour les plugins éditeurs.

\ **Note :** Cette méthode n'est pas appelée lorsque vous définissez des propriétés intégrées d'un objet, y compris les propriétés définies par :ref:`@GDScript.@export<class_@GDScript_annotation_@export>`.


.. tabs::

 .. code-tab:: gdscript

    var donnees_internes = {}

    func _set(property, value) :
        if property == "fausse_propriete" :
            # Stocker la valeur dans la fausse propriété.
            donnees_internes["fausse_propriete"] = value
            return true
        return false

    func _get_property_list() :
        return [
            { "name" : "fausse_propriete", "type" : TYPE_INT }
        ]

 .. code-tab:: csharp

    private Godot.Collections.Dictionary _donneesInternes= new Godot.Collections.Dictionary() ;

    public override bool _Set(StringName property, Variant value)
    {
        if (property == "FaussePropriete")
        {
            // Stocker la valeur dans la fausse propriété.
            _donneesInternes["FaussePropriete"] = value ;
            return true ;
        }

        return false ;
    }

    public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetPropertyList()
    {
        return
        [
            new Godot.Collections.Dictionary()
            {
                { "name", "FaussePropriete" },
                { "type", (int)Variant.Type.Int },
            },
        ] ;
    }



\ **Note :** Contrairement à d'autres méthodes virtuelles, cette méthode est appelée automatiquement pour chaque script qui l'écrase. Cela signifie que la mise en œuvre de base ne doit pas être appelée via ``super`` dans GDScript ou ses équivalents dans d'autres langues. La sous-classe la plus basse sera appelée en premier, avec des appels subséquents ascendant la hiérarchie de classe. La chaîne d'appels s'arrête sur la première classe qui retourne ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **_to_string**\ (\ ) |virtual| :ref:`🔗<class_Object_private_method__to_string>`

Redéfinissez cette méthode pour personnaliser la valeur de renvoi de :ref:`to_string()<class_Object_method_to_string>`, et donc la représentation de l'objet comme :ref:`String<class_String>`.

::

    func _to_string():
        return "Bienvenue dans Godot 4!"

    func _init():
        print(self)       # Affiche "Bienvenue dans Godot 4!
        var a = str(self) # a vaut "Bienvenue dans Godot 4!

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__validate_property:

.. rst-class:: classref-method

|void| **_validate_property**\ (\ property\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_Object_private_method__validate_property>`

Redéfinissez cette méthode pour personnaliser les propriétés existantes. Chaque info de propriété passe par cette méthode, sauf les propriétés ajoutées avec :ref:`_get_property_list()<class_Object_private_method__get_property_list>`. Le contenu du dictionnaire est le même que dans :ref:`_get_property_list()<class_Object_private_method__get_property_list>`.


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends Node

    @export var le_nombre_est_modifiable: bool:
        set(value):
            le_nombre_est_modifiable = value
            notify_property_list_changed()
    @export var nombre: int

    func _validate_property(property: Dictionary):
        if property.name == "nombre" and not le_nombre_est_modifiable:
            property.usage |= PROPERTY_USAGE_READ_ONLY

 .. code-tab:: csharp

    [Tool]
    public partial class MyNode : Node
    {
        private bool _leNombreEstModifiable;

        [Export]
        public bool LeNombreEstModifiable;
        {
            get => _leNombreEstModifiable;
            set
            {
                _leNombreEstModifiable = value;
                NotifyPropertyListChanged();
            }
        }

        [Export]
        public int Nombre { get; set; }

        public override void _ValidateProperty(Godot.Collections.Dictionary property)
        {
            if (property["name"].AsStringName() == PropertyName.Nombre && !LeNombreEstModifiable)
            {
                var usage = property["usage"].As<PropertyUsageFlags>() | PropertyUsageFlags.ReadOnly;
                property["usage"] = (int)usage;
            }
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Object_method_add_user_signal:

.. rst-class:: classref-method

|void| **add_user_signal**\ (\ signal\: :ref:`String<class_String>`, arguments\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_Object_method_add_user_signal>`

Ajout d'un signal défini par l'utilisateur nommé ``signal``. Les arguments optionnels du signal peuvent être ajoutés comme un :ref:`Array<class_Array>` de dictionnaires, chacun définissant un :ref:`String<class_String>` ``name`` et un :ref:`int<class_int>` ``type`` (voir :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`). Voir aussi :ref:`has_user_signal()<class_Object_method_has_user_signal>` et :ref:`remove_user_signal()<class_Object_method_remove_user_signal>`.


.. tabs::

 .. code-tab:: gdscript

    add_user_signal("blesse", [
        { "name": "degats", "type": TYPE_INT },
        { "name": "source", "type": TYPE_OBJECT }
    ])

 .. code-tab:: csharp

    AddUserSignal("Blesse",
    [
        new Godot.Collections.Dictionary()
        {
            { "name", "degats" },
            { "type", (int)Variant.Type.Int },
        },
        new Godot.Collections.Dictionary()
        {
            { "name", "source" },
            { "type", (int)Variant.Type.Object },
        },
    ]);



.. rst-class:: classref-item-separator

----

.. _class_Object_method_call:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call**\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Object_method_call>`

Appelle la méthode ``method`` sur l'objet et renvoie le résultat. Cette méthode supporte un nombre variable d'arguments, ces paramètres étant passés dans une liste séparée par des virgules.


.. tabs::

 .. code-tab:: gdscript

    var noeud = Node3D.new()
    noeud.call("rotate", Vector3(1.0, 0.0, 0.0), 1.571)

 .. code-tab:: csharp

    var noeud = new Node3D();
    noeud.Call(Node3D.MethodName.Rotate, new Vector3(1f, 0f, 0f), 1.571f);



\ **Note :** En C#, ``method`` doit être en snake_case si elle se réfère à une méthode de Godot intégrée. Préférez utiliser les noms exposés dans la classe ``MethodName`` pour éviter d'allouer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_call_deferred:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call_deferred**\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Object_method_call_deferred>`

Calls the ``method`` on the object during idle time. Always returns ``null``, **not** the method's result.

Idle time happens mainly at the end of process and physics frames. In it, deferred calls will be run until there are none left, which means you can defer calls from other deferred calls and they'll still be run in the current idle time cycle. This means you should not call a method deferred from itself (or from a method called by it), as this causes infinite recursion the same way as if you had called the method directly.

This method supports a variable number of arguments, so parameters can be passed as a comma separated list.


.. tabs::

 .. code-tab:: gdscript

    var node = Node3D.new()
    node.call_deferred("rotate", Vector3(1.0, 0.0, 0.0), 1.571)

 .. code-tab:: csharp

    var node = new Node3D();
    node.CallDeferred(Node3D.MethodName.Rotate, new Vector3(1f, 0f, 0f), 1.571f);



For methods that are deferred from the same thread, the order of execution at idle time is identical to the order in which ``call_deferred`` was called.

See also :ref:`Callable.call_deferred()<class_Callable_method_call_deferred>`.

\ **Note:** In C#, ``method`` must be in snake_case when referring to built-in Godot methods. Prefer using the names exposed in the ``MethodName`` class to avoid allocating a new :ref:`StringName<class_StringName>` on each call.

\ **Note:** If you're looking to delay the function call by a frame, refer to the :ref:`SceneTree.process_frame<class_SceneTree_signal_process_frame>` and :ref:`SceneTree.physics_frame<class_SceneTree_signal_physics_frame>` signals.

::

    var node = Node3D.new()
    # Make a Callable and bind the arguments to the node's rotate() call.
    var callable = node.rotate.bind(Vector3(1.0, 0.0, 0.0), 1.571)
    # Connect the callable to the process_frame signal, so it gets called in the next process frame.
    # CONNECT_ONE_SHOT makes sure it only gets called once instead of every frame.
    get_tree().process_frame.connect(callable, CONNECT_ONE_SHOT)

.. rst-class:: classref-item-separator

----

.. _class_Object_method_callv:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **callv**\ (\ method\: :ref:`StringName<class_StringName>`, arg_array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Object_method_callv>`

Appelle la méthode ``method`` sur l'objet et renvoie le résultat. Contrairement à :ref:`call()<class_Object_method_call>`, cette méthode s'attend à ce que tous les paramètres soient dans le tableau ``arg_array``\  :


.. tabs::

 .. code-tab:: gdscript

    var noeud = Node3D.new()
    noeud.callv("rotate", [Vector3(1.0, 0.0, 0.0), 1.571])

 .. code-tab:: csharp

    var noeud = new Node3D();
    noeud.Callv(Node3D.MethodName.Rotate, [new Vector3(1f, 0f, 0f), 1.571f]);



\ **Note :** En C#, ``method`` doit être en snake_case si elle se réfère à une méthode de Godot intégrée. Préférez utiliser les noms exposés dans la classe ``MethodName`` pour éviter d'allouer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_can_translate_messages:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_translate_messages**\ (\ ) |const| :ref:`🔗<class_Object_method_can_translate_messages>`

Renvoie ``true`` si l'objet est autorisé à traduire des messages avec :ref:`tr()<class_Object_method_tr>` et :ref:`tr_n()<class_Object_method_tr_n>`. Voir aussi :ref:`set_message_translation()<class_Object_method_set_message_translation>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_cancel_free:

.. rst-class:: classref-method

|void| **cancel_free**\ (\ ) :ref:`🔗<class_Object_method_cancel_free>`

Si cette méthode est appelée pendant :ref:`NOTIFICATION_PREDELETE<class_Object_constant_NOTIFICATION_PREDELETE>`, cet objet rejettera sa libération et restera alloué. Il s'agit principalement d'une fonction interne utilisée pour la manipulation des erreurs afin d'éviter à l'utilisateur de libérer des objets lorsqu'ils ne sont pas destinés à l'être.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_connect:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect**\ (\ signal\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Object_method_connect>`

Connects a ``signal`` by name to a ``callable``. Optional ``flags`` can be also added to configure the connection's behavior (see :ref:`ConnectFlags<enum_Object_ConnectFlags>` constants).

A signal can only be connected once to the same :ref:`Callable<class_Callable>`. If the signal is already connected, this method returns :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` and generates an error, unless the signal is connected with :ref:`CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>`. To prevent this, use :ref:`is_connected()<class_Object_method_is_connected>` first to check for existing connections.

\ **Note:** If the ``callable``'s object is freed, the connection will be lost.

\ **Note:** In GDScript, it is generally recommended to connect signals with :ref:`Signal.connect()<class_Signal_method_connect>` instead.

\ **Note:** This method, and all other signal-related methods, are thread-safe.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_disconnect:

.. rst-class:: classref-method

|void| **disconnect**\ (\ signal\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Object_method_disconnect>`

Déconnecte un ``signal`` par nom depuis un ``callable`` donné. Si la connexion n'existe pas, génère une erreur. Utilisez :ref:`is_connected()<class_Object_method_is_connected>` pour vous assurer que la connexion existe.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_emit_signal:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **emit_signal**\ (\ signal\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Object_method_emit_signal>`

Émet le ``signal`` donné par nom. Le signal doit exister, ainsi il devrait être un signal intégré de cette classe ou une de ses classes héritées, ou un signal défini par l'utilisateur (voir :ref:`add_user_signal()<class_Object_method_add_user_signal>`). Cette méthode prend en charge un nombre variable d'arguments, de sorte que les paramètres peuvent être passés en tant que liste séparée par des virgules.

Renvoie :ref:`@GlobalScope.ERR_UNAVAILABLE<class_@GlobalScope_constant_ERR_UNAVAILABLE>` si ``signal`` n'existe pas ou si les paramètres sont invalides.


.. tabs::

 .. code-tab:: gdscript

    emit_signal("touche", "epee", 100)
    emit_signal("game_over")

 .. code-tab:: csharp

    EmitSignal(SignalName. Touche, "Epee", 100);
    EmitSignal(SignalName.GameOver);



\ **Note :** En C#, ``signal`` doit être en snake_case lorsqu'il s'agit de signaux Godot intégrés. Préférez utiliser les noms exposés dans la classe ``SignalName`` pour éviter d'allouer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_free:

.. rst-class:: classref-method

|void| **free**\ (\ ) :ref:`🔗<class_Object_method_free>`

Supprime l'objet de la mémoire. Les références préexistantes à l'objet deviennent invalides, et toute tentative d'y accéder entraînera une erreur d'exécution. Vérifier les références avec :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>` renverra ``false``. Ceci est équivalent à la fonction ``memdelete`` dans la GDExtension C++.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get>`

Renvoie la valeur :ref:`Variant<class_Variant>` de la propriété ``property`` donnée. Si la propriété ``property`` n'existe pas, cette méthode renvoie ``null``.


.. tabs::

 .. code-tab:: gdscript

    var noeud = Node2D.new()
    noeud.rotation = 1.5
    var a = noeud.get("rotation") # a vaut 1.5

 .. code-tab:: csharp

    var noeud= new Node2D();
    noeud.Rotation = 1.5f;
    var a = noeud.Get(Node2D.PropertyName.Rotation); // a vaut 1.5



\ **Note :** En C#, ``property`` doit être en snake_case si elle se réfère à une propriété de Godot intégrée. Préférez utiliser les noms exposés dans la classe ``PropertyName`` pour éviter d'allouer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_class:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_class**\ (\ ) |const| :ref:`🔗<class_Object_method_get_class>`

Renvoie le nom de la classe intégrée de l'objet, en tant que :ref:`String<class_String>`. Voir aussi :ref:`is_class()<class_Object_method_is_class>`.

\ **Note :** Cette méthode ignore les déclarations ``class_name``. Si le script de cet objet a défini un ``class_name``, le nom de la classe intégrée de base est renvoyé à la place.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_incoming_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_incoming_connections**\ (\ ) |const| :ref:`🔗<class_Object_method_get_incoming_connections>`

Renvoie un :ref:`Array<class_Array>` des connexions de signal reçues par cet objet. Chaque connexion est représentée en tant que :ref:`Dictionary<class_Dictionary>` contenant trois entrées :

- ``signal`` est une référence au :ref:`Signal<class_Signal>`;

- ``callable`` est une référence au :ref:`Callable<class_Callable>`;

- ``flags`` est une combinaison de :ref:`ConnectFlags<enum_Object_ConnectFlags>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_indexed:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_indexed**\ (\ property_path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Object_method_get_indexed>`

Obtient la propriété de l'objet indexée par le chemin ``property_path`` donné. Le chemin devrait être un :ref:`NodePath<class_NodePath>` par rapport à l'objet courant et peut utiliser des deux-points (``:``) pour accéder aux propriétés imbriquées.

\ **Exemples :** ``"position:x"`` ou ``"material:next_pass:blend_mode"``.


.. tabs::

 .. code-tab:: gdscript

    var noeud = Node2D.new()
    noeud.position = Vector2(5, -10)
    var a = noeud.get_indexed("position")   # a vaut Vector2(5, -10)
    var b = noeud.get_indexed("position:y") # b vaut -10

 .. code-tab:: csharp

    var noeud = new Node2D();
    noeud.Position = new Vector2(5, -10);
    var a = noeud.GetIndexed("position");   // a vaut Vector2(5, -10)
    var b = noeud.GetIndexed("position:y"); // b vaut -10



\ **Note :** En C#, ``property_path`` doit être en snake_case si elle se réfère à une propriété de Godot intégrée. Préférez utiliser les noms exposés dans la classe ``PropertyName`` pour éviter d'allouer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

\ **Note :** Cette méthode ne supporte pas les chemins réels vers des nœuds dans le :ref:`SceneTree<class_SceneTree>`, seulement les chemins de sous-propriété. Dans un contexte de nœuds, utilisez plutôt :ref:`Node.get_node_and_resource()<class_Node_method_get_node_and_resource>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_instance_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_instance_id**\ (\ ) |const| :ref:`🔗<class_Object_method_get_instance_id>`

Renvoie l'identifiant d'instance unique de l'objet. Cet ID peut être enregistré dans :ref:`EncodedObjectAsID<class_EncodedObjectAsID>`, et peut être utilisé pour récupérer cette instance objet avec :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>`.

\ **Note :** Cet identifiant n'est utile que pendant la session en cours. Il ne correspondra pas à un objet similaire si l'ID est envoyé sur un réseau, ou chargé à partir d'un fichier ultérieurement.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_meta**\ (\ name\: :ref:`StringName<class_StringName>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Object_method_get_meta>`

Renvoie la valeur d'une métadonnée de l'objet pour le nom ``name`` d'entrée donné. Si l'entrée n'existe pas, renvoie ``default``. Si ``default`` vaut ``null``, une erreur est également générée.

\ **Note :** Le nom de la métadonnée doit être un identifiant valide selon la méthode :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>`.

\ **Note :** Les métadonnées qui ont un nom commençant par un tiret du bas (``_``) sont considérées uniquement comme données de l'éditeur. Les métadonnées d'éditeur ne sont pas affichées dans l'Inspecteur et ne doivent pas être modifiées, bien qu'elles puissent encore être trouvées par cette méthode.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_meta_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_meta_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_meta_list>`

Renvoie les métadonnées de l'objet en tant qu':ref:`Array<class_Array>` de :ref:`StringName<class_StringName>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_method_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_method_argument_count**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get_method_argument_count>`

Renvoie le nombre d'arguments de la méthode ``method`` donnée par nom.

\ **Note :** En C#, ``method`` doit être en snake_case lorsqu'il s'agit de méthodes Godot intégrées. Préférez en utilisant les noms exposés dans la classe ``MethodName`` pour éviter d'attribuer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_method_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_method_list>`

Renvoie les méthodes de cet objet et leurs signatures en tant qu':ref:`Array<class_Array>` de dictionnaires. Chaque :ref:`Dictionary<class_Dictionary>` contient les entrées suivantes :

- ``name`` est le nom de la méthode, en tant que :ref:`String<class_String>`;

- ``args`` est un :ref:`Array<class_Array>` de dictionnaires représentant les arguments;

- ``default_args`` est les arguments par défaut comme :ref:`Array<class_Array>` de Variants;

- ``flags`` est une combinaison de :ref:`MethodFlags<enum_@GlobalScope_MethodFlags>`;

- ``id`` est l'identifiant interne (:ref:`int<class_int>`) de la méthode;

- ``return`` est la valeur renvoyée, en tant que :ref:`Dictionary<class_Dictionary>`;

\ **Note :** Les dictionnaires de ``args`` et ``return`` sont formatés de façon identique aux résultats de :ref:`get_property_list()<class_Object_method_get_property_list>`, bien que toutes les entrées ne soient pas utilisées.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_property_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_property_list>`

Renvoie la liste des propriétés de l'objet en tant qu':ref:`Array<class_Array>` de dictionnaires. Chaque :ref:`Dictionary<class_Dictionary>` contient les entrées suivantes :

- ``name`` est le nom de la propriété, en tant que :ref:`String<class_String>`;

- ``class_name`` est un :ref:`StringName<class_StringName>` vide, sauf si la propriété du type :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>` et qu'elle hérite d'une classe;

- ``type`` est le type de la propriété, en tant qu':ref:`int<class_int>` (voir :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`);

- ``hint`` indique *comment* la propriété est destinée à être modifiée (voir :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`);

- ``hint_string`` dépend de "hint" (voir :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`);

- ``usage`` est une combinaison de drapeaux :ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`.

\ **Note :** En GDScript, tous les membres de classe sont traités comme des propriétés. En C# et en GDExtension, il peut être nécessaire de marquer explicitement les membres de classe comme des propriétés Godot en utilisant des décorateurs ou des attributs.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_script**\ (\ ) |const| :ref:`🔗<class_Object_method_get_script>`

Renvoie l'instance de :ref:`Script<class_Script>` de l'objet, ou ``null`` si aucun script n'est attaché.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_signal_connection_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_signal_connection_list**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get_signal_connection_list>`

Renvoie un :ref:`Array<class_Array>` des connexions pour le nom de signal ``signal`` donné. Chaque connexion est représentée en tant que :ref:`Dictionary<class_Dictionary>` qui contient trois entrées :

- ``signal`` est une référence au :ref:`Signal<class_Signal>`;

- ``callable`` est une référence au :ref:`Callable<class_Callable>` connecté;

- ``flags`` est une combinaison de drapeaux :ref:`ConnectFlags<enum_Object_ConnectFlags>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_signal_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_signal_list>`

Returns the list of existing signals as an :ref:`Array<class_Array>` of dictionaries.

\ **Note:** Due to the implementation, each :ref:`Dictionary<class_Dictionary>` is formatted very similarly to the returned values of :ref:`get_method_list()<class_Object_method_get_method_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_translation_domain:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_translation_domain**\ (\ ) |const| :ref:`🔗<class_Object_method_get_translation_domain>`

Renvoie le nom du domaine de traduction utilisé par :ref:`tr()<class_Object_method_tr>` et :ref:`tr_n()<class_Object_method_tr_n>`. Voir aussi :ref:`TranslationServer<class_TranslationServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_connections>`

Renvoie ``true`` si une connexion existe sur le nom de ``signal`` donné.

\ **Note :** En C#, ``signal`` doit être en snake_case lorsqu'il s'agit de signaux Godot intégrés. Préférez utiliser les noms exposés dans la classe ``SignalName`` pour éviter d'allouer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_meta:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_meta**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_meta>`

Renvoie ``true`` si une entrée de métadonnées est trouvée avec le nom ``name`` donné. Voir aussi :ref:`get_meta()<class_Object_method_get_meta>`, :ref:`set_meta()<class_Object_method_set_meta>` et :ref:`remove_meta()<class_Object_method_remove_meta>`.

\ **Note :** Le nom d'une métadonnée doit être un identifiant valide selon la méthode :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>`.

\ **Note :** Les métadonnées qui ont un nom commençant par un tiret du bas (``_``) sont considérées uniquement comme données de l'éditeur. Les métadonnées d'éditeur ne sont pas affichées dans l'Inspecteur et ne doivent pas être modifiées, bien qu'elles puissent encore être trouvées par cette méthode.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_method>`

Renvoie ``true`` si le nom de méthode ``method`` donné existe dans l'objet.

\ **Note :** En C#, ``method`` doit être en snake_case lorsqu'il s'agit de méthodes Godot intégrées. Préférez utiliser les noms exposés dans la classe ``MethodName`` pour éviter d'attribuer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_signal>`

Renvoie ``true`` si le nom de signal ``signal`` donné existe dans l'objet.

\ **Note :** En C#, ``signal`` doit être en snake_case lorsqu'il s'agit de signaux Godot intégrés. Préférez utiliser les noms exposés dans la classe ``SignalName`` pour éviter d'attribuer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_user_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_user_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_user_signal>`

Renvoie ``true`` si le nom de signal ``signal`` défini par l'utilisateur existe. Seuls les signaux ajoutés avec :ref:`add_user_signal()<class_Object_method_add_user_signal>` sont inclus. Voir aussi :ref:`remove_user_signal()<class_Object_method_remove_user_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_blocking_signals:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_blocking_signals**\ (\ ) |const| :ref:`🔗<class_Object_method_is_blocking_signals>`

Renvoie ``true`` si l'objet bloque l'émission de ses signaux. Voir :ref:`set_block_signals()<class_Object_method_set_block_signals>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_class:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class**\ (\ class\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Object_method_is_class>`

Renvoie ``true`` si l'objet hérite de la ``class`` donnée. Voir aussi :ref:`get_class()<class_Object_method_get_class>`.


.. tabs::

 .. code-tab:: gdscript

    var sprite2d = Sprite2D.new()
    sprite2d.is_class("Sprite2D") # Renvoie true
    sprite2d.is_class("Node")     # Renvoie true
    sprite2d.is_class("Node3D")   # Renvoie false

 .. code-tab:: csharp

    var sprite2D = new Sprite2D();
    sprite2D.IsClass("Sprite2D"); // Renvoie true
    sprite2D.IsClass("Node");     // Renvoie true
    sprite2D.IsClass("Node3D");   // Renvoie false



\ **Note :** Cette méthode ignore les déclarations ``class_name`` dans le script de l'objet.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ signal\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Object_method_is_connected>`

Renvoie ``true`` si une connexion existe entre le nom de ``signal`` et le ``callable`` donnés.

\ **Note :** En C#, ``signal`` doit être en snake_case lorsqu'il s'agit de signaux Godot intégrés. Préférez utiliser les noms exposés dans la classe ``SignalName`` pour éviter d'allouer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_queued_for_deletion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_queued_for_deletion**\ (\ ) |const| :ref:`🔗<class_Object_method_is_queued_for_deletion>`

Renvoie ``true`` si la méthode :ref:`Node.queue_free()<class_Node_method_queue_free>` a été appelée pour cet objet.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_notification:

.. rst-class:: classref-method

|void| **notification**\ (\ what\: :ref:`int<class_int>`, reversed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Object_method_notification>`

Envoie la notification ``what`` donnée à toutes les classes héritées par l'objet, déclenchant des appels à :ref:`_notification()<class_Object_private_method__notification>`, à partir du plus haut ancêtre (la classe **Object**) et descendant vers le script de l'objet.

Si ``reversed`` vaut ``true``, l'ordre d'appel est inversé.


.. tabs::

 .. code-tab:: gdscript

    var joueur = Node2D.new()
    joueur.set_script(load("res://joueur.gd"))

    joueur.notification(NOTIFICATION_ENTER_TREE)
    # L'ordre d'appel est Object -> Node -> Node2D -> joueur.gd.

    player.notification(NOTIFICATION_ENTER_TREE, true)
    # L'ordre d'appel est joueur.gd -> Node2D -> Node -> Object.

 .. code-tab:: csharp

    var joueur = new Node2D();
    joueur.SetScript(GD.Load("res://joueur.gd"));

    joueur.Notification(NotificationEnterTree);
    // L'ordre d'appel est GodotObject -> Node -> Node2D -> joueur.gd.

    joueur.Notification(NotificationEnterTree, true);
    // L'ordre d'appel est joueur.gd -> Node2D -> Node -> GodotObject.



.. rst-class:: classref-item-separator

----

.. _class_Object_method_notify_property_list_changed:

.. rst-class:: classref-method

|void| **notify_property_list_changed**\ (\ ) :ref:`🔗<class_Object_method_notify_property_list_changed>`

Émet le signal :ref:`property_list_changed<class_Object_signal_property_list_changed>`. Ceci est principalement utilisé pour rafraîchir l'éditeur, de sorte que l'Inspecteur et les plugins éditeur sont correctement mis à jour.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_property_can_revert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_can_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_property_can_revert>`

Renvoie ``true`` si la propriété ``property`` donnée a une valeur par défaut personnalisée. Utilisez :ref:`property_get_revert()<class_Object_method_property_get_revert>` pour obtenir la valeur par défaut de ``property``.

\ **Note :** Cette méthode est utilisée par le dock Inspecteur pour afficher une icône de restauration. L'objet doit implémenter :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` pour personnaliser la valeur par défaut. Si :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` n'est pas implémenté, cette méthode renvoie ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_property_get_revert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **property_get_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_property_get_revert>`

Renvoie la valeur par défaut personnalisée de la propriété ``property`` donnée. Utilisez :ref:`property_can_revert()<class_Object_method_property_can_revert>` pour vérifier si la propriété ``property`` a une valeur par défaut personnalisée.

\ **Note :** Cette méthode est utilisée par le dock Inspecteur pour afficher une icône de restauration. L'objet doit implémenter :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` pour personnaliser la valeur par défaut. Si :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` n'est pas implémenté, cette méthode renvoie ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_remove_meta:

.. rst-class:: classref-method

|void| **remove_meta**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_remove_meta>`

Enlève l'entrée de nom ``name`` donnée des métadonnées de l'objet. Voir aussi :ref:`has_meta()<class_Object_method_has_meta>`, :ref:`get_meta()<class_Object_method_get_meta>` et :ref:`set_meta()<class_Object_method_set_meta>`.

\ **Note :** Le nom de la métadonnée doit être un identifiant valide selon la méthode :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>`.

\ **Note :** Les métadonnées qui ont un nom commençant par un tiret du bas (``_``) sont considérées uniquement comme données de l'éditeur. Les métadonnées d'éditeur ne sont pas affichées dans l'Inspecteur et ne doivent pas être modifiées, bien qu'elles puissent encore être trouvées par cette méthode.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_remove_user_signal:

.. rst-class:: classref-method

|void| **remove_user_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_remove_user_signal>`

Retire le signal utilisateur ``signal`` donné de l'objet. Voir aussi :ref:`add_user_signal()<class_Object_method_add_user_signal>` et :ref:`has_user_signal()<class_Object_method_has_user_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set>`

Assigne la valeur ``value`` à la propriété ``property`` donnée. Si la propriété n'existe pas ou le type de la valeur ``value`` donnée ne correspond pas, rien ne se passe.


.. tabs::

 .. code-tab:: gdscript

    var noeud = Node2D.new()
    noeud.set("global_scale", Vector2(8, 2.5))
    print(noeud.global_scale) # Affiche (8.0, 2.5)

 .. code-tab:: csharp

    var noeud = new Node2D();
    noeud.Set(Node2D.PropertyName.GlobalScale, new Vector2(8, 2.5f));
    GD.Print(noeud.GlobalScale); // Affiche (8, 2.5)



\ **Note :** En C#, ``property`` doit être en snake_case s'il se réfère à une propriété de Godot intégrée. Préférez utiliser les noms exposés dans la classe ``PropertyName`` pour éviter d'allouer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_block_signals:

.. rst-class:: classref-method

|void| **set_block_signals**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Object_method_set_block_signals>`

Si défini à ``true``, l'objet devient incapable d'émettre des signaux. Ainsi, :ref:`emit_signal()<class_Object_method_emit_signal>` et les connexions de signal ne fonctionneront pas, jusqu'à ce que ceci soit défini sur ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_deferred:

.. rst-class:: classref-method

|void| **set_deferred**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_deferred>`

Attribue la valeur ``value`` à la propriété ``property`` donnée, à la fin de la trame actuelle. Cela équivaut à appeler :ref:`set()<class_Object_method_set>` par :ref:`call_deferred()<class_Object_method_call_deferred>`.


.. tabs::

 .. code-tab:: gdscript

    var noeud = Node2D.new()
    add_child(noeud)

    noeud.rotation = 1.5
    noeud.set_deferred("rotation", 3.0)
    print(noeud.rotation) # Affiche 1.5

    await get_tree().process_frame
    print(noeud.rotation) # Affiche 3.0

 .. code-tab:: csharp

    var noeud = new Node2D();
    noeud.Rotation = 1.5f;
    noeud.SetDeferred(Node2D.PropertyName.Rotation, 3f);
    GD.Print(noeud.Rotation); // Affiche 1.5

    await ToSignal(GetTree(), SceneTree.SignalName.ProcessFrame);
    GD.Print(noeud.Rotation); // Affiche 3.0



\ **Note :** En C#, ``property`` doit être en snake_case s'il se réfère à une propriété de Godot intégrée. Préférez utiliser les noms exposés dans la classe ``PropertyName`` pour éviter d'allouer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_indexed:

.. rst-class:: classref-method

|void| **set_indexed**\ (\ property_path\: :ref:`NodePath<class_NodePath>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_indexed>`

Attribue une nouvelle valeur ``value`` à la propriété identifiée par le chemin ``property_path``. Le chemin devrait être un :ref:`NodePath<class_NodePath>` relatif à cet objet, et peut utiliser les deux-points (``:``) pour accéder à des propriétés imbriquées.


.. tabs::

 .. code-tab:: gdscript

    var noeud = Node2D.new()
    noeud.set_indexed("position", Vector2(42, 0))
    noeud.set_indexed("position:y", -10)
    print(noeud.position) # Affiche (42.0, -10.0)

 .. code-tab:: csharp

    var noeud = new Node2D();
    noeud.SetIndexed("position", new Vector2(42, 0));
    noeud.SetIndexed("position:y", -10);
    GD.Print(node.Position); // Affiche (42, -10)



\ **Note :** En C#, ``property_path`` doit être en snake_case s'il se réfère à une propriété de Godot intégrée. Préférez utiliser les noms exposés dans la classe ``PropertyName`` pour éviter d'allouer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_message_translation:

.. rst-class:: classref-method

|void| **set_message_translation**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Object_method_set_message_translation>`

Si défini à ``true``, autorise l'objet à traduire des messages avec :ref:`tr()<class_Object_method_tr>` et :ref:`tr_n()<class_Object_method_tr_n>`. Activé par défaut. Voir aussi :ref:`can_translate_messages()<class_Object_method_can_translate_messages>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_meta:

.. rst-class:: classref-method

|void| **set_meta**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_meta>`

Ajoute ou modifie l'entrée ``name`` dans les métadonnées de l'objet. La valeur ``value`` de la métadonnée peut être n'importe quel :ref:`Variant<class_Variant>`, même si certains types ne peuvent pas être sérialisés correctement.

Si ``value`` vaut ``null``, l'entrée est retirée. C'est l'équivalent d'utiliser :ref:`remove_meta()<class_Object_method_remove_meta>`. Voir aussi :ref:`has_meta()<class_Object_method_has_meta>` et :ref:`get_meta()<class_Object_method_get_meta>`.

\ **Note :** Le nom de la métadonnée doit être un identifiant valide selon la méthode :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>`.

\ **Note :** Les métadonnées qui ont un nom commençant par un tiret du bas (``_``) sont considérées uniquement comme données de l'éditeur. Les métadonnées d'éditeur ne sont pas affichées dans l'Inspecteur et ne doivent pas être modifiées, bien qu'elles puissent encore être trouvées par cette méthode.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_script:

.. rst-class:: classref-method

|void| **set_script**\ (\ script\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_script>`

Attache un ``script`` à l'objet, et l'instancie. Par conséquent, l':ref:`_init()<class_Object_private_method__init>` du script est appelé. Un :ref:`Script<class_Script>` est utilisé pour étendre la fonctionnalité de l'objet.

Si un script existe déjà, son instance est détachée, et ses valeurs de propriété et son état sont perdus. Les valeurs de propriétés intégrées sont toujours conservées.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_translation_domain:

.. rst-class:: classref-method

|void| **set_translation_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_set_translation_domain>`

Définit le nom du domaine de traduction utilisé par :ref:`tr()<class_Object_method_tr>` et :ref:`tr_n()<class_Object_method_tr_n>`. Voir aussi :ref:`TranslationServer<class_TranslationServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **to_string**\ (\ ) :ref:`🔗<class_Object_method_to_string>`

Renvoie un :ref:`String<class_String>` représentant l'objet. Vaut par défaut ``"<ClassName#RID>"``. Redéfinissez :ref:`_to_string()<class_Object_private_method__to_string>` pour personnaliser la représentation en chaîne de l'objet.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_tr:

.. rst-class:: classref-method

:ref:`String<class_String>` **tr**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Object_method_tr>`

Traduit un ``message``, en utilisant les catalogues de traduction configurés dans les Paramètres du projet. Du ``context``\ e peut être spécifié pour aider à la traduction. Notez que la plupart des nœuds :ref:`Control<class_Control>` traduisent automatiquement leurs chaînes, de sorte que cette méthode est surtout utile pour des chaînes formatées ou du texte dessiné personnalisé.

Si :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` vaut ``false``, ou qu'aucune traduction n'est disponible, cette méthode renvoie le ``message`` sans modification. Voir :ref:`set_message_translation()<class_Object_method_set_message_translation>`.

Pour des exemples détaillés, voir :doc:`Internationalisation des jeux <../tutorials/i18n/internationalizing_games>`.

\ **Note :** Cette méthode ne peut pas être utilisée sans une instance **Object**, car elle nécessite la méthode :ref:`can_translate_messages()<class_Object_method_can_translate_messages>`. Pour traduire les chaînes dans un contexte statique, utilisez :ref:`TranslationServer.translate()<class_TranslationServer_method_translate>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_tr_n:

.. rst-class:: classref-method

:ref:`String<class_String>` **tr_n**\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Object_method_tr_n>`

Traduit un message ``message`` ou plusieurs messages ``plural_message``, en utilisant les catalogues de traduction configurés dans les paramètres du projet. Plus de contexte peut être spécifié avec ``context`` pour aider à la traduction.

Si :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` vaut ``false``, ou si aucune traduction n'est disponible, cette méthode renvoie ``message`` ou ``plural_message``, sans modifications. Voir :ref:`set_message_translation()<class_Object_method_set_message_translation>`.

Le ``n`` est le numéro, ou le montant, du sujet du message. Il est utilisé par le système de traduction pour obtenir la bonne forme plurielle pour la langue actuelle.

Pour des exemples détaillés, voir :doc:`Localisation en utilisant gettext <../tutorials/i18n/localization_using_gettext>`.

\ **Note :** Les nombres négatifs et :ref:`float<class_float>` peuvent ne pas s'appliquer correctement à certains sujets comptables. Il est recommandé de gérer ces cas avec :ref:`tr()<class_Object_method_tr>`.

\ **Note :** Cette méthode ne peut pas être utilisée sans une instance d'**Object**, car elle nécessite la méthode :ref:`can_translate_messages()<class_Object_method_can_translate_messages>`. Pour traduire les chaînes dans un contexte statique, utilisez :ref:`TranslationServer.translate_plural()<class_TranslationServer_method_translate_plural>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
