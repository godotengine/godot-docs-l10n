:github_url: hide

.. _class_TCPServer:

TCPServer
=========

**Hereda:** :ref:`SocketServer<class_SocketServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un servidor TCP.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A TCP server. Listens to connections on a port and returns a :ref:`StreamPeerTCP<class_StreamPeerTCP>` when it gets an incoming connection.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_local_port<class_TCPServer_method_get_local_port>`\ (\ ) |const|                                                         |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`listen<class_TCPServer_method_listen>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeerTCP<class_StreamPeerTCP>` | :ref:`take_connection<class_TCPServer_method_take_connection>`\ (\ )                                                               |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TCPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_TCPServer_method_get_local_port>`

Devuelve el puerto local que este servidor está escuchando.

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_TCPServer_method_listen>`

Listen on the ``port`` binding to ``bind_address``.

If ``bind_address`` is set as ``"*"`` (default), the server will listen on all available addresses (both IPv4 and IPv6).

If ``bind_address`` is set as ``"0.0.0.0"`` (for IPv4) or ``"::"`` (for IPv6), the server will listen on all available addresses matching that IP type.

If ``bind_address`` is set to any valid address (e.g. ``"192.168.1.101"``, ``"::1"``, etc.), the server will only listen on the interface with that address (or fail if no interface with the given address exists).

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`StreamPeerTCP<class_StreamPeerTCP>` **take_connection**\ (\ ) :ref:`🔗<class_TCPServer_method_take_connection>`

Si hay una conexión disponible, devuelve un StreamPeerTCP con la conexión.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
