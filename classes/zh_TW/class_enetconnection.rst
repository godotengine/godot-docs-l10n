:github_url: hide

.. _class_ENetConnection:

ENetConnection
==============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

`ENetHost <http://enet.bespin.org/group__host.html>`__ 的包裝類。

.. rst-class:: classref-introduction-group

說明
----

ENet 的目的是在 UDP（使用者封包通訊協定）之上，提供一個相對輕便、簡單和健壯的網路通信層。

.. rst-class:: classref-introduction-group

教學
----

- `ENet 網站上的 API 文件 <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`bandwidth_limit<class_ENetConnection_method_bandwidth_limit>`\ (\ in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`broadcast<class_ENetConnection_method_broadcast>`\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ )                                                                                                                                               |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`channel_limit<class_ENetConnection_method_channel_limit>`\ (\ limit\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`compress<class_ENetConnection_method_compress>`\ (\ mode\: :ref:`CompressionMode<enum_ENetConnection_CompressionMode>`\ )                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ENetPacketPeer<class_ENetPacketPeer>`                              | :ref:`connect_to_host<class_ENetConnection_method_connect_to_host>`\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channels\: :ref:`int<class_int>` = 0, data\: :ref:`int<class_int>` = 0\ )                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`create_host<class_ENetConnection_method_create_host>`\ (\ max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ )                                                                                            |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`create_host_bound<class_ENetConnection_method_create_host_bound>`\ (\ bind_address\: :ref:`String<class_String>`, bind_port\: :ref:`int<class_int>`, max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`destroy<class_ENetConnection_method_destroy>`\ (\ )                                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`dtls_client_setup<class_ENetConnection_method_dtls_client_setup>`\ (\ hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )                                                                                                                                                  |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`dtls_server_setup<class_ENetConnection_method_dtls_server_setup>`\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ )                                                                                                                                                                                                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`flush<class_ENetConnection_method_flush>`\ (\ )                                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                    | :ref:`get_local_port<class_ENetConnection_method_get_local_port>`\ (\ ) |const|                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                    | :ref:`get_max_channels<class_ENetConnection_method_get_max_channels>`\ (\ ) |const|                                                                                                                                                                                                                                                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`ENetPacketPeer<class_ENetPacketPeer>`\] | :ref:`get_peers<class_ENetConnection_method_get_peers>`\ (\ )                                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                | :ref:`pop_statistic<class_ENetConnection_method_pop_statistic>`\ (\ statistic\: :ref:`HostStatistic<enum_ENetConnection_HostStatistic>`\ )                                                                                                                                                                                          |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`refuse_new_connections<class_ENetConnection_method_refuse_new_connections>`\ (\ refuse\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                | :ref:`service<class_ENetConnection_method_service>`\ (\ timeout\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                                                                                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`socket_send<class_ENetConnection_method_socket_send>`\ (\ destination_address\: :ref:`String<class_String>`, destination_port\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_ENetConnection_CompressionMode:

.. rst-class:: classref-enumeration

enum **CompressionMode**: :ref:`🔗<enum_ENetConnection_CompressionMode>`

.. _class_ENetConnection_constant_COMPRESS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_NONE** = ``0``

無壓縮。這使用最多的頻寬，但具有佔用最少 CPU 資源的好處。這個選項可以用於 Wireshark 等工具使用，更容易進行網路除錯。

.. _class_ENetConnection_constant_COMPRESS_RANGE_CODER:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_RANGE_CODER** = ``1``

ENet 的內建範圍編碼。適用於小封包，但對於大於 4 KB 的封包不是最有效的算法。

.. _class_ENetConnection_constant_COMPRESS_FASTLZ:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_FASTLZ** = ``2``

`FastLZ <https://fastlz.org/>`__ 壓縮。與 :ref:`COMPRESS_ZLIB<class_ENetConnection_constant_COMPRESS_ZLIB>` 相比，此選項使用的 CPU 資源更少，代價是使用更多的頻寬。

.. _class_ENetConnection_constant_COMPRESS_ZLIB:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_ZLIB** = ``3``

`Zlib <https://www.zlib.net/>`__ 壓縮。與 :ref:`COMPRESS_FASTLZ<class_ENetConnection_constant_COMPRESS_FASTLZ>` 相比，此選項使用的頻寬更少，代價是使用更多的 CPU 資源。

.. _class_ENetConnection_constant_COMPRESS_ZSTD:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_ZSTD** = ``4``

`Zstandard <https://facebook.github.io/zstd/>`__ 壓縮。請注意，此演算法對小於 4 KB 的封包效率不高。因此，建議在大多數情況下使用其他壓縮演算法。

.. rst-class:: classref-item-separator

----

.. _enum_ENetConnection_EventType:

.. rst-class:: classref-enumeration

enum **EventType**: :ref:`🔗<enum_ENetConnection_EventType>`

.. _class_ENetConnection_constant_EVENT_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_ERROR** = ``-1``

:ref:`service()<class_ENetConnection_method_service>` 期間發生錯誤。你可能需要 :ref:`destroy()<class_ENetConnection_method_destroy>` 主機並重新建立。

.. _class_ENetConnection_constant_EVENT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_NONE** = ``0``

在指定的時間限制內沒有事件發生。

.. _class_ENetConnection_constant_EVENT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_CONNECT** = ``1``

由 enet_host_connect 發起的連接請求已完成。該陣列將包含成功連接的對等體。

.. _class_ENetConnection_constant_EVENT_DISCONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_DISCONNECT** = ``2``

對等體已斷開連接。如果對等體超時，或者由 :ref:`connect_to_host()<class_ENetConnection_method_connect_to_host>` 初始化的連接請求超時，則在由 :ref:`ENetPacketPeer.peer_disconnect()<class_ENetPacketPeer_method_peer_disconnect>` 發起的斷開連接成功完成時，生成該事件。該陣列將包含斷開連接的對等體。資料欄位包含使用者提供的描述斷開連接的資料，如果沒有可用的資料，則為 0。

.. _class_ENetConnection_constant_EVENT_RECEIVE:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_RECEIVE** = ``3``

A packet has been received from a peer. The array will contain the peer which sent the packet and the channel number upon which the packet was received. The received packet will be queued to the associated :ref:`ENetPacketPeer<class_ENetPacketPeer>`.

.. rst-class:: classref-item-separator

----

.. _enum_ENetConnection_HostStatistic:

.. rst-class:: classref-enumeration

enum **HostStatistic**: :ref:`🔗<enum_ENetConnection_HostStatistic>`

.. _class_ENetConnection_constant_HOST_TOTAL_SENT_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_SENT_DATA** = ``0``

發送資料的總數。

.. _class_ENetConnection_constant_HOST_TOTAL_SENT_PACKETS:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_SENT_PACKETS** = ``1``

發送 UDP 封包的總數。

.. _class_ENetConnection_constant_HOST_TOTAL_RECEIVED_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_RECEIVED_DATA** = ``2``

接收資料的總數。

.. _class_ENetConnection_constant_HOST_TOTAL_RECEIVED_PACKETS:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_RECEIVED_PACKETS** = ``3``

接收 UDP 封包的總數。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ENetConnection_method_bandwidth_limit:

.. rst-class:: classref-method

|void| **bandwidth_limit**\ (\ in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_bandwidth_limit>`

調整主機的頻寬限制。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_broadcast:

.. rst-class:: classref-method

|void| **broadcast**\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetConnection_method_broadcast>`

將一個 ``packet`` 加入佇列，以便將其通過指定的 ``channel`` 發送到與主機關聯的所有對等體。請參閱 :ref:`ENetPacketPeer<class_ENetPacketPeer>` 中的 ``FLAG_*`` 常數以了解可用的封包旗標。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_channel_limit:

.. rst-class:: classref-method

|void| **channel_limit**\ (\ limit\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetConnection_method_channel_limit>`

限制未來傳入連接的最大允許通道數。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_compress:

.. rst-class:: classref-method

|void| **compress**\ (\ mode\: :ref:`CompressionMode<enum_ENetConnection_CompressionMode>`\ ) :ref:`🔗<class_ENetConnection_method_compress>`

設定用於網路封包的壓縮方法。這些在壓縮速度與頻寬之間有不同的權衡，如果需要使用壓縮，可能需要測試哪一種最適合你的用例。

\ **注意：**\ 大多數遊戲的網路設計，都涉及頻繁發送許多小封包（每個小於 4 KB）。如果有疑問，建議保留預設壓縮演算法，因為它最適合這些小封包。

\ **注意：**\ 壓縮模式必須在服務端及其所有使用者端上設定為相同的值。如果使用者端上設定的壓縮模式與服務端上設定的不同，則使用者端將無法連接。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_connect_to_host:

.. rst-class:: classref-method

:ref:`ENetPacketPeer<class_ENetPacketPeer>` **connect_to_host**\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channels\: :ref:`int<class_int>` = 0, data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_connect_to_host>`

Initiates a connection to a foreign ``address`` using the specified ``port`` and allocating the requested ``channels``. Optional ``data`` can be passed during connection in the form of a 32 bit integer.

\ **Note:** You must call either :ref:`create_host()<class_ENetConnection_method_create_host>` or :ref:`create_host_bound()<class_ENetConnection_method_create_host_bound>` on both ends before calling this method.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_create_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_host**\ (\ max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_create_host>`

Creates an ENetHost that allows up to ``max_peers`` connected peers, each allocating up to ``max_channels`` channels, optionally limiting bandwidth to ``in_bandwidth`` and ``out_bandwidth`` (if greater than zero).

This method binds a random available dynamic UDP port on the host machine at the *unspecified* address. Use :ref:`create_host_bound()<class_ENetConnection_method_create_host_bound>` to specify the address and port.

\ **Note:** It is necessary to create a host in both client and server in order to establish a connection.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_create_host_bound:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_host_bound**\ (\ bind_address\: :ref:`String<class_String>`, bind_port\: :ref:`int<class_int>`, max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_create_host_bound>`

Creates an ENetHost bound to the given ``bind_address`` and ``bind_port`` that allows up to ``max_peers`` connected peers, each allocating up to ``max_channels`` channels, optionally limiting bandwidth to ``in_bandwidth`` and ``out_bandwidth`` (if greater than zero).

\ **Note:** It is necessary to create a host in both client and server in order to establish a connection.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_destroy:

.. rst-class:: classref-method

|void| **destroy**\ (\ ) :ref:`🔗<class_ENetConnection_method_destroy>`

銷毀主機和與其關聯的所有資源。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_dtls_client_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **dtls_client_setup**\ (\ hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_ENetConnection_method_dtls_client_setup>`

配置此 ENetHost 以使用允許對 ENet 使用者端進行 DTLS 加密的自訂 Godot 擴充。在 :ref:`connect_to_host()<class_ENetConnection_method_connect_to_host>` 之前呼叫它，讓 ENet 連接使用 DTLS 根據 ``hostname`` 驗證伺服器憑證。可以通過可選的 ``client_options`` 參數來自訂受信任的憑證授權，或禁用通用名稱驗證。見 :ref:`TLSOptions.client()<class_TLSOptions_method_client>` 和 :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_dtls_server_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **dtls_server_setup**\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_ENetConnection_method_dtls_server_setup>`

配置該 ENetHost 以使用允許對 ENet 伺服器進行 DTLS 加密的自訂 Godot 擴充。在 :ref:`create_host_bound()<class_ENetConnection_method_create_host_bound>` 之後立即呼叫該方法，以讓 ENet 期望對等體使用 DTLS 進行連接。請參閱 :ref:`TLSOptions.server()<class_TLSOptions_method_server>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_flush:

.. rst-class:: classref-method

|void| **flush**\ (\ ) :ref:`🔗<class_ENetConnection_method_flush>`

將指定主機上所有被佇列的封包發送到其指定的對等體。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_ENetConnection_method_get_local_port>`

返回該對等體綁定到的本地埠。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_max_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_channels**\ (\ ) |const| :ref:`🔗<class_ENetConnection_method_get_max_channels>`

返回連接的對等體所允許的最大通道數。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_peers:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ENetPacketPeer<class_ENetPacketPeer>`\] **get_peers**\ (\ ) :ref:`🔗<class_ENetConnection_method_get_peers>`

返回與該主機關聯的對等體列表。

\ **注意：**\ 該列表可能包含一些未完全連接或仍在斷開連接的對等體。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_pop_statistic:

.. rst-class:: classref-method

:ref:`float<class_float>` **pop_statistic**\ (\ statistic\: :ref:`HostStatistic<enum_ENetConnection_HostStatistic>`\ ) :ref:`🔗<class_ENetConnection_method_pop_statistic>`

Returns and resets host statistics.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_refuse_new_connections:

.. rst-class:: classref-method

|void| **refuse_new_connections**\ (\ refuse\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ENetConnection_method_refuse_new_connections>`

將 DTLS 服務端配置為自動斷開新連接。

\ **注意：**\ 這個方法只有在呼叫了 :ref:`dtls_server_setup()<class_ENetConnection_method_dtls_server_setup>` 後才有用。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_service:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **service**\ (\ timeout\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_service>`

Waits for events on this connection and shuttles packets between the host and its peers, with the given ``timeout`` (in milliseconds). The returned :ref:`Array<class_Array>` will have 4 elements. An :ref:`EventType<enum_ENetConnection_EventType>`, the :ref:`ENetPacketPeer<class_ENetPacketPeer>` which generated the event, the event associated data (if any), the event associated channel (if any). If the generated event is :ref:`EVENT_RECEIVE<class_ENetConnection_constant_EVENT_RECEIVE>`, the received packet will be queued to the associated :ref:`ENetPacketPeer<class_ENetPacketPeer>`.

Call this function regularly to handle connections, disconnections, and to receive new packets.

\ **Note:** This method must be called on both ends involved in the event (sending and receiving hosts).

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_socket_send:

.. rst-class:: classref-method

|void| **socket_send**\ (\ destination_address\: :ref:`String<class_String>`, destination_port\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ENetConnection_method_socket_send>`

Sends a ``packet`` toward a destination from the address and port currently bound by this ENetConnection instance.

This is useful as it serves to establish entries in NAT routing tables on all devices between this bound instance and the public facing internet, allowing a prospective client's connection packets to be routed backward through the NAT device(s) between the public internet and this host.

This requires forward knowledge of a prospective client's address and communication port as seen by the public internet - after any NAT devices have handled their connection request. This information can be obtained by a `STUN <https://en.wikipedia.org/wiki/STUN>`__ service, and must be handed off to your host by an entity that is not the prospective client. This will never work for a client behind a Symmetric NAT due to the nature of the Symmetric NAT routing algorithm, as their IP and Port cannot be known beforehand.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
