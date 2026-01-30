:github_url: hide

.. _class_SceneMultiplayer:

SceneMultiplayer
================

**继承：** :ref:`MultiplayerAPI<class_MultiplayerAPI>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

高阶多人游戏 API 实现。

.. rst-class:: classref-introduction-group

描述
----

这个类是 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 的默认实现，用于在 Godot 引擎中提供多人游戏功能。

该实现通过 :ref:`Node.rpc()<class_Node_method_rpc>` 和 :ref:`Node.rpc_id()<class_Node_method_rpc_id>` 来支持 RPC，需要向 :ref:`MultiplayerAPI.rpc()<class_MultiplayerAPI_method_rpc>` 传递一个 :ref:`Node<class_Node>`\ （传入其他对象类型会导致失败）。

该实现还提供了 :ref:`SceneTree<class_SceneTree>` 复制功能，使用的是 :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` 和 :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` 节点，以及 :ref:`SceneReplicationConfig<class_SceneReplicationConfig>` 资源，。

\ **注意：**\ 高阶多人游戏 API 协议属于实现细节，并不打算提供给非 Godot 服务器使用。对协议的更改可能不会进行提前通知。

\ **注意：**\ 导出到 Android 时，在导出项目或使用一键部署之前，请务必在安卓导出预设中开启 ``INTERNET`` 权限。否则，任何类型的网络通信都将被 Android 阻止。

.. rst-class:: classref-reftable-group

属性
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

信号
----

.. _class_SceneMultiplayer_signal_peer_authenticating:

.. rst-class:: classref-signal

**peer_authenticating**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authenticating>`

当此 MultiplayerAPI 的 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 连接到一个新对等体并设置有效的 :ref:`auth_callback<class_SceneMultiplayer_property_auth_callback>` 时，将发出此信号。在这种情况下，只有在调用 :ref:`complete_auth()<class_SceneMultiplayer_method_complete_auth>` 并传递给定的对等体 ``id`` 时，才会发出 :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>`\ 。在此状态下，该对等体不会包含在 :ref:`MultiplayerAPI.get_peers()<class_MultiplayerAPI_method_get_peers>` 返回的列表中（但会包含在 :ref:`get_authenticating_peers()<class_SceneMultiplayer_method_get_authenticating_peers>` 返回的列表中），且只会发送和接收身份验证数据。有关发送身份验证数据的信息，请参阅 :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_authentication_failed:

.. rst-class:: classref-signal

**peer_authentication_failed**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authentication_failed>`

当这个 MultiplayerAPI 的 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 与另一个尚未完成授权的对等体断开连接时触发。见 :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_packet:

.. rst-class:: classref-signal

