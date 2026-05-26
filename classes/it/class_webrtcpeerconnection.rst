:github_url: hide

.. _class_WebRTCPeerConnection:

WebRTCPeerConnection
====================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>`

Interfaccia per una connessione di peer via WebRTC.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A WebRTC connection between the local computer and a remote peer. Provides an interface to connect, maintain, and monitor the connection.

Setting up a WebRTC connection between two peers may not seem a trivial task, but it can be broken down into 3 main steps:

- The peer that wants to initiate the connection (``A`` from now on) creates an offer and sends it to the other peer (``B`` from now on).

- ``B`` receives the offer, generates an answer, and sends it to ``A``.

- ``A`` and ``B`` then generate and exchange ICE candidates with each other.

After these steps, the connection should be established. Refer to the linked tutorials for details.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`WebRTC documentation <../tutorials/networking/webrtc>`

- :doc:`API Multigiocatore di alto livello <../tutorials/networking/high_level_multiplayer>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`add_ice_candidate<class_WebRTCPeerConnection_method_add_ice_candidate>`\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`close<class_WebRTCPeerConnection_method_close>`\ (\ )                                                                                                                                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`                 | :ref:`create_data_channel<class_WebRTCPeerConnection_method_create_data_channel>`\ (\ label\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ )            |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`create_offer<class_WebRTCPeerConnection_method_create_offer>`\ (\ )                                                                                                                   |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` | :ref:`get_connection_state<class_WebRTCPeerConnection_method_get_connection_state>`\ (\ ) |const|                                                                                           |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>`   | :ref:`get_gathering_state<class_WebRTCPeerConnection_method_get_gathering_state>`\ (\ ) |const|                                                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>`   | :ref:`get_signaling_state<class_WebRTCPeerConnection_method_get_signaling_state>`\ (\ ) |const|                                                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`initialize<class_WebRTCPeerConnection_method_initialize>`\ (\ configuration\: :ref:`Dictionary<class_Dictionary>` = {}\ )                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`poll<class_WebRTCPeerConnection_method_poll>`\ (\ )                                                                                                                                   |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_default_extension<class_WebRTCPeerConnection_method_set_default_extension>`\ (\ extension_class\: :ref:`StringName<class_StringName>`\ ) |static|                                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`set_local_description<class_WebRTCPeerConnection_method_set_local_description>`\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ )                          |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`set_remote_description<class_WebRTCPeerConnection_method_set_remote_description>`\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ )                        |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_WebRTCPeerConnection_signal_data_channel_received:

.. rst-class:: classref-signal

**data_channel_received**\ (\ channel\: :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_data_channel_received>`

Emesso quando viene ricevuto un nuovo canale in banda, ossia quando il canale è stato creato con ``negotiated: false`` (predefinito).

L'oggetto sarà un'istanza di :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`. È necessario mantenere un riferimento ad esso o sarà chiuso automaticamente. Vedi :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_ice_candidate_created:

.. rst-class:: classref-signal

**ice_candidate_created**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_ice_candidate_created>`

Emesso quando viene creato un nuovo candidato ICE. I tre parametri dovrebbero essere trasmessi al peer remoto sul server di segnalazione.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_session_description_created:

.. rst-class:: classref-signal

**session_description_created**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_session_description_created>`

Emesso dopo una chiamata avvenuta con successo a :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>` o :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>` (quando genera una risposta). I parametri dovrebbero essere passati a :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>` su questo oggetto, e inviati al peer remoto sul server di segnalazione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_WebRTCPeerConnection_ConnectionState:

.. rst-class:: classref-enumeration

enum **ConnectionState**: :ref:`🔗<enum_WebRTCPeerConnection_ConnectionState>`

.. _class_WebRTCPeerConnection_constant_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_NEW** = ``0``

La connessione è nuova, i canali di dati e un'offerta possono essere creati in questo stato.

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTING** = ``1``

Il peer si sta collegando, l'ICE è in corso, nessuno dei trasporti ha fallito.

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTED** = ``2``

Il peer è collegato, tutti i trasporti ICE sono collegati.

.. _class_WebRTCPeerConnection_constant_STATE_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_DISCONNECTED** = ``3``

