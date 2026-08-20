:github_url: hide

.. _class_ENetPacketPeer:

ENetPacketPeer
==============

**Eredita:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una classe wrapper per un `ENetPeer <http://enet.bespin.org/group__peer.html>`__.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un'implementazione PacketPeer che rappresenta un peer di un :ref:`ENetConnection<class_ENetConnection>`.

Questa classe non può essere istanziata direttamente, ma può essere recuperata durante :ref:`ENetConnection.service()<class_ENetConnection_method_service>` o tramite :ref:`ENetConnection.get_peers()<class_ENetConnection_method_get_peers>`.

\ **Nota:** Quando si esporta su Android, assicurarsi di abilitare l'autorizzazione ``INTERNET`` nella preimpostazione d'esportazione Android prima di esportare il progetto o di utilizzare la distribuzione con un clic. Altrimenti, qualsiasi tipo di comunicazione di rete sarà bloccata da Android.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Documentazione dell'API sul sito web di ENet <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_channels<class_ENetPacketPeer_method_get_channels>`\ (\ ) |const|                                                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_packet_flags<class_ENetPacketPeer_method_get_packet_flags>`\ (\ ) |const|                                                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`get_remote_address<class_ENetPacketPeer_method_get_remote_address>`\ (\ ) |const|                                                                                                       |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_remote_port<class_ENetPacketPeer_method_get_remote_port>`\ (\ ) |const|                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PeerState<enum_ENetPacketPeer_PeerState>` | :ref:`get_state<class_ENetPacketPeer_method_get_state>`\ (\ ) |const|                                                                                                                         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`get_statistic<class_ENetPacketPeer_method_get_statistic>`\ (\ statistic\: :ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>`\ )                                                    |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_active<class_ENetPacketPeer_method_is_active>`\ (\ ) |const|                                                                                                                         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`peer_disconnect<class_ENetPacketPeer_method_peer_disconnect>`\ (\ data\: :ref:`int<class_int>` = 0\ )                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`peer_disconnect_later<class_ENetPacketPeer_method_peer_disconnect_later>`\ (\ data\: :ref:`int<class_int>` = 0\ )                                                                       |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`peer_disconnect_now<class_ENetPacketPeer_method_peer_disconnect_now>`\ (\ data\: :ref:`int<class_int>` = 0\ )                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`ping<class_ENetPacketPeer_method_ping>`\ (\ )                                                                                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`ping_interval<class_ENetPacketPeer_method_ping_interval>`\ (\ ping_interval\: :ref:`int<class_int>`\ )                                                                                  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`reset<class_ENetPacketPeer_method_reset>`\ (\ )                                                                                                                                         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`send<class_ENetPacketPeer_method_send>`\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ )                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_timeout<class_ENetPacketPeer_method_set_timeout>`\ (\ timeout\: :ref:`int<class_int>`, timeout_min\: :ref:`int<class_int>`, timeout_max\: :ref:`int<class_int>`\ )                  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`throttle_configure<class_ENetPacketPeer_method_throttle_configure>`\ (\ interval\: :ref:`int<class_int>`, acceleration\: :ref:`int<class_int>`, deceleration\: :ref:`int<class_int>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ENetPacketPeer_PeerState:

.. rst-class:: classref-enumeration

enum **PeerState**: :ref:`🔗<enum_ENetPacketPeer_PeerState>`

.. _class_ENetPacketPeer_constant_STATE_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECTED** = ``0``

Il peer è disconnesso.

.. _class_ENetPacketPeer_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTING** = ``1``

Il peer sta attualmente tentando di connettersi.

.. _class_ENetPacketPeer_constant_STATE_ACKNOWLEDGING_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ACKNOWLEDGING_CONNECT** = ``2``

Il peer ha riconosciuto la richiesta di connessione.

.. _class_ENetPacketPeer_constant_STATE_CONNECTION_PENDING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTION_PENDING** = ``3``

Il peer si sta attualmente connettendo.

.. _class_ENetPacketPeer_constant_STATE_CONNECTION_SUCCEEDED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTION_SUCCEEDED** = ``4``

