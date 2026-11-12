:github_url: hide

.. _class_WebSocketPeer:

WebSocketPeer
=============

**繼承：** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

WebSocket 連接。

.. rst-class:: classref-introduction-group

說明
----

這個類代表 WebSocket 連接，可以用作 WebSocket 用戶端（相容 `RFC 6455 <https://datatracker.ietf.org/doc/html/rfc6455>`__\ ），也可以用作 WebSocket 伺服器的遠端對等端。

發送 WebSocket 二進位影格請使用 :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>`\ ，發送 WebSocket 文字影格請使用 :ref:`send()<class_WebSocketPeer_method_send>`\ （與基於文字的 API 互動時請優先選擇文字影格）。可以通過 :ref:`was_string_packet()<class_WebSocketPeer_method_was_string_packet>` 檢查最近一個封包的影格型別。

開啟 WebSocket 用戶端的方法是：首先呼叫 :ref:`connect_to_url()<class_WebSocketPeer_method_connect_to_url>`\ ，然後定期呼叫 :ref:`poll()<class_WebSocketPeer_method_poll>`\ （例如在 :ref:`Node<class_Node>` 的處理過程中）。查詢套接字的狀態請使用 :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>`\ ，取得掛起的封包數量請使用 :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`\ ，取得掛起的封包請使用 :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>`\ 。


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
                print("封包：", socket.get_packet())
        elif state == WebSocketPeer.STATE_CLOSING:
            # 繼續輪詢才能正確關閉。
            pass
        elif state == WebSocketPeer.STATE_CLOSED:
            var code = socket.get_close_code()
            var reason = socket.get_close_reason()
            print("WebSocket 已關閉，程式碼：%d，原因 %s。乾淨得體：%s" % [code, reason, code != -1])
            set_process(false) # 停止處理。



如果要作為 WebSocket 伺服器的對等端使用，請參考 :ref:`accept_stream()<class_WebSocketPeer_method_accept_stream>` 及線上教學。

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_WebSocketPeer_WriteMode:

.. rst-class:: classref-enumeration

enum **WriteMode**: :ref:`🔗<enum_WebSocketPeer_WriteMode>`

.. _class_WebSocketPeer_constant_WRITE_MODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebSocketPeer_WriteMode>` **WRITE_MODE_TEXT** = ``0``

指定 WebSockets 訊息應作為文字有效載荷傳輸（只允許有效的 UTF-8）。

.. _class_WebSocketPeer_constant_WRITE_MODE_BINARY:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebSocketPeer_WriteMode>` **WRITE_MODE_BINARY** = ``1``

指定 WebSockets 訊息應以二進位有效載荷的形式傳輸（允許任何位元組組合）。

.. rst-class:: classref-item-separator

----

.. _enum_WebSocketPeer_State:

.. rst-class:: classref-enumeration

enum **State**: :ref:`🔗<enum_WebSocketPeer_State>`

.. _class_WebSocketPeer_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CONNECTING** = ``0``

已建立通訊端。連接尚未打開。

.. _class_WebSocketPeer_constant_STATE_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_OPEN** = ``1``

連接已打開，通訊就緒。

.. _class_WebSocketPeer_constant_STATE_CLOSING:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CLOSING** = ``2``

連接正在關閉過程中。這意味著已經向遠端對等體發送了關閉請求，但還沒有收到確認。

.. _class_WebSocketPeer_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CLOSED** = ``3``

連接已關閉或無法打開。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_WebSocketPeer_property_handshake_headers:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **handshake_headers** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketPeer_property_handshake_headers>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_headers**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_handshake_headers**\ (\ )

The extra HTTP headers to be sent during the WebSocket handshake.

\ **Note:** Not supported in Web exports due to browser restrictions.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_heartbeat_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **heartbeat_interval** = ``0.0`` :ref:`🔗<class_WebSocketPeer_property_heartbeat_interval>`

.. rst-class:: classref-property-setget

- |void| **set_heartbeat_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_heartbeat_interval**\ (\ )

對等端自動發送 WebSocket“ping”控制影格的間隔（單位為秒）。設為 ``0`` 時不會發送“ping”控制影格。

\ **注意：**\ 由於瀏覽器的限制，在 Web 匯出中無效。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_inbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **inbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketPeer_property_inbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_inbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_inbound_buffer_size**\ (\ )

輸入緩衝區的大小，單位為位元組（大致是將分配給入站封包的最大記憶體量）。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_max_queued_packets:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_queued_packets** = ``4096`` :ref:`🔗<class_WebSocketPeer_property_max_queued_packets>`

.. rst-class:: classref-property-setget

- |void| **set_max_queued_packets**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_queued_packets**\ (\ )

佇列中允許的最大封包數量（包括入站和出站）。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_outbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketPeer_property_outbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_outbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outbound_buffer_size**\ (\ )

輸入緩衝區的大小，單位為位元組（大致是將分配給出站封包的最大記憶體量）。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_supported_protocols:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **supported_protocols** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketPeer_property_supported_protocols>`

.. rst-class:: classref-property-setget

- |void| **set_supported_protocols**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_supported_protocols**\ (\ )

WebSocket 握手期間允許的 WebSocket 子協議。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_WebSocketPeer_method_accept_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **accept_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`\ ) :ref:`🔗<class_WebSocketPeer_method_accept_stream>`

