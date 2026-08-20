:github_url: hide

.. _class_UDPServer:

UDPServer
=========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe di supporto per implementare un server UDP.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un semplice server che apre un socket UDP e restituisce i :ref:`PacketPeerUDP<class_PacketPeerUDP>` connessi quando riceve nuovi pacchetti. Vedi anche :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

Dopo aver avviato il server (:ref:`listen()<class_UDPServer_method_listen>`), sarà necessario chiamare :ref:`poll()<class_UDPServer_method_poll>` a intervalli regolari (ad esempio all'interno di :ref:`Node._process()<class_Node_private_method__process>`) affinché elabori nuovi pacchetti, li consegni al :ref:`PacketPeerUDP<class_PacketPeerUDP>` appropriato e prenda nuove connessioni.

Di seguito un piccolo esempio di come può essere utilizzato:


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
        server.poll() # Importante!
        if server.is_connection_available():
            var peer = server.take_connection()
            var packet = peer.get_packet()
            print("Peer accettato: %s:%s" % [peer.get_packet_ip(), peer.get_packet_port()])
            print("Dati riceviti: %s" % [packet.get_string_from_utf8()])
            # Rispondi per far sapere che abbiamo ricevuto il messaggio.
            peer.put_packet(packet)
            # Mantieni un riferimento per poter continuare a contattare il peer remoto.
            peers.append(peer)

        for i in range(0, peers.size()):
            pass # Fai qualcosa con i peer connessi.

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
            _server.Poll(); // Importante!
            if (_server.IsConnectionAvailable())
            {
                PacketPeerUdp peer = _server.TakeConnection();
                byte[] packet = peer.GetPacket();
                GD.Print($"Peer accettato: {peer.GetPacketIP()}:{peer.GetPacketPort()}");
                GD.Print($"Dati ricevuti: {packet.GetStringFromUtf8()}");
                // Rispondi per far sapere che abbiamo ricevuto il messaggio.
                peer.PutPacket(packet);
                // Mantieni un riferimento per poter continuare a contattare il peer remoto.
                _peers.Add(peer);
            }
            foreach (var peer in _peers)
            {
                // Fai qualcosa con i peer connessi.
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
            # Prova a contattare il server
            udp.put_packet("La risposta è...42!".to_utf8_buffer())
        if udp.get_available_packet_count() > 0:
            print("Connesso: %s" % udp.get_packet().get_string_from_utf8())
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
                // Prova a contattare il server
                _udp.PutPacket("La risposta è...42!".ToUtf8Buffer());
            }
            if (_udp.GetAvailablePacketCount() > 0)
            {
                GD.Print($"Connesso: {_udp.GetPacket().GetStringFromUtf8()}");
                _connected = true;
            }
        }
    }



.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>` | ``16`` |
   +-----------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_UDPServer_property_max_pending_connections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_pending_connections** = ``16`` :ref:`🔗<class_UDPServer_property_max_pending_connections>`

.. rst-class:: classref-property-setget

- |void| **set_max_pending_connections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_pending_connections**\ (\ )

Definisci il numero massimo di connessioni in sospeso, durante :ref:`poll()<class_UDPServer_method_poll>`, qualsiasi nuova connessione in sospeso che superi quel valore sarà automaticamente rinunciata. Impostando questo valore su ``0`` si impedisce effettivamente che qualsiasi nuova connessione in sospeso sia accettata (ad esempio quando tutti i tuoi giocatori si sono connessi).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_UDPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_get_local_port>`

Restituisce la porta locale che questo server sta ascoltando.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_connection_available>`

Restituisce ``true`` se un pacchetto con una nuova combinazione indirizzo/porta è stato ricevuto sul socket.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_listening>`

Restituisce ``true`` se il socket è aperto e in ascolto su una porta.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_UDPServer_method_listen>`

Avvia il server aprendo un socket UDP in ascolto sulla porta ``port``. Facoltativamente, puoi specificare un ``bind_address`` per ascoltare solo i pacchetti inviati a quell'indirizzo. Vedi anche :ref:`PacketPeerUDP.bind()<class_PacketPeerUDP_method_bind>`.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_UDPServer_method_poll>`

Chiama questo metodo a intervalli regolari (ad esempio all'interno di :ref:`Node._process()<class_Node_private_method__process>`) per elaborare nuovi pacchetti. Qualsiasi pacchetto da una coppia indirizzo/porta nota sarà consegnato al :ref:`PacketPeerUDP<class_PacketPeerUDP>` appropriato, mentre qualsiasi pacchetto ricevuto da una coppia indirizzo/porta sconosciuta sarà aggiunto come connessione in sospeso (vedi :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>` e :ref:`take_connection()<class_UDPServer_method_take_connection>`). Il numero massimo di connessioni in sospeso è definito tramite :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>`.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_UDPServer_method_stop>`

Arresta il server, chiudendo il socket UDP se aperto. Chiuderà tutti i :ref:`PacketPeerUDP<class_PacketPeerUDP>` connessi accettati tramite :ref:`take_connection()<class_UDPServer_method_take_connection>` (i peer remoti non saranno notificati).

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerUDP<class_PacketPeerUDP>` **take_connection**\ (\ ) :ref:`🔗<class_UDPServer_method_take_connection>`

Restituisce la prima connessione in sospeso (connesso all'indirizzo/porta appropriato). Restituirà ``null`` se nessuna nuova connessione è disponibile. Vedi anche :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>`, :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
