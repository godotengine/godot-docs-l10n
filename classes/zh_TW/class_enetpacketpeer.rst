:github_url: hide

.. _class_ENetPacketPeer:

ENetPacketPeer
==============

**繼承：** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

`ENetPeer <http://enet.bespin.org/group__peer.html>`__ 的包裝類。

.. rst-class:: classref-introduction-group

說明
----

A PacketPeer implementation representing a peer of an :ref:`ENetConnection<class_ENetConnection>`.

This class cannot be instantiated directly but can be retrieved during :ref:`ENetConnection.service()<class_ENetConnection_method_service>` or via :ref:`ENetConnection.get_peers()<class_ENetConnection_method_get_peers>`.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-introduction-group

教學
----

- `ENet 網站上的 API 文件 <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_channels<class_ENetPacketPeer_method_get_channels>`\ (\ ) |const|                                                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_packet_flags<class_ENetPacketPeer_method_get_packet_flags>`\ (\ ) |const|                                                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`get_remote_address<class_ENetPacketPeer_method_get_remote_address>`\ (\ ) |const|                                                                                                       |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_remote_port<class_ENetPacketPeer_method_get_remote_port>`\ (\ ) |const|                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PeerState<enum_ENetPacketPeer_PeerState>` | :ref:`get_state<class_ENetPacketPeer_method_get_state>`\ (\ ) |const|                                                                                                                         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`get_statistic<class_ENetPacketPeer_method_get_statistic>`\ (\ statistic\: :ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>`\ )                                                    |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_active<class_ENetPacketPeer_method_is_active>`\ (\ ) |const|                                                                                                                         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`peer_disconnect<class_ENetPacketPeer_method_peer_disconnect>`\ (\ data\: :ref:`int<class_int>` = 0\ )                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`peer_disconnect_later<class_ENetPacketPeer_method_peer_disconnect_later>`\ (\ data\: :ref:`int<class_int>` = 0\ )                                                                       |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`peer_disconnect_now<class_ENetPacketPeer_method_peer_disconnect_now>`\ (\ data\: :ref:`int<class_int>` = 0\ )                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`ping<class_ENetPacketPeer_method_ping>`\ (\ )                                                                                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`ping_interval<class_ENetPacketPeer_method_ping_interval>`\ (\ ping_interval\: :ref:`int<class_int>`\ )                                                                                  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`reset<class_ENetPacketPeer_method_reset>`\ (\ )                                                                                                                                         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`send<class_ENetPacketPeer_method_send>`\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ )                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_timeout<class_ENetPacketPeer_method_set_timeout>`\ (\ timeout\: :ref:`int<class_int>`, timeout_min\: :ref:`int<class_int>`, timeout_max\: :ref:`int<class_int>`\ )                  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`throttle_configure<class_ENetPacketPeer_method_throttle_configure>`\ (\ interval\: :ref:`int<class_int>`, acceleration\: :ref:`int<class_int>`, deceleration\: :ref:`int<class_int>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_ENetPacketPeer_PeerState:

.. rst-class:: classref-enumeration

enum **PeerState**: :ref:`🔗<enum_ENetPacketPeer_PeerState>`

.. _class_ENetPacketPeer_constant_STATE_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECTED** = ``0``

該對等體已斷開連接。

.. _class_ENetPacketPeer_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTING** = ``1``

該對等體正在嘗試連接。

.. _class_ENetPacketPeer_constant_STATE_ACKNOWLEDGING_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ACKNOWLEDGING_CONNECT** = ``2``

該對等體已確認連接請求。

.. _class_ENetPacketPeer_constant_STATE_CONNECTION_PENDING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTION_PENDING** = ``3``

該對等體正在連接。

.. _class_ENetPacketPeer_constant_STATE_CONNECTION_SUCCEEDED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTION_SUCCEEDED** = ``4``

該對等體已成功連接，但還沒有準備好進行通訊（\ :ref:`STATE_CONNECTED<class_ENetPacketPeer_constant_STATE_CONNECTED>`\ ）。

.. _class_ENetPacketPeer_constant_STATE_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTED** = ``5``

該對等體已連接，可以進行通訊。

.. _class_ENetPacketPeer_constant_STATE_DISCONNECT_LATER:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECT_LATER** = ``6``

該對等端在沒有更多的外發封包可以發送後，將預計斷開連接。

.. _class_ENetPacketPeer_constant_STATE_DISCONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECTING** = ``7``

該對等體正在斷開連接。

.. _class_ENetPacketPeer_constant_STATE_ACKNOWLEDGING_DISCONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ACKNOWLEDGING_DISCONNECT** = ``8``

該對等體已確認斷開請求。

.. _class_ENetPacketPeer_constant_STATE_ZOMBIE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ZOMBIE** = ``9``

該對等體已丟失連接，但並未真正斷開連接（因為該對等體還沒有對斷開連接請求進行確認）。

.. rst-class:: classref-item-separator

----

.. _enum_ENetPacketPeer_PeerStatistic:

.. rst-class:: classref-enumeration

enum **PeerStatistic**: :ref:`🔗<enum_ENetPacketPeer_PeerStatistic>`

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS** = ``0``

可靠封包的平均丟包率，即與 :ref:`PACKET_LOSS_SCALE<class_ENetPacketPeer_constant_PACKET_LOSS_SCALE>` 的比率。

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS_VARIANCE** = ``1``

丟包方差。

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS_EPOCH:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS_EPOCH** = ``2``

丟包統計資訊上一次被更新的時間（從連接開始後的毫秒數）。丟包統計資訊更新的時間間隔為 10 秒，自上次統計資訊更新以來，至少必須有一個封包被發送。

.. _class_ENetPacketPeer_constant_PEER_ROUND_TRIP_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_ROUND_TRIP_TIME** = ``3``

可靠封包的平均往返時間。

.. _class_ENetPacketPeer_constant_PEER_ROUND_TRIP_TIME_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_ROUND_TRIP_TIME_VARIANCE** = ``4``

平均往返時間方差。

.. _class_ENetPacketPeer_constant_PEER_LAST_ROUND_TRIP_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_LAST_ROUND_TRIP_TIME** = ``5``

可靠封包的記錄的上次行程時間。

.. _class_ENetPacketPeer_constant_PEER_LAST_ROUND_TRIP_TIME_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_LAST_ROUND_TRIP_TIME_VARIANCE** = ``6``

記錄的上次行程時間方差。

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE** = ``7``

該對等體的目前節流狀態。

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_LIMIT** = ``8``

不應被丟棄的不可靠封包的最大數量。這個值總是大於或等於 ``1`` 。初始值等於 :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`\ 。

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_COUNTER:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_COUNTER** = ``9``

用於增加封包節流計數器的內部值。該值被寫死為 ``7`` 且無法更改。你可能想查看 :ref:`PEER_PACKET_THROTTLE_ACCELERATION<class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_ACCELERATION>`\ 。

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_EPOCH:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_EPOCH** = ``10``

節流統計資料上一次被更新的時間（自連接開始以來的毫秒數）。節流統計更新的時間間隔是 :ref:`PEER_PACKET_THROTTLE_INTERVAL<class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_INTERVAL>`\ 。

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_ACCELERATION:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_ACCELERATION** = ``11``

節流的加速係數。更高的值將使 ENet 更快地適應波動的網路條件，從而導致不可靠的封包\ *更*\ 頻繁地被發送。預設值為 ``2``\ 。

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_DECELERATION:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_DECELERATION** = ``12``

節流的減速係數。更高的值將使 ENet 更快地適應波動的網路條件，從而導致不可靠的封包\ *不會*\ 頻繁地被發送。預設值為 ``2``\ 。

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_INTERVAL:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_INTERVAL** = ``13``

測量最低平均往返時間的時間間隔，供節流機制使用（單位：毫秒）。預設值為 ``5000``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_ENetPacketPeer_constant_PACKET_LOSS_SCALE:

.. rst-class:: classref-constant

**PACKET_LOSS_SCALE** = ``65536`` :ref:`🔗<class_ENetPacketPeer_constant_PACKET_LOSS_SCALE>`

丟包的參考尺度。請參閱 :ref:`get_statistic()<class_ENetPacketPeer_method_get_statistic>` 和 :ref:`PEER_PACKET_LOSS<class_ENetPacketPeer_constant_PEER_PACKET_LOSS>`\ 。

.. _class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE:

.. rst-class:: classref-constant

**PACKET_THROTTLE_SCALE** = ``32`` :ref:`🔗<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`

節流配置的參考值。預設值為 ``32``\ 。 請參閱 :ref:`throttle_configure()<class_ENetPacketPeer_method_throttle_configure>`\ 。

.. _class_ENetPacketPeer_constant_FLAG_RELIABLE:

.. rst-class:: classref-constant

**FLAG_RELIABLE** = ``1`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_RELIABLE>`

將要發送的封包標記為可靠。

.. _class_ENetPacketPeer_constant_FLAG_UNSEQUENCED:

.. rst-class:: classref-constant

**FLAG_UNSEQUENCED** = ``2`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_UNSEQUENCED>`

將要發送的封包標記為無序（不可靠）。

.. _class_ENetPacketPeer_constant_FLAG_UNRELIABLE_FRAGMENT:

.. rst-class:: classref-constant

**FLAG_UNRELIABLE_FRAGMENT** = ``8`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_UNRELIABLE_FRAGMENT>`

將要發送的封包標記為不可靠，即使封包太大且需要分片（增加其被丟棄的機會）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ENetPacketPeer_method_get_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_channels**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_channels>`

返回為與對等體通信而分配的通道數。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_packet_flags:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_flags**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_packet_flags>`

回傳接收佇列中下一個封包的 ENet 標誌。可用的封包標誌見 ``FLAG_*`` 常數。請注意，並非所有標誌都會從發送端複製到接收端。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_remote_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_remote_address**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_remote_address>`

返回該對等體的 IP 地址。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_remote_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_remote_port**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_remote_port>`

返回該對等體的遠端埠。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_state:

.. rst-class:: classref-method

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **get_state**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_state>`

回傳目前的對等端狀態。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_statistic:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_statistic**\ (\ statistic\: :ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>`\ ) :ref:`🔗<class_ENetPacketPeer_method_get_statistic>`

