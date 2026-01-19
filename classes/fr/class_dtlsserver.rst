:github_url: hide

.. _class_DTLSServer:

DTLSServer
==========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une classe d'aide pour implémenter un serveur DTLS.

.. rst-class:: classref-introduction-group

Description
-----------

This class is used to store the state of a DTLS server. Upon :ref:`setup()<class_DTLSServer_method_setup>` it converts connected :ref:`PacketPeerUDP<class_PacketPeerUDP>` to :ref:`PacketPeerDTLS<class_PacketPeerDTLS>` accepting them via :ref:`take_connection()<class_DTLSServer_method_take_connection>` as DTLS clients. Under the hood, this class is used to store the DTLS state and cookies of the server. The reason of why the state and cookies are needed is outside of the scope of this documentation.

Below a small example of how to use it:


.. tabs::

 .. code-tab:: gdscript

    # server_node.gd
    extends Node

    var dtls = DTLSServer.new()
    var server = UDPServer.new()
    var peers = []

    func _ready():
        server.listen(4242)
        var key = load("key.key") # Your private key.
        var cert = load("cert.crt") # Your X509 certificate.
        dtls.setup(TlsOptions.server(key, cert))

    func _process(delta):
        while server.is_connection_available():
            var peer = server.take_connection()
            var dtls_peer = dtls.take_connection(peer)
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
        private Godot.Collections.Array<PacketPeerDtls> _peers = [];

        public override void _Ready()
        {
            _server.Listen(4242);
            var key = GD.Load<CryptoKey>("key.key"); // Your private key.
            var cert = GD.Load<X509Certificate>("cert.crt"); // Your X509 certificate.
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

    var dtls = PacketPeerDTLS.new()
    var udp = PacketPeerUDP.new()
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

Méthodes
----------------

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

Descriptions des méthodes
--------------------------------------------------

.. _class_DTLSServer_method_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **setup**\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_DTLSServer_method_setup>`

Setup the DTLS server to use the given ``server_options``. See :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_DTLSServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerDTLS<class_PacketPeerDTLS>` **take_connection**\ (\ udp_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`\ ) :ref:`🔗<class_DTLSServer_method_take_connection>`

Essaye de débuter une vérification DTLS avec le ``udp_peer`` donné qui doit être connecté au préalable (voir :ref:`PacketPeerUDP.connect_to_host)()<class_PacketPeerUDP_method_connect_to_host)>`\ 

\ **Note :** Vous devez vérifier que le status du retour PacketPeerUDP est :ref:`PacketPeerDTLS.STATUS_HANDSHAKING<class_PacketPeerDTLS_constant_STATUS_HANDSHAKING>`, car il est commun que 50% des nouvelles connexions deviennent invalides en raison de l'échange de cookies.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
