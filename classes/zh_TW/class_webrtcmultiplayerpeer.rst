:github_url: hide

.. _class_WebRTCMultiplayerPeer:

WebRTCMultiplayerPeer
=====================

**繼承：** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

簡單的介面，用於建立由 :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` 組成的點對點網狀網路，與 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 相容。

.. rst-class:: classref-introduction-group

說明
----

這個類建構了一個完整的 :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` 網狀結構（每個對等體有一個連接），可用作 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`\ 。

可以通過 :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` 新增每個 :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`\ ，或通過 :ref:`remove_peer()<class_WebRTCMultiplayerPeer_method_remove_peer>` 移除它們。必須在 :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` 狀態下新增對等體，以允許它建立適當的通道。這個類不會建立提交或設定描述，它只會輪詢它們，並通知連接和斷開連接。

當通過 :ref:`create_client()<class_WebRTCMultiplayerPeer_method_create_client>` 或 :ref:`create_server()<class_WebRTCMultiplayerPeer_method_create_server>` 建立對等體時， :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>` 方法將返回 ``true``\ ，在 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 實作支援時啟用對等體交換和封包中繼。

\ **注意：**\ 匯出到 Android 時，在匯出專案或使用一鍵部署前，請確保在 Android 匯出預設中啟用了 ``INTERNET`` 許可權。否則，任何型別的網路通信都將被 Android 阻止。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_peer<class_WebRTCMultiplayerPeer_method_add_peer>`\ (\ peer\: :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, peer_id\: :ref:`int<class_int>`, unreliable_lifetime\: :ref:`int<class_int>` = 1\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_client<class_WebRTCMultiplayerPeer_method_create_client>`\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ )                                                      |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_mesh<class_WebRTCMultiplayerPeer_method_create_mesh>`\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ )                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_server<class_WebRTCMultiplayerPeer_method_create_server>`\ (\ channels_config\: :ref:`Array<class_Array>` = []\ )                                                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`get_peer<class_WebRTCMultiplayerPeer_method_get_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`get_peers<class_WebRTCMultiplayerPeer_method_get_peers>`\ (\ )                                                                                                                                                 |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`has_peer<class_WebRTCMultiplayerPeer_method_has_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`remove_peer<class_WebRTCMultiplayerPeer_method_remove_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_WebRTCMultiplayerPeer_method_add_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_peer**\ (\ peer\: :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, peer_id\: :ref:`int<class_int>`, unreliable_lifetime\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_add_peer>`

以給定的 ``peer_id`` 新增一個新的對等體到網狀結構。該 :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` 必須處於 :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` 狀態。

將為可靠的、不可靠的和有序的傳輸建立三個通道。在建立不可靠和有序通道時，\ ``unreliable_lifetime`` 的值將被傳遞給 ``"maxPacketLifetime"``\ 選項（見 :ref:`WebRTCPeerConnection.create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_client>`

將多人遊戲對等體初始化為使用者端，對等體 ID 為 ``peer_id``\ （必須在 2 和 2147483647 之間）。在這種模式下，你應當只呼叫 :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` 一次，使用 ``1`` 作為 ``peer_id``\ 。這種模式會啟用 :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`\ ，允許上層 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 執行對等體交換和封包接力。

你也可以指定 ``channels_config`` 陣列，陣列中的元素為 :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ ，會用於建立額外的通道（WebRTC 的每個通道僅支援一種傳輸模式）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_mesh>`

將多人遊戲對等體初始化為網狀（即所有對等體都互相連接），對等體 ID 為 ``peer_id``\ （必須在 1 和 2147483647 之間）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_server>`

將多人遊戲對等體作為伺服器進行初始化（唯一 ID 為 ``1``\ ）。這種模式會啟用 :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`\ ，允許上層 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 執行對等體交換和封包接力。

你也可以指定 ``channels_config`` 陣列，陣列中的元素為 :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ ，會用於建立額外的通道（WebRTC 的每個通道僅支援一種傳輸模式）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peer>`

返回 ID 為 ``peer_id`` 的對等體的字典表示，其中包含三個欄位。\ ``"connection"`` 包含與這個對等體的 :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`\ ，\ ``"channels"`` 是三個 :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` 的陣列，而 ``"connected"`` 則是代表對等體目前是否已連接的布林值（三個通道均已開放）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peers:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peers**\ (\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peers>`

返回一個字典，其鍵是對等體的 id，其值是對等體的表示，如 :ref:`get_peer()<class_WebRTCMultiplayerPeer_method_get_peer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_has_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_has_peer>`

如果給定的 ``peer_id`` 在對等體對應中，則返回 ``true``\ （儘管它可能沒有連接）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_remove_peer:

.. rst-class:: classref-method

|void| **remove_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_remove_peer>`

從 mesh 結構中移除具有給定 ``peer_id`` 的對等體。如果該對等體已連接，並且為它發出過 :ref:`MultiplayerPeer.peer_connected<class_MultiplayerPeer_signal_peer_connected>`\ ，那麼 :ref:`MultiplayerPeer.peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>` 也將被發出。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