回傳該對等端的統計資訊，由 ``statistic`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_is_active>`

如果對等體目前處於活動狀態（即關聯的 :ref:`ENetConnection<class_ENetConnection>` 仍然有效），則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect:

.. rst-class:: classref-method

|void| **peer_disconnect**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect>`

請求與對等體斷開連接。一旦斷開連接完成，在 :ref:`ENetConnection.service()<class_ENetConnection_method_service>` 期間，將生成一個 :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect_later:

.. rst-class:: classref-method

|void| **peer_disconnect_later**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect_later>`

請求與對等體斷開連接，但僅在發送完所有佇列的傳出封包之後。一旦斷開連接完成，在 :ref:`ENetConnection.service()<class_ENetConnection_method_service>` 期間，將生成一個 :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect_now:

.. rst-class:: classref-method

|void| **peer_disconnect_now**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect_now>`

強制立即斷開與對等體的連接。不會生成 :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>`\ 。不保證外部對等體會收到斷開連接通知，並會在從此函式返回後立即重設。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_ping:

.. rst-class:: classref-method

|void| **ping**\ (\ ) :ref:`🔗<class_ENetPacketPeer_method_ping>`

向對等體發送 ping 請求。ENet 會定期自動 ping 所有連接的對等體，但也可以手動調用此函式，確保進行更頻繁的 ping 請求。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_ping_interval:

