:github_url: hide

.. _class_WebSocketMultiplayerPeer:

WebSocketMultiplayerPeer
========================

**Eredita:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe di base per server WebSocket e client.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe di base per server WebSocket e client, permettendo loro di essere utilizzati come peer multigiocatore per il :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

\ **Nota:** Quando si esporta su Android, assicurarsi di abilitare l'autorizzazione ``INTERNET`` nella preimpostazione d'esportazione Android prima di esportare il progetto o di utilizzare la distribuzione con un clic. Altrimenti, qualsiasi tipo di comunicazione di rete sarà bloccata da Android.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`handshake_headers<class_WebSocketMultiplayerPeer_property_handshake_headers>`       | ``PackedStringArray()`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                         | :ref:`handshake_timeout<class_WebSocketMultiplayerPeer_property_handshake_timeout>`       | ``3.0``                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`inbound_buffer_size<class_WebSocketMultiplayerPeer_property_inbound_buffer_size>`   | ``65535``               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`max_queued_packets<class_WebSocketMultiplayerPeer_property_max_queued_packets>`     | ``4096``                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`outbound_buffer_size<class_WebSocketMultiplayerPeer_property_outbound_buffer_size>` | ``65535``               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`supported_protocols<class_WebSocketMultiplayerPeer_property_supported_protocols>`   | ``PackedStringArray()`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`create_client<class_WebSocketMultiplayerPeer_method_create_client>`\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`create_server<class_WebSocketMultiplayerPeer_method_create_server>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", tls_server_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`WebSocketPeer<class_WebSocketPeer>` | :ref:`get_peer<class_WebSocketMultiplayerPeer_method_get_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`               | :ref:`get_peer_address<class_WebSocketMultiplayerPeer_method_get_peer_address>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_peer_port<class_WebSocketMultiplayerPeer_method_get_peer_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_WebSocketMultiplayerPeer_property_handshake_headers:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **handshake_headers** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_handshake_headers>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_headers**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_handshake_headers**\ (\ )

Gli header aggiuntivi da usare durante l'handshake. Vedi :ref:`WebSocketPeer.handshake_headers<class_WebSocketPeer_property_handshake_headers>` per ulteriori dettagli.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_handshake_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **handshake_timeout** = ``3.0`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_handshake_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_handshake_timeout**\ (\ )

Il tempo massimo che ogni peer può rimanere in uno stato di connessione prima di essere rinunciato.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_inbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **inbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_inbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_inbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_inbound_buffer_size**\ (\ )

La dimensione del buffer in entrata per i peer collegati. Vedi :ref:`WebSocketPeer.inbound_buffer_size<class_WebSocketPeer_property_inbound_buffer_size>` per ulteriori dettagli.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_max_queued_packets:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_queued_packets** = ``4096`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_max_queued_packets>`

.. rst-class:: classref-property-setget

- |void| **set_max_queued_packets**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_queued_packets**\ (\ )

Il numero massimo di pacchetti in coda per i peer collegati. Vedi :ref:`WebSocketPeer.max_queued_packets<class_WebSocketPeer_property_max_queued_packets>` per ulteriori dettagli.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_outbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_outbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_outbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outbound_buffer_size**\ (\ )

La dimensione del buffer in uscita per i peer collegati. Vedi :ref:`WebSocketPeer.outbound_buffer_size<class_WebSocketPeer_property_outbound_buffer_size>` per ulteriori dettagli.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_supported_protocols:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **supported_protocols** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_supported_protocols>`

.. rst-class:: classref-property-setget

- |void| **set_supported_protocols**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_supported_protocols**\ (\ )

I sotto-protocolli dei WebSocket supportati. Vedi :ref:`WebSocketPeer.supported_protocols<class_WebSocketPeer_property_supported_protocols>` per ulteriori dettagli.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_WebSocketMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketMultiplayerPeer_method_create_client>`

Avvia un nuovo client multigiocatore che si connette al dato ``url``. I certificati TLS saranno verificati contro il nome host durante la connessione utilizzando il protocollo ``wss://``. È possibile passare il parametro opzionale ``tls_client_options`` per personalizzare le autorità di certificazione di fiducia, o disabilitare la verifica dei nomi comuni. Vedi :ref:`TLSOptions.client()<class_TLSOptions_method_client>` e :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

\ **Nota:** Si raccomanda di specificare la parte di schema dell'URL, ossia l'``url`` dovrebbe iniziare con ``ws://`` o ``wss://``.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", tls_server_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketMultiplayerPeer_method_create_server>`

Avvia un nuovo server multigiocatore che ascolta la porta ``port``. È possibile specificare facoltativamente un ``bind_address``, e fornire valide opzioni (``tls_server_options``) per utilizzare TLS. Vedi :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`WebSocketPeer<class_WebSocketPeer>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer>`

Restituisce il :ref:`WebSocketPeer<class_WebSocketPeer>` associato al ``peer_id`` fornito.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_peer_address**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer_address>`

Restituisce l'indirizzo IP del peer fornito.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_peer_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer_port>`

Restituisce la porta remota del peer fornito.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