Accepts a peer connection performing the HTTP handshake as a WebSocket server. The ``stream`` must be a valid TCP stream retrieved via :ref:`TCPServer.take_connection()<class_TCPServer_method_take_connection>`, or a TLS stream accepted via :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>`.

\ **Note:** Not supported in Web exports due to browser restrictions.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ code\: :ref:`int<class_int>` = 1000, reason\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WebSocketPeer_method_close>`

關閉該 WebSocket 連接。

\ ``code`` 是關閉的狀態碼（有效狀態程式碼的清單見 `RFC 6455 第 7.4 節 <https://datatracker.ietf.org/doc/html/rfc6455#section-7.4.1>`__\ ）。如果 ``code`` 為負數，則連接會立即關閉而不通知遠端對等端。

\ ``reason`` 是人類可讀的關閉連接原因。可以是任何小於 123 位元組的 UTF-8 字串。

\ **注意：**\ 為了實現乾淨得體的關閉，你需要在達到 :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>` 之前保持輪詢。

\ **注意：**\ Web 匯出可能不支援部分狀態碼。詳情請參考具體瀏覽器的文件。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_connect_to_url:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_url**\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketPeer_method_connect_to_url>`

連接到給定的 URL。使用 ``wss://`` 協議連接時會校驗 TLS 憑證與主機名。傳入可選的 ``tls_client_options`` 參數可以自訂信任的憑證頒發機構，也可以停用通用名校驗。見 :ref:`TLSOptions.client()<class_TLSOptions_method_client>` 和 :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`\ 。

\ **注意：**\ 該方法不會阻塞，只要提供的參數有效且對等端不處於無效狀態（例如已連接）就會在建立連接前回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。要檢測連接成功還是失敗，請定期呼叫 :ref:`poll()<class_WebSocketPeer_method_poll>`\ （例如在 :ref:`Node<class_Node>` 的處理方法中）並檢查 :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` 的結果。

\ **注意：**\ 為了避免 Web 中的混合內容警告或錯誤，你可能需要使用以 ``wss://``\ （安全）開頭的 ``url`` 而不是 ``ws://``\ 。採用這種做法時，請確保使用與伺服器 TLS 憑證相匹配的主機域名全稱。\ ``wss://`` 連接請勿直接使用 IP 位址連接，因為不會與 TLS 憑證匹配。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_close_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_close_code**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_close_code>`

返回收到的 WebSocket 關閉影格狀態碼，如果連接沒有乾淨地關閉則返回 ``-1``\ 。\ :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` 返回 :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>` 才能呼叫這個方法。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_close_reason:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_close_reason**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_close_reason>`

返回收到的 WebSocket 關閉影格狀態原因字串。\ :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` 返回 :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>` 才能呼叫這個方法。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_connected_host:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_host**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_connected_host>`

返回已連接對等體的 IP 位址。

\ **注意：**\ 在 Web 匯出中不可用。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_connected_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connected_port**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_connected_port>`

返回已連接對等體的遠端埠。

\ **注意：**\ 在 Web 匯出中不可用。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_current_outbound_buffered_amount:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_outbound_buffered_amount**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_current_outbound_buffered_amount>`

返回 websocket 輸出緩衝區中的目前資料量。\ **注意：**\ Web 匯出使用 WebSocket.bufferedAmount，而其他平臺使用內部緩衝區。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_ready_state:

.. rst-class:: classref-method

:ref:`State<enum_WebSocketPeer_State>` **get_ready_state**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_ready_state>`

回傳該連接的就緒狀態。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_requested_url:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_requested_url**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_requested_url>`

返回該對等體請求的 URL。該 URL 由傳給 :ref:`connect_to_url()<class_WebSocketPeer_method_connect_to_url>` 的 ``url`` 得出，作為伺服器時則從 HTTP 標頭取得（即使用 :ref:`accept_stream()<class_WebSocketPeer_method_accept_stream>` 時）。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_selected_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_selected_protocol**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_selected_protocol>`

返回這個連接所選用的 WebSocket 子協議，如果未選擇子協定則返回空字串。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_WebSocketPeer_method_poll>`

更新連接狀態並接收傳入的封包。請定期呼叫此函式，保持其清潔狀態。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_send:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send**\ (\ message\: :ref:`PackedByteArray<class_PackedByteArray>`, write_mode\: :ref:`WriteMode<enum_WebSocketPeer_WriteMode>` = 1\ ) :ref:`🔗<class_WebSocketPeer_method_send>`

使用期望的 ``write_mode`` 發送給定的 ``message``\ 。發送 :ref:`String<class_String>` 時，請優先使用 :ref:`send_text()<class_WebSocketPeer_method_send_text>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_send_text:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_text**\ (\ message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebSocketPeer_method_send_text>`

使用 WebSocket 文字模式發送給定的 ``message``\ 。與協力廠商文字 API 互動時請優先使用這個方法而不是 :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>`\ （例如使用 :ref:`JSON<class_JSON>` 格式的訊息時）。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_set_no_delay:

.. rst-class:: classref-method

|void| **set_no_delay**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_WebSocketPeer_method_set_no_delay>`

停用底層 TCP 套接字的 Nagle 算法（預設）。詳見 :ref:`StreamPeerTCP.set_no_delay()<class_StreamPeerTCP_method_set_no_delay>`\ 。

\ **注意：**\ 在 Web 匯出中不可用。

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_was_string_packet:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **was_string_packet**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_was_string_packet>`

如果最後收到的封包是作為文字有效載荷發送的，返回 ``true``\ 。見 :ref:`WriteMode<enum_WebSocketPeer_WriteMode>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
