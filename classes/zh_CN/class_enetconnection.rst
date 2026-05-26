:github_url: hide

.. _class_ENetConnection:

ENetConnection
==============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

`ENetHost <http://enet.bespin.org/group__host.html>`__ 的包装类。

.. rst-class:: classref-introduction-group

描述
----

ENet 的目的是在 UDP（用户数据报协议）之上，提供一个相对轻便、简单和健壮的网络通信层。

.. rst-class:: classref-introduction-group

教程
----

- `ENet 网站上的 API 文档 <http://enet.bespin.org/usergroup0.html>`__

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

枚举
----

.. _enum_ENetConnection_CompressionMode:

.. rst-class:: classref-enumeration

enum **CompressionMode**: :ref:`🔗<enum_ENetConnection_CompressionMode>`

.. _class_ENetConnection_constant_COMPRESS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_NONE** = ``0``

无压缩。这使用最多的带宽，但具有占用最少 CPU 资源的好处。这个选项可以用于 Wireshark 等工具使用，更容易进行网络调试。

.. _class_ENetConnection_constant_COMPRESS_RANGE_CODER:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_RANGE_CODER** = ``1``

ENet 的内置范围编码。适用于小数据包，但对于大于 4 KB 的数据包不是最有效的算法。

.. _class_ENetConnection_constant_COMPRESS_FASTLZ:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_FASTLZ** = ``2``

`FastLZ <https://fastlz.org/>`__ 压缩。与 :ref:`COMPRESS_ZLIB<class_ENetConnection_constant_COMPRESS_ZLIB>` 相比，此选项使用的 CPU 资源更少，代价是使用更多的带宽。

.. _class_ENetConnection_constant_COMPRESS_ZLIB:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_ZLIB** = ``3``

`Zlib <https://www.zlib.net/>`__ 压缩。与 :ref:`COMPRESS_FASTLZ<class_ENetConnection_constant_COMPRESS_FASTLZ>` 相比，此选项使用的带宽更少，代价是使用更多的 CPU 资源。

.. _class_ENetConnection_constant_COMPRESS_ZSTD:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_ZSTD** = ``4``

`Zstandard <https://facebook.github.io/zstd/>`__ 压缩。请注意，此算法对小于 4 KB 的数据包效率不高。因此，建议在大多数情况下使用其他压缩算法。

.. rst-class:: classref-item-separator

----

.. _enum_ENetConnection_EventType:

.. rst-class:: classref-enumeration

enum **EventType**: :ref:`🔗<enum_ENetConnection_EventType>`

.. _class_ENetConnection_constant_EVENT_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_ERROR** = ``-1``

:ref:`service()<class_ENetConnection_method_service>` 期间发生错误。你可能需要 :ref:`destroy()<class_ENetConnection_method_destroy>` 主机并重新创建。

.. _class_ENetConnection_constant_EVENT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_NONE** = ``0``

在指定的时间限制内没有事件发生。

.. _class_ENetConnection_constant_EVENT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_CONNECT** = ``1``

由 enet_host_connect 发起的连接请求已完成。该数组将包含成功连接的对等端。

.. _class_ENetConnection_constant_EVENT_DISCONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_DISCONNECT** = ``2``

对等端已断开连接。如果对等端超时，或者由 :ref:`connect_to_host()<class_ENetConnection_method_connect_to_host>` 初始化的连接请求超时，则在由 :ref:`ENetPacketPeer.peer_disconnect()<class_ENetPacketPeer_method_peer_disconnect>` 发起的断开连接成功完成时，生成该事件。该数组将包含断开连接的对等端。数据字段包含用户提供的描述断开连接的数据，如果没有可用的数据，则为 0。

.. _class_ENetConnection_constant_EVENT_RECEIVE:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_RECEIVE** = ``3``

已从对等端接收到一个数据包。该数组将包含发送数据包的对等端和接收数据包的通道号。接收到的数据包将被排队到关联的 :ref:`ENetPacketPeer<class_ENetPacketPeer>`\ 。

.. rst-class:: classref-item-separator

----

.. _enum_ENetConnection_HostStatistic:

.. rst-class:: classref-enumeration

enum **HostStatistic**: :ref:`🔗<enum_ENetConnection_HostStatistic>`

.. _class_ENetConnection_constant_HOST_TOTAL_SENT_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_SENT_DATA** = ``0``

