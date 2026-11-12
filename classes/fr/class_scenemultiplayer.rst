:github_url: hide

.. _class_SceneMultiplayer:

SceneMultiplayer
================

**Hérite de :** :ref:`MultiplayerAPI<class_MultiplayerAPI>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Implémentation d'API multijoueur de haut niveau.

.. rst-class:: classref-introduction-group

Description
-----------

This class is the default implementation of :ref:`MultiplayerAPI<class_MultiplayerAPI>`, used to provide multiplayer functionalities in Godot Engine.

This implementation supports RPCs via :ref:`Node.rpc()<class_Node_method_rpc>` and :ref:`Node.rpc_id()<class_Node_method_rpc_id>` and requires :ref:`MultiplayerAPI.rpc()<class_MultiplayerAPI_method_rpc>` to be passed a :ref:`Node<class_Node>` (it will fail for other object types).

This implementation additionally provide :ref:`SceneTree<class_SceneTree>` replication via the :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` and :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` nodes, and the :ref:`SceneReplicationConfig<class_SceneReplicationConfig>` resource.

\ **Note:** The high-level multiplayer API protocol is an implementation detail and isn't meant to be used by non-Godot servers. It may change without notice.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`allow_object_decoding<class_SceneMultiplayer_property_allow_object_decoding>`   | ``false``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`Callable<class_Callable>` | :ref:`auth_callback<class_SceneMultiplayer_property_auth_callback>`                   | ``Callable()``   |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`auth_timeout<class_SceneMultiplayer_property_auth_timeout>`                     | ``3.0``          |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`max_delta_packet_size<class_SceneMultiplayer_property_max_delta_packet_size>`   | ``65535``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`max_sync_packet_size<class_SceneMultiplayer_property_max_sync_packet_size>`     | ``1350``         |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`refuse_new_connections<class_SceneMultiplayer_property_refuse_new_connections>` | ``false``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`root_path<class_SceneMultiplayer_property_root_path>`                           | ``NodePath("")`` |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`server_relay<class_SceneMultiplayer_property_server_relay>`                     | ``true``         |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_SceneMultiplayer_method_clear>`\ (\ )                                                                                                                                                                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`complete_auth<class_SceneMultiplayer_method_complete_auth>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`disconnect_peer<class_SceneMultiplayer_method_disconnect_peer>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_authenticating_peers<class_SceneMultiplayer_method_get_authenticating_peers>`\ (\ )                                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`send_auth<class_SceneMultiplayer_method_send_auth>`\ (\ id\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`send_bytes<class_SceneMultiplayer_method_send_bytes>`\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, id\: :ref:`int<class_int>` = 0, mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` = 2, channel\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_SceneMultiplayer_signal_peer_authenticating:

.. rst-class:: classref-signal

**peer_authenticating**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authenticating>`

Emitted when this MultiplayerAPI's :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` connects to a new peer and a valid :ref:`auth_callback<class_SceneMultiplayer_property_auth_callback>` is set. In this case, the :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` will not be emitted until :ref:`complete_auth()<class_SceneMultiplayer_method_complete_auth>` is called with given peer ``id``. While in this state, the peer will not be included in the list returned by :ref:`MultiplayerAPI.get_peers()<class_MultiplayerAPI_method_get_peers>` (but in the one returned by :ref:`get_authenticating_peers()<class_SceneMultiplayer_method_get_authenticating_peers>`), and only authentication data will be sent or received. See :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>` for sending authentication data.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_authentication_failed:

.. rst-class:: classref-signal

**peer_authentication_failed**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authentication_failed>`

Emitted when this MultiplayerAPI's :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` disconnects from a peer for which authentication had not yet completed. See :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_packet:

.. rst-class:: classref-signal

