:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerPeerExtension:

MultiplayerPeerExtension
========================

**继承：** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

可以通过 GDExtension 继承，从而实现自定义多人 API 网络层的类。

.. rst-class:: classref-introduction-group

描述
----

该类旨在被一个 GDExtension 插件继承，以实现多人游戏 API（例如 WebRTC）的自定义网络层。下面的所有方法都\ **必须**\ 被实现，才能实现一个有效的自定义多人游戏实现。另见 :ref:`MultiplayerAPI<class_MultiplayerAPI>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_close<class_MultiplayerPeerExtension_private_method__close>`\ (\ ) |virtual| |required|                                                                                          |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_disconnect_peer<class_MultiplayerPeerExtension_private_method__disconnect_peer>`\ (\ p_peer\: :ref:`int<class_int>`, p_force\: :ref:`bool<class_bool>`\ ) |virtual| |required|   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_available_packet_count<class_MultiplayerPeerExtension_private_method__get_available_packet_count>`\ (\ ) |virtual| |required| |const|                                        |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` | :ref:`_get_connection_status<class_MultiplayerPeerExtension_private_method__get_connection_status>`\ (\ ) |virtual| |required| |const|                                                  |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_max_packet_size<class_MultiplayerPeerExtension_private_method__get_max_packet_size>`\ (\ ) |virtual| |required| |const|                                                      |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                          | :ref:`_get_packet<class_MultiplayerPeerExtension_private_method__get_packet>`\ (\ r_buffer\: ``const uint8_t **``, r_buffer_size\: ``int32_t*``\ ) |virtual|                            |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_packet_channel<class_MultiplayerPeerExtension_private_method__get_packet_channel>`\ (\ ) |virtual| |required| |const|                                                        |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`         | :ref:`_get_packet_mode<class_MultiplayerPeerExtension_private_method__get_packet_mode>`\ (\ ) |virtual| |required| |const|                                                              |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_packet_peer<class_MultiplayerPeerExtension_private_method__get_packet_peer>`\ (\ ) |virtual| |required| |const|                                                              |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                  | :ref:`_get_packet_script<class_MultiplayerPeerExtension_private_method__get_packet_script>`\ (\ ) |virtual|                                                                             |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_transfer_channel<class_MultiplayerPeerExtension_private_method__get_transfer_channel>`\ (\ ) |virtual| |required| |const|                                                    |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`         | :ref:`_get_transfer_mode<class_MultiplayerPeerExtension_private_method__get_transfer_mode>`\ (\ ) |virtual| |required| |const|                                                          |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_unique_id<class_MultiplayerPeerExtension_private_method__get_unique_id>`\ (\ ) |virtual| |required| |const|                                                                  |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`_is_refusing_new_connections<class_MultiplayerPeerExtension_private_method__is_refusing_new_connections>`\ (\ ) |virtual| |const|                                                 |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`_is_server<class_MultiplayerPeerExtension_private_method__is_server>`\ (\ ) |virtual| |required| |const|                                                                          |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`_is_server_relay_supported<class_MultiplayerPeerExtension_private_method__is_server_relay_supported>`\ (\ ) |virtual| |const|                                                     |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_poll<class_MultiplayerPeerExtension_private_method__poll>`\ (\ ) |virtual| |required|                                                                                            |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                          | :ref:`_put_packet<class_MultiplayerPeerExtension_private_method__put_packet>`\ (\ p_buffer\: ``const uint8_t*``, p_buffer_size\: :ref:`int<class_int>`\ ) |virtual|                     |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                          | :ref:`_put_packet_script<class_MultiplayerPeerExtension_private_method__put_packet_script>`\ (\ p_buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |virtual|                   |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_refuse_new_connections<class_MultiplayerPeerExtension_private_method__set_refuse_new_connections>`\ (\ p_enable\: :ref:`bool<class_bool>`\ ) |virtual|                       |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_target_peer<class_MultiplayerPeerExtension_private_method__set_target_peer>`\ (\ p_peer\: :ref:`int<class_int>`\ ) |virtual| |required|                                      |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_transfer_channel<class_MultiplayerPeerExtension_private_method__set_transfer_channel>`\ (\ p_channel\: :ref:`int<class_int>`\ ) |virtual| |required|                         |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_transfer_mode<class_MultiplayerPeerExtension_private_method__set_transfer_mode>`\ (\ p_mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ ) |virtual| |required| |
   +----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MultiplayerPeerExtension_private_method__close:

.. rst-class:: classref-method

|void| **_close**\ (\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__close>`

该多人游戏对等端应当立即关闭时调用（见 :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__disconnect_peer:

.. rst-class:: classref-method

