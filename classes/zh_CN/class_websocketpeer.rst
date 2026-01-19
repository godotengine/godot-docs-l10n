:github_url: hide

.. _class_WebSocketPeer:

WebSocketPeer
=============

**继承：** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

WebSocket 连接。

.. rst-class:: classref-introduction-group

描述
----

This class represents WebSocket connection, and can be used as a WebSocket client (`RFC 6455 <https://datatracker.ietf.org/doc/html/rfc6455>`__-compliant) or as a remote peer of a WebSocket server.

You can send WebSocket binary frames using :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>`, and WebSocket text frames using :ref:`send()<class_WebSocketPeer_method_send>` (prefer text frames when interacting with text-based API). You can check the frame type of the last packet via :ref:`was_string_packet()<class_WebSocketPeer_method_was_string_packet>`.

To start a WebSocket client, first call :ref:`connect_to_url()<class_WebSocketPeer_method_connect_to_url>`, then regularly call :ref:`poll()<class_WebSocketPeer_method_poll>` (e.g. during :ref:`Node<class_Node>` process). You can query the socket state via :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>`, get the number of pending packets using :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`, and retrieve them via :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>`.


.. tabs::

 .. code-tab:: gdscript

    extends Node

    var socket = WebSocketPeer.new()

    func _ready():
        socket.connect_to_url("wss://example.com")

    func _process(delta):
        socket.poll()
        var state = socket.get_ready_state()
        if state == WebSocketPeer.STATE_OPEN:
            while socket.get_available_packet_count():
                print("Packet: ", socket.get_packet())
        elif state == WebSocketPeer.STATE_CLOSING:
            # Keep polling to achieve proper close.
            pass
        elif state == WebSocketPeer.STATE_CLOSED:
            var code = socket.get_close_code()
            var reason = socket.get_close_reason()
            print("WebSocket closed with code: %d, reason %s. Clean: %s" % [code, reason, code != -1])
            set_process(false) # Stop processing.



To use the peer as part of a WebSocket server refer to :ref:`accept_stream()<class_WebSocketPeer_method_accept_stream>` and the online tutorial.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`handshake_headers<class_WebSocketPeer_property_handshake_headers>`       | ``PackedStringArray()`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                         | :ref:`heartbeat_interval<class_WebSocketPeer_property_heartbeat_interval>`     | ``0.0``                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`inbound_buffer_size<class_WebSocketPeer_property_inbound_buffer_size>`   | ``65535``               |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`max_queued_packets<class_WebSocketPeer_property_max_queued_packets>`     | ``4096``                |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`outbound_buffer_size<class_WebSocketPeer_property_outbound_buffer_size>` | ``65535``               |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`supported_protocols<class_WebSocketPeer_property_supported_protocols>`   | ``PackedStringArray()`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`accept_stream<class_WebSocketPeer_method_accept_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`\ )                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`close<class_WebSocketPeer_method_close>`\ (\ code\: :ref:`int<class_int>` = 1000, reason\: :ref:`String<class_String>` = ""\ )                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`connect_to_url<class_WebSocketPeer_method_connect_to_url>`\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )   |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_close_code<class_WebSocketPeer_method_get_close_code>`\ (\ ) |const|                                                                                               |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_close_reason<class_WebSocketPeer_method_get_close_reason>`\ (\ ) |const|                                                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_connected_host<class_WebSocketPeer_method_get_connected_host>`\ (\ ) |const|                                                                                       |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_connected_port<class_WebSocketPeer_method_get_connected_port>`\ (\ ) |const|                                                                                       |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_current_outbound_buffered_amount<class_WebSocketPeer_method_get_current_outbound_buffered_amount>`\ (\ ) |const|                                                   |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`State<enum_WebSocketPeer_State>` | :ref:`get_ready_state<class_WebSocketPeer_method_get_ready_state>`\ (\ ) |const|                                                                                             |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_requested_url<class_WebSocketPeer_method_get_requested_url>`\ (\ ) |const|                                                                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_selected_protocol<class_WebSocketPeer_method_get_selected_protocol>`\ (\ ) |const|                                                                                 |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`poll<class_WebSocketPeer_method_poll>`\ (\ )                                                                                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`send<class_WebSocketPeer_method_send>`\ (\ message\: :ref:`PackedByteArray<class_PackedByteArray>`, write_mode\: :ref:`WriteMode<enum_WebSocketPeer_WriteMode>` = 1\ ) |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`send_text<class_WebSocketPeer_method_send_text>`\ (\ message\: :ref:`String<class_String>`\ )                                                                          |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`set_no_delay<class_WebSocketPeer_method_set_no_delay>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                                        |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                | :ref:`was_string_packet<class_WebSocketPeer_method_was_string_packet>`\ (\ ) |const|                                                                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_WebSocketPeer_WriteMode:

