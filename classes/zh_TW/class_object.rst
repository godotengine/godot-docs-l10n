:github_url: hide

.. _class_Object:

Object
======

**被繼承：** :ref:`AccessibilityServer<class_AccessibilityServer>`, :ref:`AudioServer<class_AudioServer>`, :ref:`CameraServer<class_CameraServer>`, :ref:`ClassDB<class_ClassDB>`, :ref:`DisplayServer<class_DisplayServer>`, :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>`, :ref:`EditorInterface<class_EditorInterface>`, :ref:`EditorPaths<class_EditorPaths>`, :ref:`EditorSelection<class_EditorSelection>`, :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`, :ref:`EditorVCSInterface<class_EditorVCSInterface>`, :ref:`Engine<class_Engine>`, :ref:`EngineDebugger<class_EngineDebugger>`, :ref:`FramebufferCacheRD<class_FramebufferCacheRD>`, :ref:`GDExtensionManager<class_GDExtensionManager>`, :ref:`Geometry2D<class_Geometry2D>`, :ref:`Geometry3D<class_Geometry3D>`, :ref:`GodotInstance<class_GodotInstance>`, :ref:`Input<class_Input>`, :ref:`InputMap<class_InputMap>`, :ref:`IP<class_IP>`, :ref:`JavaClassWrapper<class_JavaClassWrapper>`, :ref:`JavaScriptBridge<class_JavaScriptBridge>`, :ref:`JNISingleton<class_JNISingleton>`, :ref:`JSONRPC<class_JSONRPC>`, :ref:`MainLoop<class_MainLoop>`, :ref:`Marshalls<class_Marshalls>`, :ref:`MovieWriter<class_MovieWriter>`, :ref:`NativeMenu<class_NativeMenu>`, :ref:`NavigationMeshGenerator<class_NavigationMeshGenerator>`, :ref:`NavigationServer2D<class_NavigationServer2D>`, :ref:`NavigationServer2DManager<class_NavigationServer2DManager>`, :ref:`NavigationServer3D<class_NavigationServer3D>`, :ref:`NavigationServer3DManager<class_NavigationServer3DManager>`, :ref:`Node<class_Node>`, :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>`, :ref:`OpenXRInteractionProfileMetadata<class_OpenXRInteractionProfileMetadata>`, :ref:`OS<class_OS>`, :ref:`Performance<class_Performance>`, :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`, :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`, :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`, :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`, :ref:`PhysicsServer2D<class_PhysicsServer2D>`, :ref:`PhysicsServer2DManager<class_PhysicsServer2DManager>`, :ref:`PhysicsServer3D<class_PhysicsServer3D>`, :ref:`PhysicsServer3DManager<class_PhysicsServer3DManager>`, :ref:`PhysicsServer3DRenderingServerHandler<class_PhysicsServer3DRenderingServerHandler>`, :ref:`ProjectSettings<class_ProjectSettings>`, :ref:`RefCounted<class_RefCounted>`, :ref:`RenderData<class_RenderData>`, :ref:`RenderingDevice<class_RenderingDevice>`, :ref:`RenderingServer<class_RenderingServer>`, :ref:`RenderSceneData<class_RenderSceneData>`, :ref:`ResourceLoader<class_ResourceLoader>`, :ref:`ResourceSaver<class_ResourceSaver>`, :ref:`ResourceUID<class_ResourceUID>`, :ref:`ScriptLanguage<class_ScriptLanguage>`, :ref:`ShaderIncludeDB<class_ShaderIncludeDB>`, :ref:`TextServerManager<class_TextServerManager>`, :ref:`ThemeDB<class_ThemeDB>`, :ref:`TileData<class_TileData>`, :ref:`Time<class_Time>`, :ref:`TranslationServer<class_TranslationServer>`, :ref:`TreeItem<class_TreeItem>`, :ref:`UndoRedo<class_UndoRedo>`, :ref:`UniformSetCacheRD<class_UniformSetCacheRD>`, :ref:`WorkerThreadPool<class_WorkerThreadPool>`, :ref:`XRServer<class_XRServer>`, :ref:`XRVRS<class_XRVRS>`

引擎中所有其他類的基底類別。

.. rst-class:: classref-introduction-group

說明
----

一種進階的 :ref:`Variant<class_Variant>` 型別。引擎中的所有類都繼承自 Object。每個類都可以定義新的屬性、方法或訊號，並且這些對所有繼承的類都可用。例如，一個 :ref:`Sprite2D<class_Sprite2D>` 實例能夠呼叫 :ref:`Node.add_child()<class_Node_method_add_child>` 因為它繼承自 :ref:`Node<class_Node>`\ 。

可以使用 GDScript 中的 ``Object.new()`` 或 C# 中的 ``new GodotObject`` 來建立新實例。

要刪除一個 Object 實例，請呼叫 :ref:`free()<class_Object_method_free>`\ 。這對於大多數繼承 Object 的類來說是必須的，因為它們本身並不管理記憶體，如果不呼叫該方法的話，在不再使用時會造成記憶體洩漏。有幾個類會執行記憶體管理。例如，\ :ref:`RefCounted<class_RefCounted>`\ （以及擴充的 :ref:`Resource<class_Resource>`\ ）在不再被參照時刪除自身，而 :ref:`Node<class_Node>` 在釋放時會刪除其子節點。

物件可以附加一個 :ref:`Script<class_Script>`\ 。一旦該 :ref:`Script<class_Script>` 被實例化，它就有效地充當了基底類別的擴充，允許它定義和繼承新的屬性、方法和訊號。

在 :ref:`Script<class_Script>` 中，\ :ref:`_get_property_list()<class_Object_private_method__get_property_list>` 可以被可以重寫，以通過多種方式自訂屬性。這允許它們對編輯器可用，顯示為選項清單，細分為組，儲存在磁碟上，等等。腳本語言提供更簡單的方式來自訂屬性，例如使用 :ref:`@GDScript.@export<class_@GDScript_annotation_@export>` 注解。

Godot 是非常動態的。一個物件的腳本，以及它的屬性、方法和訊號，都可以在執行時改變。正因為如此，可能會出現這樣的情況，例如，一個方法所需的屬性可能不存在。為了防止執行時出錯，可以參考 :ref:`set()<class_Object_method_set>`\ 、\ :ref:`get()<class_Object_method_get>`\ 、\ :ref:`call()<class_Object_method_call>`\ 、\ :ref:`has_method()<class_Object_method_has_method>`\ 、\ :ref:`has_signal()<class_Object_method_has_signal>` 等方法。請注意，這些方法比直接參照慢\ **得多**\ 。

在 GDScript 中，還可以使用 ``in`` 運算符來檢查物件中是否存在給定的屬性、方法或訊號名稱：

::

    var node = Node.new()
    print("name" in node)         # 輸出 true
    print("get_parent" in node)   # 輸出 true
    print("tree_entered" in node) # 輸出 true
    print("unknown" in node)      # 輸出 false

通知是 :ref:`int<class_int>` 常數，通常由物件發送和接收。例如，在每個渲染影格上，\ :ref:`SceneTree<class_SceneTree>` 使用 :ref:`Node.NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` 通知樹內的節點。節點收到它後，可以呼叫 :ref:`Node._process()<class_Node_private_method__process>` 進行更新。要使用通知，請參閱 :ref:`notification()<class_Object_method_notification>` 和 :ref:`_notification()<class_Object_private_method__notification>`\ 。

最後，每個物件還可以包含中繼資料（關於資料的資料）。\ :ref:`set_meta()<class_Object_method_set_meta>` 可用於儲存物件本身不相依性的資訊。為了保持程式碼整潔，不鼓勵過度使用中繼資料。

\ **注意：**\ 與對 :ref:`RefCounted<class_RefCounted>` 的參照不同，對儲存在變數中的物件的參照，可能會在未被設定為 ``null`` 的情況下變得無效。要檢查物件是否已被刪除，請\ *不要*\ 將其與 ``null`` 進行比較。而是使用 :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`\ 。儲存資料的類，建議從 :ref:`RefCounted<class_RefCounted>` 繼承而不是 **Object**\ 。

