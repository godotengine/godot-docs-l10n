:github_url: hide

.. _class_Object:

Object
======

**被繼承：** :ref:`AudioServer<class_AudioServer>`, :ref:`CameraServer<class_CameraServer>`, :ref:`ClassDB<class_ClassDB>`, :ref:`DisplayServer<class_DisplayServer>`, :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>`, :ref:`EditorInterface<class_EditorInterface>`, :ref:`EditorPaths<class_EditorPaths>`, :ref:`EditorSelection<class_EditorSelection>`, :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`, :ref:`EditorVCSInterface<class_EditorVCSInterface>`, :ref:`Engine<class_Engine>`, :ref:`EngineDebugger<class_EngineDebugger>`, :ref:`FramebufferCacheRD<class_FramebufferCacheRD>`, :ref:`GDExtensionManager<class_GDExtensionManager>`, :ref:`Geometry2D<class_Geometry2D>`, :ref:`Geometry3D<class_Geometry3D>`, :ref:`GodotInstance<class_GodotInstance>`, :ref:`Input<class_Input>`, :ref:`InputMap<class_InputMap>`, :ref:`IP<class_IP>`, :ref:`JavaClassWrapper<class_JavaClassWrapper>`, :ref:`JavaScriptBridge<class_JavaScriptBridge>`, :ref:`JNISingleton<class_JNISingleton>`, :ref:`JSONRPC<class_JSONRPC>`, :ref:`MainLoop<class_MainLoop>`, :ref:`Marshalls<class_Marshalls>`, :ref:`MovieWriter<class_MovieWriter>`, :ref:`NativeMenu<class_NativeMenu>`, :ref:`NavigationMeshGenerator<class_NavigationMeshGenerator>`, :ref:`NavigationServer2D<class_NavigationServer2D>`, :ref:`NavigationServer2DManager<class_NavigationServer2DManager>`, :ref:`NavigationServer3D<class_NavigationServer3D>`, :ref:`NavigationServer3DManager<class_NavigationServer3DManager>`, :ref:`Node<class_Node>`, :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>`, :ref:`OpenXRInteractionProfileMetadata<class_OpenXRInteractionProfileMetadata>`, :ref:`OS<class_OS>`, :ref:`Performance<class_Performance>`, :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`, :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`, :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`, :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`, :ref:`PhysicsServer2D<class_PhysicsServer2D>`, :ref:`PhysicsServer2DManager<class_PhysicsServer2DManager>`, :ref:`PhysicsServer3D<class_PhysicsServer3D>`, :ref:`PhysicsServer3DManager<class_PhysicsServer3DManager>`, :ref:`PhysicsServer3DRenderingServerHandler<class_PhysicsServer3DRenderingServerHandler>`, :ref:`ProjectSettings<class_ProjectSettings>`, :ref:`RefCounted<class_RefCounted>`, :ref:`RenderData<class_RenderData>`, :ref:`RenderingDevice<class_RenderingDevice>`, :ref:`RenderingServer<class_RenderingServer>`, :ref:`RenderSceneData<class_RenderSceneData>`, :ref:`ResourceLoader<class_ResourceLoader>`, :ref:`ResourceSaver<class_ResourceSaver>`, :ref:`ResourceUID<class_ResourceUID>`, :ref:`ScriptLanguage<class_ScriptLanguage>`, :ref:`ShaderIncludeDB<class_ShaderIncludeDB>`, :ref:`TextServerManager<class_TextServerManager>`, :ref:`ThemeDB<class_ThemeDB>`, :ref:`TileData<class_TileData>`, :ref:`Time<class_Time>`, :ref:`TranslationServer<class_TranslationServer>`, :ref:`TreeItem<class_TreeItem>`, :ref:`UndoRedo<class_UndoRedo>`, :ref:`UniformSetCacheRD<class_UniformSetCacheRD>`, :ref:`WorkerThreadPool<class_WorkerThreadPool>`, :ref:`XRServer<class_XRServer>`, :ref:`XRVRS<class_XRVRS>`

引擎中所有其他類的基底類別。

.. rst-class:: classref-introduction-group

說明
----

An advanced :ref:`Variant<class_Variant>` type. All classes in the engine inherit from Object. Each class may define new properties, methods or signals, which are available to all inheriting classes. For example, a :ref:`Sprite2D<class_Sprite2D>` instance is able to call :ref:`Node.add_child()<class_Node_method_add_child>` because it inherits from :ref:`Node<class_Node>`.

You can create new instances, using ``Object.new()`` in GDScript, or ``new GodotObject`` in C#.

To delete an Object instance, call :ref:`free()<class_Object_method_free>`. This is necessary for most classes inheriting Object, because they do not manage memory on their own, and will otherwise cause memory leaks when no longer in use. There are a few classes that perform memory management. For example, :ref:`RefCounted<class_RefCounted>` (and by extension :ref:`Resource<class_Resource>`) deletes itself when no longer referenced, and :ref:`Node<class_Node>` deletes its children when freed.

Objects can have a :ref:`Script<class_Script>` attached to them. Once the :ref:`Script<class_Script>` is instantiated, it effectively acts as an extension to the base class, allowing it to define and inherit new properties, methods and signals.

Inside a :ref:`Script<class_Script>`, :ref:`_get_property_list()<class_Object_private_method__get_property_list>` may be overridden to customize properties in several ways. This allows them to be available to the editor, display as lists of options, sub-divide into groups, save on disk, etc. Scripting languages offer easier ways to customize properties, such as with the :ref:`@GDScript.@export<class_@GDScript_annotation_@export>` annotation.

Godot is very dynamic. An object's script, and therefore its properties, methods and signals, can be changed at run-time. Because of this, there can be occasions where, for example, a property required by a method may not exist. To prevent run-time errors, see methods such as :ref:`set()<class_Object_method_set>`, :ref:`get()<class_Object_method_get>`, :ref:`call()<class_Object_method_call>`, :ref:`has_method()<class_Object_method_has_method>`, :ref:`has_signal()<class_Object_method_has_signal>`, etc. Note that these methods are **much** slower than direct references.

In GDScript, you can also check if a given property, method, or signal name exists in an object with the ``in`` operator:

::

    var node = Node.new()
    print("name" in node)         # Prints true
    print("get_parent" in node)   # Prints true
    print("tree_entered" in node) # Prints true
    print("unknown" in node)      # Prints false

Notifications are :ref:`int<class_int>` constants commonly sent and received by objects. For example, on every rendered frame, the :ref:`SceneTree<class_SceneTree>` notifies nodes inside the tree with a :ref:`Node.NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`. The nodes receive it and may call :ref:`Node._process()<class_Node_private_method__process>` to update. To make use of notifications, see :ref:`notification()<class_Object_method_notification>` and :ref:`_notification()<class_Object_private_method__notification>`.

Lastly, every object can also contain metadata (data about data). :ref:`set_meta()<class_Object_method_set_meta>` can be useful to store information that the object itself does not depend on. To keep your code clean, making excessive use of metadata is discouraged.

\ **Note:** Unlike references to a :ref:`RefCounted<class_RefCounted>`, references to an object stored in a variable can become invalid without being set to ``null``. To check if an object has been deleted, do *not* compare it against ``null``. Instead, use :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`. It's also recommended to inherit from :ref:`RefCounted<class_RefCounted>` for classes storing data instead of **Object**.

