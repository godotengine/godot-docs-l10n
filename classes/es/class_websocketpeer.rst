:github_url: hide

.. _class_WebSocketPeer:

WebSocketPeer
=============

**Hereda:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una conexión WebSocket.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This class represents WebSocket connection, and can be used as a WebSocket client (`RFC 6455 <https://datatracker.ietf.org/doc/html/rfc6455>`__-compliant) or as a remote peer of a WebSocket server.

You can send WebSocket binary frames using :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>`, and WebSocket text frames using :ref:`send()<class_WebSocketPeer_method_send>` (prefer text frames when interacting with text-based API). You can check the frame type of the last packet via :ref:`was_string_packet()<class_WebSocketPeer_method_was_string_packet>`.

To start a WebSocket client, first call :ref:`connect_to_url()<class_WebSocketPeer_method_connect_to_url>`, then regularly call :ref:`poll()<class_WebSocketPeer_method_poll>` (e.g. during :ref:`Node<class_Node>` process). You can query the socket state via :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>`, get the number of pending packets using :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`, and retrieve them via :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>`.


.. tabs::

 .. code-tab:: gdscript

    extends Node

    var socket = WebSocketPeer.new()

    func _ready():
        socket.connect_to_url("wss://example.com")

    func _process(delta):
        socket.poll()
        var state = socket.get_ready_state()
        if state == WebSocketPeer.STATE_OPEN:
            while socket.get_available_packet_count():
                print("Packet: ", socket.get_packet())
        elif state == WebSocketPeer.STATE_CLOSING:
            # Keep polling to achieve proper close.
            pass
        elif state == WebSocketPeer.STATE_CLOSED:
            var code = socket.get_close_code()
            var reason = socket.get_close_reason()
            print("WebSocket closed with code: %d, reason %s. Clean: %s" % [code, reason, code != -1])
            set_process(false) # Stop processing.



To use the peer as part of a WebSocket server refer to :ref:`accept_stream()<class_WebSocketPeer_method_accept_stream>` and the online tutorial.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`handshake_headers<class_WebSocketPeer_property_handshake_headers>`       | ``PackedStringArray()`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                         | :ref:`heartbeat_interval<class_WebSocketPeer_property_heartbeat_interval>`     | ``0.0``                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`inbound_buffer_size<class_WebSocketPeer_property_inbound_buffer_size>`   | ``65535``               |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`max_queued_packets<class_WebSocketPeer_property_max_queued_packets>`     | ``4096``                |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`outbound_buffer_size<class_WebSocketPeer_property_outbound_buffer_size>` | ``65535``               |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`supported_protocols<class_WebSocketPeer_property_supported_protocols>`   | ``PackedStringArray()`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`accept_stream<class_WebSocketPeer_method_accept_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`\ )                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`close<class_WebSocketPeer_method_close>`\ (\ code\: :ref:`int<class_int>` = 1000, reason\: :ref:`String<class_String>` = ""\ )                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`connect_to_url<class_WebSocketPeer_method_connect_to_url>`\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )   |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_close_code<class_WebSocketPeer_method_get_close_code>`\ (\ ) |const|                                                                                               |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_close_reason<class_WebSocketPeer_method_get_close_reason>`\ (\ ) |const|                                                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_connected_host<class_WebSocketPeer_method_get_connected_host>`\ (\ ) |const|                                                                                       |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_connected_port<class_WebSocketPeer_method_get_connected_port>`\ (\ ) |const|                                                                                       |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_current_outbound_buffered_amount<class_WebSocketPeer_method_get_current_outbound_buffered_amount>`\ (\ ) |const|                                                   |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`State<enum_WebSocketPeer_State>` | :ref:`get_ready_state<class_WebSocketPeer_method_get_ready_state>`\ (\ ) |const|                                                                                             |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_requested_url<class_WebSocketPeer_method_get_requested_url>`\ (\ ) |const|                                                                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_selected_protocol<class_WebSocketPeer_method_get_selected_protocol>`\ (\ ) |const|                                                                                 |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`poll<class_WebSocketPeer_method_poll>`\ (\ )                                                                                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`send<class_WebSocketPeer_method_send>`\ (\ message\: :ref:`PackedByteArray<class_PackedByteArray>`, write_mode\: :ref:`WriteMode<enum_WebSocketPeer_WriteMode>` = 1\ ) |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`send_text<class_WebSocketPeer_method_send_text>`\ (\ message\: :ref:`String<class_String>`\ )                                                                          |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`set_no_delay<class_WebSocketPeer_method_set_no_delay>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                                        |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                | :ref:`was_string_packet<class_WebSocketPeer_method_was_string_packet>`\ (\ ) |const|                                                                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_WebSocketPeer_WriteMode:

.. rst-class:: classref-enumeration

