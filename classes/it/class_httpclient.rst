:github_url: hide

.. _class_HTTPClient:

HTTPClient
==========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Client di protocollo di trasferimento ipertestuale di basso livello.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Client di protocollo di trasferimento ipertestuale (talvolta chiamato "User Agent"). Utilizzato per effettuare richieste HTTP per scaricare contenuti Web, caricare file e altri dati o per comunicare con vari servizi, oltre ad altri casi d'uso.

Vedi il nodo :ref:`HTTPRequest<class_HTTPRequest>` per un'alternativa di livello superiore.

\ **Nota:** Questo client deve connettersi a un host solo una volta (vedi :ref:`connect_to_host()<class_HTTPClient_method_connect_to_host>`) per inviare più richieste. Per questo motivo, i metodi che accettano URL di solito accettano solo la parte dopo l'host anziché l'intero URL, poiché il client è già connesso a un host. Vedi :ref:`request()<class_HTTPClient_method_request>` per un esempio completo e per iniziare.

Un **HTTPClient** dovrebbe essere riutilizzato tra più richieste o per connettersi a host diversi anziché creare un client per ogni richiesta. Supporta Transport Layer Security (TLS), inclusa la verifica del certificato del server. I codici di stato HTTP nell'intervallo 2xx indicano successo, 3xx reindirizzamento (ad esempio "riprova, ma qui"), 4xx errore nella richiesta e 5xx errore sul lato server.

Per maggiori informazioni su HTTP, consulta la `documentazione di MDN su HTTP <https://developer.mozilla.org/en-US/docs/Web/HTTP>`__ (o leggi `RFC 2616 <https://tools.ietf.org/html/rfc2616>`__ per ottenerla direttamente dalla fonte).

\ **Nota:** Quando si esporta su Android, assicurarsi di abilitare l'autorizzazione ``INTERNET`` nella preimpostazione d'esportazione Android prima di esportare il progetto o di utilizzare la distribuzione con un clic. Altrimenti, qualsiasi tipo di comunicazione di rete sarà bloccata da Android.

\ **Nota:** Si consiglia di utilizzare la crittografia di trasporto (TLS) ed evitare di inviare informazioni sensibili (come le credenziali di accesso) nei parametri URL HTTP GET. Si consiglia di utilizzare richieste HTTP POST o intestazioni HTTP per tali informazioni.

\ **Nota:** Quando si eseguono richieste HTTP da un progetto esportato sul Web, tieni presente che il server remoto potrebbe non consentire richieste da origini straniere a causa di `CORS <https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS>`__. Se si ospita il server in questione, è necessario modificare il suo backend per consentire richieste da origini straniere aggiungendo l'intestazione HTTP ``Access-Control-Allow-Origin: *``.

\ **Nota:** Il supporto TLS è attualmente limitato a TLS 1.0, TLS 1.1 e TLS 1.2. Tentare di connettersi a un server solo TLS 1.3 restituirà un errore.

