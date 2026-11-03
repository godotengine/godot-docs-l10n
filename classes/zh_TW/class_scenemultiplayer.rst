:github_url: hide

.. _class_SceneMultiplayer:

SceneMultiplayer
================

**繼承：** :ref:`MultiplayerAPI<class_MultiplayerAPI>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

高階多人遊戲 API 實作。

.. rst-class:: classref-introduction-group

說明
----

這個類是 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 的預設實作，用於在 Godot 引擎中提供多人遊戲功能。

該實作通過 :ref:`Node.rpc()<class_Node_method_rpc>` 和 :ref:`Node.rpc_id()<class_Node_method_rpc_id>` 來支援 RPC，需要向 :ref:`MultiplayerAPI.rpc()<class_MultiplayerAPI_method_rpc>` 傳遞一個 :ref:`Node<class_Node>`\ （傳入其他物件型別會導致失敗）。

該實作還提供了 :ref:`SceneTree<class_SceneTree>` 複製功能，使用的是 :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` 和 :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` 節點，以及 :ref:`SceneReplicationConfig<class_SceneReplicationConfig>` 資源，。

\ **注意：**\ 高階多人遊戲 API 協議屬於實作細節，並不打算提供給非 Godot 伺服器使用。對協議的更改可能不會進行提前通知。

\ **注意：**\ 匯出到 Android 時，在匯出專案或使用一鍵部署之前，請務必在安卓匯出預設中開啟 ``INTERNET`` 許可權。否則，任何型別的網路通信都將被 Android 阻止。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`allow_object_decoding<class_SceneMultiplayer_property_allow_object_decoding>`   | ``false``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`Callable<class_Callable>` | :ref:`auth_callback<class_SceneMultiplayer_property_auth_callback>`                   | ``Callable()``   |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`auth_timeout<class_SceneMultiplayer_property_auth_timeout>`                     | ``3.0``          |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`max_delta_packet_size<class_SceneMultiplayer_property_max_delta_packet_size>`   | ``65535``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`max_sync_packet_size<class_SceneMultiplayer_property_max_sync_packet_size>`     | ``1350``         |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`refuse_new_connections<class_SceneMultiplayer_property_refuse_new_connections>` | ``false``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`root_path<class_SceneMultiplayer_property_root_path>`                           | ``NodePath("")`` |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`server_relay<class_SceneMultiplayer_property_server_relay>`                     | ``true``         |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_SceneMultiplayer_method_clear>`\ (\ )                                                                                                                                                                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`complete_auth<class_SceneMultiplayer_method_complete_auth>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`disconnect_peer<class_SceneMultiplayer_method_disconnect_peer>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_authenticating_peers<class_SceneMultiplayer_method_get_authenticating_peers>`\ (\ )                                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`send_auth<class_SceneMultiplayer_method_send_auth>`\ (\ id\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`send_bytes<class_SceneMultiplayer_method_send_bytes>`\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, id\: :ref:`int<class_int>` = 0, mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` = 2, channel\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_SceneMultiplayer_signal_peer_authenticating:

.. rst-class:: classref-signal

**peer_authenticating**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authenticating>`

當此 MultiplayerAPI 的 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 連接到一個新對等體並設定有效的 :ref:`auth_callback<class_SceneMultiplayer_property_auth_callback>` 時，將發出此訊號。在這種情況下，只有在呼叫 :ref:`complete_auth()<class_SceneMultiplayer_method_complete_auth>` 並傳遞給定的對等體 ``id`` 時，才會發出 :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>`\ 。在此狀態下，該對等體不會包含在 :ref:`MultiplayerAPI.get_peers()<class_MultiplayerAPI_method_get_peers>` 返回的列表中（但會包含在 :ref:`get_authenticating_peers()<class_SceneMultiplayer_method_get_authenticating_peers>` 返回的列表中），且只會發送和接收身份驗證資料。有關發送身份驗證資料的資訊，請參閱 :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_authentication_failed:

.. rst-class:: classref-signal

**peer_authentication_failed**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authentication_failed>`

當這個 MultiplayerAPI 的 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 與另一個尚未完成授權的對等體斷開連接時觸發。見 :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_packet:

.. rst-class:: classref-signal

**peer_packet**\ (\ id\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_packet>`