Il peer si è connesso con successo, ma non è ancora pronto per comunicare (:ref:`STATE_CONNECTED<class_ENetPacketPeer_constant_STATE_CONNECTED>`).

.. _class_ENetPacketPeer_constant_STATE_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTED** = ``5``

Il peer è attualmente connesso e pronto per comunicare.

.. _class_ENetPacketPeer_constant_STATE_DISCONNECT_LATER:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECT_LATER** = ``6``

Il peer è previsto a disconnettersi quando non avrà più pacchetti in uscita da inviare.

.. _class_ENetPacketPeer_constant_STATE_DISCONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECTING** = ``7``

Il peer si sta attualmente disconnettendo.

.. _class_ENetPacketPeer_constant_STATE_ACKNOWLEDGING_DISCONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ACKNOWLEDGING_DISCONNECT** = ``8``

Il peer ha riconosciuto la richiesta di disconnessione.

.. _class_ENetPacketPeer_constant_STATE_ZOMBIE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ZOMBIE** = ``9``

Il peer ha perso la connessione, ma non è considerato disconnesso veramente (poiché il peer non ha riconosciuto la richiesta di disconnessione).

.. rst-class:: classref-item-separator

----

.. _enum_ENetPacketPeer_PeerStatistic:

.. rst-class:: classref-enumeration

enum **PeerStatistic**: :ref:`🔗<enum_ENetPacketPeer_PeerStatistic>`

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS** = ``0``

Perdita media di pacchetti affidabili come rapporto rispetto a :ref:`PACKET_LOSS_SCALE<class_ENetPacketPeer_constant_PACKET_LOSS_SCALE>`.

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS_VARIANCE** = ``1``

Variazione della perdita di pacchetti.

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS_EPOCH:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS_EPOCH** = ``2``

Il tempo in cui le statistiche sulla perdita di pacchetti sono state aggiornate l'ultima volta (in millisecondi dall'inizio della connessione). L'intervallo per gli aggiornamenti delle statistiche sulla perdita di pacchetti è di 10 secondi e almeno un pacchetto deve essere stato inviato dall'ultimo aggiornamento delle statistiche.

.. _class_ENetPacketPeer_constant_PEER_ROUND_TRIP_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_ROUND_TRIP_TIME** = ``3``

Tempo medio di andata e ritorno per i pacchetti affidabili.

.. _class_ENetPacketPeer_constant_PEER_ROUND_TRIP_TIME_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_ROUND_TRIP_TIME_VARIANCE** = ``4``

Variazione del tempo medio di andata e ritorno.

.. _class_ENetPacketPeer_constant_PEER_LAST_ROUND_TRIP_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_LAST_ROUND_TRIP_TIME** = ``5``

Ultimo tempo di andata e ritorno registrato per un pacchetto affidabile.

.. _class_ENetPacketPeer_constant_PEER_LAST_ROUND_TRIP_TIME_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_LAST_ROUND_TRIP_TIME_VARIANCE** = ``6``

Varianza dell'ultimo tempo registrato di andata e ritorno.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE** = ``7``

Lo stato attuale del throttle del peer.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_LIMIT** = ``8``

Il numero massimo di pacchetti inaffidabili che non dovrebbero essere scartati. Questo valore è sempre maggiore o uguale a ``1``. Il valore iniziale è uguale a :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_COUNTER:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_COUNTER** = ``9``

Valore interno utilizzato per incrementare il contatore di throttle dei pacchetti. Il valore è fissato su ``7`` e non può essere modificato. Probabilmente vorrai invece dare un'occhiata a :ref:`PEER_PACKET_THROTTLE_ACCELERATION<class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_ACCELERATION>`.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_EPOCH:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_EPOCH** = ``10``

Il tempo in cui le statistiche di throttle sono state aggiornate l'ultima volta (in millisecondi dall'inizio della connessione). L'intervallo per gli aggiornamenti delle statistiche di throttle è :ref:`PEER_PACKET_THROTTLE_INTERVAL<class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_INTERVAL>`.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_ACCELERATION:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_ACCELERATION** = ``11``