Almeno un trasporto ICE è scollegato.

.. _class_WebRTCPeerConnection_constant_STATE_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_FAILED** = ``4``

Uno o più dei trasporti ICE hanno fallito.

.. _class_WebRTCPeerConnection_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CLOSED** = ``5``

La connessione per i peer è chiusa (dopo aver chiamato :ref:`close()<class_WebRTCPeerConnection_method_close>` per esempio).

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_GatheringState:

.. rst-class:: classref-enumeration

enum **GatheringState**: :ref:`🔗<enum_WebRTCPeerConnection_GatheringState>`

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_NEW** = ``0``

La connessione per i peer è stata appena creata e non ha ancora effettuato niente per il network.

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_GATHERING:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_GATHERING** = ``1``

L'agente ICE è in fase di raccolta dei candidati per la connessione.

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_COMPLETE:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_COMPLETE** = ``2``

L'agente ICE ha finito di raccogliere candidati. Se succede qualcosa che richiede la raccolta di nuovi candidati, come ad esempio una nuova interfaccia che viene aggiunta o l'aggiunta di un nuovo server ICE, lo stato tornerà a riunirsi per raccogliere quei candidati.

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_SignalingState:

.. rst-class:: classref-enumeration

enum **SignalingState**: :ref:`🔗<enum_WebRTCPeerConnection_SignalingState>`

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_STABLE:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_STABLE** = ``0``

Non esiste uno scambio continuo di offerte e risposte in corso. Ciò può significare che la **WebRTCPeerConnection** è nuova (:ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`) o che la negoziazione è completa e una connessione è stata stabilita (:ref:`STATE_CONNECTED<class_WebRTCPeerConnection_constant_STATE_CONNECTED>`).

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_OFFER** = ``1``

Il peer locale ha chiamato :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`, passando un SDP che rappresenta un'offerta (solitamente creata chiamando :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>`), e l'offerta è stata applicata con successo.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_OFFER** = ``2``

Il peer remoto ha creato un'offerta e utilizzato il server di segnalazione per consegnarla al peer locale, che ha impostato l'offerta come descrizione remota chiamando :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>`.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_PRANSWER** = ``3``

L'offerta inviata dal peer remoto è stata applicata e una risposta è stata creata e applicata chiamando :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`. Questa risposta provvisoria descrive i formati multimediali supportati e simili, ma potrebbe non avere una serie completa di candidati ICE inclusi. Ulteriori candidati saranno consegnati separatamente in seguito.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_PRANSWER** = ``4``

Una risposta provvisoria è stata ricevuta e applicata con successo in risposta a un'offerta precedentemente inviata e stabilita chiamando :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_CLOSED** = ``5``

La **WebRTCPeerConnection** è stata chiusa.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_WebRTCPeerConnection_method_add_ice_candidate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_ice_candidate**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_add_ice_candidate>`

Aggiunge un candidato ICE generato da un peer remoto (e ricevuto sul server di segnalazione). Vedi :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_close>`

Chiude la connessione di peer e tutti i canali di dati associati ad esso.

\ **Nota:** Non puoi riutilizzare questo oggetto per una nuova connessione a meno che non chiami :ref:`initialize()<class_WebRTCPeerConnection_method_initialize>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_data_channel:

.. rst-class:: classref-method

:ref:`WebRTCDataChannel<class_WebRTCDataChannel>` **create_data_channel**\ (\ label\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_data_channel>`

Restituisce un nuovo :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` (o ``null`` in caso di errore) con l'etichetta ``label`` e opzionalmente configurato tramite il dizionario ``options``. Questo metodo può essere chiamato solo quando la connessione è nello stato :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`.

Ci sono due modi per creare un canale funzionante di dati: chiamare :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>` solo su uno dei peer e ascoltare :ref:`data_channel_received<class_WebRTCPeerConnection_signal_data_channel_received>` sull'altro, oppure chiamare :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>` su entrambi i peer, con gli stessi valori e l'opzione ``"negotiated"`` impostata su ``true``.

Le ``options`` valide sono:

::

    {
        "negotiated": true, # Se impostato su true (default off), significa che il canale è negoziato fuori banda. Anche "id" deve essere impostato. "data_channel_received" non verrà chiamato.
        "id": 1, # Se "negotiated" è true, questo valore deve essere impostato sullo stesso valore su entrambi i peer.

        # È possibile specificare solo uno tra "maxRetransmits" e "maxPacketLifeTime", non entrambi. Rendono il canale inaffidabile (ma anche più veloce in tempo reale).
        "maxRetransmits": 1, # Specifica il numero massimo di tentativi che il peer farà per ritrasmettere i pacchetti se non vengono riconosciuti.
        "maxPacketLifeTime": 100, # Specifica la quantità massima di tempo prima di rinunciare alle ritrasmissioni di pacchetti non riconosciuti (in millisecondi).
        "ordered": true, # In modalità non affidabile (ad esempio, è impostato "maxRetransmits" o "maxPacketLifetime"), "ordered" (true per impostazione predefinita) specifica se deve essere applicato l'ordinamento dei pacchetti.

        "protocol": "my-custom-protocol", # Una stringa di sottoprotocollo personalizzata per questo canale.
    }

\ **Nota:** È necessario mantenere un riferimento ai canali creati in questo modo, altrimenti verranno chiusi.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_offer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_offer**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_offer>`

Crea una nuova offerta SDP per avviare una connessione WebRTC con un peer remoto. Almeno un :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` deve essere stato creato prima di chiamare questo metodo.

Se questa funzione restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` verrà chiamato quando la sessione è pronta per essere inviata.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_connection_state:

.. rst-class:: classref-method

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **get_connection_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_connection_state>`

Restituisce lo stato della connessione.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_gathering_state:

.. rst-class:: classref-method

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **get_gathering_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_gathering_state>`

Restituisce lo stato di raccolta ICE (:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>`) della connessione. Ciò consente di rilevare, ad esempio, quando la raccolta dei candidati ICE è terminata.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_signaling_state:

