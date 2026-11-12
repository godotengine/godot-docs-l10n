:github_url: hide

.. _class_WebSocketMultiplayerPeer:

WebSocketMultiplayerPeer
========================

**Hérite de :** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe de base pour le serveur et le client WebSocket.

.. rst-class:: classref-introduction-group

Description
-----------

Base class for WebSocket server and client, allowing them to be used as multiplayer peer for the :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`handshake_headers<class_WebSocketMultiplayerPeer_property_handshake_headers>`       | ``PackedStringArray()`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                         | :ref:`handshake_timeout<class_WebSocketMultiplayerPeer_property_handshake_timeout>`       | ``3.0``                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`inbound_buffer_size<class_WebSocketMultiplayerPeer_property_inbound_buffer_size>`   | ``65535``               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`max_queued_packets<class_WebSocketMultiplayerPeer_property_max_queued_packets>`     | ``4096``                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`outbound_buffer_size<class_WebSocketMultiplayerPeer_property_outbound_buffer_size>` | ``65535``               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`supported_protocols<class_WebSocketMultiplayerPeer_property_supported_protocols>`   | ``PackedStringArray()`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`create_client<class_WebSocketMultiplayerPeer_method_create_client>`\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`create_server<class_WebSocketMultiplayerPeer_method_create_server>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", tls_server_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`WebSocketPeer<class_WebSocketPeer>` | :ref:`get_peer<class_WebSocketMultiplayerPeer_method_get_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`               | :ref:`get_peer_address<class_WebSocketMultiplayerPeer_method_get_peer_address>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_peer_port<class_WebSocketMultiplayerPeer_method_get_peer_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_WebSocketMultiplayerPeer_property_handshake_headers:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **handshake_headers** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_handshake_headers>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_headers**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_handshake_headers**\ (\ )

Les en-têtes supplémentaires à utiliser pendant la poignée de main. Voir :ref:`WebSocketPeer.handshake_headers<class_WebSocketPeer_property_handshake_headers>` pour plus de détails.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_handshake_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **handshake_timeout** = ``3.0`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_handshake_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_handshake_timeout**\ (\ )

The maximum time each peer can stay in a connecting state before being dropped.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_inbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **inbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_inbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_inbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_inbound_buffer_size**\ (\ )

The inbound buffer size for connected peers. See :ref:`WebSocketPeer.inbound_buffer_size<class_WebSocketPeer_property_inbound_buffer_size>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_max_queued_packets:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_queued_packets** = ``4096`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_max_queued_packets>`

.. rst-class:: classref-property-setget

- |void| **set_max_queued_packets**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_queued_packets**\ (\ )

The maximum number of queued packets for connected peers. See :ref:`WebSocketPeer.max_queued_packets<class_WebSocketPeer_property_max_queued_packets>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_outbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_outbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_outbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outbound_buffer_size**\ (\ )

The outbound buffer size for connected peers. See :ref:`WebSocketPeer.outbound_buffer_size<class_WebSocketPeer_property_outbound_buffer_size>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_supported_protocols:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **supported_protocols** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_supported_protocols>`

.. rst-class:: classref-property-setget

- |void| **set_supported_protocols**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_supported_protocols**\ (\ )

The supported WebSocket sub-protocols. See :ref:`WebSocketPeer.supported_protocols<class_WebSocketPeer_property_supported_protocols>` for more details.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_WebSocketMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketMultiplayerPeer_method_create_client>`

Starts a new multiplayer client connecting to the given ``url``. TLS certificates will be verified against the hostname when connecting using the ``wss://`` protocol. You can pass the optional ``tls_client_options`` parameter to customize the trusted certification authorities, or disable the common name verification. See :ref:`TLSOptions.client()<class_TLSOptions_method_client>` and :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

\ **Note:** It is recommended to specify the scheme part of the URL, i.e. the ``url`` should start with either ``ws://`` or ``wss://``.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", tls_server_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketMultiplayerPeer_method_create_server>`

Starts a new multiplayer server listening on the given ``port``. You can optionally specify a ``bind_address``, and provide valid ``tls_server_options`` to use TLS. See :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`WebSocketPeer<class_WebSocketPeer>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer>`

Returns the :ref:`WebSocketPeer<class_WebSocketPeer>` associated to the given ``peer_id``.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_peer_address**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer_address>`

Renvoie l'adresse IP du pair donné.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_peer_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer_port>`

Renvoie le port distant du pair spécifié.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