**peer_packet**\ (\ id\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_packet>`

当这个 MultiplayerAPI 的 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 收到带有自定义数据（见 :ref:`send_bytes()<class_SceneMultiplayer_method_send_bytes>`\ ）的 ``packet`` 时发出。ID 是发送数据包的对等体的对等体 ID。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SceneMultiplayer_property_allow_object_decoding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_object_decoding** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_allow_object_decoding>`

.. rst-class:: classref-property-setget

- |void| **set_allow_object_decoding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_object_decoding_allowed**\ (\ )

如果为 ``true``\ ，则 MultiplayerAPI 将允许在远程过程调用期间对对象进行编码和解码。

\ **警告：**\ 反序列化的对象可能包含要执行的代码。如果序列化的对象来自不受信任的来源，请勿使用此选项，以避免潜在的安全威胁，例如远程代码执行。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_callback:

.. rst-class:: classref-property

:ref:`Callable<class_Callable>` **auth_callback** = ``Callable()`` :ref:`🔗<class_SceneMultiplayer_property_auth_callback>`

.. rst-class:: classref-property-setget

- |void| **set_auth_callback**\ (\ value\: :ref:`Callable<class_Callable>`\ )
- :ref:`Callable<class_Callable>` **get_auth_callback**\ (\ )

当通过 :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>` 接收身份验证数据时要执行的回调函数。如果 :ref:`Callable<class_Callable>` 为空（默认），对等方将在连接后立即自动接受。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **auth_timeout** = ``3.0`` :ref:`🔗<class_SceneMultiplayer_property_auth_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_auth_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auth_timeout**\ (\ )

如果将其设置为大于 ``0.0`` 的值，则对等方可以停留在正在验证状态的最长时间，单位为秒，之后身份验证将自动失败。见 :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>` 和 :ref:`peer_authentication_failed<class_SceneMultiplayer_signal_peer_authentication_failed>` 信号。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_delta_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_delta_packet_size** = ``65535`` :ref:`🔗<class_SceneMultiplayer_property_max_delta_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_delta_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_delta_packet_size**\ (\ )

增量数据包的最大大小。值越大，单帧能够收到完整更新的几率就越大，但造成网络拥堵的几率也越大（网络延迟、断线等）。见 :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_sync_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_sync_packet_size** = ``1350`` :ref:`🔗<class_SceneMultiplayer_property_max_sync_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_sync_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_sync_packet_size**\ (\ )

同步数据包的最大大小。值越大，单帧能够收到完整更新的几率就越大，但丢包的几率也越大。见 :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_refuse_new_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **refuse_new_connections** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_refuse_new_connections>`

.. rst-class:: classref-property-setget

- |void| **set_refuse_new_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_refusing_new_connections**\ (\ )

如果为 ``true``\ ，则 MultiplayerAPI 的 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 将拒绝新的传入连接。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_root_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_path** = ``NodePath("")`` :ref:`🔗<class_SceneMultiplayer_property_root_path>`

.. rst-class:: classref-property-setget

- |void| **set_root_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_path**\ (\ )

用于 RPC 和复制的根路径。将使用相对路径，而不是绝对路径，来查找 RPC 应该在其上被执行的节点。

这有效地允许场景树的不同分支，由不同的 MultiplayerAPI 管理，例如允许在同一场景中，同时运行客户端和服务器。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_server_relay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **server_relay** = ``true`` :ref:`🔗<class_SceneMultiplayer_property_server_relay>`

.. rst-class:: classref-property-setget

- |void| **set_server_relay_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_server_relay_enabled**\ (\ )

启用或禁用服务器功能，该功能通知客户端其他对等体的连接/断开，并在它们之间转发消息。当此选项为 ``false`` 时，客户端将不会自动收到其他对等体的通知，也无法通过服务器向它们发送数据包。

\ **注意：**\ 在其他对等体连接时更改此选项可能会导致意外行为。

\ **注意：**\ 对该功能的支持可能取决于当前的 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 配置。请参阅 :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SceneMultiplayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_clear>`

清除当前 SceneMultiplayer 的网络状态（不清楚有什么用就别调用）。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_complete_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **complete_auth**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_complete_auth>`

完成对由 ``id`` 标识的远程对等体的身份验证步骤。远程端也完成身份验证之后，将会为这个对等体发出 :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` 信号。不会再从此对等体接收到身份验证消息。

如果对等体在完成身份验证之前断开连接，无论是由于网络问题、\ :ref:`auth_timeout<class_SceneMultiplayer_property_auth_timeout>` 过期还是手动调用 :ref:`disconnect_peer()<class_SceneMultiplayer_method_disconnect_peer>`\ ，都会发出 :ref:`peer_authentication_failed<class_SceneMultiplayer_signal_peer_authentication_failed>` 信号，而不是 :ref:`MultiplayerAPI.peer_disconnected<class_MultiplayerAPI_signal_peer_disconnected>` 信号。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_disconnect_peer:

.. rst-class:: classref-method

|void| **disconnect_peer**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_disconnect_peer>`

断开由 ``id`` 标识的对等体的连接，将其从连接的对等体列表中移除，并关闭与它的底层连接。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_get_authenticating_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_authenticating_peers**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_get_authenticating_peers>`

返回当前尝试使用此 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 进行身份验证的对等方的 ID。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_auth**\ (\ id\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_method_send_auth>`

将指定的 ``data`` 作为身份验证消息的一部分发送到由 ``id`` 标识的远程对等方。这可用于验证对等方，并控制何时发出 :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>`\ （并接受远程对等方作为连接的对等方之一）。

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_bytes:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_bytes**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, id\: :ref:`int<class_int>` = 0, mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` = 2, channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneMultiplayer_method_send_bytes>`

向由 ``id`` 标识的特定对等体发送给定的原始字节 ``bytes``\ （见 :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`\ ）。默认 ID 为 ``0``\ ，即广播到所有对等体。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
