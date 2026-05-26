:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerPeer:

MultiplayerPeer
===============

**继承：** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`ENetMultiplayerPeer<class_ENetMultiplayerPeer>`, :ref:`MultiplayerPeerExtension<class_MultiplayerPeerExtension>`, :ref:`OfflineMultiplayerPeer<class_OfflineMultiplayerPeer>`, :ref:`WebRTCMultiplayerPeer<class_WebRTCMultiplayerPeer>`, :ref:`WebSocketMultiplayerPeer<class_WebSocketMultiplayerPeer>`

特化 :ref:`PacketPeer<class_PacketPeer>` 的抽象类，\ :ref:`MultiplayerAPI<class_MultiplayerAPI>` 会用到。

.. rst-class:: classref-introduction-group

描述
----

管理与一个或多个作为服务器或客户端的远程对等端的连接，并为每个对等端分配唯一的 ID。另见 :ref:`MultiplayerAPI<class_MultiplayerAPI>`\ 。

\ **注意：**\ :ref:`MultiplayerAPI<class_MultiplayerAPI>` 协议是一个实现细节，并不打算由非 Godot 服务器使用。它可能会更改，恕不另行通知。

\ **注意：**\ 当导出到 Android 时，在导出项目或使用一键部署之前，确保在 Android 导出预设中启用了 ``INTERNET`` 权限。否则，任何类型的网络通信都会被安卓阻止。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`高级多人游戏 <../tutorials/networking/high_level_multiplayer>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                | :ref:`refuse_new_connections<class_MultiplayerPeer_property_refuse_new_connections>` | ``false`` |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                  | :ref:`transfer_channel<class_MultiplayerPeer_property_transfer_channel>`             | ``0``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` | :ref:`transfer_mode<class_MultiplayerPeer_property_transfer_mode>`                   | ``2``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`close<class_MultiplayerPeer_method_close>`\ (\ )                                                                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`disconnect_peer<class_MultiplayerPeer_method_disconnect_peer>`\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>` = false\ ) |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`generate_unique_id<class_MultiplayerPeer_method_generate_unique_id>`\ (\ ) |const|                                                          |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` | :ref:`get_connection_status<class_MultiplayerPeer_method_get_connection_status>`\ (\ ) |const|                                                    |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`get_packet_channel<class_MultiplayerPeer_method_get_packet_channel>`\ (\ ) |const|                                                          |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`         | :ref:`get_packet_mode<class_MultiplayerPeer_method_get_packet_mode>`\ (\ ) |const|                                                                |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`get_packet_peer<class_MultiplayerPeer_method_get_packet_peer>`\ (\ ) |const|                                                                |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`get_unique_id<class_MultiplayerPeer_method_get_unique_id>`\ (\ ) |const|                                                                    |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`is_server_relay_supported<class_MultiplayerPeer_method_is_server_relay_supported>`\ (\ ) |const|                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`poll<class_MultiplayerPeer_method_poll>`\ (\ )                                                                                              |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`set_target_peer<class_MultiplayerPeer_method_set_target_peer>`\ (\ id\: :ref:`int<class_int>`\ )                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_MultiplayerPeer_signal_peer_connected:

.. rst-class:: classref-signal

**peer_connected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_signal_peer_connected>`

远程对等端连接时发出。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_signal_peer_disconnected:

.. rst-class:: classref-signal