\ **Note:** The ``script`` is not exposed like most properties. To set or get an object's :ref:`Script<class_Script>` in code, use :ref:`set_script()<class_Object_method_set_script>` and :ref:`get_script()<class_Object_method_get_script>`, respectively.

\ **Note:** In a boolean context, an **Object** will evaluate to ``false`` if it is equal to ``null`` or it has been freed. Otherwise, an **Object** will always evaluate to ``true``. See also :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`Object 類介紹 <../engine_details/architecture/object_class>`

- :doc:`何時以及如何避免為任何事情使用節點 <../tutorials/best_practices/node_alternatives>`

- :doc:`物件通知 <../tutorials/best_practices/godot_notifications>`

.. rst-class:: classref-reftable-group

方法
----

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

訊號
----

.. _class_Object_signal_property_list_changed:

.. rst-class:: classref-signal

**property_list_changed**\ (\ ) :ref:`🔗<class_Object_signal_property_list_changed>`

呼叫 :ref:`notify_property_list_changed()<class_Object_method_notify_property_list_changed>` 時發出。

.. rst-class:: classref-item-separator

----

.. _class_Object_signal_script_changed:

.. rst-class:: classref-signal

**script_changed**\ (\ ) :ref:`🔗<class_Object_signal_script_changed>`

該物件的腳本發生改變時發出。

\ **注意：**\ 發出這個訊號時，新腳本還沒有初始化。如果你需要存取新腳本，請用 :ref:`CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>` 推遲與這個訊號的連接。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Object_ConnectFlags:

.. rst-class:: classref-enumeration

enum **ConnectFlags**: :ref:`🔗<enum_Object_ConnectFlags>`

.. _class_Object_constant_CONNECT_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_DEFERRED** = ``1``

延遲連接會在空閒時觸發 :ref:`Callable<class_Callable>`\ （目前影格的末尾），不會立即觸發。

.. _class_Object_constant_CONNECT_PERSIST:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_PERSIST** = ``2``

Persisting connections are stored when the object is serialized (such as when using :ref:`PackedScene.pack()<class_PackedScene_method_pack>`). In the editor, connections created through the Signals dock are always persisting.

\ **Note:** Connections to lambda functions (that is, when the function code is embedded in the :ref:`connect()<class_Object_method_connect>` call) cannot be made persistent.

.. _class_Object_constant_CONNECT_ONE_SHOT:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_ONE_SHOT** = ``4``

一次性連接，會在觸發後自行斷開。

.. _class_Object_constant_CONNECT_REFERENCE_COUNTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_REFERENCE_COUNTED** = ``8``

引用計數連接可以多次分配給同一個 :ref:`Callable<class_Callable>`\ 。每斷開一次連接會讓內部計數器減一。訊號會在計數器變為 0 時完全斷開連接。

.. _class_Object_constant_CONNECT_APPEND_SOURCE_OBJECT:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_APPEND_SOURCE_OBJECT** = ``16``

