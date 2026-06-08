:github_url: hide

.. _class_StreamPeerUDS:

StreamPeerUDS
=============

**Eredita:** :ref:`StreamPeerSocket<class_StreamPeerSocket>` **<** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A stream peer that handles UNIX Domain Socket (UDS) connections.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A stream peer that handles UNIX Domain Socket (UDS) connections. This object can be used to connect to UDS servers, or also is returned by a UDS server. Unix Domain Sockets provide inter-process communication on the same machine using the filesystem namespace.

\ **Note:** UNIX Domain Sockets are only available on UNIX-like systems (Linux, macOS, etc.) and are not supported on Windows.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`bind<class_StreamPeerUDS_method_bind>`\ (\ path\: :ref:`String<class_String>`\ )                       |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`connect_to_host<class_StreamPeerUDS_method_connect_to_host>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_connected_path<class_StreamPeerUDS_method_get_connected_path>`\ (\ ) |const|                       |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_StreamPeerUDS_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeerUDS_method_bind>`

Opens the UDS socket, and binds it to the specified socket path.

This method is generally not needed, and only used to force the subsequent call to :ref:`connect_to_host()<class_StreamPeerUDS_method_connect_to_host>` to use the specified ``path`` as the source address.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerUDS_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeerUDS_method_connect_to_host>`

Si connette al percorso specificato del socket di dominio UNIX. Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerUDS_method_get_connected_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_path**\ (\ ) |const| :ref:`🔗<class_StreamPeerUDS_method_get_connected_path>`

Returns the socket path of this peer.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