Il fattore di accelerazione del throttle. Valori più alti faranno sì che ENet si adatti più velocemente alle condizioni fluttuanti di rete, causando l'invio di pacchetti inaffidabili *più* spesso. Il valore predefinito è ``2``.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_DECELERATION:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_DECELERATION** = ``12``

Il fattore di decelerazione del throttle. Valori più alti faranno sì che ENet si adatti più velocemente alle condizioni fluttuanti di rete, causando l'invio di pacchetti inaffidabili *meno* spesso. Il valore predefinito è ``2``.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_INTERVAL:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_INTERVAL** = ``13``

Intervallo in cui deve essere misurato il tempo medio di andata e ritorno più basso, utilizzato dal meccanismo del throttle (in millisecondi). Il valore predefinito è ``5000``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_ENetPacketPeer_constant_PACKET_LOSS_SCALE:

.. rst-class:: classref-constant

**PACKET_LOSS_SCALE** = ``65536`` :ref:`🔗<class_ENetPacketPeer_constant_PACKET_LOSS_SCALE>`

La scala di riferimento per la perdita di pacchetti. Vedi :ref:`get_statistic()<class_ENetPacketPeer_method_get_statistic>` e :ref:`PEER_PACKET_LOSS<class_ENetPacketPeer_constant_PEER_PACKET_LOSS>`.

.. _class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE:

.. rst-class:: classref-constant

**PACKET_THROTTLE_SCALE** = ``32`` :ref:`🔗<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`

Il valore di riferimento per la configurazione del throttle. Il valore predefinito è ``32``. Vedi :ref:`throttle_configure()<class_ENetPacketPeer_method_throttle_configure>`.

.. _class_ENetPacketPeer_constant_FLAG_RELIABLE:

.. rst-class:: classref-constant

**FLAG_RELIABLE** = ``1`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_RELIABLE>`

Marca il pacchetto da inviare come affidabile.

.. _class_ENetPacketPeer_constant_FLAG_UNSEQUENCED:

.. rst-class:: classref-constant

**FLAG_UNSEQUENCED** = ``2`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_UNSEQUENCED>`

Marca il pacchetto da inviare come non sequenziato (inaffidabile).

.. _class_ENetPacketPeer_constant_FLAG_UNRELIABLE_FRAGMENT:

.. rst-class:: classref-constant

**FLAG_UNRELIABLE_FRAGMENT** = ``8`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_UNRELIABLE_FRAGMENT>`

Marca il pacchetto da inviare come inaffidabile anche se è troppo grande e necessita di frammentazione (aumentando la probabilità che venga scartato).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ENetPacketPeer_method_get_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_channels**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_channels>`

Restituisce il numero di canali assegnati per la comunicazione con il peer.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_packet_flags:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_flags**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_packet_flags>`

Restituisce i flag ENet del pacchetto successivo nella coda ricevuta. Vedi le costanti ``FLAG_*`` per i flag dei pacchetti disponibili. Nota che non tutti i flag sono replicati dal peer mittente al peer ricevente.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_remote_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_remote_address**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_remote_address>`

Restituisce l'indirizzo IP di questo peer.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_remote_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_remote_port**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_remote_port>`

Restituisce la porta remota di questo peer.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_state:

.. rst-class:: classref-method

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **get_state**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_state>`

Restituisce lo stato attuale del peer.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_statistic:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_statistic**\ (\ statistic\: :ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>`\ ) :ref:`🔗<class_ENetPacketPeer_method_get_statistic>`

Restituisce la statistica richiesta per questo peer.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_is_active>`

Restituisce ``true`` se il peer è attualmente attivo (cioè il :ref:`ENetConnection<class_ENetConnection>` associato è ancora valido).

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect:

.. rst-class:: classref-method

|void| **peer_disconnect**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect>`

Richiedi una disconnessione da un peer. Un :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>` verrà generato durante :ref:`ENetConnection.service()<class_ENetConnection_method_service>` una volta completata la disconnessione.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect_later:

.. rst-class:: classref-method

|void| **peer_disconnect_later**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect_later>`

Richiede una disconnessione da un peer, ma solo dopo che tutti i pacchetti accodati in uscita sono stati inviati. Un :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>` verrà generato durante :ref:`ENetConnection.service()<class_ENetConnection_method_service>` una volta completata la disconnessione.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect_now:

.. rst-class:: classref-method

|void| **peer_disconnect_now**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect_now>`