|void| **_disconnect_peer**\ (\ p_peer\: :ref:`int<class_int>`, p_force\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__disconnect_peer>`

应当强制断开与对等端 ``p_peer`` 的连接时调用（见 :ref:`MultiplayerPeer.disconnect_peer()<class_MultiplayerPeer_method_disconnect_peer>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_available_packet_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_available_packet_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_available_packet_count>`

:ref:`MultiplayerAPI<class_MultiplayerAPI>` 对可用的数据包数量发出内部请求时调用。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_connection_status:

.. rst-class:: classref-method

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **_get_connection_status**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_connection_status>`

:ref:`MultiplayerPeer<class_MultiplayerPeer>` 请求连接状态时调用（见 :ref:`MultiplayerPeer.get_connection_status()<class_MultiplayerPeer_method_get_connection_status>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_max_packet_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_max_packet_size**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_max_packet_size>`

:ref:`MultiplayerAPI<class_MultiplayerAPI>` 请求最大允许的数据包大小（单位为字节）时调用。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_get_packet**\ (\ r_buffer\: ``const uint8_t **``, r_buffer_size\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet>`

:ref:`MultiplayerAPI<class_MultiplayerAPI>` 需要接收一个数据包时调用，\ ``r_buffer_size`` 是二进制缓冲区 ``r_buffer`` 的字节大小。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_packet_channel**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_channel>`

返回接收下一个可用数据包所使用的通道。请参阅 :ref:`MultiplayerPeer.get_packet_channel()<class_MultiplayerPeer_method_get_packet_channel>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **_get_packet_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_mode>`

调用以获取远程对等端用于发送下一个可用数据包的传输模式。请参阅 :ref:`MultiplayerPeer.get_packet_mode()<class_MultiplayerPeer_method_get_packet_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_peer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_packet_peer**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_peer>`

请求最近数据包发送方 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的 ID 时调用（见 :ref:`MultiplayerPeer.get_packet_peer()<class_MultiplayerPeer_method_get_packet_peer>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_script:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_get_packet_script**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_script>`

如果 :ref:`_get_packet()<class_MultiplayerPeerExtension_private_method__get_packet>` 未实现，则在有数据包需要被 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 接收时调用。使用 GDScript 扩展这个类时请使用。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_transfer_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_transfer_channel**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_transfer_channel>`

读取 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 所使用的传输通道时调用（见 :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_transfer_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **_get_transfer_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_transfer_mode>`

读取 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 所使用的传输模式时调用（见 :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_unique_id**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_unique_id>`

请求 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的唯一 ID 时调用（见 :ref:`MultiplayerPeer.get_unique_id()<class_MultiplayerPeer_method_get_unique_id>`\ ）。取值必须在 ``1`` 和 ``2147483647`` 之间。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_refusing_new_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_refusing_new_connections**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_refusing_new_connections>`

请求 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的“拒绝新连接”状态时调用（见 :ref:`MultiplayerPeer.refuse_new_connections<class_MultiplayerPeer_property_refuse_new_connections>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_server**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_server>`

请求 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的“是否为服务器”状态时调用。见 :ref:`MultiplayerAPI.is_server()<class_MultiplayerAPI_method_is_server>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_server_relay_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_server_relay_supported**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_server_relay_supported>`

检查服务器在当前配置中是否能够作为中继时调用。见 :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__poll:

.. rst-class:: classref-method

|void| **_poll**\ (\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__poll>`

轮询 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 时调用。见 :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__put_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_packet**\ (\ p_buffer\: ``const uint8_t*``, p_buffer_size\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__put_packet>`

需要让 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 发送数据包时调用，\ ``p_buffer_size`` 是二进制缓冲区 ``p_buffer`` 的字节大小。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__put_packet_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_packet_script**\ (\ p_buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__put_packet_script>`

如果 :ref:`_put_packet()<class_MultiplayerPeerExtension_private_method__put_packet>` 未实现，则在需要让 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 发送数据包时调用。使用 GDScript 扩展这个类时请使用。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_refuse_new_connections:

.. rst-class:: classref-method

|void| **_set_refuse_new_connections**\ (\ p_enable\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_refuse_new_connections>`

设置 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的“拒绝新连接”状态时调用（见 :ref:`MultiplayerPeer.refuse_new_connections<class_MultiplayerPeer_property_refuse_new_connections>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_target_peer:

.. rst-class:: classref-method

|void| **_set_target_peer**\ (\ p_peer\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_target_peer>`

设置 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 所使用的目标对等端时调用（见 :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_transfer_channel:

.. rst-class:: classref-method

|void| **_set_transfer_channel**\ (\ p_channel\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_transfer_channel>`

设置 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 所使用的通道时调用（见 :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_transfer_mode:

.. rst-class:: classref-method

|void| **_set_transfer_mode**\ (\ p_mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_transfer_mode>`

设置 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 所使用的传输模式时调用（见 :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
