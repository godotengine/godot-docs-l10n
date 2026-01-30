:github_url: hide

.. _class_PacketPeerUDP:

PacketPeerUDP
=============

**繼承：** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

UDP 資料包使用者端。

.. rst-class:: classref-introduction-group

說明
----

UDP packet peer. Can be used to send and receive raw UDP packets as well as :ref:`Variant<class_Variant>`\ s.

\ **Example:** Send a packet:

::

    var peer = PacketPeerUDP.new()

    # Optionally, you can select the local port used to send the packet.
    peer.bind(4444)

    peer.set_dest_address("1.1.1.1", 4433)
    peer.put_packet("hello".to_utf8_buffer())

\ **Example:** Listen for packets:

::

    var peer

    func _ready():
        peer = PacketPeerUDP.new()
        peer.bind(4433)


    func _process(_delta):
        if peer.get_available_packet_count() > 0:
            var array_bytes = peer.get_packet()
            var packet_string = array_bytes.get_string_from_ascii()
            print("Received message: ", packet_string)

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`bind<class_PacketPeerUDP_method_bind>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", recv_buf_size\: :ref:`int<class_int>` = 65536\ )   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`close<class_PacketPeerUDP_method_close>`\ (\ )                                                                                                                                |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`connect_to_host<class_PacketPeerUDP_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                          |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_local_port<class_PacketPeerUDP_method_get_local_port>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_packet_ip<class_PacketPeerUDP_method_get_packet_ip>`\ (\ ) |const|                                                                                                        |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_packet_port<class_PacketPeerUDP_method_get_packet_port>`\ (\ ) |const|                                                                                                    |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_bound<class_PacketPeerUDP_method_is_bound>`\ (\ ) |const|                                                                                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_socket_connected<class_PacketPeerUDP_method_is_socket_connected>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`join_multicast_group<class_PacketPeerUDP_method_join_multicast_group>`\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ )   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`leave_multicast_group<class_PacketPeerUDP_method_leave_multicast_group>`\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_broadcast_enabled<class_PacketPeerUDP_method_set_broadcast_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                             |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`set_dest_address<class_PacketPeerUDP_method_set_dest_address>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                        |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`wait<class_PacketPeerUDP_method_wait>`\ (\ )                                                                                                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PacketPeerUDP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", recv_buf_size\: :ref:`int<class_int>` = 65536\ ) :ref:`🔗<class_PacketPeerUDP_method_bind>`

Binds this **PacketPeerUDP** to the specified ``port`` and ``bind_address`` with a buffer size ``recv_buf_size``, allowing it to receive incoming packets.

If ``bind_address`` is set to ``"*"`` (default), the peer will be bound on all available addresses (both IPv4 and IPv6).

If ``bind_address`` is set to ``"0.0.0.0"`` (for IPv4) or ``"::"`` (for IPv6), the peer will be bound to all available addresses matching that IP type.

If ``bind_address`` is set to any valid address (e.g. ``"192.168.1.101"``, ``"::1"``, etc.), the peer will only be bound to the interface with that address (or fail if no interface with the given address exists).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_close>`

關閉該 **PacketPeerUDP** 底層 UDP 通訊端。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_connect_to_host>`

呼叫該方法將該 UDP 對等體連接到給定的 ``host``/``port`` 對。UDP 實際上是不需連線的，因此該選項僅意味著自動丟棄來自不同位址的傳入封包，並且傳出的封包始終發送到連接的位址（不允許將來呼叫 :ref:`set_dest_address()<class_PacketPeerUDP_method_set_dest_address>`\ ）。該方法不會向遠端對等體發送任何資料，要發送資料，請像往常一樣使用 :ref:`PacketPeer.put_var()<class_PacketPeer_method_put_var>` 或 :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>`\ 。另請參閱 :ref:`UDPServer<class_UDPServer>`\ 。

\ **注意：**\ 連接到遠端對等體並不能防止 IP 欺騙等惡意攻擊。如果你覺得你的套用程式正在傳輸敏感資訊，可以考慮使用 TLS 或 DTLS 等加密技術。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_local_port>`

返回該對等體綁定到的本地埠。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_ip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_packet_ip**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_ip>`

返回發送最後一個封包（通過 :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` 或 :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>` 接收）的遠程對等體的 IP。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_port>`

返回發送最後一個封包（通過 :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` 或 :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>` 接收）的遠端對等方的埠。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_bound:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bound**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_bound>`

返回該 **PacketPeerUDP** 是否被綁定到某個位址上，並且可以接收封包。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_socket_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_socket_connected**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_socket_connected>`

如果 UDP 通訊端已打開並已連接到遠端位址，則返回 ``true``\ 。見 :ref:`connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_join_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **join_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_join_multicast_group>`

使用由 ``interface_name`` 標識的介面加入由 ``multicast_address`` 指定的多播組。

可以使用多個介面加入同一個多播組。使用 :ref:`IP.get_local_interfaces()<class_IP_method_get_local_interfaces>` 瞭解哪些介面可用。

\ **注意：**\ 某些 Android 裝置可能需要 ``CHANGE_WIFI_MULTICAST_STATE`` 許可權才能進行多播。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_leave_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **leave_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_leave_multicast_group>`

從 ``multicast_address`` 指定的組播組中移除 ``interface_name`` 標識的介面。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_broadcast_enabled:

.. rst-class:: classref-method

|void| **set_broadcast_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_broadcast_enabled>`

啟用或禁用廣播封包的發送（例如：\ ``set_dest_address("255.255.255.255", 4343)``\ 。這個選項在預設情況下是禁用的。

\ **注意：**\ 一些 Android 裝置可能需要 ``CHANGE_WIFI_MULTICAST_STATE`` 許可權和本選項被啟用來接收廣播包。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_dest_address:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_dest_address**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_dest_address>`

設定發送封包和變數的目標位址和埠。如果需要，將使用 DNS 解析主機名稱。

\ **注意：**\ 在向廣播地址（例如：\ ``255.255.255.255``\ ）發送封包之前，必須啟用 :ref:`set_broadcast_enabled()<class_PacketPeerUDP_method_set_broadcast_enabled>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_wait:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **wait**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_wait>`

Waits for a packet to arrive on the bound address. See :ref:`bind()<class_PacketPeerUDP_method_bind>`.

\ **Note:** :ref:`wait()<class_PacketPeerUDP_method_wait>` can't be interrupted once it has been called. This can be worked around by allowing the other party to send a specific "death pill" packet like this:


.. tabs::

 .. code-tab:: gdscript

    socket = PacketPeerUDP.new()
    # Server
    socket.set_dest_address("127.0.0.1", 789)
    socket.put_packet("Time to stop".to_ascii_buffer())

    # Client
    while socket.wait() == OK:
        var data = socket.get_packet().get_string_from_ascii()
        if data == "Time to stop":
            return

 .. code-tab:: csharp

    var socket = new PacketPeerUdp();
    // Server
    socket.SetDestAddress("127.0.0.1", 789);
    socket.PutPacket("Time to stop".ToAsciiBuffer());

    // Client
    while (socket.Wait() == OK)
    {
        string data = socket.GetPacket().GetStringFromASCII();
        if (data == "Time to stop")
        {
            return;
        }
    }



.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
