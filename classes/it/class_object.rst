:github_url: hide

.. _class_Object:

Object
======

**Ereditato da:** :ref:`AudioServer<class_AudioServer>`, :ref:`CameraServer<class_CameraServer>`, :ref:`ClassDB<class_ClassDB>`, :ref:`DisplayServer<class_DisplayServer>`, :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>`, :ref:`EditorInterface<class_EditorInterface>`, :ref:`EditorPaths<class_EditorPaths>`, :ref:`EditorSelection<class_EditorSelection>`, :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`, :ref:`EditorVCSInterface<class_EditorVCSInterface>`, :ref:`Engine<class_Engine>`, :ref:`EngineDebugger<class_EngineDebugger>`, :ref:`FramebufferCacheRD<class_FramebufferCacheRD>`, :ref:`GDExtensionManager<class_GDExtensionManager>`, :ref:`Geometry2D<class_Geometry2D>`, :ref:`Geometry3D<class_Geometry3D>`, :ref:`GodotInstance<class_GodotInstance>`, :ref:`Input<class_Input>`, :ref:`InputMap<class_InputMap>`, :ref:`IP<class_IP>`, :ref:`JavaClassWrapper<class_JavaClassWrapper>`, :ref:`JavaScriptBridge<class_JavaScriptBridge>`, :ref:`JNISingleton<class_JNISingleton>`, :ref:`JSONRPC<class_JSONRPC>`, :ref:`MainLoop<class_MainLoop>`, :ref:`Marshalls<class_Marshalls>`, :ref:`MovieWriter<class_MovieWriter>`, :ref:`NativeMenu<class_NativeMenu>`, :ref:`NavigationMeshGenerator<class_NavigationMeshGenerator>`, :ref:`NavigationServer2D<class_NavigationServer2D>`, :ref:`NavigationServer2DManager<class_NavigationServer2DManager>`, :ref:`NavigationServer3D<class_NavigationServer3D>`, :ref:`NavigationServer3DManager<class_NavigationServer3DManager>`, :ref:`Node<class_Node>`, :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>`, :ref:`OpenXRInteractionProfileMetadata<class_OpenXRInteractionProfileMetadata>`, :ref:`OS<class_OS>`, :ref:`Performance<class_Performance>`, :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`, :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`, :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`, :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`, :ref:`PhysicsServer2D<class_PhysicsServer2D>`, :ref:`PhysicsServer2DManager<class_PhysicsServer2DManager>`, :ref:`PhysicsServer3D<class_PhysicsServer3D>`, :ref:`PhysicsServer3DManager<class_PhysicsServer3DManager>`, :ref:`PhysicsServer3DRenderingServerHandler<class_PhysicsServer3DRenderingServerHandler>`, :ref:`ProjectSettings<class_ProjectSettings>`, :ref:`RefCounted<class_RefCounted>`, :ref:`RenderData<class_RenderData>`, :ref:`RenderingDevice<class_RenderingDevice>`, :ref:`RenderingServer<class_RenderingServer>`, :ref:`RenderSceneData<class_RenderSceneData>`, :ref:`ResourceLoader<class_ResourceLoader>`, :ref:`ResourceSaver<class_ResourceSaver>`, :ref:`ResourceUID<class_ResourceUID>`, :ref:`ScriptLanguage<class_ScriptLanguage>`, :ref:`ShaderIncludeDB<class_ShaderIncludeDB>`, :ref:`TextServerManager<class_TextServerManager>`, :ref:`ThemeDB<class_ThemeDB>`, :ref:`TileData<class_TileData>`, :ref:`Time<class_Time>`, :ref:`TranslationServer<class_TranslationServer>`, :ref:`TreeItem<class_TreeItem>`, :ref:`UndoRedo<class_UndoRedo>`, :ref:`UniformSetCacheRD<class_UniformSetCacheRD>`, :ref:`WorkerThreadPool<class_WorkerThreadPool>`, :ref:`XRServer<class_XRServer>`, :ref:`XRVRS<class_XRVRS>`

Classe di base per tutte le altre classi nel motore.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un tipo di :ref:`Variant<class_Variant>` avanzato. Tutte le classi nel motore ereditano da Object. Ogni classe può definire nuove proprietà, metodi o segnali, che sono disponibili per tutte le classi ereditanti. Ad esempio, un'istanza :ref:`Sprite2D<class_Sprite2D>` è in grado di chiamare :ref:`Node.add_child()<class_Node_method_add_child>` perché eredita da :ref:`Node<class_Node>`.

Puoi creare nuove istanze, usando ``Object.new()`` in GDScript, o ``new GodotObject`` in C#.

Per eliminare un'istanza di Object, chiama :ref:`free()<class_Object_method_free>`. Ciò è necessario per la maggior parte delle classi che ereditano Object, perché non gestiscono la memoria da sole e altrimenti causeranno perdite di memoria quando non sono più in uso. Esistono alcune classi che gestiscono la loro memoria. Ad esempio, :ref:`RefCounted<class_RefCounted>` (e per estensione :ref:`Resource<class_Resource>`) elimina se stesso quando non è più referenziato e :ref:`Node<class_Node>` elimina i suoi figli quando viene liberato.

Gli oggetti possono avere uno :ref:`Script<class_Script>` allegato. Una volta istanziato lo :ref:`Script<class_Script>`, agisce effettivamente come un'estensione della classe base, consentendogli di definire ed ereditare nuove proprietà, metodi e segnali.

All'interno di uno :ref:`Script<class_Script>`, :ref:`_get_property_list()<class_Object_private_method__get_property_list>` può essere sovrascritto per personalizzare le proprietà in diversi modi. Ciò consente loro di essere disponibili all'editor, di essere visualizzate come liste di opzioni, di essere suddivise in gruppi, di essere salvate su disco, ecc. I linguaggi di scripting offrono modi più semplici per personalizzare le proprietà, come con l'annotazione :ref:`@GDScript.@export<class_@GDScript_annotation_@export>`.

Godot è molto dinamico. Lo script di un oggetto, e quindi le sue proprietà, metodi e segnali, possono essere modificati in fase di esecuzione. Per questo motivo, possono esserci occasioni in cui, ad esempio, una proprietà richiesta da un metodo potrebbe non esistere. Per evitare errori di durante l'esecuzione, vedi metodi come :ref:`set()<class_Object_method_set>`, :ref:`get()<class_Object_method_get>`, :ref:`call()<class_Object_method_call>`, :ref:`has_method()<class_Object_method_has_method>`, :ref:`has_signal()<class_Object_method_has_signal>`, ecc. Nota che questi metodi sono **molto** più lenti dei riferimenti diretti.

In GDScript, è anche possibile verificare se una determinata proprietà, metodo o nome di segnale esiste in un oggetto con l'operatore ``in``:

::

    var node = Node.new()
    print("name" in node)         # Stampa true
    print("get_parent" in node)   # Stampa true
    print("tree_entered" in node) # Stampa true
    print("unknown" in node)      # Stampa false

Le notifiche sono costanti :ref:`int<class_int>` comunemente inviate e ricevute dagli oggetti. Ad esempio, su ogni frame renderizzato, :ref:`SceneTree<class_SceneTree>` notifica i nodi all'interno dell'albero con una :ref:`Node.NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`. I nodi la ricevono e possono chiamare :ref:`Node._process()<class_Node_private_method__process>` per aggiornarsi. Per utilizzare le notifiche, vedi :ref:`notification()<class_Object_method_notification>` e :ref:`_notification()<class_Object_private_method__notification>`.

Infine, ogni oggetto può anche contenere metadati (dati sui dati). :ref:`set_meta()<class_Object_method_set_meta>` può essere utile per memorizzare informazioni da cui l'oggetto stesso non dipende. Per mantenere pulito il codice, si sconsiglia di fare un uso eccessivo di metadati.

\ **Nota:** A differenza di riferimenti a un :ref:`RefCounted<class_RefCounted>`, i riferimenti a un oggetto memorizzato in una variabile possono diventare non validi senza essere impostati su ``null``. Per verificare se un oggetto è stato eliminato, *non* confrontarlo con ``null``. Invece, usa :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`. Si consiglia inoltre di ereditare da :ref:`RefCounted<class_RefCounted>` per le classi che memorizzano dati anziché **Object**.

