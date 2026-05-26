:github_url: hide

.. _class_DTLSServer:

DTLSServer
==========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase de ayuda para implementar un servidor DTLS.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase se utiliza para almacenar el estado de un servidor DTLS. Tras llamar a :ref:`setup()<class_DTLSServer_method_setup>`, convierte los :ref:`PacketPeerUDP<class_PacketPeerUDP>` conectados en :ref:`PacketPeerDTLS<class_PacketPeerDTLS>`, aceptándolos a través de :ref:`take_connection()<class_DTLSServer_method_take_connection>` como clientes DTLS. Internamente, esta clase se utiliza para almacenar el estado DTLS y las cookies del servidor. El motivo por el cual el estado y las cookies son necesarios queda fuera del alcance de esta documentación.

A continuación, un pequeño ejemplo de cómo utilizarla:


.. tabs::

 .. code-tab:: gdscript

    # server_node.gd
    extends Node

    var dtls = DTLSServer.new()
    var server = UDPServer.new()
    var peers = []

    func _ready():
        server.listen(4242)
        var key = load("key.key") # Su llave privada.
        var cert = load("cert.crt") # Su certificado X509.
        dtls.setup(TlsOptions.server(key, cert))

    func _process(delta):
        while server.is_connection_available():
            var peer = server.take_connection()
            var dtls_peer = dtls.take_connection(peer)
            if dtls_peer.get_status() != PacketPeerDTLS.STATUS_HANDSHAKING:
                continue # Es normal que el 50% de las conexiones fallen debido al intercambio de cookies.
            print("¡Par conectado!")
            peers.append(dtls_peer)

        for p in peers:
            p.poll() # Debe llamar a poll para actualizar el estado.
            if p.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
                while p.get_available_packet_count() > 0:
                    print("Mensaje recibido del cliente: %s" % p.get_packet().get_string_from_utf8())
                    p.put_packet("Hola cliente DTLS".to_utf8_buffer())

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
            var key = GD.Load<CryptoKey>("key.key"); // Su llave privada.
            var cert = GD.Load<X509Certificate>("cert.crt"); // Su certificado X509.
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
                    continue; // Es normal que el 50% de las conexiones fallen debido al intercambio de cookies.
                }
                GD.Print("¡Par conectado!");
                _peers.Add(dtlsPeer);
            }

            foreach (var p in _peers)
            {
                p.Poll(); // Debe llamar a Poll para actualizar el estado.
                if (p.GetStatus() == PacketPeerDtls.Status.Connected)
                {
                    while (p.GetAvailablePacketCount() > 0)
                    {
                        GD.Print($"Mensaje recibido del cliente: {p.GetPacket().GetStringFromUtf8()}");
                        p.PutPacket("Hola cliente DTLS".ToUtf8Buffer());
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
        dtls.connect_to_peer(udp, false) # ¡Use true en producción para la validación de certificados!

    func _process(delta):
        dtls.poll()
        if dtls.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
            if !connected:
                # Intentar contactar con el servidor
                dtls.put_packet("La respuesta es... ¡42!".to_utf8_buffer())
            while dtls.get_available_packet_count() > 0:
                print("Conectado: %s" % dtls.get_packet().get_string_from_utf8())
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
            _dtls.ConnectToPeer(_udp, validateCerts: false); // ¡Use true en producción para la validación de certificados!
        }

        public override void _Process(double delta)
        {
            _dtls.Poll();
            if (_dtls.GetStatus() == PacketPeerDtls.Status.Connected)
            {
                if (!_connected)
                {
                    // Intentar contactar con el servidor
                    _dtls.PutPacket("La respuesta es... ¡42!".ToUtf8Buffer());
                }
                while (_dtls.GetAvailablePacketCount() > 0)
                {
                    GD.Print($"Conectado: {_dtls.GetPacket().GetStringFromUtf8()}");
                    _connected = true;
                }
            }
        }
    }



.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_DTLSServer_method_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **setup**\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_DTLSServer_method_setup>`

Setup the DTLS server to use the given ``server_options``. See :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_DTLSServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerDTLS<class_PacketPeerDTLS>` **take_connection**\ (\ udp_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`\ ) :ref:`🔗<class_DTLSServer_method_take_connection>`

Try to initiate the DTLS handshake with the given ``udp_peer`` which must be already connected (see :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`).

\ **Note:** You must check that the state of the return PacketPeerUDP is :ref:`PacketPeerDTLS.STATUS_HANDSHAKING<class_PacketPeerDTLS_constant_STATUS_HANDSHAKING>`, as it is normal that 50% of the new connections will be invalid due to cookie exchange.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
