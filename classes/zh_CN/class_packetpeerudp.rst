:github_url: hide

.. _class_PacketPeerUDP:

PacketPeerUDP
=============

**继承：** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

UDP 数据包客户端。

.. rst-class:: classref-introduction-group

描述
----

UDP 数据包对等体。可以用来发送和接收原始 UPD 数据包和 :ref:`Variant<class_Variant>`\ 。

\ **示例：**\ 发送数据包：

::

    var peer = PacketPeerUDP.new()

    # 可以自行选择用于发送数据包的本地端口。
    peer.bind(4444)

    peer.set_dest_address("1.1.1.1", 4433)
    peer.put_packet("hello".to_utf8_buffer())

\ **示例：**\ 监听数据包：

::

    var peer

    func _ready():
        peer = PacketPeerUDP.new()
        peer.bind(4433)


    func _process(_delta):
        if peer.get_available_packet_count() > 0:
            var array_bytes = peer.get_packet()
            var packet_string = array_bytes.get_string_from_ascii()
            print("收到消息：", packet_string)

\ **注意：**\ 导出到 Android 时，请确保在导出项目和使用一键部署前启用 Android 导出预设中的 ``INTERNET`` 权限。否则 Android 会阻止所有网络通信。

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

方法说明
--------

.. _class_PacketPeerUDP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", recv_buf_size\: :ref:`int<class_int>` = 65536\ ) :ref:`🔗<class_PacketPeerUDP_method_bind>`

将该 **PacketPeerUDP** 绑定到指定的 ``port`` 和 ``bind_address``\ ，其缓冲区大小为 ``recv_buf_size``\ ，允许它接收传入的数据包。

如果 ``bind_address`` 被设置为 ``"*"``\ （默认），对等体将被绑定到所有可用地址（IPv4 和 IPv6）。

如果 ``bind_address`` 被设置为 ``"0.0.0.0"``\ （对于 IPv4）或 ``"::"``\ （对于 IPv6），对等体将被绑定到匹配该 IP 类型的所有可用地址。

如果 ``bind_address`` 被设置为任何有效地址（例如 ``"192.168.1.101"``\ 、\ ``"::1"`` 等），对等体将只被绑定到该地址的接口（如果不存在具有给定地址的接口，则失败）。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_close>`

关闭该 **PacketPeerUDP** 底层 UDP 套接字。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_connect_to_host>`

调用该方法将该 UDP 对等体连接到给定的 ``host``/``port`` 对。UDP 实际上是无连接的，因此该选项仅意味着自动丢弃来自不同地址的传入数据包，并且传出的数据包始终发送到连接的地址（不允许将来调用 :ref:`set_dest_address()<class_PacketPeerUDP_method_set_dest_address>`\ ）。该方法不会向远程对等体发送任何数据，要发送数据，请像往常一样使用 :ref:`PacketPeer.put_var()<class_PacketPeer_method_put_var>` 或 :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>`\ 。另见 :ref:`UDPServer<class_UDPServer>`\ 。

\ **注意：**\ 连接到远程对等体并不能防止 IP 欺骗等恶意攻击。如果你觉得你的应用程序正在传输敏感信息，可以考虑使用 TLS 或 DTLS 等加密技术。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_local_port>`

返回该对等体绑定到的本地端口。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_ip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_packet_ip**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_ip>`

返回发送最后一个数据包（通过 :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` 或 :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>` 接收）的远程对等体的 IP。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_port>`

返回发送最后一个数据包（通过 :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` 或 :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>` 接收）的远程对等方的端口。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_bound:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bound**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_bound>`

返回该 **PacketPeerUDP** 是否被绑定到某个地址上，并且可以接收数据包。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_socket_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_socket_connected**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_socket_connected>`

如果 UDP 套接字已打开并已连接到远程地址，则返回 ``true``\ 。见 :ref:`connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_join_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **join_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_join_multicast_group>`

使用由 ``interface_name`` 标识的接口加入由 ``multicast_address`` 指定的多播组。

可以使用多个接口加入同一个多播组。使用 :ref:`IP.get_local_interfaces()<class_IP_method_get_local_interfaces>` 了解哪些接口可用。

\ **注意：**\ 某些 Android 设备可能需要 ``CHANGE_WIFI_MULTICAST_STATE`` 权限才能进行多播。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_leave_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **leave_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_leave_multicast_group>`

从 ``multicast_address`` 指定的组播组中移除 ``interface_name`` 标识的接口。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_broadcast_enabled:

.. rst-class:: classref-method

|void| **set_broadcast_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_broadcast_enabled>`

启用或禁用广播数据包的发送（例如：\ ``set_dest_address("255.255.255.255", 4343)``\ 。这个选项在默认情况下是禁用的。

\ **注意：**\ 一些 Android 设备可能需要 ``CHANGE_WIFI_MULTICAST_STATE`` 权限和本选项被启用来接收广播包。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_dest_address:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_dest_address**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_dest_address>`

设置发送数据包和变量的目标地址和端口。如果需要，将使用 DNS 解析主机名。

\ **注意：**\ 在向广播地址（例如：\ ``255.255.255.255``\ ）发送数据包之前，必须启用 :ref:`set_broadcast_enabled()<class_PacketPeerUDP_method_set_broadcast_enabled>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_wait:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **wait**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_wait>`

等待数据包到达绑定的地址。见 :ref:`bind()<class_PacketPeerUDP_method_bind>`\ 。

\ **注意：**\ :ref:`wait()<class_PacketPeerUDP_method_wait>` 一旦被调用就无法中断。解决方法是让对方发送一个特定的“毒药”数据包，如下所示：


.. tabs::

 .. code-tab:: gdscript

    socket = PacketPeerUDP.new()
    # 服务器
    socket.set_dest_address("127.0.0.1", 789)
    socket.put_packet("Time to stop".to_ascii_buffer())

    # 客户端
    while socket.wait() == OK:
        var data = socket.get_packet().get_string_from_ascii()
        if data == "Time to stop":
            return

 .. code-tab:: csharp

    var socket = new PacketPeerUdp();
    // 服务器
    socket.SetDestAddress("127.0.0.1", 789);
    socket.PutPacket("Time to stop".ToAsciiBuffer());

    // 客户端
    while (socket.Wait() == OK)
    {
        string data = socket.GetPacket().GetStringFromASCII();
        if (data == "Time to stop")
        {
            return;
        }
    }



.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
