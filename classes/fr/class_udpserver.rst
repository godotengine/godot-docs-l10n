:github_url: hide

.. _class_UDPServer:

UDPServer
=========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une classe d'aide pour implémenter un serveur UDP.

.. rst-class:: classref-introduction-group

Description
-----------

Un simple serveur qui ouvre un socket UDP et renvoie les :ref:`PacketPeerUDP<class_PacketPeerUDP>` connectés lors de la réception de nouveaux paquets. Voir aussi :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

Après avoir lancé le serveur (avec :ref:`listen()<class_UDPServer_method_listen>`), vous devez appeler :ref:`poll()<class_UDPServer_method_poll>` régulièrement (ex. à l'intérieur de :ref:`Node._process()<class_Node_private_method__process>`) pour qu'il traite les nouveaux paquets, les envoie aux :ref:`PacketPeerUDP<class_PacketPeerUDP>` appropriés, ou reçoit de nouvelles connexions.

Voici une petit exemple sur la façon de l'utiliser :


.. tabs::

 .. code-tab:: gdscript

    # noeud_serveur.gd
    class_name NoeudServeur
    extends Node

    var serveur = UDPServer.new()
    var pairs = []

    func _ready():
        server.listen(4242)

    func _process(delta):
        serveur.poll() # Important !
        if serveur.is_connection_available():
            var pair = serveur.take_connection()
            var paquet = pair.get_packet()
            print("Pair accepté : %s:%s" % [pair.get_packet_ip(), pair.get_packet_port()])
            print("Données reçues : %s" % [paquet.get_string_from_utf8()])
            # Réponse pour qu'il sache que nous avons reçu le message
            pair.put_packet(paquet)
            # Gardons une référence afin que nous pussions contacter le pair distant.
            pairs.append(pair)

        for i in range(0, pairs.size()):
            pass # Faire quelque chose avec les pairs connectés.

 .. code-tab:: csharp

    // NoeudServeur.cs
    using Godot;
    using System.Collections.Generic;

    public partial class NoeudServeur : Node
    {
        private UdpServer _serveur = new UdpServer();
        private List<PacketPeerUdp> _pairs = new List<PacketPeerUdp>();

        public override void _Ready()
        {
            _serveur.Listen(4242);
        }

        public override void _Process(double delta)
        {
            _serveur.Poll(); // Important!
            if (_serveur.IsConnectionAvailable())
            {
                PacketPeerUdp pair = _serveur.TakeConnection();
                byte[] paquet = pair.GetPacket();
                GD.Print($"Pair accepté : {pair.GetPacketIP()}:{paquet.GetPacketPort()}");
                GD.Print($"Données reçues : {paquet.GetStringFromUtf8()}");
                // Réponse pour qu'il sache que nous avons reçu le message
                paquet.PutPacket(paquet);
                // Gardons une référence afin que nous pussions contacter le pair distant.
                _pairs.Add(pair);
            }
            foreach (var pair in _pairs)
            {
                // Faire quelque chose avec les pairs connectés.
            }
        }
    }




.. tabs::

 .. code-tab:: gdscript

    # noeud_client.gd
    class_name NoeudClient
    extends Node

    var udp = PacketPeerUDP.new()
    var connecte = false

    func _ready():
        udp.connect_to_host("127.0.0.1", 4242)

    func _process(delta):
        if !connecte:
            # Essayer de contacter le serveur
            udp.put_packet("La réponse est ... 42 !".to_utf8_buffer())
        if udp.get_available_packet_count() > 0:
            print("Connecté : %s" % udp.get_packet().get_string_from_utf8())
            connecte = true

 .. code-tab:: csharp

    // NoeudClient.cs
    using Godot;

    public partial class NoeudClient : Node
    {
        private PacketPeerUdp _udp = new PacketPeerUdp();
        private bool _connecte = false;

        public override void _Ready()
        {
            _udp.ConnectToHost("127.0.0.1", 4242);
        }

        public override void _Process(double delta)
        {
            if (!_connecte)
            {
                // Essayer de contacter le serveur
                _udp.PutPacket("La réponse est ... 42 !".ToUtf8Buffer());
            }
            if (_udp.GetAvailablePacketCount() > 0)
            {
                GD.Print($"Connected: {_udp.GetPacket().GetStringFromUtf8()}");
                _connecte = true;
            }
        }
    }



.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>` | ``16`` |
   +-----------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Descriptions des propriétés
------------------------------------------------------

.. _class_UDPServer_property_max_pending_connections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_pending_connections** = ``16`` :ref:`🔗<class_UDPServer_property_max_pending_connections>`

.. rst-class:: classref-property-setget

- |void| **set_max_pending_connections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_pending_connections**\ (\ )

Define the maximum number of pending connections, during :ref:`poll()<class_UDPServer_method_poll>`, any new pending connection exceeding that value will be automatically dropped. Setting this value to ``0`` effectively prevents any new pending connection to be accepted (e.g. when all your players have connected).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_UDPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_get_local_port>`

Renvoie le port local que ce serveur écoute.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_connection_available>`

Renvoie ``true`` si un paquet avec une nouvelle combinaison adresse / port a été reçu sur la socket.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_listening>`

Renvoie ``true`` si le socket est ouvert et écoute à un port.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_UDPServer_method_listen>`

Démarre le serveur en ouvrant un socket UDP écoutant le ``port`` donné. Vous pouvez en option spécifier une adresse ``bind_address`` pour écouter seulement les paquets envoyés à cette adresse. Voir aussi :ref:`PacketPeerUDP.bind()<class_PacketPeerUDP_method_bind>`.

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

Arrête le serveur, fermant le socket UDP si ouvert. Fermera toutes les connexions :ref:`PacketPeerUDP<class_PacketPeerUDP>` acceptées avec :ref:`take_connection()<class_UDPServer_method_take_connection>` (les pairs distantes ne seront pas notifiés).

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerUDP<class_PacketPeerUDP>` **take_connection**\ (\ ) :ref:`🔗<class_UDPServer_method_take_connection>`

Returns the first pending connection (connected to the appropriate address/port). Will return ``null`` if no new connection is available. See also :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>`, :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
