:github_url: hide

.. _class_ENetMultiplayerPeer:

ENetMultiplayerPeer
===================

**Hérite de :** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une implémentation de MultiplayerPeer utilisant la bibliothèque `ENet <http://enet.bespin.org/index.html>`__.

.. rst-class:: classref-introduction-group

Description
-----------

Une implémentation de MultiplayerPeer qui devrait être passée au :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` après avoir été initialisé en tant que client, serveur ou maille. Les événements peuvent ensuite être gérés en se connectant aux signaux de :ref:`MultiplayerAPI<class_MultiplayerAPI>`. Voir :ref:`ENetConnection<class_ENetConnection>` pour plus d'information sur le wrapper de la bibliothèque ENet.

\ **Note :** ENet utilise seulement UDP, et non TCP. Lors du branchement du port serveur pour rendre votre serveur accessible sur l'Internet public, vous n'avez besoin que d'envoyer le port serveur en UDP. Vous pouvez utiliser la classe :ref:`UPNP<class_UPNP>` pour essayer d'envoyer automatiquement le port serveur dès le démarrage du serveur.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`API multijoueur de haut niveau <../tutorials/networking/high_level_multiplayer>`

- `Documentation de l'API sur le site web d'ENet <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------+------------------------------------------------------+
   | :ref:`ENetConnection<class_ENetConnection>` | :ref:`host<class_ENetMultiplayerPeer_property_host>` |
   +---------------------------------------------+------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`add_mesh_peer<class_ENetMultiplayerPeer_method_add_mesh_peer>`\ (\ peer_id\: :ref:`int<class_int>`, host\: :ref:`ENetConnection<class_ENetConnection>`\ )                                                                                                                                                         |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_client<class_ENetMultiplayerPeer_method_create_client>`\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channel_count\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0, local_port\: :ref:`int<class_int>` = 0\ ) |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_mesh<class_ENetMultiplayerPeer_method_create_mesh>`\ (\ unique_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                                               |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_server<class_ENetMultiplayerPeer_method_create_server>`\ (\ port\: :ref:`int<class_int>`, max_clients\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ )                                       |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ENetPacketPeer<class_ENetPacketPeer>` | :ref:`get_peer<class_ENetMultiplayerPeer_method_get_peer>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                    |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bind_ip<class_ENetMultiplayerPeer_method_set_bind_ip>`\ (\ ip\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ENetMultiplayerPeer_property_host:

.. rst-class:: classref-property

:ref:`ENetConnection<class_ENetConnection>` **host** :ref:`🔗<class_ENetMultiplayerPeer_property_host>`

.. rst-class:: classref-property-setget

- :ref:`ENetConnection<class_ENetConnection>` **get_host**\ (\ )

The underlying :ref:`ENetConnection<class_ENetConnection>` created after :ref:`create_client()<class_ENetMultiplayerPeer_method_create_client>` and :ref:`create_server()<class_ENetMultiplayerPeer_method_create_server>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ENetMultiplayerPeer_method_add_mesh_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_mesh_peer**\ (\ peer_id\: :ref:`int<class_int>`, host\: :ref:`ENetConnection<class_ENetConnection>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_add_mesh_peer>`

Add a new remote peer with the given ``peer_id`` connected to the given ``host``.

\ **Note:** The ``host`` must have exactly one peer in the :ref:`ENetPacketPeer.STATE_CONNECTED<class_ENetPacketPeer_constant_STATE_CONNECTED>` state.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channel_count\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0, local_port\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_client>`

Créer un client qui se connecte à un serveur à l'``address`` en utilisant le ``port`` spécifié. L'adresse donnée doit être soit un nom de domaine entièrement qualifié (par ex. ``"www.example.com"``) soit une adresse IP en format IPv4 ou IPv6 (par ex. ``"192.168.1.1"``). Le ``port`` est le port que le serveur écoute. Le paramètre ``channel_count`` peut être utilisé pour spécifier le nombre de canaux ENet alloués à la connexion. Les paramètres ``in_bandwidth`` et ``out_bandwidth`` peuvent être utilisés pour limiter la bande passante entrante et sortante au nombre donné d'octets par seconde. Le défaut de 0 signifie bande passante illimitée. Notez que ENet perdra stratégiquement des paquets sur des côtés spécifiques d'une connexion entre les pairs pour s'assurer que la bande passante du pair n'est pas dépassée. Les paramètres de bande passante déterminent également la taille de la fenêtre d'une connexion qui limite la quantité de paquets fiables qui peuvent être en transit à tout moment donné. Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si un client a été créé, :ref:`@GlobalScope.ERR_ALREADY_IN_USE<class_@GlobalScope_constant_ERR_ALREADY_IN_USE>` si cette instance ENetMultiplayerPeer a déjà une connexion ouverte (dans quel cas vous devez appeler :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>` d'abord) ou :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` si le client ne peut pas être créé. Si ``local_port`` est spécifié, le client écoutera également le port donné, cela est utile pour certaines techniques de traversée NAT.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ unique_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_mesh>`

Initialize this :ref:`MultiplayerPeer<class_MultiplayerPeer>` in mesh mode. The provided ``unique_id`` will be used as the local peer network unique ID once assigned as the :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`. In the mesh configuration you will need to set up each new peer manually using :ref:`ENetConnection<class_ENetConnection>` before calling :ref:`add_mesh_peer()<class_ENetMultiplayerPeer_method_add_mesh_peer>`. While this technique is more advanced, it allows for better control over the connection process (e.g. when dealing with NAT punch-through) and for better distribution of the network load (which would otherwise be more taxing on the server).

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ port\: :ref:`int<class_int>`, max_clients\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_server>`

Créer un serveur qui écoute les connexions via ``port``. Le port doit être un port disponible et inutilisé entre 0 et 65535. Notez que les ports inférieurs à 1024 sont réservés et peuvent nécessiter des autorisations élevées en fonction de la plateforme. Pour modifier l'interface que le serveur écoute, utilisez :ref:`set_bind_ip()<class_ENetMultiplayerPeer_method_set_bind_ip>`. L'IP par défaut est le joker ``"*"``, qui écoute toutes les interfaces disponibles. ``max_clients`` est le nombre maximum de clients autorisés en même temps, tout nombre jusqu'à 4095 peut être utilisé, même si le nombre possible de clients simultanés peut être beaucoup plus faible et dépend de l'application. Pour plus de détails sur les paramètres de bande passante, voir :ref:`create_client()<class_ENetMultiplayerPeer_method_create_client>`. Retourne :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si un serveur a été créé, :ref:`@GlobalScope.ERR_ALREADY_IN_USE<class_@GlobalScope_constant_ERR_ALREADY_IN_USE>` si cette instance de ENetMultiplayerPeer a déjà une connexion ouverte (dans cecas vous devez appeler :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>` d'abord) ou :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` si le serveur ne peut pas être créé.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`ENetPacketPeer<class_ENetPacketPeer>` **get_peer**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ENetMultiplayerPeer_method_get_peer>`

Retourne le :ref:`ENetPacketPeer<class_ENetPacketPeer>` associé au ``id`` donné.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_set_bind_ip:

.. rst-class:: classref-method

|void| **set_bind_ip**\ (\ ip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_set_bind_ip>`

L'adresse IP utilisée lors de la création d'un serveur. Ceci est défini le joker ``"*"`` par défaut, qui se connecte à toutes les interfaces disponibles. L'adresse donnée doit être au format IPv4 ou IPv6, par exemple : ``"192.168.1.1"``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
