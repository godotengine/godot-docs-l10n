:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerPeer:

MultiplayerPeer
===============

**Hérite de :** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`ENetMultiplayerPeer<class_ENetMultiplayerPeer>`, :ref:`MultiplayerPeerExtension<class_MultiplayerPeerExtension>`, :ref:`OfflineMultiplayerPeer<class_OfflineMultiplayerPeer>`, :ref:`WebRTCMultiplayerPeer<class_WebRTCMultiplayerPeer>`, :ref:`WebSocketMultiplayerPeer<class_WebSocketMultiplayerPeer>`

Classe abstraite pour les :ref:`PacketPeer<class_PacketPeer>`\ s spécialisés utilisés par la :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-introduction-group

Description
-----------

Manages the connection with one or more remote peers acting as server or client and assigning unique IDs to each of them. See also :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

\ **Note:** The :ref:`MultiplayerAPI<class_MultiplayerAPI>` protocol is an implementation detail and isn't meant to be used by non-Godot servers. It may change without notice.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`API multijoueur de haut niveau <../tutorials/networking/high_level_multiplayer>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                | :ref:`refuse_new_connections<class_MultiplayerPeer_property_refuse_new_connections>` | ``false`` |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                  | :ref:`transfer_channel<class_MultiplayerPeer_property_transfer_channel>`             | ``0``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` | :ref:`transfer_mode<class_MultiplayerPeer_property_transfer_mode>`                   | ``2``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`close<class_MultiplayerPeer_method_close>`\ (\ )                                                                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`disconnect_peer<class_MultiplayerPeer_method_disconnect_peer>`\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>` = false\ ) |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`generate_unique_id<class_MultiplayerPeer_method_generate_unique_id>`\ (\ ) |const|                                                          |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` | :ref:`get_connection_status<class_MultiplayerPeer_method_get_connection_status>`\ (\ ) |const|                                                    |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`get_packet_channel<class_MultiplayerPeer_method_get_packet_channel>`\ (\ ) |const|                                                          |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`         | :ref:`get_packet_mode<class_MultiplayerPeer_method_get_packet_mode>`\ (\ ) |const|                                                                |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`get_packet_peer<class_MultiplayerPeer_method_get_packet_peer>`\ (\ ) |const|                                                                |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`get_unique_id<class_MultiplayerPeer_method_get_unique_id>`\ (\ ) |const|                                                                    |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`is_server_relay_supported<class_MultiplayerPeer_method_is_server_relay_supported>`\ (\ ) |const|                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`poll<class_MultiplayerPeer_method_poll>`\ (\ )                                                                                              |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`set_target_peer<class_MultiplayerPeer_method_set_target_peer>`\ (\ id\: :ref:`int<class_int>`\ )                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_MultiplayerPeer_signal_peer_connected:

.. rst-class:: classref-signal

**peer_connected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_signal_peer_connected>`

Emitted when a remote peer connects.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_signal_peer_disconnected:

.. rst-class:: classref-signal

**peer_disconnected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_signal_peer_disconnected>`

Émis quand un pair distant a déconnecté.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_MultiplayerPeer_ConnectionStatus:

.. rst-class:: classref-enumeration

enum **ConnectionStatus**: :ref:`🔗<enum_MultiplayerPeer_ConnectionStatus>`

.. _class_MultiplayerPeer_constant_CONNECTION_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_DISCONNECTED** = ``0``

Le MultiplayerPeer est déconnecté.

.. _class_MultiplayerPeer_constant_CONNECTION_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_CONNECTING** = ``1``

Le MultijoueurPeer se connecte actuellement à un serveur.

.. _class_MultiplayerPeer_constant_CONNECTION_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_CONNECTED** = ``2``

Ce MultiplayerPeer est connecté.

.. rst-class:: classref-item-separator

----

.. _enum_MultiplayerPeer_TransferMode:

.. rst-class:: classref-enumeration

enum **TransferMode**: :ref:`🔗<enum_MultiplayerPeer_TransferMode>`

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_UNRELIABLE** = ``0``

Les paquets ne sont pas reconnus, aucune tentative de ré-envoi n'est faite pour les paquets perdus. Les paquets peuvent arriver dans n'importe quelle commande. Peut être plus rapide que :ref:`TRANSFER_MODE_UNRELIABLE_ORDERED<class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED>`. À utiliser pour des données non critiques, et toujours à considérer si l'ordre compte.

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_UNRELIABLE_ORDERED** = ``1``

Les paquets ne sont pas reconnus, aucune tentative de ré-envoi n'est faite pour les paquets perdus. Les paquets sont reçus dans l'ordre où ils ont été envoyés. Peut être plus rapide que :ref:`TRANSFER_MODE_RELIABLE<class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE>`. À utiliser pour les données non critiques ou qui seraient périmées si elles étaient reçues tardivement à cause du ré-envoi, par exemple pour les données de mouvement et de positionnement.

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_RELIABLE** = ``2``

