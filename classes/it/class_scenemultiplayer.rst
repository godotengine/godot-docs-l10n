:github_url: hide

.. _class_SceneMultiplayer:

SceneMultiplayer
================

**Eredita:** :ref:`MultiplayerAPI<class_MultiplayerAPI>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Implementazione API multigiocatore di alto livello.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe è l'implementazione predefinita di :ref:`MultiplayerAPI<class_MultiplayerAPI>`, utilizzata per fornire funzionalità multigiocatore in Godot Engine.

Questa implementazione supporta le RPC tramite :ref:`Node.rpc()<class_Node_method_rpc>` e :ref:`Node.rpc_id()<class_Node_method_rpc_id>` e richiede che a :ref:`MultiplayerAPI.rpc()<class_MultiplayerAPI_method_rpc>` venga passato un :ref:`Node<class_Node>` (fallirà per gli altri tipi di oggetti).

Questa implementazione fornisce inoltre la replicazione del :ref:`SceneTree<class_SceneTree>` tramite i nodi :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` e :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` e la risorsa :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`.

\ **Nota:** Il protocollo della :ref:`MultiplayerAPI<class_MultiplayerAPI>` è un dettaglio di implementazione e non è pensato per essere utilizzato da server non Godot. Potrebbe cambiare senza preavviso.