.. rst-class:: classref-method

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **get_signaling_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_signaling_state>`

Restituisce lo stato di segnalazione sul lato locale della connessione mentre si collega o si riconnette a un altro peer.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_initialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **initialize**\ (\ configuration\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_initialize>`

Reinizializza questa connessione peer, chiudendo qualsiasi connessione precedentemente attiva, e torna allo stato :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`. È possibile passare un dizionario di opzioni\ ``configuration`` per configurare la connessione peer.

Le opzioni valide per ``configuration`` sono:

::

    {
        "iceServers": [
            {
                "urls": [ "stun:stun.example.com:3478" ], # Uno o più server STUN.
            },
            {
                "urls": [ "turn:turn.example.com:3478" ], # Uno o più server TURN.
                "username": "a_username", # Nome utente facoltativo per il server TURN.
                "credential": "a_password", # Password facoltativa per il server TURN.
            }
        ]
    }

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_poll>`

Chiama frequentemente questo metodo (ad esempio in :ref:`Node._process()<class_Node_private_method__process>` o :ref:`Node._physics_process()<class_Node_private_method__physics_process>`) per ricevere correttamente i segnali.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_default_extension:

.. rst-class:: classref-method

|void| **set_default_extension**\ (\ extension_class\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_WebRTCPeerConnection_method_set_default_extension>`

Imposta il ``extension_class`` come il :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>` predefinito, che è restituito quando si crea un nuovo **WebRTCPeerConnection**.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_local_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_local_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_local_description>`

Imposta la descrizione SDP del locale peer. Questo dovrebbe essere chiamato in risposta a :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>`.

Dopo aver chiamato questa funzione, il peer inizierà a emettere :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>` (a meno che non venga restituito un :ref:`Error<enum_@GlobalScope_Error>` diverso da :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_remote_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_remote_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_remote_description>`

Imposta la descrizione SDP del peer remoto. Questo dovrebbe essere chiamato con i valori generati da un peer remoto e ricevuti sul server di segnalazione.

Se ``type`` è ``"offer"`` il peer emetterà :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` con la risposta appropriata.

Se ``type`` è ``"risposta"`` il peer inizierà a emettere :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
