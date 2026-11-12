:github_url: hide

.. _class_DTLSServer:

DTLSServer
==========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Допоміжний клас для реалізації сервера DTLS.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас використовується для зберігання стану сервера DTLS. Після :ref:`setup()<class_DTLSServer_method_setup>` він перетворює підключені :ref:`PacketPeerUDP<class_PacketPeerUDP>` на :ref:`PacketPeerDTLS<class_PacketPeerDTLS>`, приймаючи їх через :ref:`take_connection()<class_DTLSServer_method_take_connection>` як клієнтів DTLS. Під капотом цей клас використовується для зберігання стану DTLS і файлів cookie сервера. Причина, з якої потрібні стан і файли cookie, виходить за межі цієї документації.

Нижче наведено невеликий приклад того, як ним користуватися:


.. tabs::

 .. code-tab:: gdscript

    # server_node.gd
    extends Node

    var dtls := DTLSServer.new()
    var server := UDPServer.new()
    var peers = []

    func _ready():
        server.listen(4242)
        var key = load("key.key") # Your private key.
        var cert = load("cert.crt") # Your X509 certificate.
        dtls.setup(key, cert)

    func _process(delta):
        while server.is_connection_available():
            var peer: PacketPeerUDP = server.take_connection()
            var dtls_peer: PacketPeerDTLS = dtls.take_connection(peer)
            if dtls_peer.get_status() != PacketPeerDTLS.STATUS_HANDSHAKING:
                continue # It is normal that 50% of the connections fails due to cookie exchange.
            print("Peer connected!")
            peers.append(dtls_peer)

        for p in peers:
            p.poll() # Must poll to update the state.
            if p.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
                while p.get_available_packet_count() > 0:
                    print("Received message from client: %s" % p.get_packet().get_string_from_utf8())
                    p.put_packet("Hello DTLS client".to_utf8_buffer())

 .. code-tab:: csharp

    // ServerNode.cs
    using Godot;

    public partial class ServerNode : Node
    {
        private DtlsServer _dtls = new DtlsServer();
        private UdpServer _server = new UdpServer();
        private Godot.Collections.Array<PacketPeerDtls> _peers = new Godot.Collections.Array<PacketPeerDtls>();

        public override void _Ready()
        {
            _server.Listen(4242);
            var key = GD.Load<CryptoKey>("key.key"); // Your private key.
            var cert = GD.Load<X509Certificate>("cert.crt"); // Your X509 certificate.
            _dtls.Setup(key, cert);
        }

        public override void _Process(double delta)
        {
            while (Server.IsConnectionAvailable())
            {
                PacketPeerUdp peer = _server.TakeConnection();
                PacketPeerDtls dtlsPeer = _dtls.TakeConnection(peer);
                if (dtlsPeer.GetStatus() != PacketPeerDtls.Status.Handshaking)
                {
                    continue; // It is normal that 50% of the connections fails due to cookie exchange.
                }
                GD.Print("Peer connected!");
                _peers.Add(dtlsPeer);
            }

            foreach (var p in _peers)
            {
                p.Poll(); // Must poll to update the state.
                if (p.GetStatus() == PacketPeerDtls.Status.Connected)
                {
                    while (p.GetAvailablePacketCount() > 0)
                    {
                        GD.Print($"Received Message From Client: {p.GetPacket().GetStringFromUtf8()}");
                        p.PutPacket("Hello DTLS Client".ToUtf8Buffer());
                    }
                }
            }
        }
    }




.. tabs::

 .. code-tab:: gdscript

    # client_node.gd
    extends Node

    var dtls := PacketPeerDTLS.new()
    var udp := PacketPeerUDP.new()
    var connected = false

    func _ready():
        udp.connect_to_host("127.0.0.1", 4242)
        dtls.connect_to_peer(udp, false) # Use true in production for certificate validation!

    func _process(delta):
        dtls.poll()
        if dtls.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
            if !connected:
                # Try to contact server
                dtls.put_packet("The answer is... 42!".to_utf8_buffer())
            while dtls.get_available_packet_count() > 0:
                print("Connected: %s" % dtls.get_packet().get_string_from_utf8())
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
            _dtls.ConnectToPeer(_udp, validateCerts: false); // Use true in production for certificate validation!
        }

        public override void _Process(double delta)
        {
            _dtls.Poll();
            if (_dtls.GetStatus() == PacketPeerDtls.Status.Connected)
            {
                if (!_connected)
                {
                    // Try to contact server
                    _dtls.PutPacket("The Answer Is..42!".ToUtf8Buffer());
                }
                while (_dtls.GetAvailablePacketCount() > 0)
                {
                    GD.Print($"Connected: {_dtls.GetPacket().GetStringFromUtf8()}");
                    _connected = true;
                }
            }
        }
    }



.. rst-class:: classref-reftable-group

Методи
------------

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

Описи методів
--------------------------

.. _class_DTLSServer_method_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **setup**\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_DTLSServer_method_setup>`

Налаштування сервера DTLS для використання даного ``server_options``. Див. :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_DTLSServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerDTLS<class_PacketPeerDTLS>` **take_connection**\ (\ udp_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`\ ) :ref:`🔗<class_DTLSServer_method_take_connection>`

Спробуйте розпочати ручку DTLS із заданою ``udp_peer``, яка повинна бути вже підключена (див. :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`).

\ **Примітка:** Ви повинні перевірити, що стан повернення PacketPeerUDP є :ref:`PacketPeerDTLS.STATUS_HANDSHAKING<class_PacketPeerDTLS_constant_STATUS_HANDSHAKING>`, оскільки це нормально, що 50% нових з'єднань буде недійсним через обмін cookie.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