\ **Nota:** Quando si esporta su Android, assicurarsi di abilitare l'autorizzazione ``INTERNET`` nella preimpostazione d'esportazione Android prima di esportare il progetto o di utilizzare la distribuzione con un clic. Altrimenti, qualsiasi tipo di comunicazione di rete sarà bloccata da Android.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`allow_object_decoding<class_SceneMultiplayer_property_allow_object_decoding>`   | ``false``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`Callable<class_Callable>` | :ref:`auth_callback<class_SceneMultiplayer_property_auth_callback>`                   | ``Callable()``   |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`auth_timeout<class_SceneMultiplayer_property_auth_timeout>`                     | ``3.0``          |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`max_delta_packet_size<class_SceneMultiplayer_property_max_delta_packet_size>`   | ``65535``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`max_sync_packet_size<class_SceneMultiplayer_property_max_sync_packet_size>`     | ``1350``         |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`refuse_new_connections<class_SceneMultiplayer_property_refuse_new_connections>` | ``false``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`root_path<class_SceneMultiplayer_property_root_path>`                           | ``NodePath("")`` |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`server_relay<class_SceneMultiplayer_property_server_relay>`                     | ``true``         |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_SceneMultiplayer_method_clear>`\ (\ )                                                                                                                                                                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`complete_auth<class_SceneMultiplayer_method_complete_auth>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`disconnect_peer<class_SceneMultiplayer_method_disconnect_peer>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_authenticating_peers<class_SceneMultiplayer_method_get_authenticating_peers>`\ (\ )                                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`send_auth<class_SceneMultiplayer_method_send_auth>`\ (\ id\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`send_bytes<class_SceneMultiplayer_method_send_bytes>`\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, id\: :ref:`int<class_int>` = 0, mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` = 2, channel\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_SceneMultiplayer_signal_peer_authenticating:

.. rst-class:: classref-signal

**peer_authenticating**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authenticating>`

Emesso quando il :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` di questa MultiplayerAPI si connette a un nuovo peer e viene impostato un :ref:`auth_callback<class_SceneMultiplayer_property_auth_callback>` valido. In questo caso, :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` non verrà emesso finché non verrà chiamato :ref:`complete_auth()<class_SceneMultiplayer_method_complete_auth>` con l'``id`` peer specificato. In questo stato, il peer non verrà incluso nella lista restituita da :ref:`MultiplayerAPI.get_peers()<class_MultiplayerAPI_method_get_peers>` (ma in quella restituita da :ref:`get_authenticating_peers()<class_SceneMultiplayer_method_get_authenticating_peers>`) e verranno inviati o ricevuti solo i dati di autenticazione. Vedi :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>` per inviare i dati di autenticazione.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_authentication_failed:

.. rst-class:: classref-signal

**peer_authentication_failed**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authentication_failed>`

Emesso quando :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` di questa MultiplayerAPI si disconnette da un peer per il quale l'autenticazione non è stata ancora completata. Vedi :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_packet:

.. rst-class:: classref-signal

**peer_packet**\ (\ id\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_packet>`

Emesso quando :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` di questa MultiplayerAPI riceve un pacchetto (``packet``) con dati personalizzati (vedi :ref:`send_bytes()<class_SceneMultiplayer_method_send_bytes>`). ID è l'ID peer del peer che ha inviato il pacchetto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SceneMultiplayer_property_allow_object_decoding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_object_decoding** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_allow_object_decoding>`

.. rst-class:: classref-property-setget

- |void| **set_allow_object_decoding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_object_decoding_allowed**\ (\ )

Se ``true``, la MultiplayerAPI consentirà la codifica e la decodifica di oggetti durante le RPC.

\ **Attenzione:** Un oggetto deserializzato può contenere codice che verrà eseguito. Non usare questa opzione se l'oggetto serializzato arriva da fonti sconosciute per evitare eventuali rischi di sicurezza come l'esecuzione di codice remoto.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_callback:

.. rst-class:: classref-property

:ref:`Callable<class_Callable>` **auth_callback** = ``Callable()`` :ref:`🔗<class_SceneMultiplayer_property_auth_callback>`

.. rst-class:: classref-property-setget

- |void| **set_auth_callback**\ (\ value\: :ref:`Callable<class_Callable>`\ )
- :ref:`Callable<class_Callable>` **get_auth_callback**\ (\ )

Il callback da eseguire quando si ricevono dati di autenticazione inviati tramite :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>`. Se il :ref:`Callable<class_Callable>` è vuoto (predefinito), i peer verranno accettati automaticamente non appena si connettono.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **auth_timeout** = ``3.0`` :ref:`🔗<class_SceneMultiplayer_property_auth_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_auth_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auth_timeout**\ (\ )

Se impostato su un valore maggiore di ``0.0``, la durata massima in secondi in cui i peer possono rimanere nello stato di autenticazione, dopodiché l'autenticazione fallirà automaticamente. Vedi i segnali :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>` e :ref:`peer_authentication_failed<class_SceneMultiplayer_signal_peer_authentication_failed>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_delta_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_delta_packet_size** = ``65535`` :ref:`🔗<class_SceneMultiplayer_property_max_delta_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_delta_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_delta_packet_size**\ (\ )

Dimensione massima di ogni pacchetto delta. Valori più alti aumentano la possibilità di ricevere aggiornamenti completi in un singolo frame, ma anche la possibilità di causare congestioni di rete (latenza più elevata, disconnessioni). Vedi :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_sync_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_sync_packet_size** = ``1350`` :ref:`🔗<class_SceneMultiplayer_property_max_sync_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_sync_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_sync_packet_size**\ (\ )

Dimensione massima di ogni pacchetto di sincronizzazione. Valori più alti aumentano la possibilità di ricevere aggiornamenti completi in un singolo frame, ma anche la possibilità di perdere i pacchetti. Vedi :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_refuse_new_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **refuse_new_connections** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_refuse_new_connections>`

.. rst-class:: classref-property-setget

- |void| **set_refuse_new_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_refusing_new_connections**\ (\ )

Se ``true``, il :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` della MultiplayerAPI rifiuta le nuove connessioni in arrivo.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_root_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_path** = ``NodePath("")`` :ref:`🔗<class_SceneMultiplayer_property_root_path>`

.. rst-class:: classref-property-setget

- |void| **set_root_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_path**\ (\ )

Il percorso radice da usare per le RPC e replica. Invece di un percorso assoluto, verrà usato un percorso relativo per trovare il nodo su cui deve essere eseguita la RPC.

Ciò consente effettivamente di avere diversi rami dell'albero di scene da gestire tramite diverse MultiplayerAPI, consentendo ad esempio di eseguire sia il client sia il server nella stessa scena.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_server_relay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **server_relay** = ``true`` :ref:`🔗<class_SceneMultiplayer_property_server_relay>`

.. rst-class:: classref-property-setget

- |void| **set_server_relay_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_server_relay_enabled**\ (\ )

Abilita o disabilita la funzionalità del server che notifica ai client la connessione/disconnessione di altri peer e inoltra messaggi tra di loro. Quando questa opzione è ``false``, i client non saranno automaticamente informati di altri peer e non saranno in grado di inviare loro pacchetti tramite il server.

\ **Nota:** Modificare questa opzione mentre altri peer sono connessi potrebbe portare a comportamenti imprevisti.

\ **Nota:** Il supporto per questa funzionalità potrebbe dipendere dalla configurazione del :ref:`MultiplayerPeer<class_MultiplayerPeer>` attuale. Vedi :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SceneMultiplayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_clear>`

Cancella lo stato attuale della rete SceneMultiplayer (non dovresti chiamare questa funzione se non sai cosa stai facendo).

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_complete_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **complete_auth**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_complete_auth>`

Contrassegna il passaggio di autenticazione come completato per il peer remoto identificato da ``id``. Il segnale :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` verrà emesso per questo peer una volta che anche il lato remoto avrà completato l'autenticazione. Non sono previsti ulteriori messaggi di autenticazione da questo peer.

Se un peer si disconnette prima di completare l'autenticazione, a causa di un problema di rete, della scadenza di :ref:`auth_timeout<class_SceneMultiplayer_property_auth_timeout>` o della chiamata manuale di :ref:`disconnect_peer()<class_SceneMultiplayer_method_disconnect_peer>`, verrà emesso il segnale :ref:`peer_authentication_failed<class_SceneMultiplayer_signal_peer_authentication_failed>` al posto di :ref:`MultiplayerAPI.peer_disconnected<class_MultiplayerAPI_signal_peer_disconnected>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_disconnect_peer:

.. rst-class:: classref-method

|void| **disconnect_peer**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_disconnect_peer>`

Disconnette il peer identificato da ``id``, rimuovendolo dalla lista dei peer connessi e chiudendo la connessione sottostante con esso.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_get_authenticating_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_authenticating_peers**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_get_authenticating_peers>`

Restituisce gli ID dei peer che stanno attualmente tentando di autenticarsi con questa :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_auth**\ (\ id\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_method_send_auth>`

Invia i dati specificati (``data``) al peer remoto identificato da ``id`` come parte di un messaggio di autenticazione. Può essere utilizzato per autenticare i peer e controllare quando :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` viene emesso (e il peer remoto viene accettato come uno dei peer connessi).

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_bytes:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_bytes**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, id\: :ref:`int<class_int>` = 0, mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` = 2, channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneMultiplayer_method_send_bytes>`

Invia i dati grezzi ``bytes`` a un peer specifico identificato da ``id`` (vedi :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`). L'ID predefinito è ``0``, ovvero viene trasmesso a tutti i peer.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
