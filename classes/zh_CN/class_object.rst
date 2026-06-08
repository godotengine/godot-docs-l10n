:github_url: hide

.. _class_Object:

Object
======

**派生：** :ref:`AccessibilityServer<class_AccessibilityServer>`, :ref:`AudioServer<class_AudioServer>`, :ref:`CameraServer<class_CameraServer>`, :ref:`ClassDB<class_ClassDB>`, :ref:`DisplayServer<class_DisplayServer>`, :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>`, :ref:`EditorInterface<class_EditorInterface>`, :ref:`EditorPaths<class_EditorPaths>`, :ref:`EditorSelection<class_EditorSelection>`, :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`, :ref:`EditorVCSInterface<class_EditorVCSInterface>`, :ref:`Engine<class_Engine>`, :ref:`EngineDebugger<class_EngineDebugger>`, :ref:`FramebufferCacheRD<class_FramebufferCacheRD>`, :ref:`GDExtensionManager<class_GDExtensionManager>`, :ref:`Geometry2D<class_Geometry2D>`, :ref:`Geometry3D<class_Geometry3D>`, :ref:`GodotInstance<class_GodotInstance>`, :ref:`Input<class_Input>`, :ref:`InputMap<class_InputMap>`, :ref:`IP<class_IP>`, :ref:`JavaClassWrapper<class_JavaClassWrapper>`, :ref:`JavaScriptBridge<class_JavaScriptBridge>`, :ref:`JNISingleton<class_JNISingleton>`, :ref:`JSONRPC<class_JSONRPC>`, :ref:`MainLoop<class_MainLoop>`, :ref:`Marshalls<class_Marshalls>`, :ref:`MovieWriter<class_MovieWriter>`, :ref:`NativeMenu<class_NativeMenu>`, :ref:`NavigationMeshGenerator<class_NavigationMeshGenerator>`, :ref:`NavigationServer2D<class_NavigationServer2D>`, :ref:`NavigationServer2DManager<class_NavigationServer2DManager>`, :ref:`NavigationServer3D<class_NavigationServer3D>`, :ref:`NavigationServer3DManager<class_NavigationServer3DManager>`, :ref:`Node<class_Node>`, :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>`, :ref:`OpenXRInteractionProfileMetadata<class_OpenXRInteractionProfileMetadata>`, :ref:`OS<class_OS>`, :ref:`Performance<class_Performance>`, :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`, :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`, :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`, :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`, :ref:`PhysicsServer2D<class_PhysicsServer2D>`, :ref:`PhysicsServer2DManager<class_PhysicsServer2DManager>`, :ref:`PhysicsServer3D<class_PhysicsServer3D>`, :ref:`PhysicsServer3DManager<class_PhysicsServer3DManager>`, :ref:`PhysicsServer3DRenderingServerHandler<class_PhysicsServer3DRenderingServerHandler>`, :ref:`ProjectSettings<class_ProjectSettings>`, :ref:`RefCounted<class_RefCounted>`, :ref:`RenderData<class_RenderData>`, :ref:`RenderingDevice<class_RenderingDevice>`, :ref:`RenderingServer<class_RenderingServer>`, :ref:`RenderSceneData<class_RenderSceneData>`, :ref:`ResourceLoader<class_ResourceLoader>`, :ref:`ResourceSaver<class_ResourceSaver>`, :ref:`ResourceUID<class_ResourceUID>`, :ref:`ScriptLanguage<class_ScriptLanguage>`, :ref:`ShaderIncludeDB<class_ShaderIncludeDB>`, :ref:`TextServerManager<class_TextServerManager>`, :ref:`ThemeDB<class_ThemeDB>`, :ref:`TileData<class_TileData>`, :ref:`Time<class_Time>`, :ref:`TranslationServer<class_TranslationServer>`, :ref:`TreeItem<class_TreeItem>`, :ref:`UndoRedo<class_UndoRedo>`, :ref:`UniformSetCacheRD<class_UniformSetCacheRD>`, :ref:`WorkerThreadPool<class_WorkerThreadPool>`, :ref:`XRServer<class_XRServer>`, :ref:`XRVRS<class_XRVRS>`

引擎中所有其他类的基类。

.. rst-class:: classref-introduction-group

描述
----

一种高级的 :ref:`Variant<class_Variant>` 类型。引擎中的所有类都继承自 Object。每个类都可以定义新的属性、方法或信号，并且这些对所有继承的类都可用。例如，一个 :ref:`Sprite2D<class_Sprite2D>` 实例能够调用 :ref:`Node.add_child()<class_Node_method_add_child>` 因为它继承自 :ref:`Node<class_Node>`\ 。

可以使用 GDScript 中的 ``Object.new()`` 或 C# 中的 ``new GodotObject`` 来创建新实例。

要删除一个 Object 实例，请调用 :ref:`free()<class_Object_method_free>`\ 。这对于大多数继承 Object 的类来说是必须的，因为它们本身并不管理内存，如果不调用该方法的话，在不再使用时会造成内存泄漏。有几个类会执行内存管理。例如，\ :ref:`RefCounted<class_RefCounted>`\ （以及扩展的 :ref:`Resource<class_Resource>`\ ）在不再被引用时删除自身，而 :ref:`Node<class_Node>` 在释放时会删除其子节点。

对象可以附加一个 :ref:`Script<class_Script>`\ 。一旦该 :ref:`Script<class_Script>` 被实例化，它就有效地充当了基类的扩展，允许它定义和继承新的属性、方法和信号。

在 :ref:`Script<class_Script>` 中，\ :ref:`_get_property_list()<class_Object_private_method__get_property_list>` 可以被可以重写，以通过多种方式自定义属性。这允许它们对编辑器可用，显示为选项列表，细分为组，保存在磁盘上，等等。脚本语言提供更简单的方式来自定义属性，例如使用 :ref:`@GDScript.@export<class_@GDScript_annotation_@export>` 注解。

Godot 是非常动态的。一个对象的脚本，以及它的属性、方法和信号，都可以在运行时改变。正因为如此，可能会出现这样的情况，例如，一个方法所需的属性可能不存在。为了防止运行时出错，可以参考 :ref:`set()<class_Object_method_set>`\ 、\ :ref:`get()<class_Object_method_get>`\ 、\ :ref:`call()<class_Object_method_call>`\ 、\ :ref:`has_method()<class_Object_method_has_method>`\ 、\ :ref:`has_signal()<class_Object_method_has_signal>` 等方法。请注意，这些方法比直接引用慢\ **得多**\ 。

在 GDScript 中，还可以使用 ``in`` 运算符来检查对象中是否存在给定的属性、方法或信号名称：

::

    var node = Node.new()
    print("name" in node)         # 输出 true
    print("get_parent" in node)   # 输出 true
    print("tree_entered" in node) # 输出 true
    print("unknown" in node)      # 输出 false

通知是 :ref:`int<class_int>` 常量，通常由对象发送和接收。例如，在每个渲染帧上，\ :ref:`SceneTree<class_SceneTree>` 使用 :ref:`Node.NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` 通知树内的节点。节点收到它后，可以调用 :ref:`Node._process()<class_Node_private_method__process>` 进行更新。要使用通知，请参阅 :ref:`notification()<class_Object_method_notification>` 和 :ref:`_notification()<class_Object_private_method__notification>`\ 。

最后，每个对象还可以包含元数据（关于数据的数据）。\ :ref:`set_meta()<class_Object_method_set_meta>` 可用于存储对象本身不依赖的信息。为了保持代码整洁，不鼓励过度使用元数据。

\ **注意：**\ 与对 :ref:`RefCounted<class_RefCounted>` 的引用不同，对存储在变量中的对象的引用，可能会在未被设置为 ``null`` 的情况下变得无效。要检查对象是否已被删除，请\ *不要*\ 将其与 ``null`` 进行比较。而是使用 :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`\ 。存储数据的类，建议从 :ref:`RefCounted<class_RefCounted>` 继承而不是 **Object**\ 。