.. rst-class:: classref-method

|void| **ping_interval**\ (\ ping_interval\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_ping_interval>`

設定向對等體發送 ping 的間隔 ``ping_interval``\ ，單位為毫秒。Ping 既用於監控連接的有效性，也用於在低流量期間動態調整節流，以便在流量高峰期節流具有合理的回應能力。預設的 ping 間隔為 ``500`` 毫秒。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_ENetPacketPeer_method_reset>`

強制斷開對等體。對等體代表的外部主機不會收到斷開連接的通知，並且會在與本地主機的連接上超時。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_send:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send**\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_send>`

將封包 ``packet`` 加入通過通道 ``channel`` 發送的佇列。可用的封包旗標見 ``FLAG_*`` 常數。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_set_timeout:

.. rst-class:: classref-method

|void| **set_timeout**\ (\ timeout\: :ref:`int<class_int>`, timeout_min\: :ref:`int<class_int>`, timeout_max\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_set_timeout>`

設定對等體的超時參數。超時參數控制對等體因無法確認可靠流量而超時的方式和時間。超時值以毫秒表示。

\ ``timeout`` 是一個係數，乘以基於平均往返時間的值，將確定可靠封包的超時限制。當達到該限制時，超時將加倍，如果該限制已達到 ``timeout_min``\ ，則對等體將斷開連接。另一方面，\ ``timeout_max`` 參數定義了一個固定的超時時間，在該時間內必須確認所有封包，否則對等體將被丟棄。

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_throttle_configure:

.. rst-class:: classref-method

|void| **throttle_configure**\ (\ interval\: :ref:`int<class_int>`, acceleration\: :ref:`int<class_int>`, deceleration\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_throttle_configure>`

為對等體配置節流參數。

不可靠的封包會被 ENet 丟棄，以應對與對等體的互連網連接的各種情況。節流表示一個不可靠封包不應被丟棄並因此由 ENet 將其發送到對等體的概率。通過測量指定 ``interval`` 內可靠封包往返時間的波動，ENet 將按照 ``acceleration`` 參數中指定的量增加概率，或者按照 ``deceleration`` 參數中指定的量降低概率（兩者都是與 :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>` 的比率）。

當節流的值為 :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>` 時，ENet 不會丟棄任何不可靠的封包，因此所有不可靠封包以 100% 的概率將被發送。

當節流的值為 ``0`` 時，ENet 將丟棄所有不可靠的封包，因此所有不可靠封包以 0% 的概率將被發送。

節流的中間值表示發送不可靠封包的 0% 到 100% 之間的中間概率。考慮本地和外部主機的頻寬限制，以確定節流概率的合理限制，即使在最好的條件下也不應超過該限制。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