.. rst-class:: classref-enumeration

enum **WriteMode**: :ref:`🔗<enum_WebSocketPeer_WriteMode>`

.. _class_WebSocketPeer_constant_WRITE_MODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebSocketPeer_WriteMode>` **WRITE_MODE_TEXT** = ``0``

指定 WebSockets 消息应作为文本有效载荷传输（只允许有效的 UTF-8）。

.. _class_WebSocketPeer_constant_WRITE_MODE_BINARY:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebSocketPeer_WriteMode>` **WRITE_MODE_BINARY** = ``1``

指定 WebSockets 消息应以二进制有效载荷的形式传输（允许任何字节组合）。

.. rst-class:: classref-item-separator

----

.. _enum_WebSocketPeer_State:

.. rst-class:: classref-enumeration

enum **State**: :ref:`🔗<enum_WebSocketPeer_State>`

.. _class_WebSocketPeer_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CONNECTING** = ``0``

已创建套接字。连接尚未打开。

.. _class_WebSocketPeer_constant_STATE_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_OPEN** = ``1``

连接已打开，通讯就绪。

.. _class_WebSocketPeer_constant_STATE_CLOSING:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CLOSING** = ``2``

连接正在关闭过程中。这意味着已经向远程对等体发送了关闭请求，但还没有收到确认。

.. _class_WebSocketPeer_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CLOSED** = ``3``

连接已关闭或无法打开。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_WebSocketPeer_property_handshake_headers:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **handshake_headers** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketPeer_property_handshake_headers>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_headers**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_handshake_headers**\ (\ )

在 WebSocket 握手过程中要发送的额外 HTTP 标头。

\ **注意：**\ 由于浏览器的限制，在 Web 导出中不支持。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_heartbeat_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **heartbeat_interval** = ``0.0`` :ref:`🔗<class_WebSocketPeer_property_heartbeat_interval>`

.. rst-class:: classref-property-setget

- |void| **set_heartbeat_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_heartbeat_interval**\ (\ )

对等体自动发送 WebSocket“ping”控制帧的间隔（单位为秒）。设为 ``0`` 时不会发送“ping”控制帧。

\ **注意：**\ 由于浏览器的限制，在 Web 导出中无效。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_inbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **inbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketPeer_property_inbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_inbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_inbound_buffer_size**\ (\ )

输入缓冲区的大小，单位为字节（大致是将分配给入站数据包的最大内存量）。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_max_queued_packets:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_queued_packets** = ``4096`` :ref:`🔗<class_WebSocketPeer_property_max_queued_packets>`

.. rst-class:: classref-property-setget

- |void| **set_max_queued_packets**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_queued_packets**\ (\ )

队列中允许的最大数据包数量（包括入站和出站）。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_outbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketPeer_property_outbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_outbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outbound_buffer_size**\ (\ )

输入缓冲区的大小，单位为字节（大致是将分配给出站数据包的最大内存量）。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_supported_protocols:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **supported_protocols** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketPeer_property_supported_protocols>`

.. rst-class:: classref-property-setget

- |void| **set_supported_protocols**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_supported_protocols**\ (\ )

WebSocket 握手期间允许的 WebSocket 子协议。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_WebSocketPeer_method_accept_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **accept_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`\ ) :ref:`🔗<class_WebSocketPeer_method_accept_stream>`

以 WebSocket 服务器的名义，接受正在执行 HTTP 握手的对等体连接。\ ``stream`` 必须是从 :ref:`TCPServer.take_connection()<class_TCPServer_method_take_connection>` 获取的有效 TCP 流，或者是从 :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` 接受的 TLS 流。

\ **注意：**\ 由于浏览器的限制，Web 导出中不支持此方法。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ code\: :ref:`int<class_int>` = 1000, reason\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WebSocketPeer_method_close>`

Closes this WebSocket connection.

\ ``code`` is the status code for the closure (see `RFC 6455 section 7.4 <https://datatracker.ietf.org/doc/html/rfc6455#section-7.4.1>`__ for a list of valid status codes). If ``code`` is negative, the connection will be closed immediately without notifying the remote peer.

\ ``reason`` is the human-readable reason for closing the connection. It can be any UTF-8 string that's smaller than 123 bytes.