\ **Attenzione:** La revoca del certificato TLS e il pinning del certificato non sono attualmente supportati. I certificati revocati sono accettati a patto che siano validi altrimenti. Se questo è un problema, potresti voler utilizzare certificati gestiti automaticamente con un breve periodo di validità.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Classe client HTTP <../tutorials/networking/http_client_class>`

- :doc:`Certificati TLS <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`blocking_mode_enabled<class_HTTPClient_property_blocking_mode_enabled>` | ``false`` |
   +-------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`StreamPeer<class_StreamPeer>` | :ref:`connection<class_HTTPClient_property_connection>`                       |           |
   +-------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`read_chunk_size<class_HTTPClient_property_read_chunk_size>`             | ``65536`` |
   +-------------------------------------+-------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`close<class_HTTPClient_method_close>`\ (\ )                                                                                                                                                                                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`connect_to_host<class_HTTPClient_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>` = -1, tls_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )                                                              |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_response_body_length<class_HTTPClient_method_get_response_body_length>`\ (\ ) |const|                                                                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_response_code<class_HTTPClient_method_get_response_code>`\ (\ ) |const|                                                                                                                                                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_response_headers<class_HTTPClient_method_get_response_headers>`\ (\ )                                                                                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`get_response_headers_as_dictionary<class_HTTPClient_method_get_response_headers_as_dictionary>`\ (\ )                                                                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_HTTPClient_Status>`             | :ref:`get_status<class_HTTPClient_method_get_status>`\ (\ ) |const|                                                                                                                                                                                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_response<class_HTTPClient_method_has_response>`\ (\ ) |const|                                                                                                                                                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_response_chunked<class_HTTPClient_method_is_response_chunked>`\ (\ ) |const|                                                                                                                                                                               |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`poll<class_HTTPClient_method_poll>`\ (\ )                                                                                                                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`query_string_from_dict<class_HTTPClient_method_query_string_from_dict>`\ (\ fields\: :ref:`Dictionary<class_Dictionary>`\ )                                                                                                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`     | :ref:`read_response_body_chunk<class_HTTPClient_method_read_response_body_chunk>`\ (\ )                                                                                                                                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`request<class_HTTPClient_method_request>`\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`String<class_String>` = ""\ )                      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`request_raw<class_HTTPClient_method_request_raw>`\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_http_proxy<class_HTTPClient_method_set_http_proxy>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                                                                                                               |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_https_proxy<class_HTTPClient_method_set_https_proxy>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                                                                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_HTTPClient_Method:

.. rst-class:: classref-enumeration

enum **Method**: :ref:`🔗<enum_HTTPClient_Method>`

.. _class_HTTPClient_constant_METHOD_GET:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_GET** = ``0``

Metodo HTTP GET. Il metodo GET richiede una rappresentazione della risorsa specificata. Le richieste che utilizzano GET dovrebbero recuperare solo dati.

.. _class_HTTPClient_constant_METHOD_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_HEAD** = ``1``

Metodo HTTP HEAD. Il metodo HEAD richiede una risposta identica a quella di una richiesta GET, ma senza il corpo della risposta. Questo è utile per richiedere metadati come intestazioni HTTP o per verificare se una risorsa esiste.

.. _class_HTTPClient_constant_METHOD_POST:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_POST** = ``2``

Metodo HTTP POST. Il metodo POST è utilizzato per inviare un'entità alla risorsa specificata, spesso causando un cambiamento di stato sul server. È spesso utilizzato per i moduli, per inviare dati o caricare file.

.. _class_HTTPClient_constant_METHOD_PUT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PUT** = ``3``

Metodo HTTP PUT. Il metodo PUT chiede di sostituire tutte le rappresentazioni attuali della risorsa di destinazione con il payload della richiesta. (Si può pensare "POST" come un metodo per "creare o aggiornare" e PUT come per "aggiornare", sebbene molti servizi non facciano la distinzione o cambino il loro significato).

.. _class_HTTPClient_constant_METHOD_DELETE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_DELETE** = ``4``

Metodo HTTP DELETE. Il metodo DELETE richiede di eliminare la risorsa specificata.

.. _class_HTTPClient_constant_METHOD_OPTIONS:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_OPTIONS** = ``5``

Metodo HTTP OPTIONS. Il metodo OPTIONS chiede una descrizione delle opzioni di comunicazione per la risorsa di destinazione. È raramente utilizzato.

.. _class_HTTPClient_constant_METHOD_TRACE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_TRACE** = ``6``

Metodo HTTP TRACE. Il metodo TRACE effettua un test di ciclo dei messaggi seguendo il percorso della risorsa di destinazione. Restituisce l'intera richiesta HTTP ricevuta nel corpo della risposta. È raramente utilizzato.

.. _class_HTTPClient_constant_METHOD_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_CONNECT** = ``7``

Metodo HTTP CONNECT. Il metodo CONNECT stabilisce un tunnel verso il server identificato dalla risorsa di destinazione. È raramente utilizzato.

.. _class_HTTPClient_constant_METHOD_PATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PATCH** = ``8``

Metodo HTTP PATCH. Il metodo PATCH è utilizzato per applicare modifiche parziali a una risorsa.

.. _class_HTTPClient_constant_METHOD_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_MAX** = ``9``

Rappresenta la dimensione dell'enumerazione :ref:`Method<enum_HTTPClient_Method>`.

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_HTTPClient_Status>`

.. _class_HTTPClient_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_DISCONNECTED** = ``0``

Stato: Disconnesso dal server.

.. _class_HTTPClient_constant_STATUS_RESOLVING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_RESOLVING** = ``1``

Stato: Attualmente risolvendo il nome host per l'URL specificato in un IP.

.. _class_HTTPClient_constant_STATUS_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_RESOLVE** = ``2``

Stato: Errore di DNS: Impossibile risolvere il nome host per l'URL specificato.

.. _class_HTTPClient_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTING** = ``3``

Stato: Connessione al server in corso.

.. _class_HTTPClient_constant_STATUS_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_CONNECT** = ``4``

Stato: Impossibile connettersi al server.

.. _class_HTTPClient_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTED** = ``5``

Stato: Connessione stabilita.

.. _class_HTTPClient_constant_STATUS_REQUESTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_REQUESTING** = ``6``

Stato: Richiesta in fase di invio.

.. _class_HTTPClient_constant_STATUS_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_BODY** = ``7``

Stato: Corpo HTTP ricevuto.

.. _class_HTTPClient_constant_STATUS_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTION_ERROR** = ``8``

Stato: Errore nella connessione HTTP.

.. _class_HTTPClient_constant_STATUS_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_TLS_HANDSHAKE_ERROR** = ``9``

Stato: Errore nell'handshake TLS.

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_ResponseCode:

.. rst-class:: classref-enumeration