The source object is automatically bound when a :ref:`PackedScene<class_PackedScene>` is instantiated. If this flag bit is enabled, the source object will be appended right after the original arguments of the signal.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Object_constant_NOTIFICATION_POSTINITIALIZE:

.. rst-class:: classref-constant

**NOTIFICATION_POSTINITIALIZE** = ``0`` :ref:`🔗<class_Object_constant_NOTIFICATION_POSTINITIALIZE>`

該物件初始化時收到的通知，發生在附加腳本之前。內部使用。

.. _class_Object_constant_NOTIFICATION_PREDELETE:

.. rst-class:: classref-constant

**NOTIFICATION_PREDELETE** = ``1`` :ref:`🔗<class_Object_constant_NOTIFICATION_PREDELETE>`

Notification received when the object is about to be deleted. Can be used like destructors in object-oriented programming languages.

This notification is sent in reversed order.

.. _class_Object_constant_NOTIFICATION_EXTENSION_RELOADED:

.. rst-class:: classref-constant

**NOTIFICATION_EXTENSION_RELOADED** = ``2`` :ref:`🔗<class_Object_constant_NOTIFICATION_EXTENSION_RELOADED>`

Notification received when the object finishes hot reloading. This notification is only sent for extensions classes and derived.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

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

Called when the object's script is instantiated, oftentimes after the object is initialized in memory (through ``Object.new()`` in GDScript, or ``new GodotObject`` in C#). It can be also defined to take in parameters. This method is similar to a constructor in most programming languages.

