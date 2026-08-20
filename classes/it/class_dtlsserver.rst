:github_url: hide

.. _class_DTLSServer:

DTLSServer
==========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe di supporto per implementare un server DTLS.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe serve per memorizzare lo stato di un server DTLS. Dopo aver chiamato :ref:`setup()<class_DTLSServer_method_setup>`, converte i :ref:`PacketPeerUDP<class_PacketPeerUDP>` connessi in :ref:`PacketPeerDTLS<class_PacketPeerDTLS>` accettandoli tramite :ref:`take_connection()<class_DTLSServer_method_take_connection>` come client DTLS. Internamente, questa classe serve per memorizzare lo stato DTLS e i cookie del server. Il motivo per cui lo stato e i cookie sono necessari è al di fuori dell'ambito di questa documentazione.

Di seguito un piccolo esempio di come utilizzarla:


.. tabs::

 .. code-tab:: gdscript

    # server_node.gd
    extends Node

    var dtls = DTLSServer.new()
    var server = UDPServer.new()
    var peers = []

    func _ready():
        server.listen(4242)
        var key = load("key.key") # La tua chiave privata.
        var cert = load("cert.crt") # Il tuo certificato X509.
        dtls.setup(TlsOptions.server(key, cert))

    func _process(delta):
        while server.is_connection_available():
            var peer = server.take_connection()
            var dtls_peer = dtls.take_connection(peer)
            if dtls_peer.get_status() != PacketPeerDTLS.STATUS_HANDSHAKING:
                continue # È normale che il 50% delle connessioni falliscano a causa dello scambio di cookie.
            print("Peer connesso!")
            peers.append(dtls_peer)

        for p in peers:
            p.poll() # È necessario effettuare un polling per aggiornare lo stato.
            if p.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
                while p.get_available_packet_count() > 0:
                    print("Ricevuto messaggio da un cliente: %s" % p.get_packet().get_string_from_utf8())
                    p.put_packet("Ciao cliente DTLS".to_utf8_buffer())

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
            var key = GD.Load<CryptoKey>("key.key"); // La tua chiave privata.
            var cert = GD.Load<X509Certificate>("cert.crt"); // Il tuo certificato X509.
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
                    continue; // È normale che il 50% delle connessioni falliscano a causa dello scambio di cookie.
                }
                GD.Print("Peer connesso!");
                _peers.Add(dtlsPeer);
            }

            foreach (var p in _peers)
            {
                p.Poll(); // È necessario effettuare un polling per aggiornare lo stato.
                if (p.GetStatus() == PacketPeerDtls.Status.Connected)
                {
                    while (p.GetAvailablePacketCount() > 0)
                    {
                        GD.Print($"Ricevuto messaggio da un cliente: {p.GetPacket().GetStringFromUtf8()}");
                        p.PutPacket("Ciao cliente DTLS".ToUtf8Buffer());
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
        dtls.connect_to_peer(udp, false) # Utilizza true in produzione per convalidare il certificato!

    func _process(delta):
        dtls.poll()
        if dtls.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
            if !connected:
                # Prova di contattare il server
                dtls.put_packet("La risposta è... 42!".to_utf8_buffer())
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
            _dtls.ConnectToPeer(_udp, validateCerts: false); // Utilizza true in produzione per convalidare il certificato!
        }

        public override void _Process(double delta)
        {
            _dtls.Poll();
            if (_dtls.GetStatus() == PacketPeerDtls.Status.Connected)
            {
                if (!_connected)
                {
                    // Prova a contattare il server
                    _dtls.PutPacket("La risposta è... 42!".ToUtf8Buffer());
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

Metodi
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

Descrizioni dei metodi
--------------------------------------------

.. _class_DTLSServer_method_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **setup**\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_DTLSServer_method_setup>`

Imposta il server DTLS per utilizzare le opzioni del server specificate da ``server_options``. Vedi :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_DTLSServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerDTLS<class_PacketPeerDTLS>` **take_connection**\ (\ udp_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`\ ) :ref:`🔗<class_DTLSServer_method_take_connection>`

Prova ad avviare l'handshake DTLS con il peer ``udp_peer``, il quale deve essere già connesso (vedi :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`).

\ **Nota:** Devi verificare che lo stato del PacketPeerUDP di ritorno sia :ref:`PacketPeerDTLS.STATUS_HANDSHAKING<class_PacketPeerDTLS_constant_STATUS_HANDSHAKING>`, poiché è normale che il 50% delle nuove connessioni non siano valide a causa dello scambio di cookie.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
