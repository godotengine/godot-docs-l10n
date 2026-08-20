:github_url: hide

.. _class_StreamPeerGZIP:

StreamPeerGZIP
==============

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un peer di flusso che gestisce la compressione/decompressione di GZIP e deflate.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe consente di comprimere o decomprimere dati attraverso GZIP/deflate con un flusso continuo. Ciò è particolarmente utile quando si comprimono o decomprimono file che devono essere inviati tramite la rete senza doverli allocare tutti in memoria.

Dopo aver avviato il flusso tramite :ref:`start_compression()<class_StreamPeerGZIP_method_start_compression>` (o :ref:`start_decompression()<class_StreamPeerGZIP_method_start_decompression>`), la chiamata a :ref:`StreamPeer.put_partial_data()<class_StreamPeer_method_put_partial_data>` su questo stream comprimerà (o decomprimerà) i dati, scrivendoli nel buffer interno. La chiamata a :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` restituirà i byte in sospeso nel buffer interno e :ref:`StreamPeer.get_partial_data()<class_StreamPeer_method_get_partial_data>` recupererà i byte compressi (o decompressi) da esso. Quando il flusso ha terminato, è necessario chiamare :ref:`finish()<class_StreamPeerGZIP_method_finish>` per assicurarsi che il buffer interno venga svuotato correttamente (assicurarsi di chiamare :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` l'ultima volta per verificare se è necessario leggere altri dati dopo).

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear<class_StreamPeerGZIP_method_clear>`\ (\ )                                                                                                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`finish<class_StreamPeerGZIP_method_finish>`\ (\ )                                                                                                                       |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_compression<class_StreamPeerGZIP_method_start_compression>`\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ )     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_decompression<class_StreamPeerGZIP_method_start_decompression>`\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_StreamPeerGZIP_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_StreamPeerGZIP_method_clear>`

Cancella questo flusso, ripristinando lo stato interno.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_finish:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **finish**\ (\ ) :ref:`🔗<class_StreamPeerGZIP_method_finish>`

Finalizza il flusso, comprimendo qualsiasi blocco bufferizzato rimasto.

È necessario chiamarlo solo durante la compressione.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_start_compression:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_compression**\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) :ref:`🔗<class_StreamPeerGZIP_method_start_compression>`

Avvia il flusso in modalità di compressione con un buffer di dimensione ``buffer_size``, se ``use_deflate`` è ``true`` utilizza deflate invece di GZIP.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_start_decompression:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_decompression**\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) :ref:`🔗<class_StreamPeerGZIP_method_start_decompression>`

Avvia il flusso in modalità di decompressione con un buffer di dimensione ``buffer_size``, se ``use_deflate`` è ``true`` utilizza deflate invece di GZIP.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
