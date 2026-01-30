:github_url: hide

.. _class_DTLSServer:

DTLSServer
==========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

实现 DTLS 服务器的辅助类。

.. rst-class:: classref-introduction-group

描述
----

该类用于存储 DTLS 服务器的状态。在 :ref:`setup()<class_DTLSServer_method_setup>` 之后，它将连接的 :ref:`PacketPeerUDP<class_PacketPeerUDP>` 转换为 :ref:`PacketPeerDTLS<class_PacketPeerDTLS>`\ ，通过 :ref:`take_connection()<class_DTLSServer_method_take_connection>` 接受它们作为 DTLS 客户端。在底层，这个类用于存储服务器的 DTLS 状态和 cookie。为什么需要状态和 cookie 的原因不在本文档的范围内。

下面是一个如何使用它的小例子：


.. tabs::

 .. code-tab:: gdscript

    # server_node.gd
    extends Node

    var dtls = DTLSServer.new()
    var server = UDPServer.new()
    var peers = []

    func _ready():
        server.listen(4242)
        var key = load("key.key") # 你的私钥。
        var cert = load("cert.crt") # 你的 X509 证书。
        dtls.setup(TlsOptions.server(key, cert))

    func _process(delta):
        while server.is_connection_available():
            var peer = server.take_connection()
            var dtls_peer = dtls.take_connection(peer)
            if dtls_peer.get_status() != PacketPeerDTLS.STATUS_HANDSHAKING:
                continue # 由于 cookie 交换，50% 的连接会失败，这是正常现象。
            print("对等体已连接！")
            peers.append(dtls_peer)

        for p in peers:
            p.poll() # 必须轮询以更新状态。
            if p.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
                while p.get_available_packet_count() > 0:
                    print("从客户端收到消息：%s" % p.get_packet().get_string_from_utf8())
                    p.put_packet("你好 DTLS 客户端".to_utf8_buffer())

 .. code-tab:: csharp

    // ServerNode.cs
    using Godot;

    public partial class ServerNode : Node
    {
        private DtlsServer _dtls = new DtlsServer();
        private UdpServer _server = new UdpServer();
        private Godot.Collections.Array<PacketPeerDtls> _peers = [];

        public override void _Ready()
        {
            _server.Listen(4242);
            var key = GD.Load<CryptoKey>("key.key"); // 你的私钥。
            var cert = GD.Load<X509Certificate>("cert.crt"); // 你的 X509 证书。
            _dtls.Setup(TlsOptions.Server(key, cert));
        }

        public override void _Process(double delta)
        {
            while (_server.IsConnectionAvailable())
            {
                PacketPeerUdp peer = _server.TakeConnection();
                PacketPeerDtls dtlsPeer = _dtls.TakeConnection(peer);
                if (dtlsPeer.GetStatus() != PacketPeerDtls.Status.Handshaking)
                {
                    continue; // 由于 cookie 交换，50% 的连接会失败，这是正常现象。
                }
                GD.Print("对等体已连接！");
                _peers.Add(dtlsPeer);
            }

            foreach (var p in _peers)
            {
                p.Poll(); // 必须轮询以更新状态。
                if (p.GetStatus() == PacketPeerDtls.Status.Connected)
                {
                    while (p.GetAvailablePacketCount() > 0)
                    {
                        GD.Print($"从客户端收到消息：{p.GetPacket().GetStringFromUtf8()}");
                        p.PutPacket("你好 DTLS 客户端".ToUtf8Buffer());
                    }
                }
            }
        }
    }




.. tabs::

 .. code-tab:: gdscript

    # client_node.gd
    extends Node

    var dtls = PacketPeerDTLS.new()
    var udp = PacketPeerUDP.new()
    var connected = false

    func _ready():
        udp.connect_to_host("127.0.0.1", 4242)
        dtls.connect_to_peer(udp, false) # 生产环境中请使用 true 进行证书校验！

    func _process(delta):
        dtls.poll()
        if dtls.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
            if !connected:
                # 尝试联系服务器
                dtls.put_packet("回应是… 42！".to_utf8_buffer())
            while dtls.get_available_packet_count() > 0:
                print("已连接：%s" % dtls.get_packet().get_string_from_utf8())
                connected = true

 .. code-tab:: csharp

    // ClientNode.cs
    using Godot;
    using System.Text;

    public partial class ClientNode : Node
    {
        private PacketPeerDtls _dtls = new PacketPeerDtls();
        private PacketPeerUdp _udp = new PacketPeerUdp();
        private bool _connected = false;

        public override void _Ready()
        {
            _udp.ConnectToHost("127.0.0.1", 4242);
            _dtls.ConnectToPeer(_udp, validateCerts: false); // 生产环境中请使用 true 进行证书校验！
        }

        public override void _Process(double delta)
        {
            _dtls.Poll();
            if (_dtls.GetStatus() == PacketPeerDtls.Status.Connected)
            {
                if (!_connected)
                {
                    // 尝试联系服务器
                    _dtls.PutPacket("回应是… 42！".ToUtf8Buffer());
                }
                while (_dtls.GetAvailablePacketCount() > 0)
                {
                    GD.Print($"已连接：{_dtls.GetPacket().GetStringFromUtf8()}");
                    _connected = true;
                }
            }
        }
    }



.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`setup<class_DTLSServer_method_setup>`\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ )                     |
   +---------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PacketPeerDTLS<class_PacketPeerDTLS>` | :ref:`take_connection<class_DTLSServer_method_take_connection>`\ (\ udp_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`\ ) |
   +---------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_DTLSServer_method_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **setup**\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_DTLSServer_method_setup>`

设置 DTLS 服务器以使用给定的 ``server_options``\ 。请参阅 :ref:`TLSOptions.server()<class_TLSOptions_method_server>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_DTLSServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerDTLS<class_PacketPeerDTLS>` **take_connection**\ (\ udp_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`\ ) :ref:`🔗<class_DTLSServer_method_take_connection>`

尝试与给定 ``udp_peer`` 启动 DTLS 握手，必须已连接到该 ``udp_peer``\ （请参阅 :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`\ ）。

\ **注意：**\ 必须检查返回的 PacketPeerUDP 的状态是否为 :ref:`PacketPeerDTLS.STATUS_HANDSHAKING<class_PacketPeerDTLS_constant_STATUS_HANDSHAKING>`\ ，因为正常情况下，50% 的新连接会因为 cookie 交换而无效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