\ **Nota:** Lo ``script`` non è esposto come la maggior parte delle proprietà. Per impostare o ottenere lo :ref:`Script<class_Script>` di un oggetto in codice, usa rispettivamente :ref:`set_script()<class_Object_method_set_script>` e :ref:`get_script()<class_Object_method_get_script>`.

\ **Nota:** In un contesto booleano, un **Object** verrà valutato come ``false`` se è uguale a ``null`` o è stato liberato. Altrimenti, un **Object** verrà sempre valutato come ``true``. Vedi anche :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione della classe Object <../engine_details/architecture/object_class>`

- :doc:`Quando e come evitare di usare i nodi per tutto <../tutorials/best_practices/node_alternatives>`

- :doc:`Notifiche di oggetti <../tutorials/best_practices/godot_notifications>`

.. rst-class:: classref-reftable-group

Metodi
------------

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

Segnali
--------------

.. _class_Object_signal_property_list_changed:

.. rst-class:: classref-signal

**property_list_changed**\ (\ ) :ref:`🔗<class_Object_signal_property_list_changed>`

Emesso quando :ref:`notify_property_list_changed()<class_Object_method_notify_property_list_changed>` viene chiamato.

.. rst-class:: classref-item-separator

----

.. _class_Object_signal_script_changed:

.. rst-class:: classref-signal

**script_changed**\ (\ ) :ref:`🔗<class_Object_signal_script_changed>`

Emesso quando lo script dell'oggetto viene cambiato.

\ **Nota:** Quando questo segnale viene emesso, il nuovo script non è ancora inizializzato. Se devi accedere al nuovo script, differisci le connessioni a questo segnale con :ref:`CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Object_ConnectFlags:

.. rst-class:: classref-enumeration

enum **ConnectFlags**: :ref:`🔗<enum_Object_ConnectFlags>`

.. _class_Object_constant_CONNECT_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_DEFERRED** = ``1``

Le connessioni differite attivano i loro :ref:`Callable<class_Callable>` durante il tempo di inattività (alla fine del frame), anziché istantaneamente.

.. _class_Object_constant_CONNECT_PERSIST:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_PERSIST** = ``2``

Persisting connections are stored when the object is serialized (such as when using :ref:`PackedScene.pack()<class_PackedScene_method_pack>`). In the editor, connections created through the Signals dock are always persisting.

\ **Note:** Connections to lambda functions (that is, when the function code is embedded in the :ref:`connect()<class_Object_method_connect>` call) cannot be made persistent.

.. _class_Object_constant_CONNECT_ONE_SHOT:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_ONE_SHOT** = ``4``

Le connessioni a colpo singolo si disconnettono dopo l'emissione.

.. _class_Object_constant_CONNECT_REFERENCE_COUNTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_REFERENCE_COUNTED** = ``8``

Le connessioni con conteggio dei riferimenti possono essere assegnate allo stesso :ref:`Callable<class_Callable>` più volte. Ogni disconnessione diminuisce il contatore interno. Il segnale si disconnette completamente solo quando il contatore raggiunge 0.

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

Costanti
----------------

.. _class_Object_constant_NOTIFICATION_POSTINITIALIZE:

.. rst-class:: classref-constant

**NOTIFICATION_POSTINITIALIZE** = ``0`` :ref:`🔗<class_Object_constant_NOTIFICATION_POSTINITIALIZE>`

Notifica ricevuta quando l'oggetto viene inizializzato, prima che il suo script venga allegato. Utilizzato internamente.

.. _class_Object_constant_NOTIFICATION_PREDELETE:

.. rst-class:: classref-constant

**NOTIFICATION_PREDELETE** = ``1`` :ref:`🔗<class_Object_constant_NOTIFICATION_PREDELETE>`

Notification received when the object is about to be deleted. Can be used like destructors in object-oriented programming languages.

This notification is sent in reversed order.

.. _class_Object_constant_NOTIFICATION_EXTENSION_RELOADED:

.. rst-class:: classref-constant

**NOTIFICATION_EXTENSION_RELOADED** = ``2`` :ref:`🔗<class_Object_constant_NOTIFICATION_EXTENSION_RELOADED>`

Notifica ricevuta quando l'oggetto termina il ricaricamento a caldo. Questa notifica viene inviata solo per le classi di estensioni e derivate.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Object_private_method__get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| :ref:`🔗<class_Object_private_method__get>`

