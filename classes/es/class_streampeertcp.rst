:github_url: hide

.. _class_StreamPeerTCP:

StreamPeerTCP
=============

**Hereda:** :ref:`StreamPeerSocket<class_StreamPeerSocket>` **<** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A stream peer that handles TCP connections.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A stream peer that handles TCP connections. This object can be used to connect to TCP servers, or also is returned by a TCP server.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`bind<class_StreamPeerTCP_method_bind>`\ (\ port\: :ref:`int<class_int>`, host\: :ref:`String<class_String>` = "*"\ )                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`connect_to_host<class_StreamPeerTCP_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_connected_host<class_StreamPeerTCP_method_get_connected_host>`\ (\ ) |const|                                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_connected_port<class_StreamPeerTCP_method_get_connected_port>`\ (\ ) |const|                                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_local_port<class_StreamPeerTCP_method_get_local_port>`\ (\ ) |const|                                                             |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_no_delay<class_StreamPeerTCP_method_set_no_delay>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                      |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_StreamPeerTCP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, host\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_StreamPeerTCP_method_bind>`

Opens the TCP socket, and binds it to the specified local address.

This method is generally not needed, and only used to force the subsequent call to :ref:`connect_to_host()<class_StreamPeerTCP_method_connect_to_host>` to use the specified ``host`` and ``port`` as source address. This can be desired in some NAT punchthrough techniques, or when forcing the source network interface.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerTCP_method_connect_to_host>`

Connects to the specified ``host:port`` pair. A hostname will be resolved if valid. Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_host:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_host**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_host>`

Devuelve la IP de este par.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connected_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_port>`

Devuelve el puerto de este par.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_local_port>`

Returns the local port to which this peer is bound.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_set_no_delay:

.. rst-class:: classref-method

|void| **set_no_delay**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_StreamPeerTCP_method_set_no_delay>`

Si ``enabled`` es ``true``, los paquetes se enviarán inmediatamente. Si ``enabled`` es ``false`` (el valor predeterminado), las transferencias de paquetes se retrasarán y combinarán utilizando `el algoritmo de Nagle <https://en.wikipedia.org/wiki/Nagle%27s_algorithm>`__.

\ **Nota:** Se recomienda dejar esto desactivado para las aplicaciones que envían paquetes grandes o necesitan transferir muchos datos, ya que habilitar esto puede disminuir el ancho de banda total disponible.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