enum **ResponseCode**: :ref:`🔗<enum_HTTPClient_ResponseCode>`

.. _class_HTTPClient_constant_RESPONSE_CONTINUE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONTINUE** = ``100``

Codice di stato HTTP ``100 Continua``. Risposta provvisoria che indica che finora tutto è OK e che il client deve continuare con la richiesta (o ignorare questo stato se è già terminato).

.. _class_HTTPClient_constant_RESPONSE_SWITCHING_PROTOCOLS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCHING_PROTOCOLS** = ``101``

Codice di stato HTTP ``101 Switching Protocol``. Inviato in risposta a un'intestazione di richiesta ``Upgrade`` dal client. Indica il protocollo a cui il server sta passando.

.. _class_HTTPClient_constant_RESPONSE_PROCESSING:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROCESSING** = ``102``

Codice di stato HTTP ``102 Processing`` (WebDAV). Indica che il server ha ricevuto e sta elaborando la richiesta, ma nessuna risposta è ancora disponibile.

.. _class_HTTPClient_constant_RESPONSE_OK:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_OK** = ``200``

Codice di stato HTTP ``200 OK``. La richiesta è andata a buon fine. Risposta predefinita per le richieste riuscite. Il significato varia a seconda della richiesta:

- :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`: La risorsa è stata recuperata ed è trasmessa nel corpo del messaggio.

- :ref:`METHOD_HEAD<class_HTTPClient_constant_METHOD_HEAD>`: Le intestazioni dell'ente si trovano nel corpo del messaggio.

- :ref:`METHOD_POST<class_HTTPClient_constant_METHOD_POST>`: La risorsa che descrive il risultato dell'azione è trasmessa nel corpo del messaggio.

- :ref:`METHOD_TRACE<class_HTTPClient_constant_METHOD_TRACE>`: Il corpo del messaggio contiene il messaggio di richiesta come ricevuto dal server.

.. _class_HTTPClient_constant_RESPONSE_CREATED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CREATED** = ``201``

Codice di stato HTTP ``201 Created``. La richiesta è andata a buon fine e come risultato è stata creata una nuova risorsa. Questa è in genere la risposta inviata dopo una richiesta PUT.

.. _class_HTTPClient_constant_RESPONSE_ACCEPTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ACCEPTED** = ``202``

Codice di stato HTTP ``202 Accepted``. La richiesta è stata ricevuta ma non è ancora stata elaborata. Non viene inviata alcuna risposta, nemmeno in modo asincrono, che indichi il risultato dell'elaborazione di questa richiesta. È destinato ai casi in cui un altro processo o server gestisce la richiesta o per l'elaborazione batch.

.. _class_HTTPClient_constant_RESPONSE_NON_AUTHORITATIVE_INFORMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NON_AUTHORITATIVE_INFORMATION** = ``203``

Codice di stato HTTP ``203 Non-Authoritative Information``. Questo codice di risposta significa che l'insieme di meta-informazioni restituito non è la copia esatta dell'insieme presenti sul server di origine, ma composto da una copia locale o di terze parti. Tranne che in questo caso, è preferibile la risposta 200 OK al posto di questa risposta.

.. _class_HTTPClient_constant_RESPONSE_NO_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NO_CONTENT** = ``204``

Codice di stato HTTP ``204 No Content``. Non c'è alcun contenuto da inviare per questa richiesta, ma le intestazioni potrebbero essere utili. L'agente utente potrebbe aggiornare le sue intestazioni memorizzate nella cache per questa risorsa con quelle nuove.

.. _class_HTTPClient_constant_RESPONSE_RESET_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_RESET_CONTENT** = ``205``

Codice di stato HTTP ``205 Reset Content``. Il server ha soddisfatto la richiesta e desidera che il client reimposti la "vista del documento", che ha provocato l'invio della richiesta, al suo stato originale come ricevuto dal server di origine.

.. _class_HTTPClient_constant_RESPONSE_PARTIAL_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PARTIAL_CONTENT** = ``206``

Codice di stato HTTP ``206 Partial Content``. Questo codice di risposta è utilizzato a causa di un'intestazione di intervallo inviata dal client per separare il download in più flussi.

.. _class_HTTPClient_constant_RESPONSE_MULTI_STATUS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTI_STATUS** = ``207``

Codice di stato HTTP ``207 Multi-Status`` (WebDAV). Una risposta Multi-Status trasmette informazioni su più risorse in situazioni in cui più codici di stato potrebbero essere appropriati.

.. _class_HTTPClient_constant_RESPONSE_ALREADY_REPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ALREADY_REPORTED** = ``208``

Codice di stato HTTP ``208 Already Reported`` (WebDAV). Utilizzato all'interno di un elemento di risposta DAV: propstat per evitare di enumerare ripetutamente i membri interni di più associazioni alla stessa collezione.

.. _class_HTTPClient_constant_RESPONSE_IM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_USED** = ``226``

Codice di stato HTTP ``226 IM used`` (WebDAV). Il server ha soddisfatto una richiesta GET per la risorsa e la risposta è una rappresentazione del risultato di una o più manipolazioni di istanza applicate all'istanza attuale.

.. _class_HTTPClient_constant_RESPONSE_MULTIPLE_CHOICES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTIPLE_CHOICES** = ``300``

Codice di stato HTTP ``300 Multiple Choice``. La richiesta contiene più di una risposta possibile e non esiste un modo standardizzato per sceglierne una. L'agente utente o l'utente devono sceglierne una.

.. _class_HTTPClient_constant_RESPONSE_MOVED_PERMANENTLY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MOVED_PERMANENTLY** = ``301``

Codice di stato HTTP ``301 Moved Permanently``. Reindirizzamento. Questo codice di risposta indica che l'URI della risorsa richiesta è stato modificato. Il nuovo URI è solitamente incluso nella risposta.

.. _class_HTTPClient_constant_RESPONSE_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FOUND** = ``302``

Codice di stato HTTP ``302 Found``. Reindirizzamento temporaneo. Questo codice di risposta significa che l'URI della risorsa richiesta è stato modificato temporaneamente. Nuove modifiche all'URI potrebbero essere apportate in futuro. Pertanto, questo stesso URI dovrebbe essere utilizzato dal client nelle richieste future.

.. _class_HTTPClient_constant_RESPONSE_SEE_OTHER:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SEE_OTHER** = ``303``

Codice di stato HTTP ``303 See Other``. Il server sta reindirizzando l'agente utente a una risorsa diversa, come indicato da un URI nel campo dell'intestazione Location, che ha lo scopo di fornire una risposta indiretta alla richiesta originale.

.. _class_HTTPClient_constant_RESPONSE_NOT_MODIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_MODIFIED** = ``304``

Codice di stato HTTP ``304 Not Modified``. È stata ricevuta una richiesta GET o HEAD condizionale che avrebbe prodotto una risposta 200 OK se la condizione non fosse stata valutata come ``false``.

.. _class_HTTPClient_constant_RESPONSE_USE_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_USE_PROXY** = ``305``

**Deprecato:** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

Codice di stato HTTP ``305 Use Proxy``.

.. _class_HTTPClient_constant_RESPONSE_SWITCH_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCH_PROXY** = ``306``

**Deprecato:** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

Codice di stato HTTP ``306 Switch Proxy``.

.. _class_HTTPClient_constant_RESPONSE_TEMPORARY_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TEMPORARY_REDIRECT** = ``307``

Codice di stato HTTP ``307 Temporary Redirect``. La risorsa di destinazione risiede temporaneamente sotto un URI diverso e l'agente utente NON DEVE modificare il metodo di richiesta se esegue un reindirizzamento automatico a tale URI.

.. _class_HTTPClient_constant_RESPONSE_PERMANENT_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PERMANENT_REDIRECT** = ``308``

Codice di stato HTTP ``308 Permanent Redirect``. Alla risorsa di destinazione è stato assegnato un nuovo URI permanente e tutti i riferimenti futuri a questa risorsa devono utilizzare uno degli URI allegati.

.. _class_HTTPClient_constant_RESPONSE_BAD_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_REQUEST** = ``400``

Codice di stato HTTP ``400 Bad Request``. La richiesta non è valida. Il server non può o non vuole elaborare la richiesta a causa di qualcosa che è percepito come un errore del client (ad esempio, sintassi della richiesta non corretta, framing del messaggio di richiesta non valido, contenuto della richiesta non valido o indirizzamento della richiesta ingannevole).

.. _class_HTTPClient_constant_RESPONSE_UNAUTHORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAUTHORIZED** = ``401``

Codice di stato HTTP ``401 Unauthorized``. Credenziali richieste. La richiesta non è stata applicata perché non dispone di credenziali di autenticazione valide per la risorsa di destinazione.

.. _class_HTTPClient_constant_RESPONSE_PAYMENT_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PAYMENT_REQUIRED** = ``402``

Codice di stato HTTP ``402 Payment Required``. Questo codice di risposta è riservato per un uso futuro. Lo scopo iniziale della creazione di questo codice era di utilizzarlo per i sistemi di pagamento digitale, tuttavia questo non è attualmente utilizzato.

.. _class_HTTPClient_constant_RESPONSE_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FORBIDDEN** = ``403``

Codice di stato HTTP ``403 Forbidden``. Il client non ha diritti di accesso al contenuto, ovvero non è autorizzato, quindi il server rifiuta di fornire una risposta appropriata. A differenza di ``401``, l'identità del client è nota al server.

.. _class_HTTPClient_constant_RESPONSE_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_FOUND** = ``404``

Codice di stato HTTP ``404 Not Found``. Il server non riesce a trovare la risorsa richiesta. L'URL non è riconosciuto, oppure l'endpoint è valido ma la risorsa stessa non esiste. Può anche essere inviato al posto di 403 per nascondere l'esistenza di una risorsa se il client non è autorizzato.

.. _class_HTTPClient_constant_RESPONSE_METHOD_NOT_ALLOWED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_METHOD_NOT_ALLOWED** = ``405``

Codice di stato HTTP ``405 Method Not Allowed``. Il metodo HTTP della richiesta è noto al server ma è stato disabilitato e non può essere utilizzato. Ad esempio, un'API potrebbe proibire di DELETE-ing di una risorsa. I due metodi obbligatori, GET e HEAD, non devono mai essere disabilitati e non devono restituire questo codice d'errore.

.. _class_HTTPClient_constant_RESPONSE_NOT_ACCEPTABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_ACCEPTABLE** = ``406``

Codice di stato HTTP ``406 Not Acceptable``. La risorsa di destinazione non ha una rappresentazione attuale che sarebbe accettabile per l'agente utente, in base ai campi di intestazione della negoziazione proattiva ricevuti nella richiesta. Utilizzato durante la negoziazione del contenuto.

.. _class_HTTPClient_constant_RESPONSE_PROXY_AUTHENTICATION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROXY_AUTHENTICATION_REQUIRED** = ``407``

Codice di stato HTTP ``407 Proxy Authentication Required``. Simile a 401 Non autorizzato, ma indica che il client deve autenticarsi per poter utilizzare un proxy.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_TIMEOUT** = ``408``

Codice di stato HTTP ``408 Request Timeout``. Il server non ha ricevuto un messaggio di richiesta completo entro il tempo previsto per l'attesa.

.. _class_HTTPClient_constant_RESPONSE_CONFLICT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONFLICT** = ``409``

Codice di stato HTTP ``409 Conflict``. Non è stato possibile completare la richiesta a causa di un conflitto con lo stato attuale della risorsa di destinazione. Questo codice viene utilizzato in situazioni in cui l'utente potrebbe riuscire a risolvere il conflitto e inviare nuovamente la richiesta.

.. _class_HTTPClient_constant_RESPONSE_GONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GONE** = ``410``

Codice di stato HTTP ``410 Gone``. La risorsa di destinazione non è più disponibile sul server di origine e questa condizione è probabilmente permanente.

.. _class_HTTPClient_constant_RESPONSE_LENGTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LENGTH_REQUIRED** = ``411``

Codice di stato HTTP ``411 Length Required``. Il server rifiuta di accettare la richiesta senza un'intestazione Content-Length definita.

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_FAILED** = ``412``

Codice di stato HTTP ``412 Precondition Failed``. Una o più condizioni specificate nei campi di intestazione della richiesta sono state valutate come ``false`` quando testate sul server.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_ENTITY_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_ENTITY_TOO_LARGE** = ``413``

Codice di stato HTTP ``413 Entity Too Large``. Il server si rifiuta di elaborare una richiesta perché il payload della richiesta è più grande di quanto il server sia disposto o capace di elaborare.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_URI_TOO_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_URI_TOO_LONG** = ``414``

Codice di stato HTTP ``414 Request-URI Too Long``. Il server rifiuta di soddisfare la richiesta perché l'obiettivo della richiesta è più lungo di quanto il server sia disposto a interpretare.

.. _class_HTTPClient_constant_RESPONSE_UNSUPPORTED_MEDIA_TYPE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNSUPPORTED_MEDIA_TYPE** = ``415``

Codice di stato HTTP ``415 Unsupported Media Type``. Il server di origine rifiuta di soddisfare la richiesta perché il payload è in un formato non supportato da questo metodo sulla risorsa di destinazione.

.. _class_HTTPClient_constant_RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE** = ``416``

Codice di stato HTTP ``416 Requested Range Not Satisfiable``. Nessuno degli intervalli nel campo Range dell'intestazione si sovrappone all'estensione attuale della risorsa selezionata, oppure l'insieme di intervalli richiesti è stato rifiutato a causa di intervalli non validi o di una richiesta eccessiva di intervalli piccoli o sovrapposti.

.. _class_HTTPClient_constant_RESPONSE_EXPECTATION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_EXPECTATION_FAILED** = ``417``

Codice di stato HTTP ``417 Expectation Failed``. Non è stato possibile soddisfare le aspettative fornite nel campo di intestazione Expect da almeno uno dei server in entrata.

.. _class_HTTPClient_constant_RESPONSE_IM_A_TEAPOT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_A_TEAPOT** = ``418``

Codice di stato HTTP ``418 I'm A Teapot``. Ogni tentativo di preparare il caffè con una teiera dovrebbero restituire il codice d'errore "418 I'm a teapot". Il corpo dell'entità risultante POTREBBE essere corto e robusto.

.. _class_HTTPClient_constant_RESPONSE_MISDIRECTED_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MISDIRECTED_REQUEST** = ``421``

Codice di stato HTTP ``421 Misdirected Request``. La richiesta è stata indirizzata a un server che non è in grado di produrre una risposta. Questo può essere inviato da un server che non è configurato per produrre risposte per la combinazione di schema e autorità che sono inclusi nell'URI della richiesta.

.. _class_HTTPClient_constant_RESPONSE_UNPROCESSABLE_ENTITY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNPROCESSABLE_ENTITY** = ``422``

Codice di stato HTTP ``422 Unprocessable Entity`` (WebDAV). Il server comprende il tipo di contenuto dell'entità della richiesta (quindi un codice di stato 415 Unsupported Media Type è inadeguato), e la sintassi dell'entità della richiesta è corretta (quindi un codice di stato 400 Bad Request è inadeguato) ma non ha potuto elaborare le istruzioni contenute.

.. _class_HTTPClient_constant_RESPONSE_LOCKED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOCKED** = ``423``

Codice di stato HTTP ``423 Locked`` (WebDAV). La risorsa di origine o di destinazione di un metodo è bloccata.

.. _class_HTTPClient_constant_RESPONSE_FAILED_DEPENDENCY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FAILED_DEPENDENCY** = ``424``

Codice di stato HTTP ``424 Failed Dependency`` (WebDAV). Non è stato possibile eseguire il metodo sulla risorsa perché l'azione richiesta dipendeva su un'altra azione e tale azione non è andata a buon fine.

.. _class_HTTPClient_constant_RESPONSE_UPGRADE_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UPGRADE_REQUIRED** = ``426``

Codice di stato HTTP ``426 Upgrade Required``. Il server si rifiuta di eseguire la richiesta utilizzando il protocollo attuale ma potrebbe essere disposto a farlo dopo che il cliente si aggiorna a un protocollo diverso.

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_REQUIRED** = ``428``

Codice di stato HTTP ``426 Precondition Required``. Il server di origine richiede che la richiesta sia condizionale.

.. _class_HTTPClient_constant_RESPONSE_TOO_MANY_REQUESTS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TOO_MANY_REQUESTS** = ``429``

Codice di stato HTTP ``429 Too Many Requests``. L'utente ha inviato troppe richieste in un determinato periodo di tempo (vedi "rate limiting"). Arretra e aumenta il tempo tra una richiesta e l'altra o riprova più tardi.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE** = ``431``

Codice di stato HTTP ``431 Request Header Fields Too Large``. Il server non è disposto a elaborare la richiesta perché i suoi campi di intestazione sono troppo grandi. La richiesta POTREBBE essere reinviata dopo aver ridotto le dimensioni dei campi di intestazione della richiesta.

.. _class_HTTPClient_constant_RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS** = ``451``

Codice di stato HTTP ``451 Response Unavailable for Legal Reasons``. Il server sta negando l'accesso alla risorsa a seguito di una richiesta legale.

.. _class_HTTPClient_constant_RESPONSE_INTERNAL_SERVER_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INTERNAL_SERVER_ERROR** = ``500``

Codice di stato HTTP ``500 Internal Server Error``. Il server ha riscontrato una condizione imprevista che gli ha impedito di soddisfare la richiesta.

.. _class_HTTPClient_constant_RESPONSE_NOT_IMPLEMENTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_IMPLEMENTED** = ``501``

Codice di stato HTTP ``501 Not Implemented``. Il server non supporta le funzionalità necessarie per completare la richiesta.

.. _class_HTTPClient_constant_RESPONSE_BAD_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_GATEWAY** = ``502``

Codice di stato HTTP ``502 Bad Gateway``. Il server, mentre fungeva da gateway o proxy, ha ricevuto una risposta non valida da un server in entrata a cui aveva avuto accesso mentre tentava di soddisfare la richiesta. Solitamente restituito da bilanciatori di carico o proxy.

.. _class_HTTPClient_constant_RESPONSE_SERVICE_UNAVAILABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SERVICE_UNAVAILABLE** = ``503``

Codice di stato HTTP ``503 Service Unavailable``. Il server non è attualmente in grado di gestire la richiesta a causa di un sovraccarico temporaneo o di una manutenzione pianificata, che probabilmente sarà risolta con un certo ritardo. Riprova più tardi.

.. _class_HTTPClient_constant_RESPONSE_GATEWAY_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GATEWAY_TIMEOUT** = ``504``

Codice di stato HTTP ``504 Gateway Timeout``. Il server, mentre fungeva da gateway o proxy, non ha ricevuto una risposta in tempo da un server upstream a cui doveva accedere per completare la richiesta. Solitamente restituito da bilanciatori di carico o proxy.

.. _class_HTTPClient_constant_RESPONSE_HTTP_VERSION_NOT_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_HTTP_VERSION_NOT_SUPPORTED** = ``505``

Codice di stato HTTP ``505 HTTP Version Not Supported``. Il server non supporta o si rifiuta di supportare la versione principale di HTTP utilizzata nel messaggio di richiesta.

.. _class_HTTPClient_constant_RESPONSE_VARIANT_ALSO_NEGOTIATES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_VARIANT_ALSO_NEGOTIATES** = ``506``

Codice di stato HTTP ``506 Variant Also Negotiates``. Il server ha un errore di configurazione interno: la risorsa variante scelta è essa stessa configurata per impegnarsi nella negoziazione del contenuto trasparente, e pertanto non è un punto finale corretto nel processo di negoziazione.

.. _class_HTTPClient_constant_RESPONSE_INSUFFICIENT_STORAGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INSUFFICIENT_STORAGE** = ``507``

Codice di stato HTTP ``507 Insufficient Storage``. Il metodo non può essere eseguito sulla risorsa perché il server non è in grado di memorizzare la rappresentazione necessaria per completare con successo la richiesta.

.. _class_HTTPClient_constant_RESPONSE_LOOP_DETECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOOP_DETECTED** = ``508``

Codice di stato HTTP ``508 Loop Detected``. Il server ha terminato un'operazione perché ha riscontrato un ciclo infinito durante l'elaborazione di una richiesta con "Depth: infinity". Questo stato indica che l'intera operazione non è riuscita.

.. _class_HTTPClient_constant_RESPONSE_NOT_EXTENDED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_EXTENDED** = ``510``

Codice di stato HTTP ``510 Not Extended``. La policy per l'accesso alla risorsa non è stata soddisfatta nella richiesta. Il server dovrebbe restituire tutte le informazioni necessarie affinché il client invii una richiesta estesa.

.. _class_HTTPClient_constant_RESPONSE_NETWORK_AUTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NETWORK_AUTH_REQUIRED** = ``511``

Codice di stato HTTP ``511 Network Authentication Required``. Il client deve autenticarsi per ottenere l'accesso alla rete.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_HTTPClient_property_blocking_mode_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **blocking_mode_enabled** = ``false`` :ref:`🔗<class_HTTPClient_property_blocking_mode_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_blocking_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blocking_mode_enabled**\ (\ )