\ **注意：**\ ``script`` 不像大多数属性那样公开。要在代码中设置或获取一个对象的 :ref:`Script<class_Script>`\ ，请分别使用 :ref:`set_script()<class_Object_method_set_script>` 和 :ref:`get_script()<class_Object_method_get_script>`\ 。

\ **注意：**\ 在布尔值上下文中，\ **Object** 等于 ``null`` 或已释放时会求值为 ``false``\ 。否则 **Object** 始终求值为 ``true``\ 。 另见 :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`Object 类介绍 <../engine_details/architecture/object_class>`

- :doc:`何时以及如何避免为任何事情使用节点 <../tutorials/best_practices/node_alternatives>`

- :doc:`对象通知 <../tutorials/best_practices/godot_notifications>`

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
   | :ref:`bool<class_bool>`                                          | :ref:`is_class<class_Object_method_is_class>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                 |
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

信号
----

.. _class_Object_signal_property_list_changed:

.. rst-class:: classref-signal

**property_list_changed**\ (\ ) :ref:`🔗<class_Object_signal_property_list_changed>`

调用 :ref:`notify_property_list_changed()<class_Object_method_notify_property_list_changed>` 时发出。

.. rst-class:: classref-item-separator

----

.. _class_Object_signal_script_changed:

.. rst-class:: classref-signal

**script_changed**\ (\ ) :ref:`🔗<class_Object_signal_script_changed>`

该对象的脚本发生改变时发出。

\ **注意：**\ 发出这个信号时，新脚本还没有初始化。如果你需要访问新脚本，请用 :ref:`CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>` 推迟与这个信号的连接。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Object_ConnectFlags:

.. rst-class:: classref-enumeration

flags **ConnectFlags**: :ref:`🔗<enum_Object_ConnectFlags>`

.. _class_Object_constant_CONNECT_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_DEFERRED** = ``1``

延迟连接会在空闲时触发 :ref:`Callable<class_Callable>`\ （当前帧的末尾），不会立即触发。

.. _class_Object_constant_CONNECT_PERSIST:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_PERSIST** = ``2``

持久连接会在序列化对象时存储（比如使用 :ref:`PackedScene.pack()<class_PackedScene_method_pack>` 时）。在编辑器中，通过“信号”面板创建的连接总是持久的。

\ **注意：**\ 与 Lambda 函数（即函数代码嵌入在 :ref:`connect()<class_Object_method_connect>` 调用中的）的连接无法持久化。

.. _class_Object_constant_CONNECT_ONE_SHOT:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_ONE_SHOT** = ``4``

一次性连接，会在触发后自行断开。

.. _class_Object_constant_CONNECT_REFERENCE_COUNTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_REFERENCE_COUNTED** = ``8``

引用计数连接可以多次分配给同一个 :ref:`Callable<class_Callable>`\ 。每断开一次连接会让内部计数器减一。信号会在计数器变为 0 时完全断开连接。

.. _class_Object_constant_CONNECT_APPEND_SOURCE_OBJECT:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_APPEND_SOURCE_OBJECT** = ``16``

信号发出时，源对象会自动追加到信号的原始参数之后，与连接的 :ref:`Callable<class_Callable>` 的解绑操作无关，因为解绑操作只会影响信号的原始参数（见 :ref:`Callable.unbind()<class_Callable_method_unbind>` 和 :ref:`Callable.get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>`\ ）。

::

    extends Object

    signal test_signal

    func test():
        print(self) # 输出如：<Object#35332818393>
        test_signal.connect(prints.unbind(1), CONNECT_APPEND_SOURCE_OBJECT)
        test_signal.emit("emit_arg_1", "emit_arg_2") # 输出：emit_arg_1 <Object#35332818393>

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_Object_constant_NOTIFICATION_POSTINITIALIZE:

.. rst-class:: classref-constant

**NOTIFICATION_POSTINITIALIZE** = ``0`` :ref:`🔗<class_Object_constant_NOTIFICATION_POSTINITIALIZE>`

该对象初始化时收到的通知，发生在附加脚本之前。内部使用。

.. _class_Object_constant_NOTIFICATION_PREDELETE:

.. rst-class:: classref-constant

**NOTIFICATION_PREDELETE** = ``1`` :ref:`🔗<class_Object_constant_NOTIFICATION_PREDELETE>`

该对象即将被删除时收到的通知。可以用作面向对象编程语言中的析构函数。

该通知会以反向顺序发送。

.. _class_Object_constant_NOTIFICATION_EXTENSION_RELOADED:

.. rst-class:: classref-constant

**NOTIFICATION_EXTENSION_RELOADED** = ``2`` :ref:`🔗<class_Object_constant_NOTIFICATION_EXTENSION_RELOADED>`

当对象完成热重加载时收到的通知。该通知仅针对扩展类和派生类发送。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Object_private_method__get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| :ref:`🔗<class_Object_private_method__get>`

重写此方法以自定义 :ref:`get()<class_Object_method_get>` 的行为。应该返回给定 ``property``\ （属性）的值；如果该 ``property`` 应该按常规方式处理，则返回 ``null``\ 。

结合 :ref:`_set()<class_Object_private_method__set>` 和 :ref:`_get_property_list()<class_Object_private_method__get_property_list>`\ ，此方法允许定义自定义属性，这在编辑器插件的开发中尤其有用。

\ **注意：** 当获取对象的内置属性，包括使用 :ref:`@GDScript.@export<class_@GDScript_annotation_@export>` 定义的属性时，不会调用此方法。


.. tabs::

 .. code-tab:: gdscript

    func _get(property):
        if property == "fake_property":
            print("Getting my property!")
            return 4
        return null

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



\ **注意：** 与其他虚方法不同，每个重写了此方法的脚本都会自动调用它。这意味着不应该通过 GDScript 中的 ``super``\ （或其他语言中的等效关键字）来调用其基类的实现。调用会从层级最底层的子类开始，随后沿着类继承层级向上依次调用。调用链会在第一个返回非 ``null`` 值的类那里停止。

\ **警告：** 如果重写了此方法，它必须是线程安全的。否则，当尝试保存包含该对象的资源时，引擎可能会崩溃。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_property_list**\ (\ ) |virtual| :ref:`🔗<class_Object_private_method__get_property_list>`

重写此方法，以向引擎提供一个自定义的额外属性列表来进行处理。

应该返回一个属性列表，形式为包含字典的 :ref:`Array<class_Array>`\ （数组）。该结果会被添加到 :ref:`get_property_list()<class_Object_method_get_property_list>` 的数组中，并且应该采用相同的格式。每个 :ref:`Dictionary<class_Dictionary>`\ （字典）必须至少包含 ``name``\ （名称）和 ``type``\ （类型）这两个条目。

你可以使用 :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` 和 :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` 来定制通过此方法添加的属性的默认值。

下面的示例展示了一个从 ``ZERO`` 到 ``FIVE`` 以单词形式显示的数字列表，其中 ``number_count`` 用于控制列表的大小：


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
        var properties: Array[Dictionary] = []

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
        return null

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



\ **注意：** 此方法是为高级用途设计的。对于大多数常见的使用场景，各脚本语言都提供了更简便的方式来处理属性。详见 :ref:`@GDScript.@export<class_@GDScript_annotation_@export>`\ 、\ :ref:`@GDScript.@export_enum<class_@GDScript_annotation_@export_enum>`\ 、\ :ref:`@GDScript.@export_group<class_@GDScript_annotation_@export_group>` 等注解。如果你只是想自定义已导出的属性，请使用 :ref:`_validate_property()<class_Object_private_method__validate_property>`\ 。

\ **注意：** 如果该对象的脚本没有标记 :ref:`@GDScript.@tool<class_@GDScript_annotation_@tool>`\ ，此方法在编辑器中将不会被调用。

\ **注意：** 与其他虚方法不同，每个重写了此方法的脚本都会自动调用它。这意味着不应该通过 GDScript 中的 ``super``\ （或其他语言中的等效关键字）来调用其基类的实现。调用会从层级最底层的子类开始，随后沿着类继承层级向上依次进行。

\ **警告：** 如果重写了此方法，它必须是<线程安全的>。否则，当尝试保存包含该对象的资源时，引擎可能会崩溃。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__init:

.. rst-class:: classref-method

|void| **_init**\ (\ ) |virtual| :ref:`🔗<class_Object_private_method__init>`

实例化对象的脚本时调用，通常是在对象在内存中初始化之后（通过 GDScript 中的 ``Object.new()`` 或 C# 中的 ``new GodotObject``\ ）。也可以将其定义为接受参数的形式。该方法类似于大多数编程语言中的构造函数。

\ **注意：**\ 如果为 :ref:`_init()<class_Object_private_method__init>` 定义了\ *必填的*\ 参数，则带脚本的 Object 只能直接创建。使用任何其他方式（例如 :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` 或 :ref:`Node.duplicate()<class_Node_method_duplicate>`\ ）创建时，该脚本的初始化都将失败。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_iter_get**\ (\ iter\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_get>`

返回当前的可迭代值。\ ``iter`` 存储迭代状态，但与 :ref:`_iter_init()<class_Object_private_method__iter_init>` 和 :ref:`_iter_next()<class_Object_private_method__iter_next>` 不同，此处的状态只读，因此不使用 :ref:`Array<class_Array>` 封装。

\ **贴士：**\ 在 GDScript 中，你可以使用 :ref:`Variant<class_Variant>` 子类型作为 :ref:`_iter_get()<class_Object_private_method__iter_get>` 的返回类型。该类型会用来设置 ``for`` 循环中迭代器变量的类型，提升类型安全。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_init:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_iter_init**\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_init>`

初始化迭代器。\ ``iter`` 用于存储迭代的状态。由于 GDScript 不支持通过引用传递参数，因此使用一个单元素数组作为包装。只要迭代器还没有到达末尾，就返回 ``true``\ 。

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

\ **注意：** 避免将迭代器的状态存储在成员变量中，请改用 ``iter`` 参数。否则，你将无法在嵌套循环中重复使用同一个迭代器实例。

更多详情请参阅 `online docs <../tutorials/scripting/gdscript/gdscript_advanced.html#custom-iterators>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_next:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_iter_next**\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_next>`

将迭代器移动到下一次迭代。\ ``iter`` 存储迭代状态。由于 GDScript 不支持按引用传递参数，这里使用单元素数组作为包装器。只要迭代器尚未到达末尾就会返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__notification:

.. rst-class:: classref-method

|void| **_notification**\ (\ what\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_Object_private_method__notification>`

当对象收到通知时被调用，可以通过将 ``what`` 与常量比较来识别通知。另见 :ref:`notification()<class_Object_method_notification>`\ 。


.. tabs::

 .. code-tab:: gdscript

    func _notification(what):
        if what == NOTIFICATION_PREDELETE:
            print("再见！")

 .. code-tab:: csharp

    public override void _Notification(int what)
    {
        if (what == NotificationPredelete)
        {
            GD.Print("再见！");
        }
    }



\ **注意：**\ 基类 **Object** 定义了一些通知（\ :ref:`NOTIFICATION_POSTINITIALIZE<class_Object_constant_NOTIFICATION_POSTINITIALIZE>` 和 :ref:`NOTIFICATION_PREDELETE<class_Object_constant_NOTIFICATION_PREDELETE>`\ ）。\ :ref:`Node<class_Node>` 等继承类定义了更多通知，这些通知也由该方法接收。

\ **注意：**\ 与其他虚方法不同，该方法会被每个覆盖的脚本自动调用。这意味着不应该通过 GDScript 中的 ``super`` 或其他语言中的类似手段来调用基类实现。调用顺序取决于 :ref:`notification()<class_Object_method_notification>` 方法的 ``reversed`` 参数，并且不同的通知类型的调用顺序也可能不同。大多数通知都按正向顺序发送（即先调用 Object 类，最后调用派生程度最高的类）。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__property_can_revert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_property_can_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| :ref:`🔗<class_Object_private_method__property_can_revert>`

覆盖该方法以自定义给定 ``property`` 的恢复行为。如果 ``property`` 具有自定义默认值并且可在检查器面板中恢复，则应返回 ``true``\ 。使用 :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` 来指定 ``property`` 的默认值。

\ **注意：**\ 无论 ``property`` 的当前值如何，该方法都必须始终如一地返回。

\ **注意：**\ 与其他虚方法不同，该方法会被每个重写它的脚本自动调用。这意味着不应该通过 GDScript 中的 ``super`` 或其他语言中的类似手段来调用基类实现。最底层的子类最先被调用，后续调用将沿着类层次结构向上进行。调用链会在第一个返回 ``true`` 的类处停止。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__property_get_revert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_property_get_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| :ref:`🔗<class_Object_private_method__property_get_revert>`

覆盖该方法以自定义给定 ``property`` 的还原行为。应返回 ``property`` 的默认值。如果默认值与 ``property`` 的当前值不同，则检查器停靠面板中会显示一个还原图标。

\ **注意：**\ :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` 也必须被覆盖，该方法才能被调用。

\ **注意：**\ 与其他虚方法不同，该方法会被每个重写它的脚本自动调用。这意味着不应该通过 GDScript 中的 ``super`` 或其他语言中的类似手段来调用基类实现。最底层的子类最先被调用，后续调用将沿着类层次结构向上进行。调用链会在第一个返回非 ``null`` 的类处停止。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__set:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_set**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Object_private_method__set>`

覆盖该方法以自定义 :ref:`set()<class_Object_method_set>` 的行为。应将 ``property`` 设置为 ``value`` 并返回 ``true``\ ，如果 ``property`` 被正常处理则返回 ``false``\ 。设置 ``property`` 的\ *确切*\ 方式取决于该方法的实现。

结合 :ref:`_get()<class_Object_private_method__get>` 和 :ref:`_get_property_list()<class_Object_private_method__get_property_list>`\ ，该方法允许定义自定义属性，这对编辑器插件特别有用。

\ **注意：**\ 设置对象的内置属性时不会调用该方法，包括使用 :ref:`@GDScript.@export<class_@GDScript_annotation_@export>` 定义的属性。


.. tabs::

 .. code-tab:: gdscript

    var internal_data = {}

    func _set(property, value):
        if property == "fake_property":
            # 在冒牌属性中存值。
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
            // 在冒牌属性中存值。
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



\ **注意：** 和其他虚拟方法不同，每一个被脚本覆盖了的该方法都会被自动调用。这意味着基础实现不应该用 GDScript 中的 ``super`` 或者其他语言中的同等构造来调用。最底层子类的该方法会首先被调用，接着是沿类层次结构向上依次调用。调用链会在第一个返回了 ``true`` 的类停止。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **_to_string**\ (\ ) |virtual| :ref:`🔗<class_Object_private_method__to_string>`

覆盖该方法以自定义 :ref:`to_string()<class_Object_method_to_string>` 的返回值，将对象表示为 :ref:`String<class_String>`\ 。

::

    func _to_string():
        return "欢迎来到 Godot 4！"

    func _init():
        print(self)       # 输出“欢迎来到 Godot 4！”
        var a = str(self) # a 是“欢迎来到 Godot 4！”

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__validate_property:

.. rst-class:: classref-method

|void| **_validate_property**\ (\ property\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_Object_private_method__validate_property>`

覆盖该方法以自定义已有属性。除了使用 :ref:`_get_property_list()<class_Object_private_method__get_property_list>` 添加的属性之外，每个属性信息都经过该方法。字典内容与 :ref:`_get_property_list()<class_Object_private_method__get_property_list>` 中的相同。


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

添加名为 ``signal`` 的用户定义的信号。信号的参数是可选的，以字典的 :ref:`Array<class_Array>` 形式添加，字典中定义名称 ``name`` :ref:`String<class_String>`\ ，类型 ``type`` :ref:`int<class_int>`\ （见 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ）。另见 :ref:`has_user_signal()<class_Object_method_has_user_signal>` 和 :ref:`remove_user_signal()<class_Object_method_remove_user_signal>`\ 。


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

在对象上调用 ``method`` 并返回结果。该方法支持可变数量的参数，因此参数可以作为逗号分隔的列表传递。


.. tabs::

 .. code-tab:: gdscript

    var node = Node3D.new()
    node.call("rotate", Vector3(1.0, 0.0, 0.0), 1.571)

 .. code-tab:: csharp

    var node = new Node3D();
    node.Call(Node3D.MethodName.Rotate, new Vector3(1f, 0f, 0f), 1.571f);



\ **注意：**\ 在 C# 中，在引用 Godot 内置方法时，\ ``method`` 必须为 snake_case 格式。最好使用 ``MethodName`` 类中公开的名称，以避免在每次调用时分配新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_call_deferred:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call_deferred**\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Object_method_call_deferred>`

在空闲时调用该对象的 ``method`` 方法。始终返回 ``null``\ ，\ **不返回**\ 该方法的结果。

空闲时间主要出现在处理帧和物理帧的末尾。延迟的调用会在此时执行，直到全部执行完毕，这意味着你可以从其他延迟调用中延迟调用，并且它们仍将在当前空闲时间周期中运行。这意味着你不应从延迟调用的方法（或从其调用的方法）中延迟调用其自身，因为这会导致无限递归，就像你直接调用该方法一样。

这个方法支持可变数量的参数，所以参数可以用逗号分隔列表的形式传递。


.. tabs::

 .. code-tab:: gdscript

    var node = Node3D.new()
    node.call_deferred("rotate", Vector3(1.0, 0.0, 0.0), 1.571)

 .. code-tab:: csharp

    var node = new Node3D();
    node.CallDeferred(Node3D.MethodName.Rotate, new Vector3(1f, 0f, 0f), 1.571f);



对于从同一线程中延迟执行的方法，在空闲时执行的顺序与调用 ``call_deferred`` 的顺序相同。

另见 :ref:`Callable.call_deferred()<class_Callable_method_call_deferred>`\ 。

\ **注意：**\ 在 C# 中，\ ``method`` 引用内置的 Godot 方法时必须使用 snake_case 的形式。请优先使用 ``MethodName`` 类中暴露的名称，避免每次调用都分配一个新的 :ref:`StringName<class_StringName>`\ 。

\ **注意：**\ 如果你想要延迟一帧再调用函数，请使用 :ref:`SceneTree.process_frame<class_SceneTree_signal_process_frame>` 和 :ref:`SceneTree.physics_frame<class_SceneTree_signal_physics_frame>` 信号。

::

    var node = Node3D.new()
    # 制作可调用体并将参数绑定到该节点的 rotate() 调用。
    var callable = node.rotate.bind(Vector3(1.0, 0.0, 0.0), 1.571)
    # 将可调用体连接到 process_frame 信号，这样就能够在下一个处理帧中调用。
    # CONNECT_ONE_SHOT 能够确保只调用一次，不会每帧都调用。
    get_tree().process_frame.connect(callable, CONNECT_ONE_SHOT)

.. rst-class:: classref-item-separator

----

.. _class_Object_method_callv:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **callv**\ (\ method\: :ref:`StringName<class_StringName>`, arg_array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Object_method_callv>`

在对象上调用 ``method`` 并返回结果。与 :ref:`call()<class_Object_method_call>` 不同，该方法期望所有参数都包含在 ``arg_array`` 中。


.. tabs::

 .. code-tab:: gdscript

    var node = Node3D.new()
    node.callv("rotate", [Vector3(1.0, 0.0, 0.0), 1.571])

 .. code-tab:: csharp

    var node = new Node3D();
    node.Callv(Node3D.MethodName.Rotate, [new Vector3(1f, 0f, 0f), 1.571f]);



\ **注意：**\ 在 C# 中，\ ``method`` 在引用 Godot 内置方法时必须是 snake_case。最好使用 ``MethodName`` 类中公开的名称，以避免在每次调用时分配新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_can_translate_messages:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_translate_messages**\ (\ ) |const| :ref:`🔗<class_Object_method_can_translate_messages>`

如果允许该对象使用 :ref:`tr()<class_Object_method_tr>` 和 :ref:`tr_n()<class_Object_method_tr_n>` 翻译消息，则返回 ``true``\ 。另见 :ref:`set_message_translation()<class_Object_method_set_message_translation>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_cancel_free:

.. rst-class:: classref-method

|void| **cancel_free**\ (\ ) :ref:`🔗<class_Object_method_cancel_free>`

如果在 :ref:`NOTIFICATION_PREDELETE<class_Object_constant_NOTIFICATION_PREDELETE>` 时调用该方法，则该对象拒绝释放，仍会保持已分配的状态。主要是作为内部函数使用，用于错误处理，避免用户释放不想释放的对象。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_connect:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect**\ (\ signal\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Object_method_connect>`

将名为 ``signal`` 的信号与可调用体 ``callable`` 连接。还可以通过 ``flags`` 添加标志，配置连接行为（见 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 常量）。

一个信号与同一个 :ref:`Callable<class_Callable>` 只能连接一次。如果信号已连接，则该方法会返回 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` 并报错误，除非信号是使用 :ref:`CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>` 连接的。要防止出现这种情况，请先使用 :ref:`is_connected()<class_Object_method_is_connected>` 检查是否已存在连接。

\ **注意：**\ 如果 ``callable`` 的对象被释放，连接就会丢失。

\ **注意：**\ 在 GDScript 中，通常建议使用 :ref:`Signal.connect()<class_Signal_method_connect>` 来连接信号。

\ **注意：**\ 该方法以及所有其他与信号相关的方法都是线程安全的。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_disconnect:

.. rst-class:: classref-method

|void| **disconnect**\ (\ signal\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Object_method_disconnect>`

按名称从给定的 ``callable`` 断开 ``signal``\ 。如果连接不存在，则生成一个错误。使用 :ref:`is_connected()<class_Object_method_is_connected>` 确保该连接存在。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_emit_signal:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **emit_signal**\ (\ signal\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Object_method_emit_signal>`

按名称发出给定的 ``signal``\ 。该信号必须存在，所以它应该是该类或其继承类之一的内置信号，或者是用户定义的信号（参见 :ref:`add_user_signal()<class_Object_method_add_user_signal>`\ ）。该方法支持可变数量的参数，所以参数可以以逗号分隔的列表形式传递。

如果 ``signal`` 不存在或参数无效，则返回 :ref:`@GlobalScope.ERR_UNAVAILABLE<class_@GlobalScope_constant_ERR_UNAVAILABLE>`\ 。


.. tabs::

 .. code-tab:: gdscript

    emit_signal("hit", "剑", 100)
    emit_signal("game_over")

 .. code-tab:: csharp

    EmitSignal(SignalName.Hit, "剑", 100);
    EmitSignal(SignalName.GameOver);



\ **注意：**\ 在C#中，在引用内置 Godot 信号时，\ ``signal`` 必须是 snake_case。最好使用 ``SignalName`` 类中公开的名称，以避免在每次调用时分配一个新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_free:

.. rst-class:: classref-method

|void| **free**\ (\ ) :ref:`🔗<class_Object_method_free>`

从内存中删除该对象。此前存在的对该对象的引用会失效，尝试访问这些引用会产生运行时错误。使用 :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>` 检查引用时将返回 ``false``\ 。等价于 GDExtension C++ 中的 ``memdelete`` 函数。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get>`

返回给定 ``property`` 的 :ref:`Variant<class_Variant>` 值。如果 ``property`` 不存在，则该方法返回 ``null``\ 。


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.rotation = 1.5
    var a = node.get("rotation") # a 为 1.5

 .. code-tab:: csharp

    var node = new Node2D();
    node.Rotation = 1.5f;
    var a = node.Get(Node2D.PropertyName.Rotation); // a 为 1.5



\ **注意：**\ 在 C# 中，在引用 Godot 内置属性时，\ ``property`` 必须是 snake_case。最好使用 ``PropertyName`` 类中公开的名称，以避免在每次调用时分配一个新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_class:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_class**\ (\ ) |const| :ref:`🔗<class_Object_method_get_class>`

返回该对象的内置类名，作为一个 :ref:`String<class_String>`\ 。另见 :ref:`is_class()<class_Object_method_is_class>`\ 。

\ **注意：**\ 该方法将忽略 ``class_name`` 声明。如果该对象的脚本定义了一个 ``class_name``\ ，则改为返回内置基类名称。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_incoming_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_incoming_connections**\ (\ ) |const| :ref:`🔗<class_Object_method_get_incoming_connections>`

返回该对象接收到的信号连接的 :ref:`Array<class_Array>`\ 。每个连接都被表示为包含三个条目的 :ref:`Dictionary<class_Dictionary>`\ ：

- ``signal`` 是对 :ref:`Signal<class_Signal>` 的引用；

- ``callable`` 是对 :ref:`Callable<class_Callable>` 的引用；

- ``flags`` 是 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 的组合。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_indexed:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_indexed**\ (\ property_path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Object_method_get_indexed>`

获取该对象的某个属性，该属性的属性路径由 ``property_path`` 给出。该路径应该是相对于当前对象的 :ref:`NodePath<class_NodePath>`\ ，可使用英文冒号（\ ``:``\ ）访问内嵌属性。

\ **示例：**\ ``"position:x"`` 或 ``"material:next_pass:blend_mode"``\ 。


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.position = Vector2(5, -10)
    var a = node.get_indexed("position")   # a 为 Vector2(5, -10)
    var b = node.get_indexed("position:y") # b 为 -10

 .. code-tab:: csharp

    var node = new Node2D();
    node.Position = new Vector2(5, -10);
    var a = node.GetIndexed("position");   // a 为 Vector2(5, -10)
    var b = node.GetIndexed("position:y"); // b 为 -10



\ **注意：**\ 在 C# 中引用内置 Godot 属性时 ``property_path`` 必须为 snake_case 蛇形大小写。请优先使用 ``PropertyName`` 类中暴露的名称，避免每次调用都重新分配一个 :ref:`StringName<class_StringName>`\ 。

\ **注意：**\ 这个方法不支持指向 :ref:`SceneTree<class_SceneTree>` 中节点的路径，仅支持子属性路径。在节点语境下，请改用 :ref:`Node.get_node_and_resource()<class_Node_method_get_node_and_resource>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_instance_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_instance_id**\ (\ ) |const| :ref:`🔗<class_Object_method_get_instance_id>`

返回该对象的唯一实例 ID。该 ID 可以保存在 :ref:`EncodedObjectAsID<class_EncodedObjectAsID>` 中，通过 :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>` 可以检索到对应的对象实例。

\ **注意：**\ 该 ID 仅在当前会话中有意义：通过网络传输后并不对应相同的对象，隔段时间后从文件中加载亦然。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_meta**\ (\ name\: :ref:`StringName<class_StringName>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Object_method_get_meta>`

返回该对象的元数据中名称为 ``name`` 的条目。如果不存在该条目，则返回 ``default``\ 。如果 ``default`` 为 ``null``\ ，则还会生成错误。

\ **注意：**\ 元数据的名称必须是符合 :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>` 的有效标识符。

\ **注意：**\ 名称以下划线（\ ``_``\ ）开头的元数据仅供编辑器使用。仅供编辑器使用的元数据不会在“检查器”中显示，虽然仍然能够被这个方法找到，但是不应该进行编辑。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_meta_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_meta_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_meta_list>`

将该对象的元数据条目名称以元素为 :ref:`StringName<class_StringName>` 的 :ref:`Array<class_Array>` 形式返回。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_method_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_method_argument_count**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get_method_argument_count>`

根据名称返回给定 ``method`` 的参数数量。

\ **注意：**\ 在 C# 中引用内置 Godot 方法时，\ ``method`` 必须采用 snake_case 蛇形命名法。请优先使用 ``MethodName`` 类中公开的名称，以避免在每次调用时分配一个新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_method_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_method_list>`

将该对象的方法及对应签名作为字典 :ref:`Array<class_Array>` 返回。每个 :ref:`Dictionary<class_Dictionary>` 包含以下条目：

-``name`` 是该方法的名称，为 :ref:`String<class_String>`\ ；

-``args`` 是代表参数的字典 :ref:`Array<class_Array>`\ ；

-``default_args`` 是默认参数，为变体 :ref:`Array<class_Array>`\ ；

-``flags`` 是 :ref:`MethodFlags<enum_@GlobalScope_MethodFlags>` 的组合；

-``id`` 是该方法的内部标识符 :ref:`int<class_int>`\ ；

-``return`` 是返回值，为 :ref:`Dictionary<class_Dictionary>`\ ；

\ **注意：**\ ``args`` 和 ``return`` 的字典格式与 :ref:`get_property_list()<class_Object_method_get_property_list>` 的结果相同，但不会用到所有条目。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_property_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_property_list>`

以字典 :ref:`Array<class_Array>` 的形式返回该对象的属性列表。每个 :ref:`Dictionary<class_Dictionary>` 中都包含如下条目：

- ``name`` 是该属性的名称，类型为 :ref:`String<class_String>`\ ；

- ``class_name`` 为空 :ref:`StringName<class_StringName>`\ ，除非该属性为 :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>` 并继承自某个类；

- ``type`` 是该属性的类型，类型为 :ref:`int<class_int>`\ （见 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ）；

- ``hint`` 是应当\ *如何*\ 编辑该属性（见 :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`\ ）；

- ``hint_string`` 取决于 hint（见 :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`\ ）；

- ``usage`` 是 :ref:`PropertyUsageFlags<enum_@GlobalScope_PropertyUsageFlags>` 的组合。

\ **注意：**\ 在 GDScript 中，类的所有成员都被视为属性。在 C# 和 GDExtension 中，则需要使用装饰器或特性将类的成员显式标记为 Godot 属性。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_script**\ (\ ) |const| :ref:`🔗<class_Object_method_get_script>`

返回该对象的 :ref:`Script<class_Script>` 实例，如果没有附加脚本，则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_signal_connection_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_signal_connection_list**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get_signal_connection_list>`

返回给定 ``signal`` 名称的连接的 :ref:`Array<class_Array>`\ 。每个连接都被表示为包含三个条目的 :ref:`Dictionary<class_Dictionary>`\ ：

- ``signal`` 是对 :ref:`Signal<class_Signal>` 的引用；

- ``callable`` 是对已连接 :ref:`Callable<class_Callable>` 的引用；

- ``flags`` 是 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 的组合。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_signal_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_signal_list>`

将现有信号的列表返回为字典的一个 :ref:`Array<class_Array>` 。

\ **注意：**\ 由于该实现，每个 :ref:`Dictionary<class_Dictionary>` 的格式与 :ref:`get_method_list()<class_Object_method_get_method_list>` 的返回值非常相似。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_translation_domain:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_translation_domain**\ (\ ) |const| :ref:`🔗<class_Object_method_get_translation_domain>`

返回 :ref:`tr()<class_Object_method_tr>` 和 :ref:`tr_n()<class_Object_method_tr_n>` 所使用的翻译域的名称。另见 :ref:`TranslationServer<class_TranslationServer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_connections>`

如果给定的信号名称 ``signal`` 存在连接，则返回 ``true``\ 。

\ **注意：**\ 在 C# 中，引用 Godot 内置方法时 ``signal`` 必须使用 snake_case 形式命名。请优先使用 ``SignalName`` 类中暴露的名称，避免每次调用都分配一个新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_meta:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_meta**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_meta>`

如果找到名称为 ``name`` 的元数据条目，则返回 ``true``\ 。另见 :ref:`get_meta()<class_Object_method_get_meta>`\ 、\ :ref:`set_meta()<class_Object_method_set_meta>` 和 :ref:`remove_meta()<class_Object_method_remove_meta>`\ 。

\ **注意：**\ 元数据的名称必须是符合 :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>` 的有效标识符。

\ **注意：**\ 名称以下划线（\ ``_``\ ）开头的元数据仅供编辑器使用。仅供编辑器使用的元数据不会在“检查器”中显示，虽然仍然能够被这个方法找到，但是不应该进行编辑。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_method**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_method>`

如果该对象中存在给定的方法名 ``method``\ ，则返回 ``true``\ 。

\ **注意：**\ 在 C# 中引用内置 Godot 方法时 ``method`` 必须为 snake_case 蛇形大小写。请优先使用 ``MethodName`` 类中暴露的名称，避免每次调用都重新分配一个 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_signal>`

如果对象中存在给定的信号名称 ``signal``\ ，则返回 ``true``\ 。

\ **注意：**\ 在 C# 中，引用 Godot 内置方法时 ``signal`` 必须使用 snake_case 形式命名。请优先使用 ``SignalName`` 类中暴露的名称，避免每次调用都分配一个新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_user_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_user_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_user_signal>`

如果存在给定的用户定义信号名称 ``signal``\ ，则返回 ``true``\ 。仅包含通过 :ref:`add_user_signal()<class_Object_method_add_user_signal>` 添加的信号。另见 :ref:`remove_user_signal()<class_Object_method_remove_user_signal>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_blocking_signals:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_blocking_signals**\ (\ ) |const| :ref:`🔗<class_Object_method_is_blocking_signals>`

如果该对象正在阻止发出信号，则返回 ``true``\ 。见 :ref:`set_block_signals()<class_Object_method_set_block_signals>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_class:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_is_class>`

如果该对象继承自给定的 ``class`` 则返回 ``true``\ 。另见 :ref:`get_class()<class_Object_method_get_class>`\ 。


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



\ **注意：**\ 此方法忽略对象脚本中的 ``class_name`` 声明。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ signal\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Object_method_is_connected>`

如果给定的信号名称 ``signal`` 与可调用体 ``callable`` 之间存在连接，则返回 ``true``\ 。

\ **注意：**\ 在 C# 中，引用 Godot 内置方法时 ``signal`` 必须使用 snake_case 形式命名。请优先使用 ``SignalName`` 类中暴露的名称，避免每次调用都分配一个新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_queued_for_deletion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_queued_for_deletion**\ (\ ) |const| :ref:`🔗<class_Object_method_is_queued_for_deletion>`

如果已为该对象调用了方法 :ref:`Node.queue_free()<class_Node_method_queue_free>` 或 :ref:`SceneTree.queue_delete()<class_SceneTree_method_queue_delete>`\ ，则返回 ``true``\ 。

\ **注意：** 即使子节点将随父节点一起被释放，该方法也不会对已调用 :ref:`Node.queue_free()<class_Node_method_queue_free>` 的节点的子节点返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_notification:

.. rst-class:: classref-method

|void| **notification**\ (\ what\: :ref:`int<class_int>`, reversed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Object_method_notification>`

将给定的 ``what`` 通知发送给对象继承的所有类，触发对 :ref:`_notification()<class_Object_private_method__notification>` 的调用，从最高祖先（\ **Object** 类）开始，向下一直到对象的脚本。

如果 ``reversed`` 为 ``true``\ ，则调用顺序会被颠倒。


.. tabs::

 .. code-tab:: gdscript

    var player = Node2D.new()
    player.set_script(load("res://player.gd"))

    player.notification(NOTIFICATION_ENTER_TREE)
    # 调用顺序是 Object -> Node -> Node2D -> player.gd。

    player.notification(NOTIFICATION_ENTER_TREE, true)
    # 调用顺序是 player.gd -> Node2D -> Node -> Object。

 .. code-tab:: csharp

    var player = new Node2D();
    player.SetScript(GD.Load("res://player.gd"));

    player.Notification(NotificationEnterTree);
    // 调用顺序是 GodotObject -> Node -> Node2D -> player.gd。

    player.Notification(NotificationEnterTree, true);
    // 调用顺序是 player.gd -> Node2D -> Node -> GodotObject。



.. rst-class:: classref-item-separator

----

.. _class_Object_method_notify_property_list_changed:

.. rst-class:: classref-method

|void| **notify_property_list_changed**\ (\ ) :ref:`🔗<class_Object_method_notify_property_list_changed>`

发出 :ref:`property_list_changed<class_Object_signal_property_list_changed>` 信号。这主要是用来刷新编辑器，以让检查器和编辑器插件被正确更新。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_property_can_revert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_can_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_property_can_revert>`

如果给定的属性 ``property`` 有自定义的默认值，则返回 ``true``\ 。请使用 :ref:`property_get_revert()<class_Object_method_property_get_revert>` 获取 ``property`` 的默认值。

\ **注意：**\ “检查器”面板会使用这个方法来显示恢复图标。该对象必须实现 :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` 来自定义默认值。如果未实现 :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>`\ ，则这个方法返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_property_get_revert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **property_get_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_property_get_revert>`

返回给定的属性 ``property`` 的自定义默认值。请使用 :ref:`property_can_revert()<class_Object_method_property_can_revert>` 检查 ``property`` 是否有自定义的默认值。

\ **注意：**\ “检查器”面板会使用这个方法来显示恢复图标。该对象必须实现 :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` 来自定义默认值。如果未实现 :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>`\ ，则这个方法返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_remove_meta:

.. rst-class:: classref-method

|void| **remove_meta**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_remove_meta>`

从对象的元数据中移除名称为 ``name`` 的条目。另见 :ref:`has_meta()<class_Object_method_has_meta>`\ 、\ :ref:`get_meta()<class_Object_method_get_meta>` 和 :ref:`set_meta()<class_Object_method_set_meta>`\ 。

\ **注意：**\ 元数据的名称必须是符合 :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>` 的有效标识符。

\ **注意：**\ 名称以下划线（\ ``_``\ ）开头的元数据仅供编辑器使用。仅供编辑器使用的元数据不会在“检查器”中显示，虽然仍然能够被这个方法找到，但是不应该进行编辑。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_remove_user_signal:

.. rst-class:: classref-method

|void| **remove_user_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_remove_user_signal>`

从对象中移除给定的用户信号 ``signal``\ 。另见 :ref:`add_user_signal()<class_Object_method_add_user_signal>` 和 :ref:`has_user_signal()<class_Object_method_has_user_signal>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set>`

将给定属性 ``property`` 的值分配为 ``value``\ 。如果该属性不存在，或者给定 ``value`` 的类型不匹配，则不会发生任何事情。


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.set("global_scale", Vector2(8, 2.5))
    print(node.global_scale) # 输出 (8.0, 2.5)

 .. code-tab:: csharp

    var node = new Node2D();
    node.Set(Node2D.PropertyName.GlobalScale, new Vector2(8, 2.5f));
    GD.Print(node.GlobalScale); // 输出 (8, 2.5)



\ **注意：**\ 在 C# 中，引用 Godot 内置方法时 ``property`` 必须使用 snake_case 形式命名。请优先使用 ``PropertyName`` 类中暴露的名称，避免每次调用都分配一个新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_block_signals:

.. rst-class:: classref-method

|void| **set_block_signals**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Object_method_set_block_signals>`

如果设置为 ``true``\ ，这该对象将无法发出信号。因此，\ :ref:`emit_signal()<class_Object_method_emit_signal>` 和信号连接将不起作用，直到该属性被设置为 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_deferred:

.. rst-class:: classref-method

|void| **set_deferred**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_deferred>`

在当前帧的末尾，将给定属性 ``property`` 的值分配为 ``value``\ 。等价于通过 :ref:`call_deferred()<class_Object_method_call_deferred>` 调用 :ref:`set()<class_Object_method_set>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    add_child(node)

    node.rotation = 1.5
    node.set_deferred("rotation", 3.0)
    print(node.rotation) # 输出 1.5

    await get_tree().process_frame
    print(node.rotation) # 输出 3.0

 .. code-tab:: csharp

    var node = new Node2D();
    node.Rotation = 1.5f;
    node.SetDeferred(Node2D.PropertyName.Rotation, 3f);
    GD.Print(node.Rotation); // 输出 1.5

    await ToSignal(GetTree(), SceneTree.SignalName.ProcessFrame);
    GD.Print(node.Rotation); // 输出 3.0



\ **注意：**\ 在 C# 中引用内置 Godot 属性时 ``property`` 必须为 snake_case 蛇形大小写。请优先使用 ``PropertyName`` 类中暴露的名称，避免每次调用都重新分配一个 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_indexed:

.. rst-class:: classref-method

|void| **set_indexed**\ (\ property_path\: :ref:`NodePath<class_NodePath>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_indexed>`

将由属性路径 ``property_path`` 标识的属性的值分配为 ``value``\ 。该路径应为相对于这个对象的 :ref:`NodePath<class_NodePath>`\ ，可以使用英文冒号（\ ``:``\ ）访问内嵌属性。


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.set_indexed("position", Vector2(42, 0))
    node.set_indexed("position:y", -10)
    print(node.position) # 输出 (42.0, -10.0)

 .. code-tab:: csharp

    var node = new Node2D();
    node.SetIndexed("position", new Vector2(42, 0));
    node.SetIndexed("position:y", -10);
    GD.Print(node.Position); // 输出 (42, -10)



\ **注意：**\ 在 C# 中，引用 Godot 内置方法时 ``property_path`` 必须使用 snake_case 形式命名。请优先使用 ``PropertyName`` 类中暴露的名称，避免每次调用都分配一个新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_message_translation:

.. rst-class:: classref-method

|void| **set_message_translation**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Object_method_set_message_translation>`

如果设置为 ``true``\ ，则允许对象使用 :ref:`tr()<class_Object_method_tr>` 和 :ref:`tr_n()<class_Object_method_tr_n>` 翻译消息。该属性默认启用。另见 :ref:`can_translate_messages()<class_Object_method_can_translate_messages>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_meta:

.. rst-class:: classref-method

|void| **set_meta**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_meta>`

添加或更改对象元数据中名称为 ``name`` 的条目。元数据值 ``value`` 可以是任何 :ref:`Variant<class_Variant>`\ ，尽管某些类型无法正确序列化。

如果 ``value`` 为 ``null``\ ，则该条目被移除。等价于使用 :ref:`remove_meta()<class_Object_method_remove_meta>`\ 。另见 :ref:`has_meta()<class_Object_method_has_meta>` 和 :ref:`get_meta()<class_Object_method_get_meta>`\ 。

\ **注意：**\ 元数据的名称必须是符合 :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>` 的有效标识符。

\ **注意：**\ 名称以下划线（\ ``_``\ ）开头的元数据仅供编辑器使用。仅供编辑器使用的元数据不会在“检查器”中显示，虽然仍然能够被这个方法找到，但是不应该进行编辑。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_script:

.. rst-class:: classref-method

|void| **set_script**\ (\ script\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_script>`

将脚本 ``script`` 附加至该对象，并进行实例化。因此会调用该脚本的 :ref:`_init()<class_Object_private_method__init>`\ 。\ :ref:`Script<class_Script>` 可用于扩展对象的功能。

如果已存在脚本，则该脚本的实例会被分离，其属性值和状态会丢失。仍会保留内置属性的值。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_translation_domain:

.. rst-class:: classref-method

|void| **set_translation_domain**\ (\ domain\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_set_translation_domain>`

设置 :ref:`tr()<class_Object_method_tr>` 和 :ref:`tr_n()<class_Object_method_tr_n>` 所使用的翻译域的名称。另见 :ref:`TranslationServer<class_TranslationServer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **to_string**\ (\ ) :ref:`🔗<class_Object_method_to_string>`

返回表示对象的 :ref:`String<class_String>`\ 。默认为 ``"<ClassName#RID>"``\ 。覆盖 :ref:`_to_string()<class_Object_private_method__to_string>` 以自定义对象的字符串表示形式。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_tr:

.. rst-class:: classref-method

:ref:`String<class_String>` **tr**\ (\ message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Object_method_tr>`

翻译一条 ``message``\ ，该翻译使用项目设置中配置的翻译目录。可指定额外的 ``context`` 来辅助翻译。请注意，大多数 :ref:`Control<class_Control>` 节点会自动翻译其上的字符串，因此该方法主要用于格式化字符串或自定义绘制的文本。

若 :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` 为 ``false``\ ，或者无可用的翻译，则该方法将原样返回 ``message``\ 。见 :ref:`set_message_translation()<class_Object_method_set_message_translation>`\ 。

详细示例请见\ :doc:`国际化游戏 <../tutorials/i18n/internationalizing_games>`\ 。

\ **注意：**\ 该方法无法在没有 **Object** 实例的情况下使用，因为它依赖 :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` 方法。静态上下文中的字符串翻译，请使用 :ref:`TranslationServer.translate()<class_TranslationServer_method_translate>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_tr_n:

.. rst-class:: classref-method

:ref:`String<class_String>` **tr_n**\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Object_method_tr_n>`

使用项目设置中配置的翻译目录，翻译一个 ``message`` 或 ``plural_message``\ 。可以进一步指定 ``context`` 来帮助翻译。

如果 :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` 为 ``false``\ ，或者没有翻译可用，则该方法将返回 ``message`` 或 ``plural_message``\ ，而不做任何更改。请参阅 :ref:`set_message_translation()<class_Object_method_set_message_translation>`\ 。

\ ``n`` 是消息主题的数字或数量。它被翻译系统用来获取当前语言的正确复数形式。

有关详细示例，请参阅\ :doc:`《使用 gettext 进行本地化》 <../tutorials/i18n/localization_using_gettext>`\ 。

\ **注意：**\ 负数和 :ref:`float<class_float>` 数字可能不适用于某些可数科目。建议使用 :ref:`tr()<class_Object_method_tr>` 处理这些情况。

\ **注意：**\ 如果没有 **Object** 实例，则无法使用该方法，因为它需要 :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` 方法。要在静态上下文中翻译字符串，请使用 :ref:`TranslationServer.translate_plural()<class_TranslationServer_method_translate_plural>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
