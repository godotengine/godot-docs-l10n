:github_url: hide

.. _class_PacketPeerUDP:

PacketPeerUDP
=============

**Hereda:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Paquete de pares UDP.

.. rst-class:: classref-introduction-group

Descripción
----------------------

UDP packet peer. Can be used to send and receive raw UDP packets as well as :ref:`Variant<class_Variant>`\ s.

\ **Example:** Send a packet:

::

    var peer = PacketPeerUDP.new()

    # Optionally, you can select the local port used to send the packet.
    peer.bind(4444)

    peer.set_dest_address("1.1.1.1", 4433)
    peer.put_packet("hello".to_utf8_buffer())

\ **Example:** Listen for packets:

::

    var peer

    func _ready():
        peer = PacketPeerUDP.new()
        peer.bind(4433)


    func _process(_delta):
        if peer.get_available_packet_count() > 0:
            var array_bytes = peer.get_packet()
            var packet_string = array_bytes.get_string_from_ascii()
            print("Received message: ", packet_string)

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`bind<class_PacketPeerUDP_method_bind>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", recv_buf_size\: :ref:`int<class_int>` = 65536\ )   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`close<class_PacketPeerUDP_method_close>`\ (\ )                                                                                                                                |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`connect_to_host<class_PacketPeerUDP_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                          |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_local_port<class_PacketPeerUDP_method_get_local_port>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_packet_ip<class_PacketPeerUDP_method_get_packet_ip>`\ (\ ) |const|                                                                                                        |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_packet_port<class_PacketPeerUDP_method_get_packet_port>`\ (\ ) |const|                                                                                                    |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_bound<class_PacketPeerUDP_method_is_bound>`\ (\ ) |const|                                                                                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_socket_connected<class_PacketPeerUDP_method_is_socket_connected>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`join_multicast_group<class_PacketPeerUDP_method_join_multicast_group>`\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ )   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`leave_multicast_group<class_PacketPeerUDP_method_leave_multicast_group>`\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_broadcast_enabled<class_PacketPeerUDP_method_set_broadcast_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                             |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`set_dest_address<class_PacketPeerUDP_method_set_dest_address>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                        |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`wait<class_PacketPeerUDP_method_wait>`\ (\ )                                                                                                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PacketPeerUDP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", recv_buf_size\: :ref:`int<class_int>` = 65536\ ) :ref:`🔗<class_PacketPeerUDP_method_bind>`

Binds this **PacketPeerUDP** to the specified ``port`` and ``bind_address`` with a buffer size ``recv_buf_size``, allowing it to receive incoming packets.

If ``bind_address`` is set to ``"*"`` (default), the peer will be bound on all available addresses (both IPv4 and IPv6).

If ``bind_address`` is set to ``"0.0.0.0"`` (for IPv4) or ``"::"`` (for IPv6), the peer will be bound to all available addresses matching that IP type.

If ``bind_address`` is set to any valid address (e.g. ``"192.168.1.101"``, ``"::1"``, etc.), the peer will only be bound to the interface with that address (or fail if no interface with the given address exists).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_close>`

Cierra el socket UDP subyacente del **PacketPeerUDP**.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_connect_to_host>`

Llamar a este método conecta este peer UDP al par ``host``/``port`` dado. UDP es en realidad sin conexión, por lo que esta opción solo significa que los paquetes entrantes de diferentes direcciones son automáticamente descartados, y que los paquetes salientes son siempre enviados a la dirección conectada (no se permiten futuras llamadas a :ref:`set_dest_address()<class_PacketPeerUDP_method_set_dest_address>`). Este método no envía ningún dato al peer remoto; para ello, utiliza :ref:`PacketPeer.put_var()<class_PacketPeer_method_put_var>` o :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>` como es habitual. Véase también :ref:`UDPServer<class_UDPServer>`.

\ **Nota:** Conectarse al peer remoto no ayuda a protegerte de ataques maliciosos como el spoofing de IP, etc. Piensa en utilizar una técnica de encriptación como TLS o DTLS si crees que tu aplicación está transfiriendo información sensible.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_local_port>`

Returns the local port to which this peer is bound.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_ip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_packet_ip**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_ip>`

Devuelve la IP del par remoto que envió el último paquete (que fue recibido con :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` o :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>`).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_port>`

Devuelve el puerto del par remoto que envió el último paquete (que fue recibido con :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` o :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>`).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_bound:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bound**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_bound>`

Devuelve si este **PacketPeerUDP** está enlazado a una dirección y puede recibir paquetes.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_socket_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_socket_connected**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_socket_connected>`

Devuelve ``true`` si el enchufe UDP está abierto y se ha conectado a una dirección remota. Véase :ref:`connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_join_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **join_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_join_multicast_group>`

Joins the multicast group specified by ``multicast_address`` using the interface identified by ``interface_name``.

You can join the same multicast group with multiple interfaces. Use :ref:`IP.get_local_interfaces()<class_IP_method_get_local_interfaces>` to know which are available.

\ **Note:** Some Android devices might require the ``CHANGE_WIFI_MULTICAST_STATE`` permission for multicast to work.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_leave_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **leave_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_leave_multicast_group>`

Removes the interface identified by ``interface_name`` from the multicast group specified by ``multicast_address``.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_broadcast_enabled:

.. rst-class:: classref-method

|void| **set_broadcast_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_broadcast_enabled>`

Habilita o deshabilita el envío de paquetes de emisión (por ejemplo, ``set_dest_address("255.255.255.255", 4343)``). Esta opción está deshabilitada por defecto.

\ **Nota:** Algunos dispositivos Android pueden requerir el permiso ``CHANGE_WIFI_MULTICAST_STATE`` y que esta opción esté habilitada para recibir también paquetes de emisión.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_dest_address:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_dest_address**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_dest_address>`

Establece la dirección y el puerto de destino para el envío de paquetes y variables. Un nombre de host será resuelto usando DNS si es necesario.

\ **Nota:** :ref:`set_broadcast_enabled()<class_PacketPeerUDP_method_set_broadcast_enabled>` debe estar habilitado antes de enviar paquetes a una dirección de difusión (por ejemplo, ``255.255.255.255``).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_wait:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **wait**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_wait>`

Waits for a packet to arrive on the bound address. See :ref:`bind()<class_PacketPeerUDP_method_bind>`.

\ **Note:** :ref:`wait()<class_PacketPeerUDP_method_wait>` can't be interrupted once it has been called. This can be worked around by allowing the other party to send a specific "death pill" packet like this:


.. tabs::

 .. code-tab:: gdscript

    socket = PacketPeerUDP.new()
    # Server
    socket.set_dest_address("127.0.0.1", 789)
    socket.put_packet("Time to stop".to_ascii_buffer())

    # Client
    while socket.wait() == OK:
        var data = socket.get_packet().get_string_from_ascii()
        if data == "Time to stop":
            return

 .. code-tab:: csharp

    var socket = new PacketPeerUdp();
    // Server
    socket.SetDestAddress("127.0.0.1", 789);
    socket.PutPacket("Time to stop".ToAsciiBuffer());

    // Client
    while (socket.Wait() == OK)
    {
        string data = socket.GetPacket().GetStringFromASCII();
        if (data == "Time to stop")
        {
            return;
        }
    }



.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