Se ``true``, l'esecuzione sarà bloccata finché tutti i dati non saranno letti dalla risposta.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_connection:

.. rst-class:: classref-property

:ref:`StreamPeer<class_StreamPeer>` **connection** :ref:`🔗<class_HTTPClient_property_connection>`

.. rst-class:: classref-property-setget

- |void| **set_connection**\ (\ value\: :ref:`StreamPeer<class_StreamPeer>`\ )
- :ref:`StreamPeer<class_StreamPeer>` **get_connection**\ (\ )

La connessione da utilizzare per questo client.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_read_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **read_chunk_size** = ``65536`` :ref:`🔗<class_HTTPClient_property_read_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_read_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_read_chunk_size**\ (\ )

La dimensione del buffer utilizzato e il numero massimo di byte da leggere per ciascuna iterazione. Vedi :ref:`read_response_body_chunk()<class_HTTPClient_method_read_response_body_chunk>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_HTTPClient_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_HTTPClient_method_close>`

Chiude la connessione attuale, consentendone il riutilizzo per questo **HTTPClient**.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>` = -1, tls_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_HTTPClient_method_connect_to_host>`

Si collega a un host. Ciò deve essere fatto prima che vengano inviate richieste.

Se non viene specificata alcuna porta (``port``) (o si utilizza ``-1``), è automaticamente impostata su 80 per HTTP e 443 per HTTPS. È possibile passare il parametro facoltativo ``tls_options`` per personalizzare le autorità di certificazione attendibili o la verifica del nome comune quando si utilizza HTTPS. Consulta :ref:`TLSOptions.client()<class_TLSOptions_method_client>` e :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_body_length:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_body_length**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_body_length>`

