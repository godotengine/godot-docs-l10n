:github_url: hide

.. _class_WebRTCMultiplayerPeer:

WebRTCMultiplayerPeer
=====================

**Hérite de :** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A simple interface to create a peer-to-peer mesh network composed of :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` that is compatible with the :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-introduction-group

Description
-----------

This class constructs a full mesh of :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` (one connection for each peer) that can be used as a :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

You can add each :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` via :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` or remove them via :ref:`remove_peer()<class_WebRTCMultiplayerPeer_method_remove_peer>`. Peers must be added in :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` state to allow it to create the appropriate channels. This class will not create offers nor set descriptions, it will only poll them, and notify connections and disconnections.

When creating the peer via :ref:`create_client()<class_WebRTCMultiplayerPeer_method_create_client>` or :ref:`create_server()<class_WebRTCMultiplayerPeer_method_create_server>` the :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>` method will return ``true`` enabling peer exchange and packet relaying when supported by the :ref:`MultiplayerAPI<class_MultiplayerAPI>` implementation.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_peer<class_WebRTCMultiplayerPeer_method_add_peer>`\ (\ peer\: :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, peer_id\: :ref:`int<class_int>`, unreliable_lifetime\: :ref:`int<class_int>` = 1\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_client<class_WebRTCMultiplayerPeer_method_create_client>`\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ )                                                      |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_mesh<class_WebRTCMultiplayerPeer_method_create_mesh>`\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ )                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_server<class_WebRTCMultiplayerPeer_method_create_server>`\ (\ channels_config\: :ref:`Array<class_Array>` = []\ )                                                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`get_peer<class_WebRTCMultiplayerPeer_method_get_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`get_peers<class_WebRTCMultiplayerPeer_method_get_peers>`\ (\ )                                                                                                                                                 |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`has_peer<class_WebRTCMultiplayerPeer_method_has_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`remove_peer<class_WebRTCMultiplayerPeer_method_remove_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_WebRTCMultiplayerPeer_method_add_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_peer**\ (\ peer\: :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, peer_id\: :ref:`int<class_int>`, unreliable_lifetime\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_add_peer>`

Add a new peer to the mesh with the given ``peer_id``. The :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` must be in state :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`.

Three channels will be created for reliable, unreliable, and ordered transport. The value of ``unreliable_lifetime`` will be passed to the ``"maxPacketLifeTime"`` option when creating unreliable and ordered channels (see :ref:`WebRTCPeerConnection.create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_client>`

Initialize the multiplayer peer as a client with the given ``peer_id`` (must be between 2 and 2147483647). In this mode, you should only call :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` once and with ``peer_id`` of ``1``. This mode enables :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`, allowing the upper :ref:`MultiplayerAPI<class_MultiplayerAPI>` layer to perform peer exchange and packet relaying.

You can optionally specify a ``channels_config`` array of :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` which will be used to create extra channels (WebRTC only supports one transfer mode per channel).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_mesh>`

Initialize the multiplayer peer as a mesh (i.e. all peers connect to each other) with the given ``peer_id`` (must be between 1 and 2147483647).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_server>`

Initialize the multiplayer peer as a server (with unique ID of ``1``). This mode enables :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`, allowing the upper :ref:`MultiplayerAPI<class_MultiplayerAPI>` layer to perform peer exchange and packet relaying.

You can optionally specify a ``channels_config`` array of :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` which will be used to create extra channels (WebRTC only supports one transfer mode per channel).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peer>`

Returns a dictionary representation of the peer with given ``peer_id`` with three keys. ``"connection"`` containing the :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` to this peer, ``"channels"`` an array of three :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`, and ``"connected"`` a boolean representing if the peer connection is currently connected (all three channels are open).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peers:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peers**\ (\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peers>`

Renvoie un dictionnaire dont les clés sont les identifiants des pairs et les valeurs sont la représentation des pairs comme dans :ref:`get_peer()<class_WebRTCMultiplayerPeer_method_get_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_has_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_has_peer>`

Returns ``true`` if the given ``peer_id`` is in the peers map (it might not be connected though).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_remove_peer:

.. rst-class:: classref-method

|void| **remove_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_remove_peer>`

Remove the peer with given ``peer_id`` from the mesh. If the peer was connected, and :ref:`MultiplayerPeer.peer_connected<class_MultiplayerPeer_signal_peer_connected>` was emitted for it, then :ref:`MultiplayerPeer.peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>` will be emitted.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
