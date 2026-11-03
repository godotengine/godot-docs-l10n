:github_url: hide

.. _class_ENetMultiplayerPeer:

ENetMultiplayerPeer
===================

**繼承：** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 `ENet <http://enet.bespin.org/index.html>`__ 庫實作的 MultiplayerPeer。

.. rst-class:: classref-introduction-group

說明
----

MultiplayerPeer 的一種實作，應該在初始化為使用者端、伺服器或網格之後傳遞給 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`\ 。然後就可以通過連接到 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 的訊號來處理事件。有關 ENet 庫包裝的更多資訊，請參見 :ref:`ENetConnection<class_ENetConnection>`\ 。

\ **注意：**\ ENet 僅使用 UDP，不使用 TCP。當你想要將伺服器埠轉發到公共互連網上以便讓伺服器可以被存取時，只需要轉發 UDP 伺服器埠即可。可以使用 :ref:`UPNP<class_UPNP>` 類嘗試在啟動伺服器時自動轉發伺服器埠。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`進階多人遊戲 <../tutorials/networking/high_level_multiplayer>`

- `ENet 網站上的 API 文件 <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------+------------------------------------------------------+
   | :ref:`ENetConnection<class_ENetConnection>` | :ref:`host<class_ENetMultiplayerPeer_property_host>` |
   +---------------------------------------------+------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`add_mesh_peer<class_ENetMultiplayerPeer_method_add_mesh_peer>`\ (\ peer_id\: :ref:`int<class_int>`, host\: :ref:`ENetConnection<class_ENetConnection>`\ )                                                                                                                                                         |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_client<class_ENetMultiplayerPeer_method_create_client>`\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channel_count\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0, local_port\: :ref:`int<class_int>` = 0\ ) |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_mesh<class_ENetMultiplayerPeer_method_create_mesh>`\ (\ unique_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                                               |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_server<class_ENetMultiplayerPeer_method_create_server>`\ (\ port\: :ref:`int<class_int>`, max_clients\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ )                                       |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ENetPacketPeer<class_ENetPacketPeer>` | :ref:`get_peer<class_ENetMultiplayerPeer_method_get_peer>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                    |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bind_ip<class_ENetMultiplayerPeer_method_set_bind_ip>`\ (\ ip\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ENetMultiplayerPeer_property_host:

.. rst-class:: classref-property

:ref:`ENetConnection<class_ENetConnection>` **host** :ref:`🔗<class_ENetMultiplayerPeer_property_host>`

.. rst-class:: classref-property-setget

- :ref:`ENetConnection<class_ENetConnection>` **get_host**\ (\ )

在 :ref:`create_client()<class_ENetMultiplayerPeer_method_create_client>` 和 :ref:`create_server()<class_ENetMultiplayerPeer_method_create_server>` 之後，建立的底層 :ref:`ENetConnection<class_ENetConnection>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ENetMultiplayerPeer_method_add_mesh_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_mesh_peer**\ (\ peer_id\: :ref:`int<class_int>`, host\: :ref:`ENetConnection<class_ENetConnection>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_add_mesh_peer>`

使用給定的 ``peer_id`` 新增一個新的遠端對等體，並將其連接到給定的 ``host``\ 。

\ **注意：**\ ``host`` 必須只有一個處於 :ref:`ENetPacketPeer.STATE_CONNECTED<class_ENetPacketPeer_constant_STATE_CONNECTED>` 狀態的對等體。

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channel_count\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0, local_port\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_client>`

建立使用者端，該使用者端使用指定的 ``port`` 連接到位於 ``address`` 的伺服器。給定的位址必須是完全限定的功能變數名稱（例如 ``"www.example.com"``\ ），或 IPv4 或 IPv6 格式的 IP 地址（例如 ``"192.168.1.1"``\ ）。\ ``port`` 是伺服器監聽的埠。\ ``channel_count`` 參數可用於指定為連接分配的 ENet 通道數。\ ``in_bandwidth`` 和 ``out_bandwidth`` 參數可用於將傳入和傳出頻寬限制為給定的每秒位元組數。預設值 0 表示無限制的頻寬。請注意，ENet 將對在對等體之間的連接的特定端，策略性地丟棄封包，以確保對等體的頻寬不會被淹沒。頻寬參數還決定了連接的視窗大小，它限制了在任何給定時間可能正在傳輸的可靠封包的數量。如果建立了一個使用者端，則返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ；如果該 ENetMultiplayerPeer 實例已經有一個打開的連接（在這種情況下，需要先呼叫 :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>`\ ），則返回 :ref:`@GlobalScope.ERR_ALREADY_IN_USE<class_@GlobalScope_constant_ERR_ALREADY_IN_USE>`\ ；如果不能被建立使用者端，則返回 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ 。如果指定了 ``local_port``\ ，使用者端也會監聽給定的埠；這對一些 NAT 穿越技術很有用。

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ unique_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_mesh>`

在網格網路模式下初始化該 :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ 。提供的 ``unique_id`` 一旦被分配為 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`\ ，就將被用作本地對等體的網路唯一 ID。在網格網路配置中，需要在呼叫 :ref:`add_mesh_peer()<class_ENetMultiplayerPeer_method_add_mesh_peer>` 之前，使用 :ref:`ENetConnection<class_ENetConnection>` 手動設定每個新的對等體。這種技術更先進，它可以更好地控制連接過程（例如，在處理 NAT 穿透時），並更好地分配網路負載（否則會給伺服器帶來更大的負擔）。

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ port\: :ref:`int<class_int>`, max_clients\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_server>`

建立通過 ``port`` 監聽連接的伺服器。該埠需要是一個介於 0 到 65535 之間的可用且未被使用的埠。請注意，低於 1024 的埠是特權埠，可能需要提升權限，具體取決於平臺。要更改伺服器監聽的介面，請使用 :ref:`set_bind_ip()<class_ENetMultiplayerPeer_method_set_bind_ip>`\ 。預設 IP 是萬用字元 ``"*"``\ ，它會監聽所有可用的介面。\ ``max_clients`` 是同時允許的最大使用者端數，可以使用最大可達 4095 的任何數位，儘管可實作的同時使用者端數可能要低得多，並且取決於套用程式。有關頻寬參數的其他詳細資訊，請參閱 :ref:`create_client()<class_ENetMultiplayerPeer_method_create_client>`\ 。如果伺服器被建立，則返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ；如果該 ENetMultiplayerPeer 實例已經有一個打開的連接（在這種情況下，需要先調用 :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>`\ ），則返回 :ref:`@GlobalScope.ERR_ALREADY_IN_USE<class_@GlobalScope_constant_ERR_ALREADY_IN_USE>`\ ；如果伺服器不能被建立，則返回 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`ENetPacketPeer<class_ENetPacketPeer>` **get_peer**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ENetMultiplayerPeer_method_get_peer>`

返回與給定 ``id`` 關聯的 :ref:`ENetPacketPeer<class_ENetPacketPeer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_set_bind_ip:

.. rst-class:: classref-method

|void| **set_bind_ip**\ (\ ip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_set_bind_ip>`

建立伺服器時使用的 IP。預設情況下，這被設定為萬用字元 ``"*"``\ ，它綁定到所有可用的介面。給定的 IP 位址格式需要是 IPv4 或 IPv6，例如：\ ``"192.168.1.1"``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