**peer_disconnected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_signal_peer_disconnected>`

远程对等端断开连接时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_MultiplayerPeer_ConnectionStatus:

.. rst-class:: classref-enumeration

enum **ConnectionStatus**: :ref:`🔗<enum_MultiplayerPeer_ConnectionStatus>`

.. _class_MultiplayerPeer_constant_CONNECTION_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_DISCONNECTED** = ``0``

该 MultiplayerPeer 已断开连接。

.. _class_MultiplayerPeer_constant_CONNECTION_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_CONNECTING** = ``1``

该 MultiplayerPeer 正在连接到服务器。

.. _class_MultiplayerPeer_constant_CONNECTION_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_CONNECTED** = ``2``

该 MultiplayerPeer 已连接。

.. rst-class:: classref-item-separator

----

.. _enum_MultiplayerPeer_TransferMode:

.. rst-class:: classref-enumeration

enum **TransferMode**: :ref:`🔗<enum_MultiplayerPeer_TransferMode>`

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_UNRELIABLE** = ``0``

数据包不被确认，对丢失的数据包不进行重发尝试。数据包可以以任何顺序到达。可能比 :ref:`TRANSFER_MODE_UNRELIABLE_ORDERED<class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED>` 快。用于非关键数据，并注意考虑顺序是否重要。

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_UNRELIABLE_ORDERED** = ``1``

数据包不被确认，对丢失的数据包不进行重发尝试。数据包按其发送顺序接收。有可能比 :ref:`TRANSFER_MODE_RELIABLE<class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE>` 快。用于非关键数据或由于重发尝试而迟迟不能收到的数据，例如运动和位置数据。

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_RELIABLE** = ``2``

数据包必须被接收，并应进行重发尝试，直到数据包被确认。数据包必须按照其发送的顺序接收。最可靠的传输模式，但由于开销很大，可能是最慢的。用于必须按顺序传输和到达的关键数据，例如触发的能力或聊天信息。仔细考虑信息是否真的是关键的，并尽量少用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST:

.. rst-class:: classref-constant

**TARGET_PEER_BROADCAST** = ``0`` :ref:`🔗<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>`

将数据包发送至所有已连接的对等端。

.. _class_MultiplayerPeer_constant_TARGET_PEER_SERVER:

.. rst-class:: classref-constant

**TARGET_PEER_SERVER** = ``1`` :ref:`🔗<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>`

将数据包发送至作为服务器的远程对等端。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MultiplayerPeer_property_refuse_new_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **refuse_new_connections** = ``false`` :ref:`🔗<class_MultiplayerPeer_property_refuse_new_connections>`

.. rst-class:: classref-property-setget

- |void| **set_refuse_new_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_refusing_new_connections**\ (\ )

如果为 ``true``\ ，则这个 **MultiplayerPeer** 拒绝新的连接。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_property_transfer_channel:

.. rst-class:: classref-property

:ref:`int<class_int>` **transfer_channel** = ``0`` :ref:`🔗<class_MultiplayerPeer_property_transfer_channel>`

.. rst-class:: classref-property-setget

- |void| **set_transfer_channel**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_transfer_channel**\ (\ )

用于发送数据包的通道。许多网络 API，例如 ENet 和 WebRTC，允许创建多个独立的通道，这些通道的行为在某种程度上类似于单独的连接。这意味着可靠数据只会阻止该通道上其他数据包的传递，并且排序将仅与正在发送数据包的通道有关。使用不同的通道发送\ **不同且独立的**\ 状态更新，是优化快节奏游戏的网络使用和减少延迟的常用方法。

\ **注意：**\ 默认通道（\ ``0``\ ）实际上作为 3 个独立的通道工作（每种 :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` 一个），因此默认情况下，\ :ref:`TRANSFER_MODE_RELIABLE<class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE>` 和 :ref:`TRANSFER_MODE_UNRELIABLE_ORDERED<class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED>` 不会相互交互。请参阅特定的网络 API 文档（例如 ENet 或 WebRTC），以了解如何正确地设置通道。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_property_transfer_mode:

.. rst-class:: classref-property

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **transfer_mode** = ``2`` :ref:`🔗<class_MultiplayerPeer_property_transfer_mode>`

.. rst-class:: classref-property-setget

- |void| **set_transfer_mode**\ (\ value\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ )
- :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **get_transfer_mode**\ (\ )

向目标对等端发送数据包的方式。见 :ref:`set_target_peer()<class_MultiplayerPeer_method_set_target_peer>` 方法。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MultiplayerPeer_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_MultiplayerPeer_method_close>`

立即关闭多人对等端，返回到 :ref:`CONNECTION_DISCONNECTED<class_MultiplayerPeer_constant_CONNECTION_DISCONNECTED>` 状态。已连接的对等端将被丢弃，不会发出 :ref:`peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_disconnect_peer:

.. rst-class:: classref-method

|void| **disconnect_peer**\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_MultiplayerPeer_method_disconnect_peer>`

断开给定的 ``peer`` 与该主机的连接。如果 ``force`` 为 ``true``\ ，则不会为该对等端发出 :ref:`peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>` 信号。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_generate_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **generate_unique_id**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_generate_unique_id>`

返回随机生成的整数，可用作网络唯一 ID。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_connection_status:

.. rst-class:: classref-method

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **get_connection_status**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_connection_status>`

返回连接的当前状态。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_channel**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_channel>`

返回下一个可用数据包被接收使用的通道。请参阅 :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **get_packet_mode**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_mode>`

返回远程对等端用于发送下一个可用数据包的传输模式。请参阅 :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_peer:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_peer**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_peer>`

返回发送下一个可用数据包的 **MultiplayerPeer** 的 ID。见 :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unique_id**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_unique_id>`

返回该 **MultiplayerPeer** 的 ID。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_is_server_relay_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server_relay_supported**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_is_server_relay_supported>`

如果服务器在当前配置中可以充当中继者，则返回 ``true``\ （也就是说，如果更高级别的 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 应该通知连接的客户端有其他对等端，并实现一个中继协议以允许它们之间的通信）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_MultiplayerPeer_method_poll>`

等待最多 1 秒以接收一个新的网络事件。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_set_target_peer:

.. rst-class:: classref-method

|void| **set_target_peer**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_method_set_target_peer>`

设置数据包将被发送至的对等端。

\ ``id`` 可以是以下之一：\ :ref:`TARGET_PEER_BROADCAST<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>`\ ，以发送到所有连接的对等端；\ :ref:`TARGET_PEER_SERVER<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>`\ ，以发送到充当服务器的对等端；一个有效的对等端 ID ，以发送到那个特定的对等端；一个负的对等端 ID，以发送到除那个对等端以外的所有对等端。默认情况下，目标对等端是 :ref:`TARGET_PEER_BROADCAST<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