enum **WriteMode**: :ref:`🔗<enum_WebSocketPeer_WriteMode>`

.. _class_WebSocketPeer_constant_WRITE_MODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebSocketPeer_WriteMode>` **WRITE_MODE_TEXT** = ``0``

Especifica que los mensajes de WebSockets deben ser transferidos como carga de texto (sólo se permite el UTF-8 válido).

.. _class_WebSocketPeer_constant_WRITE_MODE_BINARY:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebSocketPeer_WriteMode>` **WRITE_MODE_BINARY** = ``1``

Especifica que los mensajes de WebSockets deben ser transferidos como carga binaria (se permite cualquier combinación de bytes).

.. rst-class:: classref-item-separator

----

.. _enum_WebSocketPeer_State:

.. rst-class:: classref-enumeration

enum **State**: :ref:`🔗<enum_WebSocketPeer_State>`

.. _class_WebSocketPeer_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CONNECTING** = ``0``

El socket ha sido creado. La conexión aún no está abierta.

.. _class_WebSocketPeer_constant_STATE_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_OPEN** = ``1``

La conexión está abierta y lista para comunicarse.

.. _class_WebSocketPeer_constant_STATE_CLOSING:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CLOSING** = ``2``

La conexión está en proceso de cierre. Esto significa que se ha enviado una solicitud de cierre al par remoto, pero no se ha recibido la confirmación.

.. _class_WebSocketPeer_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CLOSED** = ``3``

La conexión está cerrada o no se pudo abrir.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_WebSocketPeer_property_handshake_headers:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **handshake_headers** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketPeer_property_handshake_headers>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_headers**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_handshake_headers**\ (\ )

Las cabeceras HTTP adicionales que se enviarán durante el establecimiento de comunicación de WebSocket.

\ **Nota:** No soportado en las exportaciones Web debido a las restricciones de los navegadores.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_heartbeat_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **heartbeat_interval** = ``0.0`` :ref:`🔗<class_WebSocketPeer_property_heartbeat_interval>`

.. rst-class:: classref-property-setget

- |void| **set_heartbeat_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_heartbeat_interval**\ (\ )

El intervalo (en segundos) en el que el par enviará automáticamente tramas de control "ping" de WebSocket. Cuando se establece en ``0``, no se enviarán tramas de control "ping".

\ **Nota:** No tiene efecto en las exportaciones Web debido a las restricciones del navegador.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_inbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **inbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketPeer_property_inbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_inbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_inbound_buffer_size**\ (\ )

El tamaño del búfer de entrada en bytes (aproximadamente la cantidad máxima de memoria que se asignará para los paquetes entrantes).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_max_queued_packets:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_queued_packets** = ``4096`` :ref:`🔗<class_WebSocketPeer_property_max_queued_packets>`

.. rst-class:: classref-property-setget

- |void| **set_max_queued_packets**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_queued_packets**\ (\ )

La cantidad máxima de paquetes que se permitirán en las colas (tanto de entrada como de salida).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_outbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketPeer_property_outbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_outbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outbound_buffer_size**\ (\ )

El tamaño del búfer de entrada en bytes (aproximadamente la cantidad máxima de memoria que se asignará para los paquetes salientes).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_supported_protocols:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **supported_protocols** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketPeer_property_supported_protocols>`

.. rst-class:: classref-property-setget

- |void| **set_supported_protocols**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_supported_protocols**\ (\ )

Los subprotocolos de WebSocket permitidos durante el establecimiento de comunicación de WebSocket.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_WebSocketPeer_method_accept_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **accept_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`\ ) :ref:`🔗<class_WebSocketPeer_method_accept_stream>`

Acepta una conexión de par que realiza el establecimiento de comunicación HTTP como un servidor WebSocket. El ``stream`` debe ser un flujo TCP válido recuperado a través de :ref:`TCPServer.take_connection()<class_TCPServer_method_take_connection>`, o un flujo TLS aceptado a través de :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>`.

\ **Nota:** No compatible con las exportaciones Web debido a las restricciones de los navegadores.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ code\: :ref:`int<class_int>` = 1000, reason\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WebSocketPeer_method_close>`

Closes this WebSocket connection.

\ ``code`` is the status code for the closure (see `RFC 6455 section 7.4 <https://datatracker.ietf.org/doc/html/rfc6455#section-7.4.1>`__ for a list of valid status codes). If ``code`` is negative, the connection will be closed immediately without notifying the remote peer.

\ ``reason`` is the human-readable reason for closing the connection. It can be any UTF-8 string that's smaller than 123 bytes.

\ **Note:** To achieve a clean closure, you will need to keep polling until :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>` is reached.

\ **Note:** The Web export might not support all status codes. Please refer to browser-specific documentation for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_connect_to_url:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_url**\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketPeer_method_connect_to_url>`