\ **Note:** To achieve a clean closure, you will need to keep polling until :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>` is reached.

\ **Note:** The Web export might not support all status codes. Please refer to browser-specific documentation for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_connect_to_url:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_url**\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketPeer_method_connect_to_url>`

连接到给定的 URL。使用 ``wss://`` 协议连接时会校验 TLS 证书与主机名。传入可选的 ``tls_client_options`` 参数可以自定义信任的证书颁发机构，也可以禁用通用名校验。见 :ref:`TLSOptions.client()<class_TLSOptions_method_client>` 和 :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`\ 。

\ **注意：**\ 该方法不会阻塞，只要提供的参数有效且对等体不处于无效状态（例如已连接）就会在建立连接前返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。要检测连接成功还是失败，请定期调用 :ref:`poll()<class_WebSocketPeer_method_poll>`\ （例如在 :ref:`Node<class_Node>` 的处理方法中）并检查 :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` 的结果。

\ **注意：**\ 为了避免 Web 中的混合内容警告或错误，你可能需要使用以 ``wss://``\ （安全）开头的 ``url`` 而不是 ``ws://``\ 。采用这种做法时，请确保使用与服务器 TLS 证书相匹配的主机域名全称。\ ``wss://`` 连接请勿直接使用 IP 地址连接，因为不会与 TLS 证书匹配。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_close_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_close_code**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_close_code>`

返回收到的 WebSocket 关闭帧状态码，如果连接没有干净地关闭则返回 ``-1``\ 。\ :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` 返回 :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>` 才能调用这个方法。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_close_reason:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_close_reason**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_close_reason>`

返回收到的 WebSocket 关闭帧状态原因字符串。\ :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` 返回 :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>` 才能调用这个方法。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_connected_host:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_host**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_connected_host>`

返回已连接对等体的 IP 地址。

\ **注意：**\ 在 Web 导出中不可用。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_connected_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connected_port**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_connected_port>`

返回已连接对等体的远程端口。

\ **注意：**\ 在 Web 导出中不可用。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_current_outbound_buffered_amount:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_outbound_buffered_amount**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_current_outbound_buffered_amount>`

返回 websocket 输出缓冲区中的当前数据量。\ **注意：**\ Web 导出使用 WebSocket.bufferedAmount，而其他平台使用内部缓冲区。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_ready_state:

.. rst-class:: classref-method

:ref:`State<enum_WebSocketPeer_State>` **get_ready_state**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_ready_state>`

返回该连接的就绪状态。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_requested_url:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_requested_url**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_requested_url>`

返回该对等体请求的 URL。该 URL 由传给 :ref:`connect_to_url()<class_WebSocketPeer_method_connect_to_url>` 的 ``url`` 得出，作为服务器时则从 HTTP 标头获取（即使用 :ref:`accept_stream()<class_WebSocketPeer_method_accept_stream>` 时）。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_selected_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_selected_protocol**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_selected_protocol>`

返回这个连接所选用的 WebSocket 子协议，如果未选择子协议则返回空字符串。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_WebSocketPeer_method_poll>`

更新连接状态并接收传入的数据包。请定期调用此函数，保持其清洁状态。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_send:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send**\ (\ message\: :ref:`PackedByteArray<class_PackedByteArray>`, write_mode\: :ref:`WriteMode<enum_WebSocketPeer_WriteMode>` = 1\ ) :ref:`🔗<class_WebSocketPeer_method_send>`

使用期望的 ``write_mode`` 发送给定的 ``message``\ 。发送 :ref:`String<class_String>` 时，请优先使用 :ref:`send_text()<class_WebSocketPeer_method_send_text>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_send_text:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_text**\ (\ message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebSocketPeer_method_send_text>`

使用 WebSocket 文本模式发送给定的 ``message``\ 。与第三方文本 API 交互时请优先使用这个方法而不是 :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>`\ （例如使用 :ref:`JSON<class_JSON>` 格式的消息时）。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_set_no_delay:

.. rst-class:: classref-method

|void| **set_no_delay**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_WebSocketPeer_method_set_no_delay>`

禁用底层 TCP 套接字的 Nagle 算法（默认）。详见 :ref:`StreamPeerTCP.set_no_delay()<class_StreamPeerTCP_method_set_no_delay>`\ 。

\ **注意：**\ 在 Web 导出中不可用。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_was_string_packet:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **was_string_packet**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_was_string_packet>`

如果最后收到的数据包是作为文本有效载荷发送的，返回 ``true``\ 。见 :ref:`WriteMode<enum_WebSocketPeer_WriteMode>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
