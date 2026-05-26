:github_url: hide

.. _class_UDPServer:

UDPServer
=========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase de ayudante para implementar un servidor UDP.

.. rst-class:: classref-introduction-group

Descripción
----------------------

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

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>` | ``16`` |
   +-----------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_UDPServer_property_max_pending_connections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_pending_connections** = ``16`` :ref:`🔗<class_UDPServer_property_max_pending_connections>`

.. rst-class:: classref-property-setget

- |void| **set_max_pending_connections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_pending_connections**\ (\ )

Definir el número máximo de conexiones pendientes, durante el :ref:`poll()<class_UDPServer_method_poll>`, cualquier nueva conexión pendiente que supere ese valor será automáticamente eliminada. Ajustar este valor a ``0`` impide efectivamente que se acepte cualquier nueva conexión pendiente (por ejemplo, cuando todos tus jugadores se han conectado).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_UDPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_get_local_port>`

Devuelve el puerto local que este servidor está escuchando.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_connection_available>`

Devuelve ``true`` si un paquete con una nueva combinación de dirección/puerto fue recibido en el socket.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_listening>`

Devuelve ``true`` si el socket está abierto y escuchando en un puerto.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_UDPServer_method_listen>`

Inicia el servidor abriendo un socket UDP que escucha en el ``port`` dado. Opcionalmente, puedes especificar una ``bind_address`` para que solo escuche los paquetes enviados a esa dirección. Véase también :ref:`PacketPeerUDP.bind()<class_PacketPeerUDP_method_bind>`.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_UDPServer_method_poll>`

Llama a este método a intervalos regulares (p. ej., dentro de :ref:`Node._process()<class_Node_private_method__process>`) para procesar nuevos paquetes. Cualquier paquete de un par dirección/puerto conocido se entregará al :ref:`PacketPeerUDP<class_PacketPeerUDP>` apropiado, mientras que cualquier paquete recibido de un par dirección/puerto desconocido se añadirá como una conexión pendiente (véase :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>` y :ref:`take_connection()<class_UDPServer_method_take_connection>`). El número máximo de conexiones pendientes se define mediante :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>`.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_UDPServer_method_stop>`

Detiene el servidor, cerrando el enchufe UDP si está abierto. Cerrará todos los :ref:`PacketPeerUDP<class_PacketPeerUDP>` conectados aceptados a través del :ref:`take_connection()<class_UDPServer_method_take_connection>` (los compañeros remotos no serán notificados).

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerUDP<class_PacketPeerUDP>` **take_connection**\ (\ ) :ref:`🔗<class_UDPServer_method_take_connection>`

Devuelve la primera conexión pendiente (conectada a la dirección/puerto apropiado). Devolverá ``null`` si no hay una nueva conexión disponible. Véase también :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>`, :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
