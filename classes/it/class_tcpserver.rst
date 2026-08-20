:github_url: hide

.. _class_TCPServer:

TCPServer
=========

**Eredita:** :ref:`SocketServer<class_SocketServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un server TCP.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un server TCP. Ascolta le connessioni su una porta e restituisce un :ref:`StreamPeerTCP<class_StreamPeerTCP>` quando riceve una connessione in arrivo.

\ **Nota:** Quando si esporta su Android, assicurarsi di abilitare l'autorizzazione ``INTERNET`` nella preimpostazione d'esportazione Android prima di esportare il progetto o di utilizzare la distribuzione con un clic. Altrimenti, qualsiasi tipo di comunicazione di rete sarà bloccata da Android.

.. rst-class:: classref-reftable-group

Metodi
------------

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

Descrizioni dei metodi
--------------------------------------------

.. _class_TCPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_TCPServer_method_get_local_port>`

Restituisce la porta locale che questo server sta ascoltando.

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_TCPServer_method_listen>`

Ascolta sulla porta ``port`` associata all'indirizzo ``bind_address``.

Se ``bind_address`` è impostato come ``"*"`` (predefinito), il server ascolterà tutti gli indirizzi disponibili (sia IPv4 sia IPv6).

Se ``bind_address`` è impostato come ``"0.0.0.0"`` (per IPv4) o ``"::"`` (per IPv6), il server ascolterà tutti gli indirizzi disponibili che corrispondono a quel tipo di IP.

Se ``bind_address`` è impostato su un indirizzo valido (ad esempio ``"192.168.1.101"``, ``"::1"``, ecc.), il server ascolterà solo sull'interfaccia con quell'indirizzo (o fallirà se non esiste alcuna interfaccia con l'indirizzo specificato).

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`StreamPeerTCP<class_StreamPeerTCP>` **take_connection**\ (\ ) :ref:`🔗<class_TCPServer_method_take_connection>`

Se una connessione è disponibile, restituisce uno StreamPeerTCP con la connessione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
