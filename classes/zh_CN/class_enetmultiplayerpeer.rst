:github_url: hide

.. _class_ENetMultiplayerPeer:

ENetMultiplayerPeer
===================

**继承：** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 `ENet <http://enet.bespin.org/index.html>`__ 库实现的 MultiplayerPeer。

.. rst-class:: classref-introduction-group

描述
----

MultiplayerPeer 的一种实现，应该在初始化为客户端、服务器或网格之后传递给 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`\ 。然后就可以通过连接到 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 的信号来处理事件。有关 ENet 库包装的更多信息，请参见 :ref:`ENetConnection<class_ENetConnection>`\ 。

\ **注意：**\ ENet 仅使用 UDP，不使用 TCP。当你想要将服务器端口转发到公共互联网上以便让服务器可以被访问时，只需要转发 UDP 服务器端口即可。可以使用 :ref:`UPNP<class_UPNP>` 类尝试在启动服务器时自动转发服务器端口。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`高级多人游戏 <../tutorials/networking/high_level_multiplayer>`

- `ENet 网站上的 API 文档 <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_ENetMultiplayerPeer_property_host:

.. rst-class:: classref-property

:ref:`ENetConnection<class_ENetConnection>` **host** :ref:`🔗<class_ENetMultiplayerPeer_property_host>`

.. rst-class:: classref-property-setget

- :ref:`ENetConnection<class_ENetConnection>` **get_host**\ (\ )

在 :ref:`create_client()<class_ENetMultiplayerPeer_method_create_client>` 和 :ref:`create_server()<class_ENetMultiplayerPeer_method_create_server>` 之后，创建的底层 :ref:`ENetConnection<class_ENetConnection>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ENetMultiplayerPeer_method_add_mesh_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_mesh_peer**\ (\ peer_id\: :ref:`int<class_int>`, host\: :ref:`ENetConnection<class_ENetConnection>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_add_mesh_peer>`

使用给定的 ``peer_id`` 添加一个新的远程对等体，并将其连接到给定的 ``host``\ 。

\ **注意：**\ ``host`` 必须只有一个处于 :ref:`ENetPacketPeer.STATE_CONNECTED<class_ENetPacketPeer_constant_STATE_CONNECTED>` 状态的对等体。

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channel_count\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0, local_port\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_client>`

创建客户端，该客户端使用指定的 ``port`` 连接到位于 ``address`` 的服务器。给定的地址必须是完全限定的域名（例如 ``"www.example.com"``\ ），或 IPv4 或 IPv6 格式的 IP 地址（例如 ``"192.168.1.1"``\ ）。\ ``port`` 是服务器监听的端口。\ ``channel_count`` 参数可用于指定为连接分配的 ENet 通道数。\ ``in_bandwidth`` 和 ``out_bandwidth`` 参数可用于将传入和传出带宽限制为给定的每秒字节数。默认值 0 表示无限制的带宽。请注意，ENet 将对在对等体之间的连接的特定端，策略性地丢弃数据包，以确保对等体的带宽不会被淹没。带宽参数还决定了连接的窗口大小，它限制了在任何给定时间可能正在传输的可靠数据包的数量。如果创建了一个客户端，则返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ；如果该 ENetMultiplayerPeer 实例已经有一个打开的连接（在这种情况下，需要先调用 :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>`\ ），则返回 :ref:`@GlobalScope.ERR_ALREADY_IN_USE<class_@GlobalScope_constant_ERR_ALREADY_IN_USE>`\ ；如果不能被创建客户端，则返回 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ 。如果指定了 ``local_port``\ ，客户端也会监听给定的端口；这对一些 NAT 穿越技术很有用。

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ unique_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_mesh>`

在网格网络模式下初始化该 :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ 。提供的 ``unique_id`` 一旦被分配为 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`\ ，就将被用作本地对等体的网络唯一 ID。在网格网络配置中，需要在调用 :ref:`add_mesh_peer()<class_ENetMultiplayerPeer_method_add_mesh_peer>` 之前，使用 :ref:`ENetConnection<class_ENetConnection>` 手动设置每个新的对等体。这种技术更先进，它可以更好地控制连接过程（例如，在处理 NAT 穿透时），并更好地分配网络负载（否则会给服务器带来更大的负担）。

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ port\: :ref:`int<class_int>`, max_clients\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_server>`

创建通过 ``port`` 监听连接的服务器。该端口需要是一个介于 0 到 65535 之间的可用且未被使用的端口。请注意，低于 1024 的端口是特权端口，可能需要提升权限，具体取决于平台。要更改服务器监听的接口，请使用 :ref:`set_bind_ip()<class_ENetMultiplayerPeer_method_set_bind_ip>`\ 。默认 IP 是通配符 ``"*"``\ ，它会监听所有可用的接口。\ ``max_clients`` 是同时允许的最大客户端数，可以使用最大可达 4095 的任何数字，尽管可实现的同时客户端数可能要低得多，并且取决于应用程序。有关带宽参数的其他详细信息，请参阅 :ref:`create_client()<class_ENetMultiplayerPeer_method_create_client>`\ 。如果服务器被创建，则返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ；如果该 ENetMultiplayerPeer 实例已经有一个打开的连接（在这种情况下，需要先调用 :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>`\ ），则返回 :ref:`@GlobalScope.ERR_ALREADY_IN_USE<class_@GlobalScope_constant_ERR_ALREADY_IN_USE>`\ ；如果服务器不能被创建，则返回 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`ENetPacketPeer<class_ENetPacketPeer>` **get_peer**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ENetMultiplayerPeer_method_get_peer>`

返回与给定 ``id`` 关联的 :ref:`ENetPacketPeer<class_ENetPacketPeer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_set_bind_ip:

.. rst-class:: classref-method

|void| **set_bind_ip**\ (\ ip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_set_bind_ip>`

创建服务器时使用的 IP。默认情况下，这被设置为通配符 ``"*"``\ ，它绑定到所有可用的接口。给定的 IP 地址格式需要是 IPv4 或 IPv6，例如：\ ``"192.168.1.1"``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
