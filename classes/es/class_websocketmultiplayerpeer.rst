:github_url: hide

.. _class_WebSocketMultiplayerPeer:

WebSocketMultiplayerPeer
========================

**Hereda:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase base para el servidor y cliente de WebSocket.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Base class for WebSocket server and client, allowing them to be used as multiplayer peer for the :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_WebSocketMultiplayerPeer_property_handshake_headers:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **handshake_headers** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_handshake_headers>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_headers**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_handshake_headers**\ (\ )

Las cabeceras adicionales que se usarán durante el establecimiento de comunicación. Véase :ref:`WebSocketPeer.handshake_headers<class_WebSocketPeer_property_handshake_headers>` para más detalles.



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

El tiempo máximo que cada par puede permanecer en un estado de conexión antes de ser descartado.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_inbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **inbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_inbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_inbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_inbound_buffer_size**\ (\ )

El tamaño del búfer de entrada para los pares conectados. Véase :ref:`WebSocketPeer.inbound_buffer_size<class_WebSocketPeer_property_inbound_buffer_size>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_max_queued_packets:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_queued_packets** = ``4096`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_max_queued_packets>`

.. rst-class:: classref-property-setget

- |void| **set_max_queued_packets**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_queued_packets**\ (\ )

El número máximo de paquetes en cola para los pares conectados. Véase :ref:`WebSocketPeer.max_queued_packets<class_WebSocketPeer_property_max_queued_packets>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_outbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_outbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_outbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outbound_buffer_size**\ (\ )

El tamaño del búfer de salida para los pares conectados. Véase :ref:`WebSocketPeer.outbound_buffer_size<class_WebSocketPeer_property_outbound_buffer_size>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_supported_protocols:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **supported_protocols** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_supported_protocols>`

.. rst-class:: classref-property-setget

- |void| **set_supported_protocols**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_supported_protocols**\ (\ )

Los subprotocolos WebSocket soportados. Véase :ref:`WebSocketPeer.supported_protocols<class_WebSocketPeer_property_supported_protocols>` para más detalles.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_WebSocketMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketMultiplayerPeer_method_create_client>`

Inicia un nuevo cliente multijugador que se conecta a la ``url`` dada. Los certificados TLS se verificarán con el nombre de host al conectarse usando el protocolo ``wss://``. Puedes pasar el parámetro opcional ``tls_client_options`` para personalizar las autoridades de certificación de confianza, o deshabilitar la verificación de nombre común. Véase :ref:`TLSOptions.client()<class_TLSOptions_method_client>` y :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

\ **Nota:** Se recomienda especificar la parte del esquema de la URL, es decir, la ``url`` debe comenzar con ``ws://`` o ``wss://``.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", tls_server_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketMultiplayerPeer_method_create_server>`

Inicia un nuevo servidor multijugador escuchando en el ``port`` dado. Opcionalmente puedes especificar una ``bind_address``, y proporcionar válidas ``tls_server_options`` para usar TLS. Véase :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`WebSocketPeer<class_WebSocketPeer>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer>`

Devuelve el :ref:`WebSocketPeer<class_WebSocketPeer>` asociado al ``peer_id`` dado.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_peer_address**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer_address>`

Devuelve la dirección IP del par dado.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_peer_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer_port>`

Devuelve el puerto remoto del par dado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