當這個 MultiplayerAPI 的 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 收到帶有自訂資料（見 :ref:`send_bytes()<class_SceneMultiplayer_method_send_bytes>`\ ）的 ``packet`` 時發出。ID 是發送封包的對等體的對等體 ID。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SceneMultiplayer_property_allow_object_decoding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_object_decoding** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_allow_object_decoding>`

.. rst-class:: classref-property-setget

- |void| **set_allow_object_decoding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_object_decoding_allowed**\ (\ )

如果為 ``true``\ ，則 MultiplayerAPI 將允許在遠端程式呼叫期間對對象進行編碼和解碼。

\ **警告：**\ 反序列化的物件可能包含要執行的程式碼。如果序列化的物件來自不受信任的來源，請勿使用此選項，以避免潛在的安全威脅，例如遠端程式碼執行。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_callback:

.. rst-class:: classref-property

:ref:`Callable<class_Callable>` **auth_callback** = ``Callable()`` :ref:`🔗<class_SceneMultiplayer_property_auth_callback>`

.. rst-class:: classref-property-setget

- |void| **set_auth_callback**\ (\ value\: :ref:`Callable<class_Callable>`\ )
- :ref:`Callable<class_Callable>` **get_auth_callback**\ (\ )

當通過 :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>` 接收身份驗證資料時要執行的回呼函式。如果 :ref:`Callable<class_Callable>` 為空（預設），對等方將在連接後立即自動接受。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **auth_timeout** = ``3.0`` :ref:`🔗<class_SceneMultiplayer_property_auth_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_auth_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auth_timeout**\ (\ )

如果將其設定為大於 ``0.0`` 的值，則對等方可以停留在正在驗證狀態的最長時間，單位為秒，之後身份驗證將自動失敗。見 :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>` 和 :ref:`peer_authentication_failed<class_SceneMultiplayer_signal_peer_authentication_failed>` 訊號。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_delta_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_delta_packet_size** = ``65535`` :ref:`🔗<class_SceneMultiplayer_property_max_delta_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_delta_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_delta_packet_size**\ (\ )

差異量封包的最大大小。值越大，單影格能夠收到完整更新的幾率就越大，但造成網路擁堵的幾率也越大（網路延遲、斷線等）。見 :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_sync_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_sync_packet_size** = ``1350`` :ref:`🔗<class_SceneMultiplayer_property_max_sync_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_sync_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_sync_packet_size**\ (\ )

同步封包的最大大小。值越大，單影格能夠收到完整更新的幾率就越大，但丟包的幾率也越大。見 :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_refuse_new_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **refuse_new_connections** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_refuse_new_connections>`

.. rst-class:: classref-property-setget

- |void| **set_refuse_new_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_refusing_new_connections**\ (\ )

如果為 ``true``\ ，則 MultiplayerAPI 的 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 將拒絕新的傳入連接。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_root_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_path** = ``NodePath("")`` :ref:`🔗<class_SceneMultiplayer_property_root_path>`

.. rst-class:: classref-property-setget

- |void| **set_root_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_path**\ (\ )

用於 RPC 和複製的根路徑。將使用相對路徑，而不是絕對路徑，來搜尋 RPC 應該在其上被執行的節點。

這有效地允許場景樹的不同分支，由不同的 MultiplayerAPI 管理，例如允許在同一場景中，同時運作使用者端和伺服器。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_server_relay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **server_relay** = ``true`` :ref:`🔗<class_SceneMultiplayer_property_server_relay>`

.. rst-class:: classref-property-setget

- |void| **set_server_relay_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_server_relay_enabled**\ (\ )

啟用或停用伺服器功能，該功能通知使用者端其他對等體的連接/斷開，並在它們之間轉發訊息。當此選項為 ``false`` 時，使用者端將不會自動收到其他對等體的通知，也無法通過伺服器向它們發送封包。

\ **注意：**\ 在其他對等體連接時更改此選項可能會導致意外行為。

\ **注意：**\ 對該功能的支援可能取決於目前的 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 配置。請參閱 :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SceneMultiplayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_clear>`

清除目前 SceneMultiplayer 的網路狀態（除非你知道你在做什麼，否則不應該呼叫這個函式）。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_complete_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **complete_auth**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_complete_auth>`

完成對由 ``id`` 標識的遠端對等體的身份驗證步驟。遠端端也完成身份驗證之後，將會為這個對等體發出 :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` 訊號。不會再從此對等體接收到身份驗證訊息。

如果對等體在完成身份驗證之前斷開連接，無論是由於網路問題、\ :ref:`auth_timeout<class_SceneMultiplayer_property_auth_timeout>` 過期還是手動呼叫 :ref:`disconnect_peer()<class_SceneMultiplayer_method_disconnect_peer>`\ ，都會發出 :ref:`peer_authentication_failed<class_SceneMultiplayer_signal_peer_authentication_failed>` 訊號，而不是 :ref:`MultiplayerAPI.peer_disconnected<class_MultiplayerAPI_signal_peer_disconnected>` 訊號。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_disconnect_peer:

.. rst-class:: classref-method

|void| **disconnect_peer**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_disconnect_peer>`

斷開由 ``id`` 標識的對等體的連接，將其從連接的對等體列表中移除，並關閉與它的底層連接。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_get_authenticating_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_authenticating_peers**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_get_authenticating_peers>`

返回目前嘗試使用此 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 進行身份驗證的對等方的 ID。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_auth**\ (\ id\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_method_send_auth>`

將指定的 ``data`` 作為身份驗證訊息的一部分發送到由 ``id`` 標識的遠端對等方。這可用於驗證對等方，並控制何時發出 :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>`\ （並接受遠端對等方作為連接的對等方之一）。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_bytes:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_bytes**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, id\: :ref:`int<class_int>` = 0, mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` = 2, channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneMultiplayer_method_send_bytes>`

向由 ``id`` 標識的特定對等體發送給定的原始位元組 ``bytes``\ （見 :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`\ ）。預設 ID 為 ``0``\ ，即廣播到所有對等體。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
