:github_url: hide

.. _class_UDPServer:

UDPServer
=========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于实现 UDP 服务器的辅助类。

.. rst-class:: classref-introduction-group

描述
----

简易服务器，会打开 UDP 套接字，并在收到新数据包时返回已连接的 :ref:`PacketPeerUDP<class_PacketPeerUDP>`\ 。另见 :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`\ 。

服务器启动后（\ :ref:`listen()<class_UDPServer_method_listen>`\ ），你需要调用 :ref:`poll()<class_UDPServer_method_poll>` 按照一定的间隔轮询（例如在 :ref:`Node._process()<class_Node_private_method__process>` 中）才能处理新数据包、将它们传递给合适的 :ref:`PacketPeerUDP<class_PacketPeerUDP>`\ 、获取新连接。

下面是简单的用法示例：


.. tabs::

 .. code-tab:: gdscript

    # server_node.gd
    class_name ServerNode
    extends Node

    var server = UDPServer.new()
    var peers = []

    func _ready():
        server.listen(4242)

    func _process(delta):
        server.poll() # 重要！
        if server.is_connection_available():
            var peer = server.take_connection()
            var packet = peer.get_packet()
            print("接受对等体：%s:%s" % [peer.get_packet_ip(), peer.get_packet_port()])
            print("接收到数据：%s" % [packet.get_string_from_utf8()])
            # 进行回复，这样对方就知道我们收到了消息。
            peer.put_packet(packet)
            # 保持引用，这样我们就能继续与远程对等体联系。
            peers.append(peer)

        for i in range(0, peers.size()):
            pass # 针对已连接的对等体进行操作。

 .. code-tab:: csharp

    // ServerNode.cs
    using Godot;
    using System.Collections.Generic;

    public partial class ServerNode : Node
    {
        private UdpServer _server = new UdpServer();
        private List<PacketPeerUdp> _peers  = new List<PacketPeerUdp>();

        public override void _Ready()
        {
            _server.Listen(4242);
        }

        public override void _Process(double delta)
        {
            _server.Poll(); // 重要！
            if (_server.IsConnectionAvailable())
            {
                PacketPeerUdp peer = _server.TakeConnection();
                byte[] packet = peer.GetPacket();
                GD.Print($"接受对等体：{peer.GetPacketIP()}:{peer.GetPacketPort()}");
                GD.Print($"接收到数据：{packet.GetStringFromUtf8()}");
                // 进行回复，这样对方就知道我们收到了消息。
                peer.PutPacket(packet);
                // 保持引用，这样我们就能继续与远程对等体联系。
                _peers.Add(peer);
            }
            foreach (var peer in _peers)
            {
                // 针对已连接的对等体进行操作。
            }
        }
    }




.. tabs::

 .. code-tab:: gdscript

    # client_node.gd
    class_name ClientNode
    extends Node

    var udp = PacketPeerUDP.new()
    var connected = false

    func _ready():
        udp.connect_to_host("127.0.0.1", 4242)

    func _process(delta):
        if !connected:
            # 尝试连接服务器
            udp.put_packet("答案是……42！".to_utf8_buffer())
        if udp.get_available_packet_count() > 0:
            print("已连接：%s" % udp.get_packet().get_string_from_utf8())
            connected = true

 .. code-tab:: csharp

    // ClientNode.cs
    using Godot;

    public partial class ClientNode : Node
    {
        private PacketPeerUdp _udp = new PacketPeerUdp();
        private bool _connected = false;

        public override void _Ready()
        {
            _udp.ConnectToHost("127.0.0.1", 4242);
        }

        public override void _Process(double delta)
        {
            if (!_connected)
            {
                // 尝试联系服务器
                _udp.PutPacket("答案是……42！".ToUtf8Buffer());
            }
            if (_udp.GetAvailablePacketCount() > 0)
            {
                GD.Print($"已连接：{_udp.GetPacket().GetStringFromUtf8()}");
                _connected = true;
            }
        }
    }



.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>` | ``16`` |
   +-----------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_local_port<class_UDPServer_method_get_local_port>`\ (\ ) |const|                                                         |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_connection_available<class_UDPServer_method_is_connection_available>`\ (\ ) |const|                                       |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_listening<class_UDPServer_method_is_listening>`\ (\ ) |const|                                                             |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`listen<class_UDPServer_method_listen>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`poll<class_UDPServer_method_poll>`\ (\ )                                                                                     |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`stop<class_UDPServer_method_stop>`\ (\ )                                                                                     |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PacketPeerUDP<class_PacketPeerUDP>` | :ref:`take_connection<class_UDPServer_method_take_connection>`\ (\ )                                                               |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_UDPServer_property_max_pending_connections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_pending_connections** = ``16`` :ref:`🔗<class_UDPServer_property_max_pending_connections>`

.. rst-class:: classref-property-setget

- |void| **set_max_pending_connections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_pending_connections**\ (\ )

定义最大的待定连接数，在\ :ref:`poll()<class_UDPServer_method_poll>`\ 期间，任何超过该值的新待定连接将被自动放弃。把这个值设置为\ ``0``\ 可以有效地防止任何新的待定连接被接受，例如，当你的所有玩家都连接时。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_UDPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_get_local_port>`

返回该服务器正在监听的本地端口。

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_connection_available>`

如果在套接字中收到一个具有新地址及端口组合的数据包，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_listening>`

如果套接字是打开的，并且在监听端口，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_UDPServer_method_listen>`

启动服务器，打开监听给定端口 ``port`` 的 UDP 套接字。还可以指定 ``bind_address``\ ，仅监听发送至该地址的数据包。另见 :ref:`PacketPeerUDP.bind()<class_PacketPeerUDP_method_bind>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_UDPServer_method_poll>`

定期调用这个方法（例如在 :ref:`Node._process()<class_Node_private_method__process>` 中）处理新数据包。来自已知地址、端口对的数据包将被传递到相应的 :ref:`PacketPeerUDP<class_PacketPeerUDP>`\ ，任何从未知地址、端口对收到的数据包将被添加为待定的连接（见 :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>`\ 、\ :ref:`take_connection()<class_UDPServer_method_take_connection>`\ ）。待定连接的最大数量由 :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>` 定义。

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_UDPServer_method_stop>`

停止服务器，如果 UDP 套接字处于打开状态，就关闭它。将关闭所有通过 :ref:`take_connection()<class_UDPServer_method_take_connection>` 接受连接的 :ref:`PacketPeerUDP<class_PacketPeerUDP>`\ （不会通知远程对等体）。

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerUDP<class_PacketPeerUDP>` **take_connection**\ (\ ) :ref:`🔗<class_UDPServer_method_take_connection>`

返回第一个挂起的连接（连接到适当的地址及端口）。如果没有新的连接可用，将返回 ``null``\ 。另见 :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>`\ 、\ :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
