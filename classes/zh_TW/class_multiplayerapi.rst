:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerAPI:

MultiplayerAPI
==============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`, :ref:`SceneMultiplayer<class_SceneMultiplayer>`

高階多人遊戲 API 介面。

.. rst-class:: classref-introduction-group

說明
----

用於高級多人遊戲 API 實作的基底類別。另請參閱 :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ 。

預設情況下，\ :ref:`SceneTree<class_SceneTree>` 引用了這個類的一個實作，並使用它來提供跨整個場景的多人遊戲功能（即 RPC）。

可以通過呼叫 :ref:`SceneTree.set_multiplayer()<class_SceneTree_method_set_multiplayer>` 方法，覆蓋特定樹分支使用的 MultiplayerAPI 實例，從而有效地允許在同一場景中同時運作使用者端和伺服器。

也可以通過腳本或本地擴充來擴充或替換預設實作。有關擴充的詳細資訊，請參閱 :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`\ ；有關預設實作的詳細資訊，請參閱 :ref:`SceneMultiplayer<class_SceneMultiplayer>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`MultiplayerPeer<class_MultiplayerPeer>` | :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` |
   +-----------------------------------------------+-------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MultiplayerAPI<class_MultiplayerAPI>`     | :ref:`create_default_interface<class_MultiplayerAPI_method_create_default_interface>`\ (\ ) |static|                                                                                                            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`get_default_interface<class_MultiplayerAPI_method_get_default_interface>`\ (\ ) |static|                                                                                                                  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_peers<class_MultiplayerAPI_method_get_peers>`\ (\ )                                                                                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_remote_sender_id<class_MultiplayerAPI_method_get_remote_sender_id>`\ (\ )                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_unique_id<class_MultiplayerAPI_method_get_unique_id>`\ (\ )                                                                                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`has_multiplayer_peer<class_MultiplayerAPI_method_has_multiplayer_peer>`\ (\ )                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_server<class_MultiplayerAPI_method_is_server>`\ (\ )                                                                                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`object_configuration_add<class_MultiplayerAPI_method_object_configuration_add>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ )                                |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`object_configuration_remove<class_MultiplayerAPI_method_object_configuration_remove>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ )                          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`poll<class_MultiplayerAPI_method_poll>`\ (\ )                                                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`rpc<class_MultiplayerAPI_method_rpc>`\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, arguments\: :ref:`Array<class_Array>` = []\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_default_interface<class_MultiplayerAPI_method_set_default_interface>`\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) |static|                                                            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_MultiplayerAPI_signal_connected_to_server:

.. rst-class:: classref-signal

**connected_to_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connected_to_server>`

當此 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 成功連接到伺服器時發出。僅在使用者端上發出。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_connection_failed:

.. rst-class:: classref-signal

**connection_failed**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connection_failed>`

當此 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 無法與伺服器建立連接時發出。僅在使用者端上發出。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_connected:

.. rst-class:: classref-signal

**peer_connected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_connected>`

當此 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 與新對等體連接時發出。ID 為新對等體的對等體 ID。當某個使用者端連接到同一伺服器時，其他使用者端會收到通知。連接到伺服器時，該使用者端也會收到此訊號，新對等體為伺服器（ID 為 1）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_disconnected:

.. rst-class:: classref-signal

**peer_disconnected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_disconnected>`

當此 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 與對等體斷開連接時發出。當某個使用者端從同一伺服器斷開連接時，其他使用者端會收到通知。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_server_disconnected:

.. rst-class:: classref-signal

**server_disconnected**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_server_disconnected>`

當此 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 與伺服器斷開連接時發出。僅在使用者端上發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_MultiplayerAPI_RPCMode:

.. rst-class:: classref-enumeration

enum **RPCMode**: :ref:`🔗<enum_MultiplayerAPI_RPCMode>`

.. _class_MultiplayerAPI_constant_RPC_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_DISABLED** = ``0``

在 :ref:`Node.rpc_config()<class_Node_method_rpc_config>` 中使用，可以為所有 RPC 呼叫禁用某個方法或屬性，使其不可用。所有方法的預設值。

.. _class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_ANY_PEER** = ``1``

在 :ref:`Node.rpc_config()<class_Node_method_rpc_config>` 中使用，可以將某個方法設定為能夠被任何對等體遠程呼叫。類似於 ``@rpc("any_peer")`` 注解。接受來自所有遠端對等體的調用，無論是否為節點的控制者。

.. _class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_AUTHORITY** = ``2``

在 :ref:`Node.rpc_config()<class_Node_method_rpc_config>` 中使用，可以將某個方法設定為僅能夠被目前的多人控制者遠端呼叫（預設為伺服器）。類似於 ``@rpc("authority")`` 注解。見 :ref:`Node.set_multiplayer_authority()<class_Node_method_set_multiplayer_authority>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_MultiplayerAPI_property_multiplayer_peer:

.. rst-class:: classref-property

