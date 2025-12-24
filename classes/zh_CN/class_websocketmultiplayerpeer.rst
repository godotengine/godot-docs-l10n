:github_url: hide

.. _class_WebSocketMultiplayerPeer:

WebSocketMultiplayerPeer
========================

**继承：** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

WebSocket 服务器和客户端的基类。

.. rst-class:: classref-introduction-group

描述
----

用于 WebSocket 服务器和客户端的基类，可以用作 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 的多人对等体。

\ **注意：**\ 导出到安卓时，在导出项目或使用一键部署之前，请务必在安卓导出预设中开启 ``INTERNET`` 权限。否则，任何类型的网络通信都将被 Android 阻止。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`handshake_headers<class_WebSocketMultiplayerPeer_property_handshake_headers>`       | ``PackedStringArray()`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                         | :ref:`handshake_timeout<class_WebSocketMultiplayerPeer_property_handshake_timeout>`       | ``3.0``                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`inbound_buffer_size<class_WebSocketMultiplayerPeer_property_inbound_buffer_size>`   | ``65535``               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`max_queued_packets<class_WebSocketMultiplayerPeer_property_max_queued_packets>`     | ``4096``                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`outbound_buffer_size<class_WebSocketMultiplayerPeer_property_outbound_buffer_size>` | ``65535``               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`supported_protocols<class_WebSocketMultiplayerPeer_property_supported_protocols>`   | ``PackedStringArray()`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`create_client<class_WebSocketMultiplayerPeer_method_create_client>`\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`create_server<class_WebSocketMultiplayerPeer_method_create_server>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", tls_server_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`WebSocketPeer<class_WebSocketPeer>` | :ref:`get_peer<class_WebSocketMultiplayerPeer_method_get_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`               | :ref:`get_peer_address<class_WebSocketMultiplayerPeer_method_get_peer_address>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_peer_port<class_WebSocketMultiplayerPeer_method_get_peer_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_WebSocketMultiplayerPeer_property_handshake_headers:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **handshake_headers** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_handshake_headers>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_headers**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_handshake_headers**\ (\ )

握手过程中要使用的额外标头。详见 :ref:`WebSocketPeer.handshake_headers<class_WebSocketPeer_property_handshake_headers>`\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_handshake_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **handshake_timeout** = ``3.0`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_handshake_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_handshake_timeout**\ (\ )

每个对等体在被丢弃之前可以保持在连接状态的最长时间。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_inbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **inbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_inbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_inbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_inbound_buffer_size**\ (\ )

已连接对等体的入站缓冲区大小。详见 :ref:`WebSocketPeer.inbound_buffer_size<class_WebSocketPeer_property_inbound_buffer_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_max_queued_packets:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_queued_packets** = ``4096`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_max_queued_packets>`

.. rst-class:: classref-property-setget

- |void| **set_max_queued_packets**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_queued_packets**\ (\ )

已连接对等体的最大排队数据包数量。详见 :ref:`WebSocketPeer.max_queued_packets<class_WebSocketPeer_property_max_queued_packets>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_outbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_outbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_outbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outbound_buffer_size**\ (\ )

已连接对等体的出站缓冲区大小。详见 :ref:`WebSocketPeer.outbound_buffer_size<class_WebSocketPeer_property_outbound_buffer_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_supported_protocols:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **supported_protocols** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_supported_protocols>`

.. rst-class:: classref-property-setget

- |void| **set_supported_protocols**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_supported_protocols**\ (\ )

支持的 WebSocket 子协议。详见 :ref:`WebSocketPeer.supported_protocols<class_WebSocketPeer_property_supported_protocols>`\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_WebSocketMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketMultiplayerPeer_method_create_client>`

启动新的多人客户端，连接至给定的 ``url``\ 。使用 ``wss://`` 协议连接时会校验主机名和 TLS 证书。传入 ``tls_client_options`` 可以自定义信任的证书颁发机构，也可以禁用通用名的验证。见 :ref:`TLSOptions.client()<class_TLSOptions_method_client>` 和 :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`\ 。

\ **注意：**\ 推荐指定 URL 的方案部分，即 ``url`` 应该以 ``ws://`` 或 ``wss://`` 开头。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", tls_server_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketMultiplayerPeer_method_create_server>`

启动新的多人服务器，监听给定的 ``port``\ 。可以指定 ``bind_address``\ ，也可以提供有效的 ``tls_server_options`` 来使用 TLS。见 :ref:`TLSOptions.server()<class_TLSOptions_method_server>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`WebSocketPeer<class_WebSocketPeer>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer>`

返回与给定 ``peer_id`` 关联的 :ref:`WebSocketPeer<class_WebSocketPeer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_peer_address**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer_address>`

返回给定对等体的 IP 地址。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_peer_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer_port>`

返回给定对等体的远程端口。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