Restituisce la lunghezza del corpo della risposta.

\ **Nota:** Alcuni server Web potrebbero non inviare una lunghezza del corpo. In questo caso, il valore restituito sarà ``-1``. Anche se si utilizza la codifica di trasferimento in blocchi, la lunghezza del corpo sarà ``-1``.

\ **Nota:** Questa funzione restituisce sempre ``-1`` sulla piattaforma Web a causa delle limitazioni dei browser.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_code**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_code>`

Restituisce il codice di stato della risposta HTTP.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_response_headers**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers>`

Restituisce le intestazioni della risposta.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers_as_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_response_headers_as_dictionary**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers_as_dictionary>`

Restituisce tutte le intestazioni della risposta come :ref:`Dictionary<class_Dictionary>`. Ogni voce è composta dal nome dell'intestazione e da una :ref:`String<class_String>` contenente i valori separati da ``"; "``. Le maiuscole e le minuscole sono mantenute uguali a quelle delle intestazioni ricevute.

::

    {
        "content-length": 12,
        "Content-Type": "application/json; charset=UTF-8",
    }

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_HTTPClient_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_status>`

Restituisce una costante di :ref:`Status<enum_HTTPClient_Status>`. È necessario chiamare :ref:`poll()<class_HTTPClient_method_poll>` per aggiornare lo stato.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_has_response:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_response**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_has_response>`

Se ``true``, questo **HTTPClient** ha una risposta disponibile.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_is_response_chunked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_response_chunked**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_is_response_chunked>`