Override this method to customize the behavior of :ref:`get()<class_Object_method_get>`. Should return the given ``property``'s value, or ``null`` if the ``property`` should be handled normally.

Combined with :ref:`_set()<class_Object_private_method__set>` and :ref:`_get_property_list()<class_Object_private_method__get_property_list>`, this method allows defining custom properties, which is particularly useful for editor plugins.

\ **Note:** This method is not called when getting built-in properties of an object, including properties defined with :ref:`@GDScript.@export<class_@GDScript_annotation_@export>`.


.. tabs::

 .. code-tab:: gdscript

    func _get(property):
        if property == "fake_property":
            print("Getting my property!")
            return 4

    func _get_property_list():
        return [
            { "name": "fake_property", "type": TYPE_INT }
        ]

 .. code-tab:: csharp

    public override Variant _Get(StringName property)
    {
        if (property == "FakeProperty")
        {
            GD.Print("Getting my property!");
            return 4;
        }
        return default;
    }

    public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetPropertyList()
    {
        return
        [
            new Godot.Collections.Dictionary()
            {
                { "name", "FakeProperty" },
                { "type", (int)Variant.Type.Int },
            },
        ];
    }



\ **Note:** Unlike other virtual methods, this method is called automatically for every script that overrides it. This means that the base implementation should not be called via ``super`` in GDScript or its equivalents in other languages. The bottom-most sub-class will be called first, with subsequent calls ascending the class hierarchy. The call chain will stop on the first class that returns a non-``null`` value.

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