\ **注意：**\ ``script`` 不像大多數屬性那樣公開。要在程式碼中設定或取得一個物件的 :ref:`Script<class_Script>`\ ，請分別使用 :ref:`set_script()<class_Object_method_set_script>` 和 :ref:`get_script()<class_Object_method_get_script>`\ 。

\ **注意：**\ 在布林值情境中，\ **Object** 等於 ``null`` 或已釋放時會求值為 ``false``\ 。否則 **Object** 始終求值為 ``true``\ 。 另見 :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>`\ 。

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

flags **ConnectFlags**: :ref:`🔗<enum_Object_ConnectFlags>`

.. _class_Object_constant_CONNECT_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_DEFERRED** = ``1``

延遲連接會在空閒時觸發 :ref:`Callable<class_Callable>`\ （目前影格的末尾），不會立即觸發。

.. _class_Object_constant_CONNECT_PERSIST:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectFlags<enum_Object_ConnectFlags>` **CONNECT_PERSIST** = ``2``

持久連接會在序列化物件時儲存（比如使用 :ref:`PackedScene.pack()<class_PackedScene_method_pack>` 時）。在編輯器中，通過“訊號”面板建立的連接總是持久的。

\ **注意：**\ 與 Lambda 函式（即函式程式碼嵌入在 :ref:`connect()<class_Object_method_connect>` 呼叫中的）的連接無法持久化。

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

訊號發出時，源物件會自動追加到訊號的原始參數之後，與連接的 :ref:`Callable<class_Callable>` 的解綁操作無關，因為解綁操作只會影響訊號的原始參數（見 :ref:`Callable.unbind()<class_Callable_method_unbind>` 和 :ref:`Callable.get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>`\ ）。

::

    extends Object

    signal test_signal

    func test():
        print(self) # 輸出如：<Object#35332818393>
        test_signal.connect(prints.unbind(1), CONNECT_APPEND_SOURCE_OBJECT)
        test_signal.emit("emit_arg_1", "emit_arg_2") # 輸出：emit_arg_1 <Object#35332818393>

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

該物件即將被刪除時收到的通知。可以用作面向物件編程語言中的解構函式。

該通知會以反向順序發送。

.. _class_Object_constant_NOTIFICATION_EXTENSION_RELOADED:

.. rst-class:: classref-constant