Conecta a la URL dada. Los certificados TLS se verificarán con el nombre de host al conectarse mediante el protocolo ``wss://``. Puedes pasar el parámetro opcional ``tls_client_options`` para personalizar las autoridades de certificación de confianza, o desactivar la verificación del nombre común. Véase :ref:`TLSOptions.client()<class_TLSOptions_method_client>` y :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

\ **Nota:** Este método no es bloqueante, y devolverá :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` antes de que se establezca la conexión, siempre y cuando los parámetros proporcionados sean válidos y el par no esté en un estado inválido (por ejemplo, ya conectado). Llama regularmente a :ref:`poll()<class_WebSocketPeer_method_poll>` (por ejemplo, durante el proceso de :ref:`Node<class_Node>`) y comprueba el resultado de :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` para saber si la conexión tiene éxito o falla.

\ **Nota:** Para evitar avisos o errores de contenido mixto en la Web, es posible que tengas que utilizar una ``url`` que comience con ``wss://`` (seguro) en lugar de ``ws://``. Al hacerlo, asegúrate de utilizar el nombre de dominio completo que coincida con el definido en el certificado TLS del servidor. No te conectes directamente a través de la dirección IP para las conexiones ``wss://``, ya que no coincidirá con el certificado TLS.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_close_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_close_code**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_close_code>`

Devuelve el código de estado del frame de cierre de WebSocket recibido, o ``-1`` cuando la conexión no se cerró limpiamente. Solo llama a este método cuando :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` devuelve :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_close_reason:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_close_reason**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_close_reason>`

Devuelve la string de motivo del estado del frame de cierre de WebSocket recibido. Solo llama a este método cuando :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` devuelve :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_connected_host:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_host**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_connected_host>`

Devuelve la dirección IP del par conectado.

\ **Nota:** No disponible en la exportación Web.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_connected_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connected_port**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_connected_port>`

Devuelve el puerto remoto del par conectado.

\ **Nota:** No disponible en la exportación Web.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_current_outbound_buffered_amount:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_outbound_buffered_amount**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_current_outbound_buffered_amount>`

Devuelve la cantidad actual de datos en el búfer de websocket de salida. **Nota:** Las exportaciones Web usan WebSocket.bufferedAmount, mientras que otras plataformas usan un búfer interno.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_ready_state:

.. rst-class:: classref-method

:ref:`State<enum_WebSocketPeer_State>` **get_ready_state**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_ready_state>`

Devuelve el estado de preparación de la conexión.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_requested_url:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_requested_url**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_requested_url>`

Devuelve la URL solicitada por este par. La URL se deriva de la ``url`` pasada a :ref:`connect_to_url()<class_WebSocketPeer_method_connect_to_url>` o de las cabeceras HTTP cuando se actúa como servidor (es decir, cuando se utiliza :ref:`accept_stream()<class_WebSocketPeer_method_accept_stream>`).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_selected_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_selected_protocol**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_selected_protocol>`

Devuelve el subprotocolo WebSocket seleccionado para esta conexión o una string vacía si el subprotocolo aún no se ha seleccionado.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_WebSocketPeer_method_poll>`

Actualiza el estado de la conexión y recibe los paquetes entrantes. Llama a esta función regularmente para mantenerla en un estado limpio.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_send:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send**\ (\ message\: :ref:`PackedByteArray<class_PackedByteArray>`, write_mode\: :ref:`WriteMode<enum_WebSocketPeer_WriteMode>` = 1\ ) :ref:`🔗<class_WebSocketPeer_method_send>`

Envía el ``message`` dado utilizando el ``write_mode`` deseado. Cuando se envía una :ref:`String<class_String>`, es preferible utilizar :ref:`send_text()<class_WebSocketPeer_method_send_text>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_send_text:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_text**\ (\ message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebSocketPeer_method_send_text>`

Envía el ``message`` dado utilizando el modo de texto WebSocket. Es preferible este método a :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>` cuando se interactúa con una API de terceros basada en texto (por ejemplo, cuando se utilizan mensajes con formato :ref:`JSON<class_JSON>`).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_set_no_delay:

.. rst-class:: classref-method

|void| **set_no_delay**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_WebSocketPeer_method_set_no_delay>`

Desactiva el algoritmo de Nagle en el socket TCP subyacente (por defecto). Véase :ref:`StreamPeerTCP.set_no_delay()<class_StreamPeerTCP_method_set_no_delay>` para obtener más información.

\ **Nota:** No disponible en la exportación Web.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_was_string_packet:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **was_string_packet**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_was_string_packet>`

Devuelve ``true`` si el último paquete recibido fue enviado como una carga de texto. Véase :ref:`WriteMode<enum_WebSocketPeer_WriteMode>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
