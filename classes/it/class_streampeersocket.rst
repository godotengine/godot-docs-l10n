:github_url: hide

.. _class_StreamPeerSocket:

StreamPeerSocket
================

**Eredita:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`StreamPeerTCP<class_StreamPeerTCP>`, :ref:`StreamPeerUDS<class_StreamPeerUDS>`

Classe base astratta per interagire con i flussi socket.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

StreamPeerSocket è una classe base astratta che definisce il comportamento comune per i flussi basati su socket.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`disconnect_from_host<class_StreamPeerSocket_method_disconnect_from_host>`\ (\ ) |
   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerSocket_Status>` | :ref:`get_status<class_StreamPeerSocket_method_get_status>`\ (\ ) |const|             |
   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`poll<class_StreamPeerSocket_method_poll>`\ (\ )                                 |
   +---------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_StreamPeerSocket_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerSocket_Status>`

.. _class_StreamPeerSocket_constant_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_NONE** = ``0``

Lo stato iniziale dello **StreamPeerSocket**. Questo è anche lo stato dopo la disconnessione.

.. _class_StreamPeerSocket_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_CONNECTING** = ``1``

Uno stato che rappresenta uno **StreamPeerSocket** che si sta connettendo a un host.

.. _class_StreamPeerSocket_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_CONNECTED** = ``2``

Uno stato che rappresenta uno **StreamPeerSocket** connesso a un host.

.. _class_StreamPeerSocket_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_ERROR** = ``3``

Uno stato che rappresenta uno **StreamPeerSocket** in stato di errore.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_StreamPeerSocket_method_disconnect_from_host:

.. rst-class:: classref-method

|void| **disconnect_from_host**\ (\ ) :ref:`🔗<class_StreamPeerSocket_method_disconnect_from_host>`

Si disconnette dall'host.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerSocket_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerSocket_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerSocket_method_get_status>`

Restituisce lo stato della connessione.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerSocket_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_StreamPeerSocket_method_poll>`

Interroga il socket, aggiornandone lo stato. Vedi :ref:`get_status()<class_StreamPeerSocket_method_get_status>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
