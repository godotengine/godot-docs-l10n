:github_url: hide

.. _class_ENetConnection:

ENetConnection
==============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una classe wrapper per un `ENetHost <http://enet.bespin.org/group__host.html>`__.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Lo scopo di ENet è quello di fornire un livello di comunicazione di rete relativamente leggero, semplice e robusto al di sopra di UDP (User Datagram Protocol).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Documentazione dell'API sul sito web di ENet <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`bandwidth_limit<class_ENetConnection_method_bandwidth_limit>`\ (\ in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`broadcast<class_ENetConnection_method_broadcast>`\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ )                                                                                                                                               |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`channel_limit<class_ENetConnection_method_channel_limit>`\ (\ limit\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`compress<class_ENetConnection_method_compress>`\ (\ mode\: :ref:`CompressionMode<enum_ENetConnection_CompressionMode>`\ )                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ENetPacketPeer<class_ENetPacketPeer>`                              | :ref:`connect_to_host<class_ENetConnection_method_connect_to_host>`\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channels\: :ref:`int<class_int>` = 0, data\: :ref:`int<class_int>` = 0\ )                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`create_host<class_ENetConnection_method_create_host>`\ (\ max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ )                                                                                            |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`create_host_bound<class_ENetConnection_method_create_host_bound>`\ (\ bind_address\: :ref:`String<class_String>`, bind_port\: :ref:`int<class_int>`, max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`destroy<class_ENetConnection_method_destroy>`\ (\ )                                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`dtls_client_setup<class_ENetConnection_method_dtls_client_setup>`\ (\ hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )                                                                                                                                                  |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`dtls_server_setup<class_ENetConnection_method_dtls_server_setup>`\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ )                                                                                                                                                                                                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`flush<class_ENetConnection_method_flush>`\ (\ )                                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                    | :ref:`get_local_port<class_ENetConnection_method_get_local_port>`\ (\ ) |const|                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                    | :ref:`get_max_channels<class_ENetConnection_method_get_max_channels>`\ (\ ) |const|                                                                                                                                                                                                                                                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`ENetPacketPeer<class_ENetPacketPeer>`\] | :ref:`get_peers<class_ENetConnection_method_get_peers>`\ (\ )                                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                | :ref:`pop_statistic<class_ENetConnection_method_pop_statistic>`\ (\ statistic\: :ref:`HostStatistic<enum_ENetConnection_HostStatistic>`\ )                                                                                                                                                                                          |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`refuse_new_connections<class_ENetConnection_method_refuse_new_connections>`\ (\ refuse\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                | :ref:`service<class_ENetConnection_method_service>`\ (\ timeout\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                                                                                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`socket_send<class_ENetConnection_method_socket_send>`\ (\ destination_address\: :ref:`String<class_String>`, destination_port\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ENetConnection_CompressionMode:

.. rst-class:: classref-enumeration

enum **CompressionMode**: :ref:`🔗<enum_ENetConnection_CompressionMode>`

.. _class_ENetConnection_constant_COMPRESS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_NONE** = ``0``

Nessuna compressione. Questa utilizza la maggiore larghezza di banda, ma ha il vantaggio di richiedere meno risorse sulla CPU. Questa opzione può anche essere utilizzata per facilitare il debug di rete attraverso strumenti come Wireshark.

.. _class_ENetConnection_constant_COMPRESS_RANGE_CODER:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_RANGE_CODER** = ``1``

La codifica integrata di ENet. Funziona bene su pacchetti piccoli, ma non è l'algoritmo più efficiente per pacchetti più grandi di 4 KB.

.. _class_ENetConnection_constant_COMPRESS_FASTLZ:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_FASTLZ** = ``2``

Compressione `FastLZ <https://fastlz.org/>`__. Questa opzione utilizza meno risorse sulla CPU rispetto a :ref:`COMPRESS_ZLIB<class_ENetConnection_constant_COMPRESS_ZLIB>`, a scapito di usare più larghezza di banda.

.. _class_ENetConnection_constant_COMPRESS_ZLIB:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_ZLIB** = ``3``

