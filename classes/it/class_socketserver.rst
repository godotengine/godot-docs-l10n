:github_url: hide

.. _class_SocketServer:

SocketServer
============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`TCPServer<class_TCPServer>`, :ref:`UDSServer<class_UDSServer>`

Classe base astratta per i server basati su socket.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un server di socket.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_connection_available<class_SocketServer_method_is_connection_available>`\ (\ ) |const| |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_listening<class_SocketServer_method_is_listening>`\ (\ ) |const|                       |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`stop<class_SocketServer_method_stop>`\ (\ )                                               |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeerSocket<class_StreamPeerSocket>` | :ref:`take_socket_connection<class_SocketServer_method_take_socket_connection>`\ (\ )           |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SocketServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_SocketServer_method_is_connection_available>`

Restituisce ``true`` se una connessione è disponibile per l'uso.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_SocketServer_method_is_listening>`

Restituisce ``true`` se il server è attualmente in ascolto per nuove connessioni.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SocketServer_method_stop>`

Smette di ascoltare.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_take_socket_connection:

.. rst-class:: classref-method

:ref:`StreamPeerSocket<class_StreamPeerSocket>` **take_socket_connection**\ (\ ) :ref:`🔗<class_SocketServer_method_take_socket_connection>`

Se una connessione è disponibile, restituisce uno StreamPeerSocket con la connessione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