:ref:`MultiplayerPeer<class_MultiplayerPeer>` **multiplayer_peer** :ref:`🔗<class_MultiplayerAPI_property_multiplayer_peer>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_peer**\ (\ value\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ )
- :ref:`MultiplayerPeer<class_MultiplayerPeer>` **get_multiplayer_peer**\ (\ )

處理 RPC 系統的對等體物件（設定後會啟用網路）。根據對等體本身的不同，該 MultiplayerAPI 可能會成為網路伺服器（使用 :ref:`is_server()<class_MultiplayerAPI_method_is_server>` 判斷）並將根節點的網路模式設定為控制者，也可能會成為普通的使用者端對等體。所有子節點預設會繼承其網路模式。網路相關事件（連接、斷開連接、新使用者端）的處理是通過連接 MultiplayerAPI 的訊號來完成的。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_MultiplayerAPI_method_create_default_interface:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **create_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_create_default_interface>`

返回預設 MultiplayerAPI 的新實例。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_default_interface:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_get_default_interface>`

返回預設的 MultiplayerAPI 實作類別名稱稱。\ :ref:`SceneMultiplayer<class_SceneMultiplayer>` 可用時通常為 ``"SceneMultiplayer"``\ 。見 :ref:`set_default_interface()<class_MultiplayerAPI_method_set_default_interface>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_peers**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_peers>`

返回這個 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 所有已連接對等體的對等體 ID。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_remote_sender_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_remote_sender_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_remote_sender_id>`

Returns the sender's peer ID for the RPC currently being executed.

\ **Note:** This method returns ``0`` when called outside of an RPC. As such, the original peer ID may be lost when code execution is delayed (such as with GDScript's ``await`` keyword).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unique_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_unique_id>`

返回這個 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 唯一對等體 ID。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_has_multiplayer_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_multiplayer_peer**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_has_multiplayer_peer>`

如果設定了 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`\ ，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_is_server>`

如果這個 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 有效，且處於伺服器模式（監聽連接），則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_add:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_add**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_add>`

通知該 MultiplayerAPI，以新增用於給定 ``object`` 的新的 ``configuration``\ 。該方法在內部被 :ref:`SceneTree<class_SceneTree>` 使用，以配置該 MultiplayerAPI 的根路徑（傳入 ``null`` 並將一個有效的 :ref:`NodePath<class_NodePath>` 作為 ``configuration``\ ）。該方法可以進一步被 MultiplayerAPI 實作使用，以提供其他功能，有關如何使用它的詳細資訊，請參閱具體實作（例如 :ref:`SceneMultiplayer<class_SceneMultiplayer>`\ ）。

\ **注意：**\ 當通過 :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` 擴充或重寫 MultiplayerAPI 行為時，該方法最相關。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_remove**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_remove>`

通知該 MultiplayerAPI，以移除用於給定 ``object`` 的 ``configuration``\ 。該方法在內部被 :ref:`SceneTree<class_SceneTree>` 使用，以配置該 MultiplayerAPI 的根路徑（傳入 ``null`` 並將一個空的 :ref:`NodePath<class_NodePath>` 作為 ``configuration``\ ）。該方法可以進一步被 MultiplayerAPI 實作使用，以提供其他功能，有關如何使用它的詳細資訊，請參閱具體實作（例如 :ref:`SceneMultiplayer<class_SceneMultiplayer>`\ ）。

\ **注意：**\ 當通過 :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` 擴充或重寫 MultiplayerAPI 行為時，該方法最相關。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_poll>`

用於輪詢 MultiplayerAPI 的方法。將 :ref:`SceneTree.multiplayer_poll<class_SceneTree_property_multiplayer_poll>` 設定為 ``false`` 時才需要關心。預設情況下，\ :ref:`SceneTree<class_SceneTree>` 將為你輪詢其 MultiplayerAPI。

\ **注意：**\ 該方法會導致 RPC 被呼叫，因此它們將在該函式的相同本文中執行（例如 ``_process``\ 、\ ``physics``\ 、\ :ref:`Thread<class_Thread>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc**\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, arguments\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_MultiplayerAPI_method_rpc>`

Sends an RPC to the target ``peer``. The given ``method`` will be called on the remote ``object`` with the provided ``arguments``. The RPC may also be called locally depending on the implementation and RPC configuration. See :ref:`Node.rpc()<class_Node_method_rpc>` and :ref:`Node.rpc_config()<class_Node_method_rpc_config>`.

\ **Note:** Prefer using :ref:`Node.rpc()<class_Node_method_rpc>`, :ref:`Node.rpc_id()<class_Node_method_rpc_id>`, or ``my_method.rpc(peer, arg1, arg2, ...)`` (in GDScript), since they are faster. This method is mostly useful in conjunction with :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` when extending or replacing the multiplayer capabilities.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_set_default_interface:

.. rst-class:: classref-method

|void| **set_default_interface**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_set_default_interface>`

設定預設的 MultiplayerAPI 實作類。模組和擴充可以使用這個方法來配置引擎啟動時 :ref:`SceneTree<class_SceneTree>` 將使用哪個實作。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