Compressione `Zlib <https://www.zlib.net/>`__. Questa opzione utilizza meno larghezza di banda rispetto a :ref:`COMPRESS_FASTLZ<class_ENetConnection_constant_COMPRESS_FASTLZ>`, a scapito di usare più risorse sulla CPU.

.. _class_ENetConnection_constant_COMPRESS_ZSTD:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_ZSTD** = ``4``

Compressione `Zstandard <https://facebook.github.io/zstd/>`__. Nota che questo algoritmo non è molto efficiente per pacchetti più piccoli di 4 KB. Pertanto, si consiglia di utilizzare altri algoritmi di compressione nella maggior parte dei casi.

.. rst-class:: classref-item-separator

----

.. _enum_ENetConnection_EventType:

.. rst-class:: classref-enumeration

enum **EventType**: :ref:`🔗<enum_ENetConnection_EventType>`

.. _class_ENetConnection_constant_EVENT_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_ERROR** = ``-1``

Si è verificato un errore durante :ref:`service()<class_ENetConnection_method_service>`. Sarà probabilmente necessario distruggere l'host attraverso :ref:`destroy()<class_ENetConnection_method_destroy>` e ricrearlo.

.. _class_ENetConnection_constant_EVENT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_NONE** = ``0``

Nessun evento si è verificato entro il limite di tempo specificato.

.. _class_ENetConnection_constant_EVENT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_CONNECT** = ``1``

Una richiesta di connessione avviata da enet_host_connect è stata completata. L'array conterrà il peer che si è connesso con successo.

.. _class_ENetConnection_constant_EVENT_DISCONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_DISCONNECT** = ``2``

Un peer si è disconnesso. Questo evento viene generato al termine con successo di una disconnessione avviata da :ref:`ENetPacketPeer.peer_disconnect()<class_ENetPacketPeer_method_peer_disconnect>`, se un peer è scaduto oppure se una richiesta di connessione inizializzata da :ref:`connect_to_host()<class_ENetConnection_method_connect_to_host>` è scaduta. L'array conterrà il peer che si è disconnesso. Il campo dei dati contiene i dati forniti dall'utente che descrivono la disconnessione, oppure 0, se non sono disponibili.

.. _class_ENetConnection_constant_EVENT_RECEIVE:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_RECEIVE** = ``3``

Un pacchetto è stato ricevuto da un peer. L'array conterrà il peer che ha inviato il pacchetto e il numero del canale su cui è stato ricevuto il pacchetto. Il pacchetto ricevuto verrà messo in coda al :ref:`ENetPacketPeer<class_ENetPacketPeer>` associato.

.. rst-class:: classref-item-separator

----

.. _enum_ENetConnection_HostStatistic:

.. rst-class:: classref-enumeration

enum **HostStatistic**: :ref:`🔗<enum_ENetConnection_HostStatistic>`

.. _class_ENetConnection_constant_HOST_TOTAL_SENT_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_SENT_DATA** = ``0``

Dati inviati in totale.

.. _class_ENetConnection_constant_HOST_TOTAL_SENT_PACKETS:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_SENT_PACKETS** = ``1``

Pacchetti UDP inviati in totale.

.. _class_ENetConnection_constant_HOST_TOTAL_RECEIVED_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_RECEIVED_DATA** = ``2``

Dati ricevuti in totale.

.. _class_ENetConnection_constant_HOST_TOTAL_RECEIVED_PACKETS:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_RECEIVED_PACKETS** = ``3``

Pacchetti UDP ricevuti in totale.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ENetConnection_method_bandwidth_limit:

.. rst-class:: classref-method