\ **Note:** If :ref:`_init()<class_Object_private_method__init>` is defined with *required* parameters, the Object with script may only be created directly. If any other means (such as :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` or :ref:`Node.duplicate()<class_Node_method_duplicate>`) are used, the script's initialization will fail.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_iter_get**\ (\ iter\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_get>`

Returns the current iterable value. ``iter`` stores the iteration state, but unlike :ref:`_iter_init()<class_Object_private_method__iter_init>` and :ref:`_iter_next()<class_Object_private_method__iter_next>` the state is supposed to be read-only, so there is no :ref:`Array<class_Array>` wrapper.

\ **Tip:** In GDScript, you can use a subtype of :ref:`Variant<class_Variant>` as the return type for :ref:`_iter_get()<class_Object_private_method__iter_get>`. The specified type will be used to set the type of the iterator variable in ``for`` loops, enhancing type safety.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_init:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_iter_init**\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_init>`

Initializes the iterator. ``iter`` stores the iteration state. Since GDScript does not support passing arguments by reference, a single-element array is used as a wrapper. Returns ``true`` so long as the iterator has not reached the end.

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

\ **Note:** Alternatively, you can ignore ``iter`` and use the object's state instead, see `online docs <../tutorials/scripting/gdscript/gdscript_advanced.html#custom-iterators>`__ for an example. Note that in this case you will not be able to reuse the same iterator instance in nested loops. Also, make sure you reset the iterator state in this method if you want to reuse the same instance multiple times.

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_next:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_iter_next**\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_next>`

Moves the iterator to the next iteration. ``iter`` stores the iteration state. Since GDScript does not support passing arguments by reference, a single-element array is used as a wrapper. Returns ``true`` so long as the iterator has not reached the end.

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

Override this method to customize the return value of :ref:`to_string()<class_Object_method_to_string>`, and therefore the object's representation as a :ref:`String<class_String>`.

::

    func _to_string():
        return "Welcome to Godot 4!"

    func _init():
        print(self)       # Prints "Welcome to Godot 4!"
        var a = str(self) # a is "Welcome to Godot 4!"

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__validate_property:

.. rst-class:: classref-method

|void| **_validate_property**\ (\ property\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_Object_private_method__validate_property>`

Override this method to customize existing properties. Every property info goes through this method, except properties added with :ref:`_get_property_list()<class_Object_private_method__get_property_list>`. The dictionary contents is the same as in :ref:`_get_property_list()<class_Object_private_method__get_property_list>`.


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

Adds a user-defined signal named ``signal``. Optional arguments for the signal can be added as an :ref:`Array<class_Array>` of dictionaries, each defining a ``name`` :ref:`String<class_String>` and a ``type`` :ref:`int<class_int>` (see :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`). See also :ref:`has_user_signal()<class_Object_method_has_user_signal>` and :ref:`remove_user_signal()<class_Object_method_remove_user_signal>`.


.. tabs::

 .. code-tab:: gdscript

    add_user_signal("hurt", [
        { "name": "damage", "type": TYPE_INT },
        { "name": "source", "type": TYPE_OBJECT }
    ])

 .. code-tab:: csharp

    AddUserSignal("Hurt",
    [
        new Godot.Collections.Dictionary()
        {
            { "name", "damage" },
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

在對象上呼叫 ``method`` 並返回結果。該方法支援可變數量的參數，因此參數可以作為逗號分隔的列表傳遞。


.. tabs::

 .. code-tab:: gdscript

    var node = Node3D.new()
    node.call("rotate", Vector3(1.0, 0.0, 0.0), 1.571)

 .. code-tab:: csharp

    var node = new Node3D();
    node.Call(Node3D.MethodName.Rotate, new Vector3(1f, 0f, 0f), 1.571f);



\ **注意：**\ 在 C# 中，在引用 Godot 內建方法時，\ ``method`` 必須為 snake_case 格式。最好使用 ``MethodName`` 類中公開的名稱，以避免在每次呼叫時分配新的 :ref:`StringName<class_StringName>`\ 。

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

Calls the ``method`` on the object and returns the result. Unlike :ref:`call()<class_Object_method_call>`, this method expects all parameters to be contained inside ``arg_array``.


.. tabs::

 .. code-tab:: gdscript

    var node = Node3D.new()
    node.callv("rotate", [Vector3(1.0, 0.0, 0.0), 1.571])

 .. code-tab:: csharp

    var node = new Node3D();
    node.Callv(Node3D.MethodName.Rotate, [new Vector3(1f, 0f, 0f), 1.571f]);



\ **Note:** In C#, ``method`` must be in snake_case when referring to built-in Godot methods. Prefer using the names exposed in the ``MethodName`` class to avoid allocating a new :ref:`StringName<class_StringName>` on each call.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_can_translate_messages:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_translate_messages**\ (\ ) |const| :ref:`🔗<class_Object_method_can_translate_messages>`

如果允許該物件使用 :ref:`tr()<class_Object_method_tr>` 和 :ref:`tr_n()<class_Object_method_tr_n>` 翻譯消息，則返回 ``true``\ 。另見 :ref:`set_message_translation()<class_Object_method_set_message_translation>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_cancel_free:

.. rst-class:: classref-method

|void| **cancel_free**\ (\ ) :ref:`🔗<class_Object_method_cancel_free>`

如果在 :ref:`NOTIFICATION_PREDELETE<class_Object_constant_NOTIFICATION_PREDELETE>` 時呼叫該方法，則該物件拒絕釋放，仍會保持已分配的狀態。主要是作為內建函式使用，用於錯誤處理，避免使用者釋放不想釋放的對象。

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

按名稱從給定的 ``callable`` 斷開 ``signal``\ 。如果連接不存在，則生成一個錯誤。使用 :ref:`is_connected()<class_Object_method_is_connected>` 確保該連接存在。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_emit_signal:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **emit_signal**\ (\ signal\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Object_method_emit_signal>`

按名稱發出給定的 ``signal``\ 。該訊號必須存在，所以它應該是該類或其繼承類之一的內建訊號，或者是使用者定義的訊號（參見 :ref:`add_user_signal()<class_Object_method_add_user_signal>`\ ）。該方法支持可變數量的參數，所以參數可以以逗號分隔的列表形式傳遞。

如果 ``signal`` 不存在或參數無效，則返回 :ref:`@GlobalScope.ERR_UNAVAILABLE<class_@GlobalScope_constant_ERR_UNAVAILABLE>`\ 。


.. tabs::

 .. code-tab:: gdscript

    emit_signal("hit", "劍", 100)
    emit_signal("game_over")

 .. code-tab:: csharp

    EmitSignal(SignalName.Hit, "劍", 100);
    EmitSignal(SignalName.GameOver);



\ **注意：**\ 在C#中，在引用內建 Godot 訊號時，\ ``signal`` 必須是 snake_case。最好使用 ``SignalName`` 類中公開的名稱，以避免在每次呼叫時分配一個新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_free:

.. rst-class:: classref-method

|void| **free**\ (\ ) :ref:`🔗<class_Object_method_free>`

Deletes the object from memory. Pre-existing references to the object become invalid, and any attempt to access them will result in a runtime error. Checking the references with :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>` will return ``false``. This is equivalent to the ``memdelete`` function in GDExtension C++.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get>`

Returns the :ref:`Variant<class_Variant>` value of the given ``property``. If the ``property`` does not exist, this method returns ``null``.


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.rotation = 1.5
    var a = node.get("rotation") # a is 1.5

 .. code-tab:: csharp

    var node = new Node2D();
    node.Rotation = 1.5f;
    var a = node.Get(Node2D.PropertyName.Rotation); // a is 1.5



\ **Note:** In C#, ``property`` must be in snake_case when referring to built-in Godot properties. Prefer using the names exposed in the ``PropertyName`` class to avoid allocating a new :ref:`StringName<class_StringName>` on each call.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_class:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_class**\ (\ ) |const| :ref:`🔗<class_Object_method_get_class>`

返回該物件的內建類別名稱，作為一個 :ref:`String<class_String>`\ 。另請參閱 :ref:`is_class()<class_Object_method_is_class>`\ 。

\ **注意：**\ 該方法將忽略 ``class_name`` 宣告。如果該物件的腳本定義了一個 ``class_name``\ ，則改為返回內建基底類別別名稱稱。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_incoming_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_incoming_connections**\ (\ ) |const| :ref:`🔗<class_Object_method_get_incoming_connections>`

返回該物件接收到的訊號連接的 :ref:`Array<class_Array>`\ 。每個連接都被表示為包含三個條目的 :ref:`Dictionary<class_Dictionary>`\ ：

- ``signal`` 是對 :ref:`Signal<class_Signal>` 的引用；

- ``callable`` 是對 :ref:`Callable<class_Callable>` 的引用；

- ``flags`` 是 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 的組合。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_indexed:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_indexed**\ (\ property_path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Object_method_get_indexed>`

獲取該物件的某個屬性，該屬性的屬性路徑由 ``property_path`` 給出。該路徑應該是相對於目前物件的 :ref:`NodePath<class_NodePath>`\ ，可是使用英文冒號（\ ``:``\ ）存取內嵌屬性。

\ **範例：**\ ``"position:x"`` 或 ``"material:next_pass:blend_mode"``\ 。


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.position = Vector2(5, -10)
    var a = node.get_indexed("position")   # a 為 Vector2(5, -10)
    var b = node.get_indexed("position:y") # b 為 -10

 .. code-tab:: csharp

    var node = new Node2D();
    node.Position = new Vector2(5, -10);
    var a = node.GetIndexed("position");   // a 為 Vector2(5, -10)
    var b = node.GetIndexed("position:y"); // b 為 -10



\ **注意：**\ 在 C# 中引用內建 Godot 屬性時 ``property_path`` 必須為 snake_case 蛇形大小寫。請優先使用 ``PropertyName`` 類中暴露的名稱，避免每次呼叫都重新分配一個 :ref:`StringName<class_StringName>`\ 。

\ **注意：**\ 這個方法不支援指向 :ref:`SceneTree<class_SceneTree>` 中節點的路徑，僅支援子屬性路徑。在節點語境下，請改用 :ref:`Node.get_node_and_resource()<class_Node_method_get_node_and_resource>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_instance_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_instance_id**\ (\ ) |const| :ref:`🔗<class_Object_method_get_instance_id>`

Returns the object's unique instance ID. This ID can be saved in :ref:`EncodedObjectAsID<class_EncodedObjectAsID>`, and can be used to retrieve this object instance with :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>`.

\ **Note:** This ID is only useful during the current session. It won't correspond to a similar object if the ID is sent over a network, or loaded from a file at a later time.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_meta**\ (\ name\: :ref:`StringName<class_StringName>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Object_method_get_meta>`

返回該對象的中繼資料中名稱為 ``name`` 的條目。如果不存在該條目，則返回 ``default``\ 。如果 ``default`` 為 ``null``\ ，則還會生成錯誤。

\ **注意：**\ 中繼資料的名稱必須是符合 :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>` 的有效識別字。

\ **注意：**\ 名稱以底線（\ ``_``\ ）開頭的中繼資料僅供編輯器使用。僅供編輯器使用的中繼資料不會在“屬性檢視器”中顯示，雖然仍然能夠被這個方法找到，但是不應該進行編輯。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_meta_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_meta_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_meta_list>`

Returns the object's metadata entry names as an :ref:`Array<class_Array>` of :ref:`StringName<class_StringName>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_method_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_method_argument_count**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get_method_argument_count>`

Returns the number of arguments of the given ``method`` by name.

\ **Note:** In C#, ``method`` must be in snake_case when referring to built-in Godot methods. Prefer using the names exposed in the ``MethodName`` class to avoid allocating a new :ref:`StringName<class_StringName>` on each call.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_method_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_method_list>`

將該物件的方法及對應簽章作為字典 :ref:`Array<class_Array>` 返回。每個 :ref:`Dictionary<class_Dictionary>` 包含以下條目：

-``name`` 是該方法的名稱，為 :ref:`String<class_String>`\ ；

-``args`` 是代表參數的字典 :ref:`Array<class_Array>`\ ；

-``default_args`` 是預設參數，為變體 :ref:`Array<class_Array>`\ ；

-``flags`` 是 :ref:`MethodFlags<enum_@GlobalScope_MethodFlags>` 的組合；

-``id`` 是該方法的內部識別字 :ref:`int<class_int>`\ ；

-``return`` 是返回值，為 :ref:`Dictionary<class_Dictionary>`\ ；

\ **注意：**\ ``args`` 和 ``return`` 的字典格式與 :ref:`get_property_list()<class_Object_method_get_property_list>` 的結果相同，但不會用到所有條目。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_property_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_property_list>`

以字典 :ref:`Array<class_Array>` 的形式返回該物件的屬性列表。每個 :ref:`Dictionary<class_Dictionary>` 中都包含如下條目：

- ``name`` 是該屬性的名稱，型別為 :ref:`String<class_String>`\ ；

- ``class_name`` 為空 :ref:`StringName<class_StringName>`\ ，除非該屬性為 :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>` 並繼承自某個類；

- ``type`` 是該屬性的型別，型別為 :ref:`int<class_int>`\ （見 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ）；

- ``hint`` 是應當\ *如何*\ 編輯該屬性（見 :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`\ ）；

- ``hint_string`` 取決於 hint（見 :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`\ ）；

- ``usage`` 是 :ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>` 的組合。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_script**\ (\ ) |const| :ref:`🔗<class_Object_method_get_script>`

返回該物件的 :ref:`Script<class_Script>` 實例，如果沒有附加腳本，則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_signal_connection_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_signal_connection_list**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get_signal_connection_list>`

Returns an :ref:`Array<class_Array>` of connections for the given ``signal`` name. Each connection is represented as a :ref:`Dictionary<class_Dictionary>` that contains three entries:

- ``signal`` is a reference to the :ref:`Signal<class_Signal>`;

- ``callable`` is a reference to the connected :ref:`Callable<class_Callable>`;

- ``flags`` is a combination of :ref:`ConnectFlags<enum_Object_ConnectFlags>`.

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

Returns the name of the translation domain used by :ref:`tr()<class_Object_method_tr>` and :ref:`tr_n()<class_Object_method_tr_n>`. See also :ref:`TranslationServer<class_TranslationServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_connections>`

Returns ``true`` if any connection exists on the given ``signal`` name.

\ **Note:** In C#, ``signal`` must be in snake_case when referring to built-in Godot methods. Prefer using the names exposed in the ``SignalName`` class to avoid allocating a new :ref:`StringName<class_StringName>` on each call.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_meta:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_meta**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_meta>`

如果找到名稱為 ``name`` 的中繼資料條目，則返回 ``true``\ 。另請參閱 :ref:`get_meta()<class_Object_method_get_meta>`\ 、\ :ref:`set_meta()<class_Object_method_set_meta>` 和 :ref:`remove_meta()<class_Object_method_remove_meta>`\ 。

\ **注意：**\ 中繼資料的名稱 ``name`` 必須是符合 :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>` 的有效識別字。

\ **注意：**\ 名稱 ``name`` 以底線（\ ``_``\ ）開頭的中繼資料僅供編輯器使用。僅供編輯器使用的中繼資料不會在“屬性檢視器”中顯示，雖然仍然能夠被這個方法找到，但是不應該進行編輯。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_method>`

如果該物件中存在給定的方法名 ``method``\ ，則返回 ``true``\ 。

\ **注意：**\ 在 C# 中引用內建 Godot 方法時 ``method`` 必須為 snake_case 蛇形大小寫。請優先使用 ``MethodName`` 類中暴露的名稱，避免每次呼叫都重新分配一個 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_signal>`

Returns ``true`` if the given ``signal`` name exists in the object.

\ **Note:** In C#, ``signal`` must be in snake_case when referring to built-in Godot signals. Prefer using the names exposed in the ``SignalName`` class to avoid allocating a new :ref:`StringName<class_StringName>` on each call.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_user_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_user_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_user_signal>`

Returns ``true`` if the given user-defined ``signal`` name exists. Only signals added with :ref:`add_user_signal()<class_Object_method_add_user_signal>` are included. See also :ref:`remove_user_signal()<class_Object_method_remove_user_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_blocking_signals:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_blocking_signals**\ (\ ) |const| :ref:`🔗<class_Object_method_is_blocking_signals>`

如果該物件正在阻止發出訊號，則返回 ``true``\ 。見 :ref:`set_block_signals()<class_Object_method_set_block_signals>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_class:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class**\ (\ class\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Object_method_is_class>`

如果該物件繼承自給定的 ``class`` 則返回 ``true``\ 。另見 :ref:`get_class()<class_Object_method_get_class>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var sprite2d = Sprite2D.new()
    sprite2d.is_class("Sprite2D") # 返回 true
    sprite2d.is_class("Node")     # 返回 true
    sprite2d.is_class("Node3D")   # 返回 false

 .. code-tab:: csharp

    var sprite2D = new Sprite2D();
    sprite2D.IsClass("Sprite2D"); // 返回 true
    sprite2D.IsClass("Node");     // 返回 true
    sprite2D.IsClass("Node3D");   // 返回 false



\ **注意：**\ 此方法忽略物件腳本中的 ``class_name`` 宣告。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ signal\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Object_method_is_connected>`

Returns ``true`` if a connection exists between the given ``signal`` name and ``callable``.

\ **Note:** In C#, ``signal`` must be in snake_case when referring to built-in Godot signals. Prefer using the names exposed in the ``SignalName`` class to avoid allocating a new :ref:`StringName<class_StringName>` on each call.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_queued_for_deletion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_queued_for_deletion**\ (\ ) |const| :ref:`🔗<class_Object_method_is_queued_for_deletion>`

如果為該物件呼叫了 :ref:`Node.queue_free()<class_Node_method_queue_free>` 方法，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_notification:

.. rst-class:: classref-method

|void| **notification**\ (\ what\: :ref:`int<class_int>`, reversed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Object_method_notification>`

將給定的 ``what`` 通知發送給物件繼承的所有類，觸發對 :ref:`_notification()<class_Object_private_method__notification>` 的呼叫，從最高祖先（\ **Object** 類）開始，向下一直到物件的腳本。

如果 ``reversed`` 為 ``true``\ ，則呼叫順序會被顛倒。


.. tabs::

 .. code-tab:: gdscript

    var player = Node2D.new()
    player.set_script(load("res://player.gd"))

    player.notification(NOTIFICATION_ENTER_TREE)
    # 呼叫順序是 Object -> Node -> Node2D -> player.gd。

    player.notification(NOTIFICATION_ENTER_TREE, true)
    # 呼叫順序是 player.gd -> Node2D -> Node -> Object。

 .. code-tab:: csharp

    var player = new Node2D();
    player.SetScript(GD.Load("res://player.gd"));

    player.Notification(NotificationEnterTree);
    // 呼叫順序是 GodotObject -> Node -> Node2D -> player.gd。

    player.Notification(NotificationEnterTree, true);
    // 呼叫順序是 player.gd -> Node2D -> Node -> GodotObject。



.. rst-class:: classref-item-separator

----

.. _class_Object_method_notify_property_list_changed:

.. rst-class:: classref-method

|void| **notify_property_list_changed**\ (\ ) :ref:`🔗<class_Object_method_notify_property_list_changed>`

發出 :ref:`property_list_changed<class_Object_signal_property_list_changed>` 訊號。這主要是用來更新編輯器，以讓屬性檢視器和編輯器外掛程式被正確更新。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_property_can_revert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_can_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_property_can_revert>`

如果給定的屬性 ``property`` 有自訂的預設值，則返回 ``true``\ 。請使用 :ref:`property_get_revert()<class_Object_method_property_get_revert>` 獲取 ``property`` 的預設值。

\ **注意：**\ “屬性檢視器”面板會使用這個方法來顯示恢復圖示。該物件必須實作 :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` 來自訂預設值。如果未實作 :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>`\ ，則這個方法返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_property_get_revert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **property_get_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_property_get_revert>`

返回給定的屬性 ``property`` 的自訂預設值。請使用 :ref:`property_can_revert()<class_Object_method_property_can_revert>` 檢查 ``property`` 是否有自訂的預設值。

\ **注意：**\ “屬性檢視器”面板會使用這個方法來顯示恢復圖示。該物件必須實作 :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` 來自訂預設值。如果未實作 :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>`\ ，則這個方法返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_remove_meta:

.. rst-class:: classref-method

|void| **remove_meta**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_remove_meta>`

從對象的中繼資料中移除名稱為 ``name`` 的條目。另請參閱 :ref:`has_meta()<class_Object_method_has_meta>`\ 、\ :ref:`get_meta()<class_Object_method_get_meta>`\ 、和 :ref:`set_meta()<class_Object_method_set_meta>`\ 。

\ **注意：**\ 中繼資料的名稱 ``name`` 必須是符合 :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>` 的有效識別字。

\ **注意：**\ 名稱 ``name`` 以底線（\ ``_``\ ）開頭的中繼資料僅供編輯器使用。僅供編輯器使用的中繼資料不會在“屬性檢視器”中顯示，雖然仍然能夠被這個方法找到，但是不應該進行編輯。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_remove_user_signal:

.. rst-class:: classref-method

|void| **remove_user_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_remove_user_signal>`

Removes the given user signal ``signal`` from the object. See also :ref:`add_user_signal()<class_Object_method_add_user_signal>` and :ref:`has_user_signal()<class_Object_method_has_user_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set>`

Assigns ``value`` to the given ``property``. If the property does not exist or the given ``value``'s type doesn't match, nothing happens.


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.set("global_scale", Vector2(8, 2.5))
    print(node.global_scale) # Prints (8.0, 2.5)

 .. code-tab:: csharp

    var node = new Node2D();
    node.Set(Node2D.PropertyName.GlobalScale, new Vector2(8, 2.5f));
    GD.Print(node.GlobalScale); // Prints (8, 2.5)



\ **Note:** In C#, ``property`` must be in snake_case when referring to built-in Godot properties. Prefer using the names exposed in the ``PropertyName`` class to avoid allocating a new :ref:`StringName<class_StringName>` on each call.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_block_signals:

.. rst-class:: classref-method

|void| **set_block_signals**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Object_method_set_block_signals>`

如果設定為 ``true``\ ，這該物件將無法發出訊號。因此，\ :ref:`emit_signal()<class_Object_method_emit_signal>` 和訊號連接將不起作用，直到該屬性被設定為 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_deferred:

.. rst-class:: classref-method

|void| **set_deferred**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_deferred>`

Assigns ``value`` to the given ``property``, at the end of the current frame. This is equivalent to calling :ref:`set()<class_Object_method_set>` through :ref:`call_deferred()<class_Object_method_call_deferred>`.


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    add_child(node)

    node.rotation = 1.5
    node.set_deferred("rotation", 3.0)
    print(node.rotation) # Prints 1.5

    await get_tree().process_frame
    print(node.rotation) # Prints 3.0

 .. code-tab:: csharp

    var node = new Node2D();
    node.Rotation = 1.5f;
    node.SetDeferred(Node2D.PropertyName.Rotation, 3f);
    GD.Print(node.Rotation); // Prints 1.5

    await ToSignal(GetTree(), SceneTree.SignalName.ProcessFrame);
    GD.Print(node.Rotation); // Prints 3.0



\ **Note:** In C#, ``property`` must be in snake_case when referring to built-in Godot properties. Prefer using the names exposed in the ``PropertyName`` class to avoid allocating a new :ref:`StringName<class_StringName>` on each call.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_indexed:

.. rst-class:: classref-method

|void| **set_indexed**\ (\ property_path\: :ref:`NodePath<class_NodePath>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_indexed>`

Assigns a new ``value`` to the property identified by the ``property_path``. The path should be a :ref:`NodePath<class_NodePath>` relative to this object, and can use the colon character (``:``) to access nested properties.


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.set_indexed("position", Vector2(42, 0))
    node.set_indexed("position:y", -10)
    print(node.position) # Prints (42.0, -10.0)

 .. code-tab:: csharp

    var node = new Node2D();
    node.SetIndexed("position", new Vector2(42, 0));
    node.SetIndexed("position:y", -10);
    GD.Print(node.Position); // Prints (42, -10)



\ **Note:** In C#, ``property_path`` must be in snake_case when referring to built-in Godot properties. Prefer using the names exposed in the ``PropertyName`` class to avoid allocating a new :ref:`StringName<class_StringName>` on each call.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_message_translation:

.. rst-class:: classref-method

|void| **set_message_translation**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Object_method_set_message_translation>`

如果設定為 ``true``\ ，則允許物件使用 :ref:`tr()<class_Object_method_tr>` 和 :ref:`tr_n()<class_Object_method_tr_n>` 翻譯消息。該屬性預設啟用。另請參閱 :ref:`can_translate_messages()<class_Object_method_can_translate_messages>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_meta:

.. rst-class:: classref-method

|void| **set_meta**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_meta>`

新增或更改對象中繼資料中名稱為 ``name`` 的條目。中繼資料值 ``value`` 可以是任何 :ref:`Variant<class_Variant>`\ ，儘管某些型別無法正確序列化。

如果 ``value`` 為 ``null``\ ，則該條目被移除。等價於使用 :ref:`remove_meta()<class_Object_method_remove_meta>`\ 。另見 :ref:`has_meta()<class_Object_method_has_meta>` 和 :ref:`get_meta()<class_Object_method_get_meta>`\ 。

\ **注意：**\ 中繼資料的名稱 ``name`` 必須是符合 :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>` 的有效識別字。

\ **注意：**\ 名稱 ``name`` 以底線（\ ``_``\ ）開頭的中繼資料僅供編輯器使用。僅供編輯器使用的中繼資料不會在“屬性檢視器”中顯示，雖然仍然能夠被這個方法找到，但是不應該進行編輯。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_script:

.. rst-class:: classref-method

|void| **set_script**\ (\ script\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_script>`

將腳本 ``script`` 附加至該對象，並進行產生實體。因此會呼叫該腳本的 :ref:`_init()<class_Object_private_method__init>`\ 。\ :ref:`Script<class_Script>` 可用於擴充物件的功能。

如果已存在腳本，則該腳本的實例會被分離，其屬性值和狀態會丟失。仍會保留內建屬性的值。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_translation_domain:

.. rst-class:: classref-method

|void| **set_translation_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_set_translation_domain>`

Sets the name of the translation domain used by :ref:`tr()<class_Object_method_tr>` and :ref:`tr_n()<class_Object_method_tr_n>`. See also :ref:`TranslationServer<class_TranslationServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **to_string**\ (\ ) :ref:`🔗<class_Object_method_to_string>`

返回表示物件的 :ref:`String<class_String>`\ 。預設為 ``"<ClassName#RID>"``\ 。覆蓋 :ref:`_to_string()<class_Object_private_method__to_string>` 以自訂物件的字串表示形式。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_tr:

.. rst-class:: classref-method

:ref:`String<class_String>` **tr**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Object_method_tr>`

Translates a ``message``, using the translation catalogs configured in the Project Settings. Further ``context`` can be specified to help with the translation. Note that most :ref:`Control<class_Control>` nodes automatically translate their strings, so this method is mostly useful for formatted strings or custom drawn text.

If :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` is ``false``, or no translation is available, this method returns the ``message`` without changes. See :ref:`set_message_translation()<class_Object_method_set_message_translation>`.

For detailed examples, see :doc:`Internationalizing games <../tutorials/i18n/internationalizing_games>`.

\ **Note:** This method can't be used without an **Object** instance, as it requires the :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` method. To translate strings in a static context, use :ref:`TranslationServer.translate()<class_TranslationServer_method_translate>`.

.. rst-class:: classref-item-separator

----

.. _class_Object_method_tr_n:

.. rst-class:: classref-method

:ref:`String<class_String>` **tr_n**\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Object_method_tr_n>`

Translates a ``message`` or ``plural_message``, using the translation catalogs configured in the Project Settings. Further ``context`` can be specified to help with the translation.

If :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` is ``false``, or no translation is available, this method returns ``message`` or ``plural_message``, without changes. See :ref:`set_message_translation()<class_Object_method_set_message_translation>`.

The ``n`` is the number, or amount, of the message's subject. It is used by the translation system to fetch the correct plural form for the current language.

For detailed examples, see :doc:`Localization using gettext <../tutorials/i18n/localization_using_gettext>`.

\ **Note:** Negative and :ref:`float<class_float>` numbers may not properly apply to some countable subjects. It's recommended to handle these cases with :ref:`tr()<class_Object_method_tr>`.

\ **Note:** This method can't be used without an **Object** instance, as it requires the :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` method. To translate strings in a static context, use :ref:`TranslationServer.translate_plural()<class_TranslationServer_method_translate_plural>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