Les paquets doivent être reçus et les tentatives de ré-envoi doivent être faites jusqu'à ce que les paquets soient reconnus. Les paquets doivent être reçus dans l'ordre où ils ont été envoyés. C'est le mode de transfert le plus fiable, mais potentiellement le plus lent en cause de la surcharge. À utiliser pour les données critiques qui doivent être transmises et arriver en ordre, par exemple un élément activé ou un message de discussion. À considérez soigneusement si l'information est vraiment critique, et à utiliser avec parcimonie.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST:

.. rst-class:: classref-constant

**TARGET_PEER_BROADCAST** = ``0`` :ref:`🔗<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>`

Les paquets sont envoyés à tous les pairs connectés.

.. _class_MultiplayerPeer_constant_TARGET_PEER_SERVER:

.. rst-class:: classref-constant

**TARGET_PEER_SERVER** = ``1`` :ref:`🔗<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>`

Les paquets sont envoyés au pair distant agissant comme serveur.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_MultiplayerPeer_property_refuse_new_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **refuse_new_connections** = ``false`` :ref:`🔗<class_MultiplayerPeer_property_refuse_new_connections>`

.. rst-class:: classref-property-setget

- |void| **set_refuse_new_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_refusing_new_connections**\ (\ )

If ``true``, this **MultiplayerPeer** refuses new connections.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_property_transfer_channel:

.. rst-class:: classref-property

:ref:`int<class_int>` **transfer_channel** = ``0`` :ref:`🔗<class_MultiplayerPeer_property_transfer_channel>`

.. rst-class:: classref-property-setget

- |void| **set_transfer_channel**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_transfer_channel**\ (\ )

The channel to use to send packets. Many network APIs such as ENet and WebRTC allow the creation of multiple independent channels which behaves, in a way, like separate connections. This means that reliable data will only block delivery of other packets on that channel, and ordering will only be in respect to the channel the packet is being sent on. Using different channels to send **different and independent** state updates is a common way to optimize network usage and decrease latency in fast-paced games.

\ **Note:** The default channel (\ ``0``) actually works as 3 separate channels (one for each :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`) so that :ref:`TRANSFER_MODE_RELIABLE<class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE>` and :ref:`TRANSFER_MODE_UNRELIABLE_ORDERED<class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED>` does not interact with each other by default. Refer to the specific network API documentation (e.g. ENet or WebRTC) to learn how to set up channels correctly.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_property_transfer_mode:

.. rst-class:: classref-property

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **transfer_mode** = ``2`` :ref:`🔗<class_MultiplayerPeer_property_transfer_mode>`

.. rst-class:: classref-property-setget

- |void| **set_transfer_mode**\ (\ value\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ )
- :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **get_transfer_mode**\ (\ )

The manner in which to send packets to the target peer. See the :ref:`set_target_peer()<class_MultiplayerPeer_method_set_target_peer>` method.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_MultiplayerPeer_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_MultiplayerPeer_method_close>`

Immediately close the multiplayer peer returning to the state :ref:`CONNECTION_DISCONNECTED<class_MultiplayerPeer_constant_CONNECTION_DISCONNECTED>`. Connected peers will be dropped without emitting :ref:`peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_disconnect_peer:

.. rst-class:: classref-method

|void| **disconnect_peer**\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_MultiplayerPeer_method_disconnect_peer>`

Disconnects the given ``peer`` from this host. If ``force`` is ``true`` the :ref:`peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>` signal will not be emitted for this peer.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_generate_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **generate_unique_id**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_generate_unique_id>`

Returns a randomly generated integer that can be used as a network unique ID.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_connection_status:

.. rst-class:: classref-method

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **get_connection_status**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_connection_status>`

Renvoie l'état actuel de la connexion.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_channel**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_channel>`

Returns the channel over which the next available packet was received. See :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **get_packet_mode**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_mode>`

Returns the transfer mode the remote peer used to send the next available packet. See :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_peer:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_peer**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_peer>`

Returns the ID of the **MultiplayerPeer** who sent the next available packet. See :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unique_id**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_unique_id>`

Returns the ID of this **MultiplayerPeer**.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_is_server_relay_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server_relay_supported**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_is_server_relay_supported>`

Returns ``true`` if the server can act as a relay in the current configuration. That is, if the higher level :ref:`MultiplayerAPI<class_MultiplayerAPI>` should notify connected clients of other peers, and implement a relay protocol to allow communication between them.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_MultiplayerPeer_method_poll>`

Attend jusqu'à 1 seconde de recevoir un nouvel événement réseau.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_set_target_peer:

.. rst-class:: classref-method

|void| **set_target_peer**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_method_set_target_peer>`

Sets the peer to which packets will be sent.

The ``id`` can be one of: :ref:`TARGET_PEER_BROADCAST<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>` to send to all connected peers, :ref:`TARGET_PEER_SERVER<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>` to send to the peer acting as server, a valid peer ID to send to that specific peer, a negative peer ID to send to all peers except that one. By default, the target peer is :ref:`TARGET_PEER_BROADCAST<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