|void| **bandwidth_limit**\ (\ in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_bandwidth_limit>`

Regola i limiti di larghezza di banda di un host.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_broadcast:

.. rst-class:: classref-method

|void| **broadcast**\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetConnection_method_broadcast>`

Mette in coda un pacchetto (``packet``) da inviare a tutti i peer associati all'host tramite il canale ``channel`` specificato. Vedi le costanti :ref:`ENetPacketPeer<class_ENetPacketPeer>` ``FLAG_*`` per i flag dei pacchetti disponibili.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_channel_limit:

.. rst-class:: classref-method

|void| **channel_limit**\ (\ limit\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetConnection_method_channel_limit>`

Limita il numero massimo di canali consentiti per le future connessioni in entrata.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_compress:

.. rst-class:: classref-method

|void| **compress**\ (\ mode\: :ref:`CompressionMode<enum_ENetConnection_CompressionMode>`\ ) :ref:`🔗<class_ENetConnection_method_compress>`

Imposta il metodo di compressione utilizzato per i pacchetti di rete. Questi hanno diversi compromessi tra velocità di compressione e larghezza di banda, potresti dover testare quale funziona meglio per il tuo caso.

\ **Nota:** La progettazione di rete della maggior parte dei giochi prevede l'invio frequente di molti piccoli pacchetti (inferiori a 4 KB ciascuno). In caso di dubbi, si consiglia di mantenere l'algoritmo di compressione predefinito poiché funziona meglio su questi piccoli pacchetti.

\ **Nota:** La modalità di compressione deve essere impostata sullo stesso valore sia sul server sia su tutti i suoi client. I client non riusciranno a connettersi se la loro modalità di compressione impostata è diversa da quella impostata sul server.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_connect_to_host:

.. rst-class:: classref-method

:ref:`ENetPacketPeer<class_ENetPacketPeer>` **connect_to_host**\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channels\: :ref:`int<class_int>` = 0, data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_connect_to_host>`

Avvia una connessione all'indirizzo esterno ``address``, utilizzando la porta ``port`` e allocando i canali ``channels``. Un ``data`` facoltativo può essere passato durante la connessione sotto forma di un intero a 32 bit.

\ **Nota:** Bisogna chiamare :ref:`create_host()<class_ENetConnection_method_create_host>` o :ref:`create_host_bound()<class_ENetConnection_method_create_host_bound>` su entrambi i lati prima di chiamare questo metodo.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_create_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_host**\ (\ max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_create_host>`

Crea un ENetHost che consente fino a ``max_peers`` peer connessi, ognuno dei quali alloca fino a ``max_channels`` canali, limitando facoltativamente la larghezza di banda a ``in_bandwidth`` e ``out_bandwidth`` (se maggiori di zero).

Questo metodo associa una porta UDP dinamica casuale disponibile sulla macchina host all'indirizzo *non specificato*. Usa :ref:`create_host_bound()<class_ENetConnection_method_create_host_bound>` per specificare l'indirizzo e la porta.

\ **Nota:** È necessario creare un host sia nel client sia nel server per stabilire una connessione.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_create_host_bound:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_host_bound**\ (\ bind_address\: :ref:`String<class_String>`, bind_port\: :ref:`int<class_int>`, max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_create_host_bound>`

Crea un ENetHost associato all'indirizzo ``bind_address`` e porta ``bind_port`` specificati, che consente fino a ``max_peers`` peer connessi, ognuno dei quali alloca fino a ``max_channels`` canali, limitando facoltativamente la larghezza di banda a ``in_bandwidth`` e ``out_bandwidth`` (se maggiori di zero).

\ **Nota:** È necessario creare un host sia nel client sia nel server per stabilire una connessione.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_destroy:

.. rst-class:: classref-method

|void| **destroy**\ (\ ) :ref:`🔗<class_ENetConnection_method_destroy>`

Distrugge l'host e tutte le risorse associate ad esso.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_dtls_client_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **dtls_client_setup**\ (\ hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_ENetConnection_method_dtls_client_setup>`

Configura questo ENetHost per usare l'estensione Godot personalizzata che consente la crittografia DTLS per i client ENet. Chiamalo prima di :ref:`connect_to_host()<class_ENetConnection_method_connect_to_host>` per fare in modo che ENet si connetta usando DTLS, convalidando il certificato del server rispetto a ``hostname``. È possibile passare facoltativamente ``client_options`` per personalizzare le autorità di certificazione attendibili o disabilitare la verifica del nome comune. Vedi :ref:`TLSOptions.client()<class_TLSOptions_method_client>` e :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_dtls_server_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **dtls_server_setup**\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_ENetConnection_method_dtls_server_setup>`

Configura questo ENetHost per usare l'estensione personalizzata di Godot che consente la crittografia DTLS per i server ENet. Chiamalo subito dopo :ref:`create_host_bound()<class_ENetConnection_method_create_host_bound>` per fare in modo che ENet si aspetti che i peer si connettano usando DTLS. Vedi :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_flush:

.. rst-class:: classref-method

|void| **flush**\ (\ ) :ref:`🔗<class_ENetConnection_method_flush>`

Invia tutti i pacchetti in coda sull'host specificato ai peer designati.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_ENetConnection_method_get_local_port>`

Restituisce la porta locale a cui questo peer è associato.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_max_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_channels**\ (\ ) |const| :ref:`🔗<class_ENetConnection_method_get_max_channels>`

Restituisce il numero massimo di canali consentiti per i peer connessi.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_peers:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ENetPacketPeer<class_ENetPacketPeer>`\] **get_peers**\ (\ ) :ref:`🔗<class_ENetConnection_method_get_peers>`

Restituisce la lista dei peer associati a questo host.

\ **Nota:** Questa lista potrebbe includere alcuni peer che non sono completamente connessi o che si stanno disconnettendo.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_pop_statistic:

.. rst-class:: classref-method

:ref:`float<class_float>` **pop_statistic**\ (\ statistic\: :ref:`HostStatistic<enum_ENetConnection_HostStatistic>`\ ) :ref:`🔗<class_ENetConnection_method_pop_statistic>`

Restituisce e reimposta le statistiche dell'host.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_refuse_new_connections:

.. rst-class:: classref-method

|void| **refuse_new_connections**\ (\ refuse\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ENetConnection_method_refuse_new_connections>`

Configura il server DTLS per cancellare automaticamente le nuove connessioni.

\ **Nota:** Questo metodo è rilevante solo dopo aver chiamato :ref:`dtls_server_setup()<class_ENetConnection_method_dtls_server_setup>`.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_service:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **service**\ (\ timeout\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_service>`

Attende gli eventi su questa connessione e sposta i pacchetti tra l'host e i suoi peer, con il ``timeout`` fornito (in millisecondi). L':ref:`Array<class_Array>` restituito avrà 4 elementi. Un :ref:`EventType<enum_ENetConnection_EventType>`, l':ref:`ENetPacketPeer<class_ENetPacketPeer>` che ha generato l'evento, i dati associati all'evento (se presenti), il canale associato all'evento (se presente). Se l'evento generato è :ref:`EVENT_RECEIVE<class_ENetConnection_constant_EVENT_RECEIVE>`, il pacchetto ricevuto verrà messo in coda all':ref:`ENetPacketPeer<class_ENetPacketPeer>` associato.

Chiama questa funzione regolarmente per gestire connessioni, disconnessioni e per ricevere nuovi pacchetti.

\ **Nota:** Questo metodo deve essere chiamato su entrambi i lati coinvolti nell'evento (host emittente e ricevente).

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_socket_send:

.. rst-class:: classref-method

|void| **socket_send**\ (\ destination_address\: :ref:`String<class_String>`, destination_port\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ENetConnection_method_socket_send>`

Invia il pacchetto ``packet`` verso una destinazione dall'indirizzo e dalla porta attualmente associati a questa istanza ENetConnection.

Ciò è utile in quanto serve a stabilire voci nelle tabelle di routing NAT su tutti i dispositivi tra questa istanza associata e Internet pubblico, consentendo ai pacchetti di connessione di un eventuale client di essere indirizzati all'indietro attraverso i dispositivi NAT tra Internet pubblico e questo host.

Ciò richiede sapere in anticipo l'indirizzo e la porta di comunicazione di un eventuale client come visti da Internet pubblico, dopo che tutti i dispositivi NAT hanno gestito la loro richiesta di connessione. È possibile ottenere queste informazioni da un servizio `STUN <https://it.wikipedia.org/wiki/STUN>`__ e bisogna passarle al proprio host da un'entità che non sia l'eventuale client. Ciò non funzionerà mai per un client dietro un NAT simmetrico a causa della natura dell'algoritmo di routing NAT simmetrico, poiché non è possibile sapere in anticipo il loro IP e la loro porta.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
