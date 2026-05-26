:github_url: hide

.. _class_WebRTCMultiplayerPeer:

WebRTCMultiplayerPeer
=====================

**继承：** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

简单的接口，用于创建由 :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` 组成的点对点网状网络，与 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 兼容。

.. rst-class:: classref-introduction-group

描述
----

这个类构建了一个完整的 :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` 网状结构（每个对等端有一个连接），可用作 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`\ 。

可以通过 :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` 添加每个 :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`\ ，或通过 :ref:`remove_peer()<class_WebRTCMultiplayerPeer_method_remove_peer>` 移除它们。必须在 :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` 状态下添加对等端，以允许它创建适当的通道。这个类不会创建提交或设置描述，它只会轮询它们，并通知连接和断开连接。

当通过 :ref:`create_client()<class_WebRTCMultiplayerPeer_method_create_client>` 或 :ref:`create_server()<class_WebRTCMultiplayerPeer_method_create_server>` 创建对等端时， :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>` 方法将返回 ``true``\ ，在 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 实现支持时启用对等端交换和数据包中继。

\ **注意：**\ 导出到 Android 时，在导出项目或使用一键部署前，请确保在 Android 导出预设中启用了 ``INTERNET`` 权限。否则，任何类型的网络通信都将被 Android 阻止。

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

方法说明
--------

.. _class_WebRTCMultiplayerPeer_method_add_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_peer**\ (\ peer\: :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, peer_id\: :ref:`int<class_int>`, unreliable_lifetime\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_add_peer>`

以给定的 ``peer_id`` 添加一个新的对等端到网状结构。该 :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` 必须处于 :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` 状态。

将为可靠的、不可靠的和有序的传输创建三个通道。在创建不可靠和有序通道时，\ ``unreliable_lifetime`` 的值将被传递给 ``"maxPacketLifetime"``\ 选项（见 :ref:`WebRTCPeerConnection.create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_client>`

将多人游戏对等端初始化为客户端，对等端 ID 为 ``peer_id``\ （必须在 2 和 2147483647 之间）。在这种模式下，你应当只调用 :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` 一次，使用 ``1`` 作为 ``peer_id``\ 。这种模式会启用 :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`\ ，允许上层 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 执行对等端交换和数据包接力。

你也可以指定 ``channels_config`` 数组，数组中的元素为 :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ ，会用于创建额外的通道（WebRTC 的每个通道仅支持一种传输模式）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_mesh>`

将多人游戏对等端初始化为网状（即所有对等端都互相连接），对等端 ID 为 ``peer_id``\ （必须在 1 和 2147483647 之间）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_server>`

将多人游戏对等端作为服务器进行初始化（唯一 ID 为 ``1``\ ）。这种模式会启用 :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`\ ，允许上层 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 执行对等端交换和数据包接力。

你也可以指定 ``channels_config`` 数组，数组中的元素为 :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ ，会用于创建额外的通道（WebRTC 的每个通道仅支持一种传输模式）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peer>`

返回 ID 为 ``peer_id`` 的对等端的字典表示，其中包含三个字段。\ ``"connection"`` 包含与这个对等端的 :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`\ ，\ ``"channels"`` 是三个 :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` 的数组，而 ``"connected"`` 则是代表对等端目前是否已连接的布尔值（三个通道均已开放）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peers:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peers**\ (\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peers>`

返回一个字典，其键是对等端的 id，其值是对等端的表示，如 :ref:`get_peer()<class_WebRTCMultiplayerPeer_method_get_peer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_has_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_has_peer>`

如果给定的 ``peer_id`` 在对等端映射中，则返回 ``true``\ （尽管它可能没有连接）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_remove_peer:

.. rst-class:: classref-method

|void| **remove_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_remove_peer>`

从 mesh 结构中移除具有给定 ``peer_id`` 的对等端。如果该对等端已连接，并且为它发出过 :ref:`MultiplayerPeer.peer_connected<class_MultiplayerPeer_signal_peer_connected>`\ ，那么 :ref:`MultiplayerPeer.peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>` 也将被发出。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