Chiamato quando lo script dell'oggetto è istanziato, spesso dopo che l'oggetto è stato inizializzato in memoria (tramite ``Object.new()`` in GDScript, o ``new GodotObject`` in C#). Può anche essere definito per accettare parametri. Questo metodo è simile a un costruttore nella maggior parte dei linguaggi di programmazione.

\ **Nota:** Se :ref:`_init()<class_Object_private_method__init>` è definito con parametri *obbligatori*, l'oggetto con lo script può essere creato solo direttamente. Se si usano altri mezzi (come :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` o :ref:`Node.duplicate()<class_Node_method_duplicate>`) , l'inizializzazione dello script fallirà.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_iter_get**\ (\ iter\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_get>`

Restituisce il valore iterabile attuale. ``iter`` memorizza lo stato dell'iterazione, ma a differenza di :ref:`_iter_init()<class_Object_private_method__iter_init>` e :ref:`_iter_next()<class_Object_private_method__iter_next>` lo stato dovrebbe essere di sola lettura, quindi non c'è alcun :ref:`Array<class_Array>` come wrapper.

\ **Suggerimento:** in GDScript, è possibile usare un sottotipo di :ref:`Variant<class_Variant>` come tipo restituito per :ref:`_iter_get()<class_Object_private_method__iter_get>`. Il tipo specificato sarà usato per impostare il tipo della variabile iteratore nei cicli ``for``, garantendo migliore sicurezza di tipo.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_init:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_iter_init**\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_init>`

Inizializza l'iteratore. ``iter`` memorizza lo stato dell'iterazione. Poiché GDScript non supporta il passaggio di argomenti per riferimento, viene utilizzato un array con un singolo elemento come wrapper. Restituisce ``true`` finché l'iteratore non ha raggiunto la fine.

::

    class MyRange:
        var _from
        var _to

        func _init(from, to):
            assert(from <= to)
            _from = from
            _to = to

        func _iter_init(iter):
            iter[0] = _from
            return iter[0] < _to

        func _iter_next(iter):
            iter[0] += 1
            return iter[0] < _to

        func _iter_get(iter):
            return iter

    func _ready():
        var my_range = MyRange.new(2, 5)
        for x in my_range:
            print(x) # Prints 2, 3, 4.

\ **Nota:** In alternativa, è possibile ignorare ``iter`` e usare invece lo stato dell'oggetto, vedi la `documentazione online <../tutorials/scripting/gdscript/gdscript_advanced.html#custom-iterators>`__ per un esempio. Nota che in questo caso non sarà possibile riutilizzare la stessa istanza dell'iteratore in cicli annidati. Inoltre, assicurarsi di reimpostare lo stato dell'iteratore in questo metodo se si desidera riutilizzare la stessa istanza più volte.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_next:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_iter_next**\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_next>`

Sposta l'iteratore all'iterazione successiva. ``iter`` memorizza lo stato dell'iterazione. Poiché GDScript non supporta il passaggio di argomenti per riferimento, viene utilizzato un array con un singolo elemento come wrapper. Restituisce ``true`` finché l'iteratore non ha raggiunto la fine.

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

Override this method to customize the behavior of :ref:`set()<class_Object_method_set>`. Should set the ``property`` to ``value`` and return ``true``, or ``false`` if the ``property`` should be handled normally. The *exact* way to set the ``property`` is up to this method's implementation.

Combined with :ref:`_get()<class_Object_private_method__get>` and :ref:`_get_property_list()<class_Object_private_method__get_property_list>`, this method allows defining custom properties, which is particularly useful for editor plugins.

\ **Note:** This method is not called when setting built-in properties of an object, including properties defined with :ref:`@GDScript.@export<class_@GDScript_annotation_@export>`.


.. tabs::

 .. code-tab:: gdscript

    var internal_data = {}

    func _set(property, value):
        if property == "fake_property":
            # Storing the value in the fake property.
            internal_data["fake_property"] = value
            return true
        return false

    func _get_property_list():
        return [
            { "name": "fake_property", "type": TYPE_INT }
        ]

 .. code-tab:: csharp

    private Godot.Collections.Dictionary _internalData = new Godot.Collections.Dictionary();

    public override bool _Set(StringName property, Variant value)
    {
        if (property == "FakeProperty")
        {
            // Storing the value in the fake property.
            _internalData["FakeProperty"] = value;
            return true;
        }

        return false;
    }

    public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetPropertyList()
    {
        return
        [
            new Godot.Collections.Dictionary()
            {
                { "name", "FakeProperty" },
                { "type", (int)Variant.Type.Int },
            },
        ];
    }



\ **Note:** Unlike other virtual methods, this method is called automatically for every script that overrides it. This means that the base implementation should not be called via ``super`` in GDScript or its equivalents in other languages. The bottom-most sub-class will be called first, with subsequent calls ascending the class hierarchy. The call chain will stop on the first class that returns ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **_to_string**\ (\ ) |virtual| :ref:`🔗<class_Object_private_method__to_string>`

Sovrascrivi questo metodo per personalizzare il valore restituito da :ref:`to_string()<class_Object_method_to_string>` e quindi la rappresentazione dell'oggetto come :ref:`String<class_String>`.

::

    func _to_string():
        return "Benvenuto su Godot 4!"

    func _init():
        print(self)       # Stampa "Benvenuto su Godot 4!"
        var a = str(self) # a è "Benvenuto su Godot 4!"

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__validate_property:

.. rst-class:: classref-method

|void| **_validate_property**\ (\ property\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_Object_private_method__validate_property>`

Sovrascrivi questo metodo per personalizzare le proprietà esistenti. Ogni informazione sulle proprietà passa attraverso questo metodo, tranne le proprietà aggiunte con :ref:`_get_property_list()<class_Object_private_method__get_property_list>`. Il contenuto del dizionario è lo stesso di :ref:`_get_property_list()<class_Object_private_method__get_property_list>`.


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends Node

    @export var is_number_editable: bool:
        set(value):
            is_number_editable = value
            notify_property_list_changed()
    @export var number: int

    func _validate_property(property: Dictionary):
        if property.name == "number" and not is_number_editable:
            property.usage |= PROPERTY_USAGE_READ_ONLY

 .. code-tab:: csharp

    [Tool]
    public partial class MyNode : Node
    {
        private bool _isNumberEditable;

        [Export]
        public bool IsNumberEditable
        {
            get => _isNumberEditable;
            set
            {
                _isNumberEditable = value;
                NotifyPropertyListChanged();
            }
        }

        [Export]
        public int Number { get; set; }

        public override void _ValidateProperty(Godot.Collections.Dictionary property)
        {
            if (property["name"].AsStringName() == PropertyName.Number && !IsNumberEditable)
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

Aggiunge un segnale definito dall'utente con il nome ``signal``. È possibile aggiungere argomenti opzionali per il segnale come un :ref:`Array<class_Array>` di dizionari, ognuno dei quali definisce un nome (``name``) :ref:`String<class_String>` e un tipo (``type``) :ref:`int<class_int>` (vedi :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`). Vedi anche :ref:`has_user_signal()<class_Object_method_has_user_signal>` e :ref:`remove_user_signal()<class_Object_method_remove_user_signal>`.


.. tabs::

 .. code-tab:: gdscript

    add_user_signal("hurt", [
        { "name": "damage", "type": TYPE_INT },
        { "name": "source", "type": TYPE_OBJECT }
    ])

 .. code-tab:: csharp

    AddUserSignal("Hurt", new Godot.Collections.Array()
    {
        new Godot.Collections.Dictionary()
        {
            { "name", "damage" },
            { "type", (int)Variant.Type.Int },
        },
        new Godot.Collections.Dictionary()
        {
            { "name", "source" },
            { "type", (int)Variant.Type.Object },
        }
    });



.. rst-class:: classref-item-separator

----

.. _class_Object_method_call:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call**\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Object_method_call>`

Chiama il metodo denominato ``method`` sull'oggetto e restituisce il risultato. Questo metodo supporta un numero variabile di argomenti, quindi è possibile passare i parametri come un elenco separato da virgole.


.. tabs::

 .. code-tab:: gdscript

    var node = Node3D.new()
    node.call("rotate", Vector3(1.0, 0.0, 0.0), 1.571)

 .. code-tab:: csharp

    var node = new Node3D();
    node.Call(Node3D.MethodName.Rotate, new Vector3(1f, 0f, 0f), 1.571f);



\ **Nota:** In C#, ``method`` deve essere in snake_case quando si fa riferimento ai metodi integrati di Godot. Preferisci usare i nomi esposti nella classe ``MethodName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

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

Chiama il metodo denominato ``method`` sull'oggetto e ne restituisce il risultato. A differenza di :ref:`call()<class_Object_method_call>`, questo metodo si aspetta che tutti i parametri siano contenuti all'interno di ``arg_array``.


.. tabs::

 .. code-tab:: gdscript

    var node = Node3D.new()
    node.callv("rotate", [Vector3(1.0, 0.0, 0.0), 1.571])

 .. code-tab:: csharp

    var node = new Node3D();
    node.Callv(Node3D.MethodName.Rotate, new Godot.Collections.Array { new Vector3(1f, 0f, 0f), 1.571f });



\ **Nota:** In C#, ``method`` deve essere in snake_case quando si fa riferimento ai metodi integrati di Godot. Preferisci usare i nomi esposti nella classe ``MethodName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_can_translate_messages:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_translate_messages**\ (\ ) |const| :ref:`🔗<class_Object_method_can_translate_messages>`

Restituisce ``true`` se all'oggetto è permesso tradurre i messaggi con :ref:`tr()<class_Object_method_tr>` e :ref:`tr_n()<class_Object_method_tr_n>`. Vedi anche :ref:`set_message_translation()<class_Object_method_set_message_translation>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_cancel_free:

.. rst-class:: classref-method

|void| **cancel_free**\ (\ ) :ref:`🔗<class_Object_method_cancel_free>`

Se questo metodo viene chiamato durante :ref:`NOTIFICATION_PREDELETE<class_Object_constant_NOTIFICATION_PREDELETE>`, questo oggetto rifiuterà di liberarsi e rimarrà allocato. Questa è principalmente una funzione interna utilizzata per la gestione degli errori per evitare che l'utente liberi oggetti quando non è previsto.

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

Disconnette il segnale denominato ``signal`` dal chiamabile ``callable``. Se la connessione non esiste, genera un errore. Usa :ref:`is_connected()<class_Object_method_is_connected>` per assicurarti che la connessione esista.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_emit_signal:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **emit_signal**\ (\ signal\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Object_method_emit_signal>`

Emette il segnale ``signal`` per nome. Il segnale deve esistere, quindi dovrebbe essere un segnale integrato di questa classe o di una delle sue classi ereditate, o un segnale definito dall'utente (vedi :ref:`add_user_signal()<class_Object_method_add_user_signal>`). Questo metodo supporta un numero variabile di argomenti, quindi è possibile passare i parametri come un elenco separato da virgole.

Restituisce :ref:`@GlobalScope.ERR_UNAVAILABLE<class_@GlobalScope_constant_ERR_UNAVAILABLE>` se ``signal`` non esiste o i parametri non sono validi.


.. tabs::

 .. code-tab:: gdscript

    emit_signal("hit", "sword", 100)
    emit_signal("game_over")

 .. code-tab:: csharp

    EmitSignal(SignalName.Hit, "sword", 100);
    EmitSignal(SignalName.GameOver);



\ **Nota:** In C#, ``signal`` deve essere in snake_case quando si fa riferimento ai segnali integrati di Godot. Preferisci usare i nomi esposti nella classe ``SignalName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_free:

.. rst-class:: classref-method

|void| **free**\ (\ ) :ref:`🔗<class_Object_method_free>`

Elimina l'oggetto dalla memoria. I riferimenti preesistenti all'oggetto diventano non validi e qualsiasi tentativo di accedervi causerà un errore di esecuzione. Verificare i riferimenti con :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>` restituirà ``false``. Questo è equivalente alla funzione ``memdelete`` in GDExtension C++.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get>`

Restituisce il valore :ref:`Variant<class_Variant>` della proprietà ``property`` specificata. Se la proprietà ``property`` non esiste, questo metodo restituisce ``null``.


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.rotation = 1.5
    var a = node.get("rotation") # a è 1.5

 .. code-tab:: csharp

    var node = new Node2D();
    node.Rotation = 1.5f;
    var a = node.Get(Node2D.PropertyName.Rotation); // a è 1.5



\ **Nota:** In C#, ``property`` deve essere in snake_case quando si fa riferimento alle proprietà integrate di Godot. Preferisci utilizzare i nomi esposti nella classe ``PropertyName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_class:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_class**\ (\ ) |const| :ref:`🔗<class_Object_method_get_class>`

Restituisce il nome della classe integrata dell'oggetto, come :ref:`String<class_String>`. Vedi anche :ref:`is_class()<class_Object_method_is_class>`.

\ **Nota:** Questo metodo ignora le dichiarazioni ``class_name``. Se lo script di questo oggetto ha definito un ``class_name``, viene restituito invece il nome della classe integrata di base.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_incoming_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_incoming_connections**\ (\ ) |const| :ref:`🔗<class_Object_method_get_incoming_connections>`

Restituisce un :ref:`Array<class_Array>` di connessioni di segnale ricevute da questo oggetto. Ogni connessione è rappresentata come un :ref:`Dictionary<class_Dictionary>` che contiene tre voci:

- ``signal`` è un riferimento al :ref:`Signal<class_Signal>`;

- ``callable`` è un riferimento al :ref:`Callable<class_Callable>`;

- ``flags`` è una combinazione di :ref:`ConnectFlags<enum_Object_ConnectFlags>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_indexed:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_indexed**\ (\ property_path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Object_method_get_indexed>`

Ottiene la proprietà dell'oggetto indicizzata dal parametro ``property_path`` specificato. Il percorso deve essere un :ref:`NodePath<class_NodePath>` relativo all'oggetto attuale e può utilizzare il carattere due punti (``:``) per accedere alle proprietà innestate.

\ **Esempi:** ``"position:x"`` o ``"material:next_pass:blend_mode"``.


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.position = Vector2(5, -10)
    var a = node.get_indexed("position")   # a è Vector2(5, -10)
    var b = node.get_indexed("position:y") # b è -10

 .. code-tab:: csharp

    var node = new Node2D();
    node.Position = new Vector2(5, -10);
    var a = node.GetIndexed("position");   // a è Vector2(5, -10)
    var b = node.GetIndexed("position:y"); // b è -10



\ **Nota:** In C#, ``property_path`` deve essere in snake_case quando si fa riferimento alle proprietà integrate di Godot. Preferisci usare i nomi esposti nella classe ``PropertyName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

\ **Nota:** Questo metodo non supporta percorsi per i nodi in :ref:`SceneTree<class_SceneTree>`, solo percorsi di sotto-proprietà. Nel contesto dei nodi, usa invece :ref:`Node.get_node_and_resource()<class_Node_method_get_node_and_resource>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_instance_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_instance_id**\ (\ ) |const| :ref:`🔗<class_Object_method_get_instance_id>`

Restituisce l'ID univoco di istanza dell'oggetto. Questo ID può essere salvato in :ref:`EncodedObjectAsID<class_EncodedObjectAsID>` e può essere utilizzato per recuperare questa istanza di oggetto con :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>`.

\ **Nota:** Questo ID è utile solo durante la sessione attuale. Non corrisponderà a un oggetto simile se l'ID viene inviato tramite rete o caricato da un file in un secondo momento.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_meta**\ (\ name\: :ref:`StringName<class_StringName>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Object_method_get_meta>`

Restituisce il valore del metadato dell'oggetto per la voce ``name`` specificata. Se la voce non esiste, restituisce ``default``. Se ``default`` è ``null``, viene generato anche un errore.

\ **Nota:** Il nome di un metadato deve essere un identificatore valido come per il metodo :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>`.

\ **Nota:** I metadati che hanno un nome che inizia con un trattino basso (``_``) sono considerati solo per l'editor. I metadati solo per l'editor non sono visualizzati nell'Ispettore e non dovrebbero essere modificati, sebbene si possano comunque trovare con questo metodo.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_meta_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_meta_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_meta_list>`

Restituisce i nomi delle voci dei metadati dell'oggetto come un :ref:`Array<class_Array>` di :ref:`StringName<class_StringName>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_method_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_method_argument_count**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get_method_argument_count>`

Restituisce il numero di argomenti del metodo ``method`` specificato per nome.

\ **Nota:** In C#, ``method`` deve essere in snake_case quando si fa riferimento ai metodi integrati di Godot. Preferisci usare i nomi esposti nella classe ``MethodName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_method_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_method_list>`

Restituisce i metodi di questo oggetto e le loro firme sotto forma di un :ref:`Array<class_Array>` di dizionari. Ogni :ref:`Dictionary<class_Dictionary>` contiene le seguenti voci:

- ``name`` è il nome del metodo, come :ref:`String<class_String>`;

- ``args`` è un :ref:`Array<class_Array>` di dizionari che rappresentano gli argomenti;

- ``default_args`` sono gli argomenti predefiniti come :ref:`Array<class_Array>` di varianti;

- ``flags`` è una combinazione di :ref:`MethodFlags<enum_@GlobalScope_MethodFlags>`;

- ``id`` è l'identificatore interno del metodo, come :ref:`int<class_int>`;

- ``return`` è il valore restituito, come :ref:`Dictionary<class_Dictionary>`;

\ **Nota:** I dizionari di ``args`` e ``return`` sono formattati in modo identico ai risultati di :ref:`get_property_list()<class_Object_method_get_property_list>`, sebbene non vengano utilizzate tutte le voci.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_property_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_property_list>`

Restituisce la lista delle proprietà dell'oggetto come :ref:`Array<class_Array>` di dizionari. Ogni :ref:`Dictionary<class_Dictionary>` contiene le seguenti voci:

- ``name`` è il nome della proprietà, come :ref:`String<class_String>`;

- ``class_name`` è uno :ref:`StringName<class_StringName>` vuoto, a meno che la proprietà non sia :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>` e non erediti da una classe;

- ``type`` è il tipo della proprietà, come :ref:`int<class_int>` (vedi :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`);

- ``hint`` è *in che modo* si intende modificare la proprietà (vedi :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`);

- ``hint_string`` dipende dall'indicazione (vedi :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`);

- ``usage`` è una combinazione di :ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>`.

\ **Nota:** In GDScript, tutti i membri di una classe sono trattati come proprietà. In C# e GDExtension potrebbe essere necessario contrassegnare esplicitamente i membri di una classe come proprietà di Godot utilizzando decoratori o attributi.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_script**\ (\ ) |const| :ref:`🔗<class_Object_method_get_script>`

Restituisce l'istanza dello :ref:`Script<class_Script>` dell'oggetto oppure ``null`` se nessuno script è allegato.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_signal_connection_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_signal_connection_list**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get_signal_connection_list>`

Restituisce un :ref:`Array<class_Array>` di connessioni per il segnale denominato ``signal``. Ogni connessione è rappresentata come :ref:`Dictionary<class_Dictionary>` che contiene tre voci:

- ``signal`` è un riferimento al :ref:`Signal<class_Signal>`;

- ``callable`` è un riferimento al :ref:`Callable<class_Callable>` connesso;

- ``flags`` è una combinazione di :ref:`ConnectFlags<enum_Object_ConnectFlags>`.

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

Restituisce il nome del dominio di traduzione usato da :ref:`tr()<class_Object_method_tr>` e :ref:`tr_n()<class_Object_method_tr_n>`. Vedi anche :ref:`TranslationServer<class_TranslationServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_connections>`

Restituisce ``true`` se esiste una qualsiasi connessione al segnale con il nome ``signal``.

\ **Nota:** In C#, ``signal`` deve essere in snake_case quando si fa riferimento ai metodi integrati di Godot. Preferisci usare i nomi esposti nella classe ``SignalName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_meta:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_meta**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_meta>`

Restituisce ``true`` se viene trovata una voce di metadati con il nome ``name``. Vedi anche :ref:`get_meta()<class_Object_method_get_meta>`, :ref:`set_meta()<class_Object_method_set_meta>` e :ref:`remove_meta()<class_Object_method_remove_meta>`.

\ **Nota:** Il nome di un metadato deve essere un identificatore valido come per il metodo :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>`.

\ **Nota:** I metadati che hanno un nome che inizia con un trattino basso (``_``) sono considerati solo per l'editor. I metadati solo per l'editor non sono visualizzati nell'Ispettore e non dovrebbero essere modificati, sebbene si possano comunque trovare con questo metodo.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_method>`

Restituisce ``true`` se un metodo con il nome ``method`` esiste nell'oggetto.

\ **Nota:** In C#, ``method`` deve essere in snake_case quando si fa riferimento ai metodi integrati di Godot. Preferisci usare i nomi esposti nella classe ``MethodName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_signal>`

Restituisce ``true`` se un segnale con il nome ``signal`` esiste nell'oggetto.

\ **Nota:** In C#, ``signal`` deve essere in snake_case quando si fa riferimento ai segnali integrati di Godot. Preferisci usare i nomi esposti nella classe ``SignalName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_user_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_user_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_user_signal>`

Restituisce ``true`` se esiste il segnale definito dall'utente con il nome ``signal``. Sono inclusi solo i segnali aggiunti con :ref:`add_user_signal()<class_Object_method_add_user_signal>`. Vedi anche :ref:`remove_user_signal()<class_Object_method_remove_user_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_blocking_signals:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_blocking_signals**\ (\ ) |const| :ref:`🔗<class_Object_method_is_blocking_signals>`

Restituisce ``true`` se l'oggetto sta bloccando l'emissione dei suoi segnali. Vedi :ref:`set_block_signals()<class_Object_method_set_block_signals>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_class:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class**\ (\ class\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Object_method_is_class>`

Restituisce ``true`` se l'oggetto eredita dalla classe ``class`` specificata. Vedi anche :ref:`get_class()<class_Object_method_get_class>`.


.. tabs::

 .. code-tab:: gdscript

    var sprite2d = Sprite2D.new()
    sprite2d.is_class("Sprite2D") # Restituisce true
    sprite2d.is_class("Node")     # Restituisce true
    sprite2d.is_class("Node3D")   # Restituisce false

 .. code-tab:: csharp

    var sprite2D = new Sprite2D();
    sprite2D.IsClass("Sprite2D"); // Restituisce true
    sprite2D.IsClass("Node");     // Restituisce true
    sprite2D.IsClass("Node3D");   // Restituisce false



\ **Nota:** Questo metodo ignora le dichiarazioni di ``class_name`` nello script dell'oggetto.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ signal\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Object_method_is_connected>`

Restituisce ``true`` se esiste una connessione tra il segnale con il nome ``signal`` e ``callable``.

\ **Nota:** In C#, ``signal`` deve essere in snake_case quando si fa riferimento ai segnali integrati di Godot. Preferisci usare i nomi esposti nella classe ``SignalName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_queued_for_deletion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_queued_for_deletion**\ (\ ) |const| :ref:`🔗<class_Object_method_is_queued_for_deletion>`

Restituisce ``true`` se il metodo :ref:`Node.queue_free()<class_Node_method_queue_free>` è stato chiamato per l'oggetto.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_notification:

.. rst-class:: classref-method

|void| **notification**\ (\ what\: :ref:`int<class_int>`, reversed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Object_method_notification>`

Invia la notifica ``what`` specificata a tutte le classi ereditate dall'oggetto, attivando le chiamate a :ref:`_notification()<class_Object_private_method__notification>`, a partire dall'antenato più alto (la classe **Object**) e arrivando fino allo script dell'oggetto.

Se ``reversed`` è ``true``, l'ordine delle chiamate è invertito.


.. tabs::

 .. code-tab:: gdscript

    var player = Node2D.new()
    player.set_script(load("res://player.gd"))

    player.notification(NOTIFICATION_ENTER_TREE)
    # L'ordine delle chiamate è Object -> Node -> Node2D -> player.gd.

    player.notification(NOTIFICATION_ENTER_TREE, true)
    # L'ordine delle chiamate è player.gd -> Node2D -> Node -> Object.

 .. code-tab:: csharp

    var player = new Node2D();
    player.SetScript(GD.Load("res://player.gd"));

    player.Notification(NotificationEnterTree);
    // L'ordine delle chiamate è GodotObject -> Node -> Node2D -> player.gd.

    player.Notification(NotificationEnterTree, true);
    // L'ordine delle chiamate è player.gd -> Node2D -> Node -> GodotObject.



.. rst-class:: classref-item-separator

----

.. _class_Object_method_notify_property_list_changed:

.. rst-class:: classref-method

|void| **notify_property_list_changed**\ (\ ) :ref:`🔗<class_Object_method_notify_property_list_changed>`

Emette il segnale :ref:`property_list_changed<class_Object_signal_property_list_changed>`. È utilizzato principalmente per aggiornare l'editor, in modo che le estensioni dell'editor e l'Ispettore siano aggiornati correttamente.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_property_can_revert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_can_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_property_can_revert>`

Restituisce ``true`` se la proprietà ``property`` specificata ha un valore predefinito personalizzato. Usa :ref:`property_get_revert()<class_Object_method_property_get_revert>` per ottenere il valore predefinito di ``property``.

\ **Nota:** Questo metodo è utilizzato dal pannello dell'Ispettore per visualizzare un'icona di ripristino. L'oggetto deve implementare :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` per personalizzare il valore predefinito. Se :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` non è implementato, questo metodo restituisce ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_property_get_revert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **property_get_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_property_get_revert>`

Restituisce il valore predefinito personalizzato della proprietà ``property`` specificata. Usa :ref:`property_can_revert()<class_Object_method_property_can_revert>` per verificare se la proprietà ``property`` ha un valore predefinito personalizzato.

\ **Nota:** Questo metodo è utilizzato dal pannello dell'Ispettore per visualizzare un'icona di ripristino. L'oggetto deve implementare :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` per personalizzare il valore predefinito. Se :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` non è implementato, questo metodo restituisce ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_remove_meta:

.. rst-class:: classref-method

|void| **remove_meta**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_remove_meta>`

Rimuove la voce con il nome ``name`` dai metadati dell'oggetto. Vedi anche :ref:`has_meta()<class_Object_method_has_meta>`, :ref:`get_meta()<class_Object_method_get_meta>` e :ref:`set_meta()<class_Object_method_set_meta>`.

\ **Nota:** Il nome di un metadato deve essere un identificatore valido come per il metodo :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>`.

\ **Nota:** I metadati che hanno un nome che inizia con un trattino basso (``_``) sono considerati solo per l'editor. I metadati solo per l'editor non sono visualizzati nell'Ispettore e non dovrebbero essere modificati, sebbene si possano comunque trovare con questo metodo.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_remove_user_signal:

.. rst-class:: classref-method

|void| **remove_user_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_remove_user_signal>`

Rimuove il segnale utente con il nome ``signal`` dall'oggetto. Vedi anche :ref:`add_user_signal()<class_Object_method_add_user_signal>` e :ref:`has_user_signal()<class_Object_method_has_user_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set>`

Assegna ``value`` alla proprietà ``property`` specificata. Se la proprietà non esiste o il tipo del valore ``value`` non corrisponde, non succede nulla.


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.set("global_scale", Vector2(8, 2.5))
    print(node.global_scale) # Stampa (8.0, 2.5)

 .. code-tab:: csharp

    var node = new Node2D();
    node.Set(Node2D.PropertyName.GlobalScale, new Vector2(8, 2.5f));
    GD.Print(node.GlobalScale); // Stampa (8, 2.5)



\ **Nota:** In C#, ``property`` deve essere in snake_case quando si fa riferimento alle proprietà integrate di Godot. Preferisci utilizzare i nomi esposti nella classe ``PropertyName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_block_signals:

.. rst-class:: classref-method

|void| **set_block_signals**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Object_method_set_block_signals>`

Se impostato su ``true``, l'oggetto non è più in grado di emettere segnali. Di conseguenza, :ref:`emit_signal()<class_Object_method_emit_signal>` e le connessioni dei segnali non funzioneranno, finché non sarà impostato su ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_deferred:

.. rst-class:: classref-method

|void| **set_deferred**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_deferred>`

Assegna ``value`` alla proprietà ``property`` specificata, alla fine del frame attuale. Ciò equivale a chiamare :ref:`set()<class_Object_method_set>` tramite :ref:`call_deferred()<class_Object_method_call_deferred>`.


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    add_child(node)

    node.rotation = 1.5
    node.set_deferred("rotation", 3.0)
    print(node.rotation) # Stampa 1.5

    await get_tree().process_frame
    print(node.rotation) # Stampa 3.0

 .. code-tab:: csharp

    var node = new Node2D();
    node.Rotation = 1.5f;
    node.SetDeferred(Node2D.PropertyName.Rotation, 3f);
    GD.Print(node.Rotation); // Stampa 1.5

    await ToSignal(GetTree(), SceneTree.SignalName.ProcessFrame);
    GD.Print(node.Rotation); // Stampa 3.0



\ **Nota:** in C#, ``property`` deve essere in snake_case quando si fa riferimento alle proprietà integrate di Godot. Preferisci usare i nomi esposti nella classe ``PropertyName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_indexed:

.. rst-class:: classref-method

|void| **set_indexed**\ (\ property_path\: :ref:`NodePath<class_NodePath>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_indexed>`

Assegna un nuovo ``value`` alla proprietà identificata da ``property_path``. Il percorso dovrebbe essere un :ref:`NodePath<class_NodePath>` relativo a questo oggetto e può utilizzare il carattere due punti (``:``) per accedere alle proprietà innestate.


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.set_indexed("position", Vector2(42, 0))
    node.set_indexed("position:y", -10)
    print(node.position) # Stampa (42.0, -10.0)

 .. code-tab:: csharp

    var node = new Node2D();
    node.SetIndexed("position", new Vector2(42, 0));
    node.SetIndexed("position:y", -10);
    GD.Print(node.Position); // Stampa (42, -10)



\ **Nota:** In C#, ``property_path`` deve essere in snake_case quando si fa riferimento alle proprietà integrate di Godot. Preferisci usare i nomi esposti nella classe ``PropertyName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_message_translation:

.. rst-class:: classref-method

|void| **set_message_translation**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Object_method_set_message_translation>`

Se impostato su ``true``, consente all'oggetto di tradurre i messaggi con :ref:`tr()<class_Object_method_tr>` e :ref:`tr_n()<class_Object_method_tr_n>`. Abilitato per impostazione predefinita. Vedi anche :ref:`can_translate_messages()<class_Object_method_can_translate_messages>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_meta:

.. rst-class:: classref-method

|void| **set_meta**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_meta>`

Aggiunge o modifica la voce con il nome ``name`` all'interno dei metadati dell'oggetto. Per i metadati, ``value`` può essere un qualsiasi :ref:`Variant<class_Variant>`, nonostante alcuni tipi non si possano serializzare correttamente.

Se ``value`` è ``null``, la voce viene rimossa. Ciò equivale a usare :ref:`remove_meta()<class_Object_method_remove_meta>`. Vedi anche :ref:`has_meta()<class_Object_method_has_meta>` e :ref:`get_meta()<class_Object_method_get_meta>`.

\ **Nota:** il nome di un metadato deve essere un identificatore valido come per il metodo :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>`.

\ **Nota:** I metadati che hanno un nome che inizia con un trattino basso (``_``) sono considerati solo per l'editor. I metadati solo per l'editor non sono visualizzati nell'Ispettore e non dovrebbero essere modificati, sebbene si possano comunque trovare con questo metodo.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_script:

.. rst-class:: classref-method

|void| **set_script**\ (\ script\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_script>`

Allega ``script`` all'oggetto e ne crea un'istanza. Di conseguenza, viene chiamato il :ref:`_init()<class_Object_private_method__init>` dello script. Uno :ref:`Script<class_Script>` serve per estendere la funzionalità dell'oggetto.

Se uno script esiste già, la sua istanza viene staccata e i suoi valori di proprietà e lo stato vengono persi. I valori di proprietà integrate vengono comunque mantenuti.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_translation_domain:

.. rst-class:: classref-method

|void| **set_translation_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_set_translation_domain>`

Imposta il nome del dominio di traduzione usato da :ref:`tr()<class_Object_method_tr>` e :ref:`tr_n()<class_Object_method_tr_n>`. Vedi anche :ref:`TranslationServer<class_TranslationServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **to_string**\ (\ ) :ref:`🔗<class_Object_method_to_string>`

Restituisce una :ref:`String<class_String>` che rappresenta l'oggetto. Il valore predefinito è ``"<ClassName#RID>"``. Sovrascrivi :ref:`_to_string()<class_Object_private_method__to_string>` per personalizzare la rappresentazione in stringa dell'oggetto.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_tr:

.. rst-class:: classref-method

:ref:`String<class_String>` **tr**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Object_method_tr>`

Traduce la stringa ``message``, utilizzando i cataloghi di traduzione configurati nelle Impostazioni del progetto. È possibile specificare un ulteriore contesto (``context``) per facilitare la traduzione. Nota che la maggior parte dei nodi :ref:`Control<class_Control>` traduce automaticamente le proprie stringhe, quindi questo metodo è utile soprattutto per stringhe formattate o testo disegnato personalizzato.

Se :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` è ``false``, o nessuna traduzione è disponibile, questo metodo restituisce ``message`` senza modifiche. Vedi :ref:`set_message_translation()<class_Object_method_set_message_translation>`.

Per esempi dettagliati, consulta :doc:`Internazionalizzazione dei giochi <../tutorials/i18n/internationalizing_games>`.

\ **Nota:** Questo metodo non può essere utilizzato senza un'istanza di **Object**, poiché richiede il metodo :ref:`can_translate_messages()<class_Object_method_can_translate_messages>`. Per tradurre delle stringhe in un contesto statico, usa :ref:`TranslationServer.translate()<class_TranslationServer_method_translate>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_tr_n:

.. rst-class:: classref-method

:ref:`String<class_String>` **tr_n**\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Object_method_tr_n>`

Traduce la stringa ``message`` o ``plural_message``, utilizzando i cataloghi di traduzione configurati nelle Impostazioni del progetto. È possibile specificare un ulteriore contesto (``context``) per facilitare la traduzione.

Se :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` è ``false`` o nessuna traduzione è disponibile, questo metodo restituisce ``message`` o ``plural_message``, senza modifiche. Vedi :ref:`set_message_translation()<class_Object_method_set_message_translation>`.

\ ``n`` è il numero, o la quantità, del soggetto del messaggio. È utilizzato dal sistema di traduzione per recuperare la forma plurale corretta per la lingua attuale.

Per esempi dettagliati, consulta :doc:`Localizzazione tramite gettext <../tutorials/i18n/localization_using_gettext>`.

\ **Nota:** I numeri negativi e :ref:`float<class_float>` potrebbero non essere applicati correttamente ad alcuni soggetti numerabili. Si consiglia di gestire questi casi con :ref:`tr()<class_Object_method_tr>`.

\ **Nota:** Questo metodo non può essere utilizzato senza un'istanza di **Object**, poiché richiede il metodo :ref:`can_translate_messages()<class_Object_method_can_translate_messages>`. Per tradurre delle stringhe in un contesto statico, usa :ref:`TranslationServer.translate_plural()<class_TranslationServer_method_translate_plural>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