**peer_packet**\ (\ id\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_packet>`

Émis lorsque le :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` de ce MultiplayerAPI reçoit un paquet ``packet`` avec des données personnalisées (voir :ref:`send_bytes()<class_SceneMultiplayer_method_send_bytes>`). L'identifiant est l'identifiant de pair du pair qui a envoyé le paquet.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SceneMultiplayer_property_allow_object_decoding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_object_decoding** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_allow_object_decoding>`

.. rst-class:: classref-property-setget

- |void| **set_allow_object_decoding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_object_decoding_allowed**\ (\ )

If ``true``, the MultiplayerAPI will allow encoding and decoding of object during RPCs.

\ **Warning:** Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threat such as remote code execution.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_callback:

.. rst-class:: classref-property

:ref:`Callable<class_Callable>` **auth_callback** = ``Callable()`` :ref:`🔗<class_SceneMultiplayer_property_auth_callback>`

.. rst-class:: classref-property-setget

- |void| **set_auth_callback**\ (\ value\: :ref:`Callable<class_Callable>`\ )
- :ref:`Callable<class_Callable>` **get_auth_callback**\ (\ )

The callback to execute when receiving authentication data sent via :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>`. If the :ref:`Callable<class_Callable>` is empty (default), peers will be automatically accepted as soon as they connect.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **auth_timeout** = ``3.0`` :ref:`🔗<class_SceneMultiplayer_property_auth_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_auth_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auth_timeout**\ (\ )

If set to a value greater than ``0.0``, the maximum duration in seconds peers can stay in the authenticating state, after which the authentication will automatically fail. See the :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>` and :ref:`peer_authentication_failed<class_SceneMultiplayer_signal_peer_authentication_failed>` signals.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_delta_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_delta_packet_size** = ``65535`` :ref:`🔗<class_SceneMultiplayer_property_max_delta_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_delta_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_delta_packet_size**\ (\ )

Maximum size of each delta packet. Higher values increase the chance of receiving full updates in a single frame, but also the chance of causing networking congestion (higher latency, disconnections). See :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_sync_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_sync_packet_size** = ``1350`` :ref:`🔗<class_SceneMultiplayer_property_max_sync_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_sync_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_sync_packet_size**\ (\ )

Maximum size of each synchronization packet. Higher values increase the chance of receiving full updates in a single frame, but also the chance of packet loss. See :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_refuse_new_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **refuse_new_connections** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_refuse_new_connections>`

.. rst-class:: classref-property-setget

- |void| **set_refuse_new_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_refusing_new_connections**\ (\ )

If ``true``, the MultiplayerAPI's :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` refuses new incoming connections.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_root_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_path** = ``NodePath("")`` :ref:`🔗<class_SceneMultiplayer_property_root_path>`

.. rst-class:: classref-property-setget

- |void| **set_root_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_path**\ (\ )

The root path to use for RPCs and replication. Instead of an absolute path, a relative path will be used to find the node upon which the RPC should be executed.

This effectively allows to have different branches of the scene tree to be managed by different MultiplayerAPI, allowing for example to run both client and server in the same scene.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_server_relay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **server_relay** = ``true`` :ref:`🔗<class_SceneMultiplayer_property_server_relay>`

.. rst-class:: classref-property-setget

- |void| **set_server_relay_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_server_relay_enabled**\ (\ )

Enable or disable the server feature that notifies clients of other peers' connection/disconnection, and relays messages between them. When this option is ``false``, clients won't be automatically notified of other peers and won't be able to send them packets through the server.

\ **Note:** Changing this option while other peers are connected may lead to unexpected behaviors.

\ **Note:** Support for this feature may depend on the current :ref:`MultiplayerPeer<class_MultiplayerPeer>` configuration. See :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SceneMultiplayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_clear>`

Efface l'état actuel du réseau SceneMultiplayer (vous ne devriez pas appeler ceci à moins que vous ne sachiez ce que vous faites).

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_complete_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **complete_auth**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_complete_auth>`

Mark the authentication step as completed for the remote peer identified by ``id``. The :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` signal will be emitted for this peer once the remote side also completes the authentication. No further authentication messages are expected to be received from this peer.

If a peer disconnects before completing authentication, either due to a network issue, the :ref:`auth_timeout<class_SceneMultiplayer_property_auth_timeout>` expiring, or manually calling :ref:`disconnect_peer()<class_SceneMultiplayer_method_disconnect_peer>`, the :ref:`peer_authentication_failed<class_SceneMultiplayer_signal_peer_authentication_failed>` signal will be emitted instead of :ref:`MultiplayerAPI.peer_disconnected<class_MultiplayerAPI_signal_peer_disconnected>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_disconnect_peer:

.. rst-class:: classref-method

|void| **disconnect_peer**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_disconnect_peer>`

Disconnects the peer identified by ``id``, removing it from the list of connected peers, and closing the underlying connection with it.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_get_authenticating_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_authenticating_peers**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_get_authenticating_peers>`

Returns the IDs of the peers currently trying to authenticate with this :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_auth**\ (\ id\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_method_send_auth>`

Sends the specified ``data`` to the remote peer identified by ``id`` as part of an authentication message. This can be used to authenticate peers, and control when :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` is emitted (and the remote peer accepted as one of the connected peers).

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_bytes:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_bytes**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, id\: :ref:`int<class_int>` = 0, mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` = 2, channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneMultiplayer_method_send_bytes>`

Sends the given raw ``bytes`` to a specific peer identified by ``id`` (see :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`). Default ID is ``0``, i.e. broadcast to all peers.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