发送数据的总数。

.. _class_ENetConnection_constant_HOST_TOTAL_SENT_PACKETS:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_SENT_PACKETS** = ``1``

发送 UDP 数据包的总数。

.. _class_ENetConnection_constant_HOST_TOTAL_RECEIVED_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_RECEIVED_DATA** = ``2``

接收数据的总数。

.. _class_ENetConnection_constant_HOST_TOTAL_RECEIVED_PACKETS:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_RECEIVED_PACKETS** = ``3``

接收 UDP 数据包的总数。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ENetConnection_method_bandwidth_limit:

.. rst-class:: classref-method

|void| **bandwidth_limit**\ (\ in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_bandwidth_limit>`

调整主机的带宽限制。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_broadcast:

.. rst-class:: classref-method

|void| **broadcast**\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetConnection_method_broadcast>`

将一个 ``packet`` 加入队列，以便将其通过指定的 ``channel`` 发送到与主机关联的所有对等端。请参阅 :ref:`ENetPacketPeer<class_ENetPacketPeer>` 中的 ``FLAG_*`` 常量以了解可用的数据包标志。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_channel_limit:

.. rst-class:: classref-method

|void| **channel_limit**\ (\ limit\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetConnection_method_channel_limit>`

限制未来传入连接的最大允许通道数。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_compress:

.. rst-class:: classref-method

|void| **compress**\ (\ mode\: :ref:`CompressionMode<enum_ENetConnection_CompressionMode>`\ ) :ref:`🔗<class_ENetConnection_method_compress>`

设置用于网络数据包的压缩方法。这些在压缩速度与带宽之间有不同的权衡，如果需要使用压缩，可能需要测试哪一种最适合你的用例。

\ **注意：**\ 大多数游戏的网络设计，都涉及频繁发送许多小数据包（每个小于 4 KB）。如果有疑问，建议保留默认压缩算法，因为它最适合这些小数据包。

\ **注意：**\ 压缩模式必须在服务器及其所有客户端上设置为相同的值。如果客户端上设置的压缩模式与服务器上设置的不同，则客户端将无法连接。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_connect_to_host:

.. rst-class:: classref-method

:ref:`ENetPacketPeer<class_ENetPacketPeer>` **connect_to_host**\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channels\: :ref:`int<class_int>` = 0, data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_connect_to_host>`

使用指定的端口 ``port`` 并分配所需的通道 ``channels``\ ，向外部地址 ``address`` 建立连接。可以在连接期间可以传递数据 ``data`` ，形式为 32 位整数。

\ **注意：**\ 在调用该方法之前，必须在两端都调用 :ref:`create_host()<class_ENetConnection_method_create_host>` 或 :ref:`create_host_bound()<class_ENetConnection_method_create_host_bound>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_create_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_host**\ (\ max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_create_host>`

创建一个 ENetHost，允许最多 ``max_peers`` 个已连接的对等端，每个对等端最多分配 ``max_channels`` 个通道，可选择将带宽限制为 ``in_bandwidth`` 和 ``out_bandwidth``\ （如果大于零）。

该方法在\ *未指定*\ 地址的主机上绑定一个随机可用的动态 UDP 端口。使用 :ref:`create_host_bound()<class_ENetConnection_method_create_host_bound>` 指定地址和端口。

\ **注意：**\ 必须在客户端和服务器中创建主机才能建立连接。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_create_host_bound:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_host_bound**\ (\ bind_address\: :ref:`String<class_String>`, bind_port\: :ref:`int<class_int>`, max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_create_host_bound>`

创建一个绑定到给定的 ``bind_address`` 和 ``bind_port`` 的 ENetHost，允许最多 ``max_peers`` 个已连接的对等端，每个对等端最多分配 ``max_channels`` 个通道，可选择将带宽限制为 ``in_bandwidth`` 和 ``out_bandwidth``\ （如果大于零）。

\ **注意：**\ 为了建立连接，必须在客户端和服务器中创建一个主机。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_destroy:

.. rst-class:: classref-method

|void| **destroy**\ (\ ) :ref:`🔗<class_ENetConnection_method_destroy>`

销毁主机和与其关联的所有资源。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_dtls_client_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **dtls_client_setup**\ (\ hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_ENetConnection_method_dtls_client_setup>`

配置此 ENetHost 以使用允许对 ENet 客户端进行 DTLS 加密的自定义 Godot 扩展。在 :ref:`connect_to_host()<class_ENetConnection_method_connect_to_host>` 之前调用它，让 ENet 连接使用 DTLS 根据 ``hostname`` 验证服务器证书。可以通过可选的 ``client_options`` 参数来自定义受信任的证书颁发机构，或禁用通用名称验证。见 :ref:`TLSOptions.client()<class_TLSOptions_method_client>` 和 :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_dtls_server_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **dtls_server_setup**\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_ENetConnection_method_dtls_server_setup>`

配置该 ENetHost 以使用允许对 ENet 服务器进行 DTLS 加密的自定义 Godot 扩展。在 :ref:`create_host_bound()<class_ENetConnection_method_create_host_bound>` 之后立即调用该方法，以让 ENet 期望对等端使用 DTLS 进行连接。请参阅 :ref:`TLSOptions.server()<class_TLSOptions_method_server>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_flush:

.. rst-class:: classref-method

|void| **flush**\ (\ ) :ref:`🔗<class_ENetConnection_method_flush>`

将指定主机上所有被队列的数据包发送到其指定的对等端。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_ENetConnection_method_get_local_port>`

返回该对等端绑定到的本地端口。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_max_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_channels**\ (\ ) |const| :ref:`🔗<class_ENetConnection_method_get_max_channels>`

返回连接的对等端所允许的最大通道数。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_peers:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ENetPacketPeer<class_ENetPacketPeer>`\] **get_peers**\ (\ ) :ref:`🔗<class_ENetConnection_method_get_peers>`

返回与该主机关联的对等端列表。

\ **注意：**\ 该列表可能包含一些未完全连接或仍在断开连接的对等端。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_pop_statistic:

.. rst-class:: classref-method

:ref:`float<class_float>` **pop_statistic**\ (\ statistic\: :ref:`HostStatistic<enum_ENetConnection_HostStatistic>`\ ) :ref:`🔗<class_ENetConnection_method_pop_statistic>`

返回并重置主机统计信息。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_refuse_new_connections:

.. rst-class:: classref-method

|void| **refuse_new_connections**\ (\ refuse\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ENetConnection_method_refuse_new_connections>`

将 DTLS 服务器配置为自动断开新连接。

\ **注意：**\ 这个方法只有在调用了 :ref:`dtls_server_setup()<class_ENetConnection_method_dtls_server_setup>` 后才有用。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_service:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **service**\ (\ timeout\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_service>`

等待该连接上的事件，并在给定的 ``timeout``\ （以毫秒为单位）内，在主机与其对等端之间传送数据包。返回的 :ref:`Array<class_Array>` 将包含 4 个元素。一个 :ref:`EventType<enum_ENetConnection_EventType>`\ 、生成事件的 :ref:`ENetPacketPeer<class_ENetPacketPeer>`\ 、事件关联数据（如果有）、事件关联通道（如果有）。如果生成的事件是 :ref:`EVENT_RECEIVE<class_ENetConnection_constant_EVENT_RECEIVE>`\ ，则接收的数据包将被队列到关联的 :ref:`ENetPacketPeer<class_ENetPacketPeer>`\ 。

定期调用该函数来处理连接、断开连接和接收新数据包。

\ **注意：**\ 必须在事件涉及的两端（发送和接收主机）调用该方法。

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_socket_send:

.. rst-class:: classref-method

|void| **socket_send**\ (\ destination_address\: :ref:`String<class_String>`, destination_port\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ENetConnection_method_socket_send>`

向目标发送数据包 ``packet``\ ，发送方是该 ENetConnection 实例当前绑定的地址和端口。

这样能够在该绑定实例和公共互联网之间的所有设备的 NAT 路由表中建立相关条目，因此非常有用，能够让潜在客户端的连接数据包能够通过公共互联网和该主机之间的 NAT 设备进行反向路由。

要求在 NAT 设备处理连接请求后，预先了解公共互联网所看到的潜在客户端的地址和通信端口。这一信息可以通过 `STUN <https://zh.wikipedia.org/wiki/STUN>`__ 服务获取，必须由非潜在客户端的实体交给你的主机。由于对称 NAT 路由算法的性质，这种方法对于对称 NAT 之后的客户端无效，因为无法提前得知他们的 IP 和端口。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
