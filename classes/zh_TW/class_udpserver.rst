:github_url: hide

.. _class_UDPServer:

UDPServer
=========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於實作 UDP 伺服器的輔助類。

.. rst-class:: classref-introduction-group

說明
----

A simple server that opens a UDP socket and returns connected :ref:`PacketPeerUDP<class_PacketPeerUDP>` upon receiving new packets. See also :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

After starting the server (:ref:`listen()<class_UDPServer_method_listen>`), you will need to :ref:`poll()<class_UDPServer_method_poll>` it at regular intervals (e.g. inside :ref:`Node._process()<class_Node_private_method__process>`) for it to process new packets, delivering them to the appropriate :ref:`PacketPeerUDP<class_PacketPeerUDP>`, and taking new connections.

Below a small example of how it can be used:


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
        server.poll() # Important!
        if server.is_connection_available():
            var peer = server.take_connection()
            var packet = peer.get_packet()
            print("Accepted peer: %s:%s" % [peer.get_packet_ip(), peer.get_packet_port()])
            print("Received data: %s" % [packet.get_string_from_utf8()])
            # Reply so it knows we received the message.
            peer.put_packet(packet)
            # Keep a reference so we can keep contacting the remote peer.
            peers.append(peer)

        for i in range(0, peers.size()):
            pass # Do something with the connected peers.

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
            _server.Poll(); // Important!
            if (_server.IsConnectionAvailable())
            {
                PacketPeerUdp peer = _server.TakeConnection();
                byte[] packet = peer.GetPacket();
                GD.Print($"Accepted Peer: {peer.GetPacketIP()}:{peer.GetPacketPort()}");
                GD.Print($"Received Data: {packet.GetStringFromUtf8()}");
                // Reply so it knows we received the message.
                peer.PutPacket(packet);
                // Keep a reference so we can keep contacting the remote peer.
                _peers.Add(peer);
            }
            foreach (var peer in _peers)
            {
                // Do something with the peers.
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
            # Try to contact server
            udp.put_packet("The answer is... 42!".to_utf8_buffer())
        if udp.get_available_packet_count() > 0:
            print("Connected: %s" % udp.get_packet().get_string_from_utf8())
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
                // Try to contact server
                _udp.PutPacket("The Answer Is..42!".ToUtf8Buffer());
            }
            if (_udp.GetAvailablePacketCount() > 0)
            {
                GD.Print($"Connected: {_udp.GetPacket().GetStringFromUtf8()}");
                _connected = true;
            }
        }
    }



.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_UDPServer_property_max_pending_connections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_pending_connections** = ``16`` :ref:`🔗<class_UDPServer_property_max_pending_connections>`

.. rst-class:: classref-property-setget

- |void| **set_max_pending_connections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_pending_connections**\ (\ )

定義最大的待定連接數，在\ :ref:`poll()<class_UDPServer_method_poll>`\ 期間，任何超過該值的新待定連接將被自動放棄。把這個值設定為\ ``0``\ 可以有效地防止任何新的待定連接被接受，例如，當你的所有玩家都連接時。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_UDPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_get_local_port>`

返回該伺服器正在監聽的本地埠。

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_connection_available>`

如果在通訊端中收到一個具有新位址及埠組合的封包，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_listening>`

如果通訊端是打開的，並且在監聽埠，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_UDPServer_method_listen>`

啟動伺服器，打開監聽給定埠 ``port`` 的 UDP 通訊端。還可以指定 ``bind_address``\ ，僅監聽發送至該位址的封包。另見 :ref:`PacketPeerUDP.bind()<class_PacketPeerUDP_method_bind>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_UDPServer_method_poll>`

Call this method at regular intervals (e.g. inside :ref:`Node._process()<class_Node_private_method__process>`) to process new packets. Any packet from a known address/port pair will be delivered to the appropriate :ref:`PacketPeerUDP<class_PacketPeerUDP>`, while any packet received from an unknown address/port pair will be added as a pending connection (see :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>` and :ref:`take_connection()<class_UDPServer_method_take_connection>`). The maximum number of pending connections is defined via :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>`.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_UDPServer_method_stop>`

停止伺服器，如果 UDP 通訊端處於打開狀態，就關閉它。將關閉所有通過 :ref:`take_connection()<class_UDPServer_method_take_connection>` 接受連接的 :ref:`PacketPeerUDP<class_PacketPeerUDP>`\ （不會通知遠端對等體）。

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerUDP<class_PacketPeerUDP>` **take_connection**\ (\ ) :ref:`🔗<class_UDPServer_method_take_connection>`

返回第一個掛起的連接（連接到適當的位址及埠）。如果沒有新的連接可用，將返回 ``null``\ 。另請參閱 :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>`\ 、\ :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
