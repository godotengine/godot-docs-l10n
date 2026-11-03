:github_url: hide

.. _class_PacketPeerUDP:

PacketPeerUDP
=============

**繼承：** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

UDP 資料包使用者端。

.. rst-class:: classref-introduction-group

說明
----

UDP 封包對等端。可以用來發送和接收原始 UPD 封包和 :ref:`Variant<class_Variant>`\ 。

\ **範例：**\ 發送封包：

::

    var peer = PacketPeerUDP.new()

    # 可以自行選擇用於發送封包的本機連接埠。
    peer.bind(4444)

    peer.set_dest_address("1.1.1.1", 4433)
    peer.put_packet("hello".to_utf8_buffer())

\ **範例：**\ 監聽封包：

::

    var peer

    func _ready():
        peer = PacketPeerUDP.new()
        peer.bind(4433)


    func _process(_delta):
        if peer.get_available_packet_count() > 0:
            var array_bytes = peer.get_packet()
            var packet_string = array_bytes.get_string_from_ascii()
            print("收到訊息：", packet_string)

\ **注意：**\ 匯出到 Android 時，請確保在匯出專案和使用一鍵部署前啟用 Android 匯出預設中的 ``INTERNET`` 權限。否則 Android 會阻止所有網路通信。

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

將該 **PacketPeerUDP** 綁定到指定的 ``port`` 和 ``bind_address``\ ，其緩衝區大小為 ``recv_buf_size``\ ，允許它接收傳入的封包。

如果 ``bind_address`` 被設定為 ``"*"``\ （預設），對等端將被綁定到所有可用位址（IPv4 和 IPv6）。

如果 ``bind_address`` 被設定為 ``"0.0.0.0"``\ （對於 IPv4）或 ``"::"``\ （對於 IPv6），對等端將被綁定到匹配該 IP 型別的所有可用位址。

如果 ``bind_address`` 被設定為任何有效位址（例如 ``"192.168.1.101"``\ 、\ ``"::1"`` 等），對等端將只被綁定到該位址的介面（如果不存在具有給定位址的介面，則失敗）。

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

返回發送最後一個封包（通過 :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` 或 :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>` 接收）的遠端對等體的 IP。

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

啟用或停用廣播封包的發送（例如：\ ``set_dest_address("255.255.255.255", 4343)``\ 。這個選項在預設情況下是停用的。

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

等待封包到達綁定的位址。見 :ref:`bind()<class_PacketPeerUDP_method_bind>`\ 。

\ **注意：**\ :ref:`wait()<class_PacketPeerUDP_method_wait>` 一旦被呼叫就無法中斷。解決方法是讓對方發送一個特定的“毒藥”封包，如下所示：


.. tabs::

 .. code-tab:: gdscript

    socket = PacketPeerUDP.new()
    # 伺服器
    socket.set_dest_address("127.0.0.1", 789)
    socket.put_packet("Time to stop".to_ascii_buffer())

    # 用戶端
    while socket.wait() == OK:
        var data = socket.get_packet().get_string_from_ascii()
        if data == "Time to stop":
            return

 .. code-tab:: csharp

    var socket = new PacketPeerUdp();
    // 伺服器
    socket.SetDestAddress("127.0.0.1", 789);
    socket.PutPacket("Time to stop".ToAsciiBuffer());

    // 用戶端
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
