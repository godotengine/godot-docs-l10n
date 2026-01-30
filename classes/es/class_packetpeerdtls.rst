:github_url: hide

.. _class_PacketPeerDTLS:

PacketPeerDTLS
==============

**Hereda:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Paquete de pares DTLS.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This class represents a DTLS peer connection. It can be used to connect to a DTLS server, and is returned by :ref:`DTLSServer.take_connection()<class_DTLSServer_method_take_connection>`.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

\ **Warning:** TLS certificate revocation and certificate pinning are currently not supported. Revoked certificates are accepted as long as they are otherwise valid. If this is a concern, you may want to use automatically managed certificates with a short validity period.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`connect_to_peer<class_PacketPeerDTLS_method_connect_to_peer>`\ (\ packet_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`, hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`disconnect_from_peer<class_PacketPeerDTLS_method_disconnect_from_peer>`\ (\ )                                                                                                                                                     |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_PacketPeerDTLS_Status>` | :ref:`get_status<class_PacketPeerDTLS_method_get_status>`\ (\ ) |const|                                                                                                                                                                 |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`poll<class_PacketPeerDTLS_method_poll>`\ (\ )                                                                                                                                                                                     |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_PacketPeerDTLS_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_PacketPeerDTLS_Status>`

.. _class_PacketPeerDTLS_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_DISCONNECTED** = ``0``

Un estado que representa un **PacketPeerDTLS** que está desconectado.

.. _class_PacketPeerDTLS_constant_STATUS_HANDSHAKING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_HANDSHAKING** = ``1``

Un estado que representa un **PacketPeerDTLS** que está actualmente realizando el establecimiento de comunicación con un par remoto.

.. _class_PacketPeerDTLS_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_CONNECTED** = ``2``

Un estado que representa un **PacketPeerDTLS** que está conectado a un par remoto.

.. _class_PacketPeerDTLS_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_ERROR** = ``3``

Un estado que representa un **PacketPeerDTLS** en un estado de error genérico.

.. _class_PacketPeerDTLS_constant_STATUS_ERROR_HOSTNAME_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_ERROR_HOSTNAME_MISMATCH** = ``4``

Un estado de error que muestra una falta de coincidencia en el dominio del certificado DTLS presentado por el host y el dominio solicitado para la validación.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PacketPeerDTLS_method_connect_to_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_peer**\ (\ packet_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`, hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_PacketPeerDTLS_method_connect_to_peer>`

Conecta un ``packet_peer`` comenzando el handshake DTLS usando el :ref:`PacketPeerUDP<class_PacketPeerUDP>` subyacente, el cual debe estar conectado (véase :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`). Opcionalmente, puedes especificar las ``client_options`` a usar mientras verificas las conexiones TLS. Véase :ref:`TLSOptions.client()<class_TLSOptions_method_client>` y :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_disconnect_from_peer:

.. rst-class:: classref-method

|void| **disconnect_from_peer**\ (\ ) :ref:`🔗<class_PacketPeerDTLS_method_disconnect_from_peer>`

Desconecta este par, terminando la sesión de DTLS.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_PacketPeerDTLS_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_PacketPeerDTLS_method_get_status>`

Devuelve el estado de la conexión.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_PacketPeerDTLS_method_poll>`

Sondea la conexión para comprobar si hay paquetes entrantes. Llama a esto con frecuencia para actualizar el estado y mantener la conexión en funcionamiento.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