**NOTIFICATION_EXTENSION_RELOADED** = ``2`` :ref:`🔗<class_Object_constant_NOTIFICATION_EXTENSION_RELOADED>`

當物件完成熱重載入時收到的通知。該通知僅針對擴充類和派生類發送。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Object_private_method__get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| :ref:`🔗<class_Object_private_method__get>`

覆寫此方法以自訂 :ref:`get()<class_Object_method_get>` 的行為。應該回傳給定 ``property``\ （屬性）的值；如果該 ``property`` 應該按常規方式處理，則回傳 ``null``\ 。

結合 :ref:`_set()<class_Object_private_method__set>` 和 :ref:`_get_property_list()<class_Object_private_method__get_property_list>`\ ，此方法允許定義自訂屬性，這在編輯器外掛的開發中尤其有用。

\ **注意：** 當取得物件的內建屬性，包括使用 :ref:`@GDScript.@export<class_@GDScript_annotation_@export>` 定義的屬性時，不會呼叫此方法。


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



\ **注意：** 與其他虛方法不同，每個覆寫了此方法的腳本都會自動呼叫它。這意味著不應該通過 GDScript 中的 ``super``\ （或其他語言中的等效關鍵字）來呼叫其基底類別的實作。呼叫會從層級最底層的子類別開始，隨後沿著類繼承層級向上依次呼叫。呼叫鏈會在第一個回傳非 ``null`` 值的類那裡停止。

\ **警告：** 如果覆寫了此方法，它必須是執行緒安全的。否則，當嘗試儲存包含該物件的資源時，引擎可能會崩潰。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_property_list**\ (\ ) |virtual| :ref:`🔗<class_Object_private_method__get_property_list>`

覆寫此方法，以向引擎提供一個自訂的額外屬性清單來進行處理。

應該回傳一個屬性清單，形式為包含字典的 :ref:`Array<class_Array>`\ （陣列）。該結果會被新增到 :ref:`get_property_list()<class_Object_method_get_property_list>` 的陣列中，並且應該採用相同的格式。每個 :ref:`Dictionary<class_Dictionary>`\ （字典）必須至少包含 ``name``\ （名稱）和 ``type``\ （型別）這兩個條目。

你可以使用 :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` 和 :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` 來定制通過此方法新增的屬性的預設值。

下面的範例展示了一個從 ``ZERO`` 到 ``FIVE`` 以單詞形式顯示的數字清單，其中 ``number_count`` 用於控制清單的大小：


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



\ **注意：** 此方法是為進階用途設計的。對於大多數常見的使用場景，各腳本語言都提供了更簡便的方式來處理屬性。詳見 :ref:`@GDScript.@export<class_@GDScript_annotation_@export>`\ 、\ :ref:`@GDScript.@export_enum<class_@GDScript_annotation_@export_enum>`\ 、\ :ref:`@GDScript.@export_group<class_@GDScript_annotation_@export_group>` 等注解。如果你只是想自訂已匯出的屬性，請使用 :ref:`_validate_property()<class_Object_private_method__validate_property>`\ 。

\ **注意：** 如果該物件的腳本沒有標記 :ref:`@GDScript.@tool<class_@GDScript_annotation_@tool>`\ ，此方法在編輯器中將不會被呼叫。

\ **注意：** 與其他虛方法不同，每個覆寫了此方法的腳本都會自動呼叫它。這意味著不應該通過 GDScript 中的 ``super``\ （或其他語言中的等效關鍵字）來呼叫其基底類別的實作。呼叫會從層級最底層的子類別開始，隨後沿著類繼承層級向上依次進行。

\ **警告：** 如果覆寫了此方法，它必須是<執行緒安全的>。否則，當嘗試儲存包含該物件的資源時，引擎可能會崩潰。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__init:

.. rst-class:: classref-method

|void| **_init**\ (\ ) |virtual| :ref:`🔗<class_Object_private_method__init>`

實例化物件的腳本時呼叫，通常是在物件在記憶體中初始化之後（通過 GDScript 中的 ``Object.new()`` 或 C# 中的 ``new GodotObject``\ ）。也可以將其定義為接受參數的形式。該方法類似於大多數編程語言中的建構函式。

\ **注意：**\ 如果為 :ref:`_init()<class_Object_private_method__init>` 定義了\ *必填的*\ 參數，則帶腳本的 Object 只能直接建立。使用任何其他方式（例如 :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` 或 :ref:`Node.duplicate()<class_Node_method_duplicate>`\ ）建立時，該腳本的初始化都將失敗。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_iter_get**\ (\ iter\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_get>`

回傳目前的可迭代值。\ ``iter`` 儲存迭代狀態，但與 :ref:`_iter_init()<class_Object_private_method__iter_init>` 和 :ref:`_iter_next()<class_Object_private_method__iter_next>` 不同，此處的狀態只讀，因此不使用 :ref:`Array<class_Array>` 封裝。