Forza una disconnessione immediata da un peer. Non verrà generato alcun :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>`. Non è garantito che il peer esterno riceva la notifica di disconnessione, e viene reimpostato immediatamente alla restituzione da questa funzione.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_ping:

.. rst-class:: classref-method

|void| **ping**\ (\ ) :ref:`🔗<class_ENetPacketPeer_method_ping>`

Invia una richiesta del ping a un peer. ENet richiede automaticamente il ping di tutti i peer connessi a intervalli regolari, tuttavia, questa funzione può essere chiamata per garantire richieste del ping più frequenti.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_ping_interval:

.. rst-class:: classref-method

|void| **ping_interval**\ (\ ping_interval\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_ping_interval>`

Imposta l'intervallo in millisecondi in cui i ping saranno inviati a un peer su ``ping_interval``. I ping sono usati sia per monitorare la vitalità della connessione, sia per regolare dinamicamente il throttle durante i periodi di traffico basso, in modo che il throttle abbia un tempo di risposta ragionevole durante i picchi di traffico. L'intervallo dei ping predefinito è ``500`` millisecondi.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_ENetPacketPeer_method_reset>`

Disconnette forzatamente un peer. L'host esterno rappresentato dal peer non viene informato della disconnessione e scadrà la connessione all'host locale.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_send:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send**\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_send>`

Mette in coda il pacchetto ``packet`` da inviare sul canale ``channel``. Vedi le costanti ``FLAG_*`` per i flag dei pacchetti disponibili.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_set_timeout:

.. rst-class:: classref-method

|void| **set_timeout**\ (\ timeout\: :ref:`int<class_int>`, timeout_min\: :ref:`int<class_int>`, timeout_max\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_set_timeout>`

Imposta i parametri di timeout per un peer. I parametri di timeout controllano come e quando un peer andrà in timeout a causa di un errore nel riconoscere il traffico affidabile. I valori di timeout sono espressi in millisecondi.

Il ``timeout`` è un fattore che, moltiplicato per un valore basato sul tempo medio di andata e ritorno, determinerà il limite di timeout per un pacchetto affidabile. Quando si raggiunge tale limite, il timeout sarà raddoppiato e il peer sarà disconnesso se tale limite ha raggiunto ``timeout_min``. Il parametro ``timeout_max``, d'altra parte, definisce un timeout fisso per il quale qualsiasi pacchetto deve essere riconosciuto o il peer verrà eliminato.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_throttle_configure:

.. rst-class:: classref-method

|void| **throttle_configure**\ (\ interval\: :ref:`int<class_int>`, acceleration\: :ref:`int<class_int>`, deceleration\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_throttle_configure>`

Configura il parametro throttle per un peer.

I pacchetti inaffidabili vengono scartati da ENet in risposta alle diverse condizioni della connessione Internet al peer. Il throttle rappresenta una probabilità che un pacchetto inaffidabile non debba essere scartato e quindi inviato da ENet al peer. Misurando le fluttuazioni nei tempi di andata e ritorno dei pacchetti affidabili nell'intervallo ``interval`` specificato, ENet aumenterà la probabilità della quantità specificata nel parametro ``acceleration`` o la diminuirà della quantità specificata nel parametro ``deceleration`` (entrambi sono rapporti a :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`).

Quando il throttle ha un valore di :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`, nessun pacchetto inaffidabile viene scartato da ENet e quindi verrà inviato il 100% di tutti i pacchetti inaffidabili.

Quando il throttle ha un valore di ``0``, tutti i pacchetti inaffidabili vengono scartati da ENet e quindi verrà inviato lo 0% di tutti i pacchetti inaffidabili.

I valori intermedi per il throttle rappresentano probabilità intermedie tra lo 0% e il 100% di pacchetti inaffidabili inviati. I limiti di larghezza di banda degli host locali ed esterni vengono presi in considerazione per determinare un limite ragionevole per la probabilità di throttle, oltre la quale non dovrebbe aumentare nemmeno nelle migliori condizioni.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