Se ``true``, questo **HTTPClient** riceve una risposta in diverse parti.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_HTTPClient_method_poll>`

Questa chiamata deve essere eseguita per elaborare qualsiasi richiesta. Verifica i risultati con :ref:`get_status()<class_HTTPClient_method_get_status>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_query_string_from_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_string_from_dict**\ (\ fields\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_HTTPClient_method_query_string_from_dict>`

Genera una stringa di richiesta in stile GET/POST application/x-www-form-urlencoded da un dizionario fornito, ad esempio:


.. tabs::

 .. code-tab:: gdscript

    var fields = { "username": "user", "password": "pass" }
    var query_string = http_client.query_string_from_dict(fields)
    # Restituisce "username=user&password=pass"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary { { "username", "user" }, { "password", "pass" } };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Restituisce "username=user&password=pass"



Inoltre, se una chiave ha un valore ``null``, solo la chiave stessa viene aggiunta, senza segno di uguale e valore. Se il valore è un array, per ogni valore in esso contenuto viene aggiunta una coppia con la stessa chiave.


.. tabs::

 .. code-tab:: gdscript

    var fields = { "single": 123, "not_valued": null, "multiple": [22, 33, 44] }
    var query_string = http_client.query_string_from_dict(fields)
    # Restituisce "single=123&not_valued&multiple=22&multiple=33&multiple=44"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary
    {
        { "single", 123 },
        { "notValued", default },
        { "multiple", new Godot.Collections.Array { 22, 33, 44 } },
    };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Restituisce "single=123&not_valued&multiple=22&multiple=33&multiple=44"



.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_read_response_body_chunk:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **read_response_body_chunk**\ (\ ) :ref:`🔗<class_HTTPClient_method_read_response_body_chunk>`

Legge una parte della risposta.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPClient_method_request>`

Invia una richiesta all'host connesso.

Il parametro URL è solitamente solo la parte dopo l'host, quindi per ``https://somehost.com/index.php``, è ``/index.php``. Quando si inviano richieste a un server proxy HTTP, dovrebbe essere un URL assoluto. Per le richieste :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>`, è consentito anche ``*``. Per le richieste :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>`, dovrebbe essere il componente autorità (``host:port``).

Le intestazioni sono intestazioni di richiesta HTTP.

Per creare una richiesta POST con stringhe di richiesta da inviare al server, usa:


.. tabs::

 .. code-tab:: gdscript

    var fields = { "username" : "user", "password" : "pass" }
    var query_string = http_client.query_string_from_dict(fields)
    var headers = ["Content-Type: application/x-www-form-urlencoded", "Content-Length: " + str(query_string.length())]
    var result = http_client.request(http_client.METHOD_POST, "/index.php", headers, query_string)

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary { { "username", "user" }, { "password", "pass" } };
    string queryString = new HttpClient().QueryStringFromDict(fields);
    string[] headers = ["Content-Type: application/x-www-form-urlencoded", $"Content-Length: {queryString.Length}"];
    var result = new HttpClient().Request(HttpClient.Method.Post, "index.php", headers, queryString);



\ **Nota:** Il parametro ``body`` viene ignorato se ``method`` è :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`. Questo perché i metodi GET non possono contenere dati di richiesta. Come alternativa, è possibile passare i dati di richiesta come stringa di richiesta nell'URL. Vedi :ref:`String.uri_encode()<class_String_method_uri_encode>` per un esempio.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPClient_method_request_raw>`

Invia una richiesta grezza all'host connesso con il metodo ``method``.

Il parametro URL è solitamente solo la parte dopo l'host, quindi per ``https://somehost.com/index.php``, è ``/index.php``. Quando si inviano richieste a un server proxy HTTP, dovrebbe essere un URL assoluto. Per le richieste :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>`, è consentito anche ``*``. Per le richieste :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>`, dovrebbe essere il componente autoritativo (``host:port``).

Le intestazioni sono intestazioni di richiesta HTTP.

Invia i dati del corpo grezzi, come array di byte e non li codifica in alcun modo.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_http_proxy>`

Imposta il server proxy per le richieste HTTP.

Il server proxy non è impostato se ``host`` è vuoto o ``port`` è -1.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_https_proxy>`

Imposta il server proxy per le richieste HTTPS.

Il server proxy non è impostato se ``host`` è vuoto o ``port`` è -1.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