\ **貼士：**\ 在 GDScript 中，你可以使用 :ref:`Variant<class_Variant>` 子型別作為 :ref:`_iter_get()<class_Object_private_method__iter_get>` 的回傳型別。該型別會用來設定 ``for`` 循環中迭代器變數的型別，提升型別安全。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_init:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_iter_init**\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_init>`

初始化迭代器。\ ``iter`` 用於儲存迭代的狀態。由於 GDScript 不支援通過參照傳遞參數，因此使用一個單元素陣列作為包裝。只要迭代器還沒有到達末尾，就回傳 ``true``\ 。

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

\ **注意：** 避免將迭代器的狀態儲存在成員變數中，請改用 ``iter`` 參數。否則，你將無法在巢狀循環中重複使用同一個迭代器實例。

更多詳情請參閱 `online docs <../tutorials/scripting/gdscript/gdscript_advanced.html#custom-iterators>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__iter_next:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_iter_next**\ (\ iter\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_Object_private_method__iter_next>`

將迭代器移動到下一次迭代。\ ``iter`` 儲存迭代狀態。由於 GDScript 不支援按參照傳遞參數，這裡使用單元素陣列作為包裝器。只要迭代器尚未到達末尾就會回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__notification:

.. rst-class:: classref-method

|void| **_notification**\ (\ what\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_Object_private_method__notification>`

當物件收到通知時被呼叫，可以通過將 ``what`` 與常數比較來識別通知。另見 :ref:`notification()<class_Object_method_notification>`\ 。


.. tabs::

 .. code-tab:: gdscript

    func _notification(what):
        if what == NOTIFICATION_PREDELETE:
            print("再見！")

 .. code-tab:: csharp

    public override void _Notification(int what)
    {
        if (what == NotificationPredelete)
        {
            GD.Print("再見！");
        }
    }



\ **注意：**\ 基底類別 **Object** 定義了一些通知（\ :ref:`NOTIFICATION_POSTINITIALIZE<class_Object_constant_NOTIFICATION_POSTINITIALIZE>` 和 :ref:`NOTIFICATION_PREDELETE<class_Object_constant_NOTIFICATION_PREDELETE>`\ ）。\ :ref:`Node<class_Node>` 等繼承類定義了更多通知，這些通知也由該方法接收。

\ **注意：**\ 與其他虛方法不同，該方法會被每個覆蓋的腳本自動呼叫。這意味著不應該通過 GDScript 中的 ``super`` 或其他語言中的類似手段來呼叫基底類別實作。呼叫順序取決於 :ref:`notification()<class_Object_method_notification>` 方法的 ``reversed`` 參數，並且不同的通知型別的呼叫順序也可能不同。大多數通知都按正向順序發送（即先呼叫 Object 類，最後呼叫派生程度最高的類）。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__property_can_revert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_property_can_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| :ref:`🔗<class_Object_private_method__property_can_revert>`

覆蓋該方法以自訂給定 ``property`` 的恢復行為。如果 ``property`` 具有自訂預設值並且可在屬性檢視器面板中恢復，則應回傳 ``true``\ 。使用 :ref:`_property_get_revert()<class_Object_private_method__property_get_revert>` 來指定 ``property`` 的預設值。

\ **注意：**\ 無論 ``property`` 的目前值如何，該方法都必須始終如一地回傳。

\ **注意：**\ 與其他虛方法不同，該方法會被每個覆寫它的腳本自動呼叫。這意味著不應該通過 GDScript 中的 ``super`` 或其他語言中的類似手段來呼叫基底類別實作。最底層的子類別最先被呼叫，後續呼叫將沿著類層次結構向上進行。呼叫鏈會在第一個回傳 ``true`` 的類處停止。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__property_get_revert:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_property_get_revert**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |virtual| :ref:`🔗<class_Object_private_method__property_get_revert>`

覆蓋該方法以自訂給定 ``property`` 的還原行為。應回傳 ``property`` 的預設值。如果預設值與 ``property`` 的目前值不同，則屬性檢視器停靠面板中會顯示一個還原圖示。

\ **注意：**\ :ref:`_property_can_revert()<class_Object_private_method__property_can_revert>` 也必須被覆蓋，該方法才能被呼叫。

\ **注意：**\ 與其他虛方法不同，該方法會被每個覆寫它的腳本自動呼叫。這意味著不應該通過 GDScript 中的 ``super`` 或其他語言中的類似手段來呼叫基底類別實作。最底層的子類別最先被呼叫，後續呼叫將沿著類層次結構向上進行。呼叫鏈會在第一個回傳非 ``null`` 的類處停止。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__set:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_set**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Object_private_method__set>`

覆蓋該方法以自訂 :ref:`set()<class_Object_method_set>` 的行為。應將 ``property`` 設定為 ``value`` 並回傳 ``true``\ ，如果 ``property`` 被正常處理則回傳 ``false``\ 。設定 ``property`` 的\ *確切*\ 方式取決於該方法的實作。

結合 :ref:`_get()<class_Object_private_method__get>` 和 :ref:`_get_property_list()<class_Object_private_method__get_property_list>`\ ，該方法允許定義自訂屬性，這對編輯器外掛特別有用。

\ **注意：**\ 設定物件的內建屬性時不會呼叫該方法，包括使用 :ref:`@GDScript.@export<class_@GDScript_annotation_@export>` 定義的屬性。


.. tabs::

 .. code-tab:: gdscript

    var internal_data = {}

    func _set(property, value):
        if property == "fake_property":
            # 在冒牌屬性中存值。
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
            // 在冒牌屬性中存值。
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



\ **注意：** 和其他虛擬方法不同，每一個被腳本覆蓋了的該方法都會被自動呼叫。這意味著基礎實作不應該用 GDScript 中的 ``super`` 或者其他語言中的同等構造來呼叫。最底層子類別的該方法會首先被呼叫，接著是沿類層次結構向上依次呼叫。呼叫鏈會在第一個回傳了 ``true`` 的類停止。

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **_to_string**\ (\ ) |virtual| :ref:`🔗<class_Object_private_method__to_string>`

覆蓋該方法以自訂 :ref:`to_string()<class_Object_method_to_string>` 的回傳值，將物件表示為 :ref:`String<class_String>`\ 。

::

    func _to_string():
        return "歡迎來到 Godot 4！"

    func _init():
        print(self)       # 輸出“歡迎來到 Godot 4！”
        var a = str(self) # a 是“歡迎來到 Godot 4！”

.. rst-class:: classref-item-separator

----

.. _class_Object_private_method__validate_property:

.. rst-class:: classref-method

|void| **_validate_property**\ (\ property\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_Object_private_method__validate_property>`

覆蓋該方法以自訂已有屬性。除了使用 :ref:`_get_property_list()<class_Object_private_method__get_property_list>` 新增的屬性之外，每個屬性資訊都經過該方法。字典內容與 :ref:`_get_property_list()<class_Object_private_method__get_property_list>` 中的相同。


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

新增名為 ``signal`` 的使用者定義的訊號。訊號的參數是可選的，以字典的 :ref:`Array<class_Array>` 形式新增，字典中定義名稱 ``name`` :ref:`String<class_String>`\ ，型別 ``type`` :ref:`int<class_int>`\ （見 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ）。另見 :ref:`has_user_signal()<class_Object_method_has_user_signal>` 和 :ref:`remove_user_signal()<class_Object_method_remove_user_signal>`\ 。


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

在空閒時呼叫該物件的 ``method`` 方法。始終回傳 ``null``\ ，\ **不回傳**\ 該方法的結果。

空閒時間主要出現在處理影格和物理影格的末尾。延遲的呼叫會在此時執行，直到全部執行完畢，這意味著你可以從其他延遲呼叫中延遲呼叫，並且它們仍將在目前空閒時間週期中執行。這意味著你不應從延遲呼叫的方法（或從其呼叫的方法）中延遲呼叫其自身，因為這會導致無限遞歸，就像你直接呼叫該方法一樣。

這個方法支援可變數量的參數，所以參數可以用逗號分隔清單的形式傳遞。


.. tabs::

 .. code-tab:: gdscript

    var node = Node3D.new()
    node.call_deferred("rotate", Vector3(1.0, 0.0, 0.0), 1.571)

 .. code-tab:: csharp

    var node = new Node3D();
    node.CallDeferred(Node3D.MethodName.Rotate, new Vector3(1f, 0f, 0f), 1.571f);



對於從同一執行緒中延遲執行的方法，在空閒時執行的順序與呼叫 ``call_deferred`` 的順序相同。

另見 :ref:`Callable.call_deferred()<class_Callable_method_call_deferred>`\ 。

\ **注意：**\ 在 C# 中，\ ``method`` 參照內建的 Godot 方法時必須使用 snake_case 的形式。請優先使用 ``MethodName`` 類中暴露的名稱，避免每次呼叫都分配一個新的 :ref:`StringName<class_StringName>`\ 。

\ **注意：**\ 如果你想要延遲一影格再呼叫函式，請使用 :ref:`SceneTree.process_frame<class_SceneTree_signal_process_frame>` 和 :ref:`SceneTree.physics_frame<class_SceneTree_signal_physics_frame>` 訊號。

::

    var node = Node3D.new()
    # 製作可呼叫體並將參數綁定到該節點的 rotate() 呼叫。
    var callable = node.rotate.bind(Vector3(1.0, 0.0, 0.0), 1.571)
    # 將可呼叫體連接到 process_frame 訊號，這樣就能夠在下一個處理影格中呼叫。
    # CONNECT_ONE_SHOT 能夠確保只呼叫一次，不會每影格都呼叫。
    get_tree().process_frame.connect(callable, CONNECT_ONE_SHOT)

.. rst-class:: classref-item-separator

----

.. _class_Object_method_callv:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **callv**\ (\ method\: :ref:`StringName<class_StringName>`, arg_array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Object_method_callv>`

在物件上呼叫 ``method`` 並回傳結果。與 :ref:`call()<class_Object_method_call>` 不同，該方法期望所有參數都包含在 ``arg_array`` 中。


.. tabs::

 .. code-tab:: gdscript

    var node = Node3D.new()
    node.callv("rotate", [Vector3(1.0, 0.0, 0.0), 1.571])

 .. code-tab:: csharp

    var node = new Node3D();
    node.Callv(Node3D.MethodName.Rotate, [new Vector3(1f, 0f, 0f), 1.571f]);



\ **注意：**\ 在 C# 中，\ ``method`` 在參照 Godot 內建方法時必須是 snake_case。最好使用 ``MethodName`` 類中公開的名稱，以避免在每次呼叫時分配新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_can_translate_messages:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_translate_messages**\ (\ ) |const| :ref:`🔗<class_Object_method_can_translate_messages>`

如果允許該物件使用 :ref:`tr()<class_Object_method_tr>` 和 :ref:`tr_n()<class_Object_method_tr_n>` 翻譯訊息，則返回 ``true``\ 。另見 :ref:`set_message_translation()<class_Object_method_set_message_translation>`\ 。

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

將名為 ``signal`` 的訊號與可呼叫體 ``callable`` 連接。還可以通過 ``flags`` 新增標誌，設定連接行為（見 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 常數）。

一個訊號與同一個 :ref:`Callable<class_Callable>` 只能連接一次。如果訊號已連接，則該方法會回傳 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` 並報錯誤，除非訊號是使用 :ref:`CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>` 連接的。要防止出現這種情況，請先使用 :ref:`is_connected()<class_Object_method_is_connected>` 檢查是否已存在連接。

\ **注意：**\ 如果 ``callable`` 的物件被釋放，連接就會丟失。

\ **注意：**\ 在 GDScript 中，通常建議使用 :ref:`Signal.connect()<class_Signal_method_connect>` 來連接訊號。

\ **注意：**\ 該方法以及所有其他與訊號相關的方法都是執行緒安全的。

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

從記憶體中刪除該物件。此前存在的對該物件的參照會失效，嘗試存取這些參照會產生執行時錯誤。使用 :ref:`@GlobalScope.is_instance_valid()<class_@GlobalScope_method_is_instance_valid>` 檢查參照時將回傳 ``false``\ 。等價於 GDExtension C++ 中的 ``memdelete`` 函式。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get>`

回傳給定 ``property`` 的 :ref:`Variant<class_Variant>` 值。如果 ``property`` 不存在，則該方法回傳 ``null``\ 。


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.rotation = 1.5
    var a = node.get("rotation") # a 為 1.5

 .. code-tab:: csharp

    var node = new Node2D();
    node.Rotation = 1.5f;
    var a = node.Get(Node2D.PropertyName.Rotation); // a 為 1.5



\ **注意：**\ 在 C# 中，在參照 Godot 內建屬性時，\ ``property`` 必須是 snake_case。最好使用 ``PropertyName`` 類中公開的名稱，以避免在每次呼叫時分配一個新的 :ref:`StringName<class_StringName>`\ 。

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

取得該物件的某個屬性，該屬性的屬性路徑由 ``property_path`` 給出。該路徑應該是相對於目前物件的 :ref:`NodePath<class_NodePath>`\ ，可是使用英文冒號（\ ``:``\ ）存取內嵌屬性。

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

回傳該物件的唯一實例 ID。該 ID 可以儲存在 :ref:`EncodedObjectAsID<class_EncodedObjectAsID>` 中，通過 :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>` 可以檢索到對應的物件實例。

\ **注意：**\ 該 ID 僅在目前會話中有意義：通過網路傳輸後並不對應相同的物件，隔段時間後從檔案中載入亦然。

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

將該物件的中繼資料條目名稱以元素為 :ref:`StringName<class_StringName>` 的 :ref:`Array<class_Array>` 形式回傳。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_method_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_method_argument_count**\ (\ method\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_get_method_argument_count>`

根據名稱回傳給定 ``method`` 的參數數量。

\ **注意：**\ 在 C# 中參照內建 Godot 方法時，\ ``method`` 必須採用 snake_case 蛇形命名法。請優先使用 ``MethodName`` 類中公開的名稱，以避免在每次呼叫時分配一個新的 :ref:`StringName<class_StringName>`\ 。

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

回傳給定 ``signal`` 名稱的連接的 :ref:`Array<class_Array>`\ 。每個連接都被表示為包含三個條目的 :ref:`Dictionary<class_Dictionary>`\ ：

- ``signal`` 是對 :ref:`Signal<class_Signal>` 的參照；

- ``callable`` 是對已連接 :ref:`Callable<class_Callable>` 的參照；

- ``flags`` 是 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 的組合。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_signal_list**\ (\ ) |const| :ref:`🔗<class_Object_method_get_signal_list>`

將現有訊號的清單回傳為字典的一個 :ref:`Array<class_Array>` 。

\ **注意：**\ 由於該實作，每個 :ref:`Dictionary<class_Dictionary>` 的格式與 :ref:`get_method_list()<class_Object_method_get_method_list>` 的回傳值非常相似。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_get_translation_domain:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_translation_domain**\ (\ ) |const| :ref:`🔗<class_Object_method_get_translation_domain>`

回傳 :ref:`tr()<class_Object_method_tr>` 和 :ref:`tr_n()<class_Object_method_tr_n>` 所使用的翻譯域的名稱。另見 :ref:`TranslationServer<class_TranslationServer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_connections>`

如果給定的訊號名稱 ``signal`` 存在連接，則回傳 ``true``\ 。

\ **注意：**\ 在 C# 中，參照 Godot 內建方法時 ``signal`` 必須使用 snake_case 形式命名。請優先使用 ``SignalName`` 類中暴露的名稱，避免每次呼叫都分配一個新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_meta:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_meta**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_meta>`

如果找到名稱為 ``name`` 的中繼資料條目，則回傳 ``true``\ 。另見 :ref:`get_meta()<class_Object_method_get_meta>`\ 、\ :ref:`set_meta()<class_Object_method_set_meta>` 和 :ref:`remove_meta()<class_Object_method_remove_meta>`\ 。

\ **注意：**\ 中繼資料的名稱必須是符合 :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>` 的有效標識符。

\ **注意：**\ 名稱以底線（\ ``_``\ ）開頭的中繼資料僅供編輯器使用。僅供編輯器使用的中繼資料不會在“屬性檢視器”中顯示，雖然仍然能夠被這個方法找到，但是不應該進行編輯。

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

如果物件中存在給定的訊號名稱 ``signal``\ ，則回傳 ``true``\ 。

\ **注意：**\ 在 C# 中，參照 Godot 內建方法時 ``signal`` 必須使用 snake_case 形式命名。請優先使用 ``SignalName`` 類中暴露的名稱，避免每次呼叫都分配一個新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_has_user_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_user_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_has_user_signal>`

如果存在給定的使用者定義訊號名稱 ``signal``\ ，則回傳 ``true``\ 。僅包含通過 :ref:`add_user_signal()<class_Object_method_add_user_signal>` 新增的訊號。另見 :ref:`remove_user_signal()<class_Object_method_remove_user_signal>`\ 。

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

:ref:`bool<class_bool>` **is_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Object_method_is_class>`

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

如果給定的訊號名稱 ``signal`` 與可呼叫體 ``callable`` 之間存在連接，則回傳 ``true``\ 。

\ **注意：**\ 在 C# 中，參照 Godot 內建方法時 ``signal`` 必須使用 snake_case 形式命名。請優先使用 ``SignalName`` 類中暴露的名稱，避免每次呼叫都分配一個新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_is_queued_for_deletion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_queued_for_deletion**\ (\ ) |const| :ref:`🔗<class_Object_method_is_queued_for_deletion>`

如果已為該物件呼叫了方法 :ref:`Node.queue_free()<class_Node_method_queue_free>` 或 :ref:`SceneTree.queue_delete()<class_SceneTree_method_queue_delete>`\ ，則回傳 ``true``\ 。

\ **注意：** 即使子節點將隨父節點一起被釋放，該方法也不會對已呼叫 :ref:`Node.queue_free()<class_Node_method_queue_free>` 的節點的子節點回傳 ``true``\ 。

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

如果給定的屬性 ``property`` 有自訂的預設值，則返回 ``true``\ 。請使用 :ref:`property_get_revert()<class_Object_method_property_get_revert>` 取得 ``property`` 的預設值。

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

從物件的中繼資料中移除名稱為 ``name`` 的條目。另見 :ref:`has_meta()<class_Object_method_has_meta>`\ 、\ :ref:`get_meta()<class_Object_method_get_meta>` 和 :ref:`set_meta()<class_Object_method_set_meta>`\ 。

\ **注意：**\ 中繼資料的名稱必須是符合 :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>` 的有效標識符。

\ **注意：**\ 名稱以底線（\ ``_``\ ）開頭的中繼資料僅供編輯器使用。僅供編輯器使用的中繼資料不會在“屬性檢視器”中顯示，雖然仍然能夠被這個方法找到，但是不應該進行編輯。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_remove_user_signal:

.. rst-class:: classref-method

|void| **remove_user_signal**\ (\ signal\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Object_method_remove_user_signal>`

從物件中移除給定的使用者訊號 ``signal``\ 。另見 :ref:`add_user_signal()<class_Object_method_add_user_signal>` 和 :ref:`has_user_signal()<class_Object_method_has_user_signal>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set>`

將給定屬性 ``property`` 的值分配為 ``value``\ 。如果該屬性不存在，或者給定 ``value`` 的型別不匹配，則不會發生任何事情。


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.set("global_scale", Vector2(8, 2.5))
    print(node.global_scale) # 輸出 (8.0, 2.5)

 .. code-tab:: csharp

    var node = new Node2D();
    node.Set(Node2D.PropertyName.GlobalScale, new Vector2(8, 2.5f));
    GD.Print(node.GlobalScale); // 輸出 (8, 2.5)



\ **注意：**\ 在 C# 中，參照 Godot 內建方法時 ``property`` 必須使用 snake_case 形式命名。請優先使用 ``PropertyName`` 類中暴露的名稱，避免每次呼叫都分配一個新的 :ref:`StringName<class_StringName>`\ 。

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

在目前影格的末尾，將給定屬性 ``property`` 的值分配為 ``value``\ 。等價於通過 :ref:`call_deferred()<class_Object_method_call_deferred>` 呼叫 :ref:`set()<class_Object_method_set>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    add_child(node)

    node.rotation = 1.5
    node.set_deferred("rotation", 3.0)
    print(node.rotation) # 輸出 1.5

    await get_tree().process_frame
    print(node.rotation) # 輸出 3.0

 .. code-tab:: csharp

    var node = new Node2D();
    node.Rotation = 1.5f;
    node.SetDeferred(Node2D.PropertyName.Rotation, 3f);
    GD.Print(node.Rotation); // 輸出 1.5

    await ToSignal(GetTree(), SceneTree.SignalName.ProcessFrame);
    GD.Print(node.Rotation); // 輸出 3.0



\ **注意：**\ 在 C# 中參照內建 Godot 屬性時 ``property`` 必須為 snake_case 蛇形大小寫。請優先使用 ``PropertyName`` 類中暴露的名稱，避免每次呼叫都重新分配一個 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_indexed:

.. rst-class:: classref-method

|void| **set_indexed**\ (\ property_path\: :ref:`NodePath<class_NodePath>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_indexed>`

將由屬性路徑 ``property_path`` 標識的屬性的值分配為 ``value``\ 。該路徑應為相對於這個物件的 :ref:`NodePath<class_NodePath>`\ ，可以使用英文冒號（\ ``:``\ ）存取內嵌屬性。


.. tabs::

 .. code-tab:: gdscript

    var node = Node2D.new()
    node.set_indexed("position", Vector2(42, 0))
    node.set_indexed("position:y", -10)
    print(node.position) # 輸出 (42.0, -10.0)

 .. code-tab:: csharp

    var node = new Node2D();
    node.SetIndexed("position", new Vector2(42, 0));
    node.SetIndexed("position:y", -10);
    GD.Print(node.Position); // 輸出 (42, -10)



\ **注意：**\ 在 C# 中，參照 Godot 內建方法時 ``property_path`` 必須使用 snake_case 形式命名。請優先使用 ``PropertyName`` 類中暴露的名稱，避免每次呼叫都分配一個新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_message_translation:

.. rst-class:: classref-method

|void| **set_message_translation**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Object_method_set_message_translation>`

如果設定為 ``true``\ ，則允許物件使用 :ref:`tr()<class_Object_method_tr>` 和 :ref:`tr_n()<class_Object_method_tr_n>` 翻譯訊息。該屬性預設啟用。另請參閱 :ref:`can_translate_messages()<class_Object_method_can_translate_messages>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_set_meta:

.. rst-class:: classref-method

|void| **set_meta**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Object_method_set_meta>`

新增或更改物件中繼資料中名稱為 ``name`` 的條目。中繼資料值 ``value`` 可以是任何 :ref:`Variant<class_Variant>`\ ，儘管某些型別無法正確序列化。

如果 ``value`` 為 ``null``\ ，則該條目被移除。等價於使用 :ref:`remove_meta()<class_Object_method_remove_meta>`\ 。另見 :ref:`has_meta()<class_Object_method_has_meta>` 和 :ref:`get_meta()<class_Object_method_get_meta>`\ 。

\ **注意：**\ 中繼資料的名稱必須是符合 :ref:`StringName.is_valid_identifier()<class_StringName_method_is_valid_identifier>` 的有效標識符。

\ **注意：**\ 名稱以底線（\ ``_``\ ）開頭的中繼資料僅供編輯器使用。僅供編輯器使用的中繼資料不會在“屬性檢視器”中顯示，雖然仍然能夠被這個方法找到，但是不應該進行編輯。

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

設定 :ref:`tr()<class_Object_method_tr>` 和 :ref:`tr_n()<class_Object_method_tr_n>` 所使用的翻譯域的名稱。另見 :ref:`TranslationServer<class_TranslationServer>`\ 。

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

翻譯一條 ``message``\ ，該翻譯使用專案設定中設定的翻譯目錄。可指定額外的 ``context`` 來輔助翻譯。請注意，大多數 :ref:`Control<class_Control>` 節點會自動翻譯其上的字串，因此該方法主要用於格式化字串或自訂繪製的文字。

若 :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` 為 ``false``\ ，或者無可用的翻譯，則該方法將原樣回傳 ``message``\ 。見 :ref:`set_message_translation()<class_Object_method_set_message_translation>`\ 。

詳細範例請見\ :doc:`國際化遊戲 <../tutorials/i18n/internationalizing_games>`\ 。

\ **注意：**\ 該方法無法在沒有 **Object** 實例的情況下使用，因為它依賴 :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` 方法。靜態情境中的字串翻譯，請使用 :ref:`TranslationServer.translate()<class_TranslationServer_method_translate>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Object_method_tr_n:

.. rst-class:: classref-method

:ref:`String<class_String>` **tr_n**\ (\ message\: :ref:`StringName<class_StringName>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Object_method_tr_n>`

使用專案設定中設定的翻譯目錄，翻譯一個 ``message`` 或 ``plural_message``\ 。可以進一步指定 ``context`` 來協助翻譯。

如果 :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` 為 ``false``\ ，或者沒有翻譯可用，則該方法將回傳 ``message`` 或 ``plural_message``\ ，而不做任何更改。請參閱 :ref:`set_message_translation()<class_Object_method_set_message_translation>`\ 。

\ ``n`` 是訊息主題的數字或數量。它被翻譯系統用來取得目前語言的正確複數形式。

有關詳細範例，請參閱\ :doc:`《使用 gettext 進行在地化》 <../tutorials/i18n/localization_using_gettext>`\ 。

\ **注意：**\ 負數和 :ref:`float<class_float>` 數字可能不適用於某些可數科目。建議使用 :ref:`tr()<class_Object_method_tr>` 處理這些情況。

\ **注意：**\ 如果沒有 **Object** 實例，則無法使用該方法，因為它需要 :ref:`can_translate_messages()<class_Object_method_can_translate_messages>` 方法。要在靜態情境中翻譯字串，請使用 :ref:`TranslationServer.translate_plural()<class_TranslationServer_method_translate_plural>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
