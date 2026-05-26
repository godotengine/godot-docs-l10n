:github_url: hide

.. _class_HTTPRequest:

HTTPRequest
===========

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo con la capacità di inviare richieste HTTP(S).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A node with the ability to send HTTP requests. Uses :ref:`HTTPClient<class_HTTPClient>` internally.

Can be used to make HTTP requests, i.e. download or upload files or web content via HTTP.

\ **Warning:** See the notes and warnings on :ref:`HTTPClient<class_HTTPClient>` for limitations, especially regarding TLS security.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

\ **Example:** Contact a REST API and print one of its returned fields:


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Create an HTTP request node and connect its completion signal.
        var http_request = HTTPRequest.new()
        add_child(http_request)
        http_request.request_completed.connect(self._http_request_completed)

        # Perform a GET request. The URL below returns JSON as of writing.
        var error = http_request.request("https://httpbin.org/get")
        if error != OK:
            push_error("An error occurred in the HTTP request.")

        # Perform a POST request. The URL below returns JSON as of writing.
        # Note: Don't make simultaneous requests using a single HTTPRequest node.
        # The snippet below is provided for reference only.
        var body = JSON.stringify({"name": "Godette"})
        error = http_request.request("https://httpbin.org/post", [], HTTPClient.METHOD_POST, body)
        if error != OK:
            push_error("An error occurred in the HTTP request.")

    # Called when the HTTP request is completed.
    func _http_request_completed(result, response_code, headers, body):
        var json = JSON.new()
        json.parse(body.get_string_from_utf8())
        var response = json.get_data()

        # Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
        print(response.headers["User-Agent"])

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Create an HTTP request node and connect its completion signal.
        var httpRequest = new HttpRequest();
        AddChild(httpRequest);
        httpRequest.RequestCompleted += HttpRequestCompleted;

        // Perform a GET request. The URL below returns JSON as of writing.
        Error error = httpRequest.Request("https://httpbin.org/get");
        if (error != Error.Ok)
        {
            GD.PushError("An error occurred in the HTTP request.");
        }

        // Perform a POST request. The URL below returns JSON as of writing.
        // Note: Don't make simultaneous requests using a single HTTPRequest node.
        // The snippet below is provided for reference only.
        string body = Json.Stringify(new Godot.Collections.Dictionary
        {
            { "name", "Godette" }
        });
        error = httpRequest.Request("https://httpbin.org/post", null, HttpClient.Method.Post, body);
        if (error != Error.Ok)
        {
            GD.PushError("An error occurred in the HTTP request.");
        }
    }

    // Called when the HTTP request is completed.
    private void HttpRequestCompleted(long result, long responseCode, string[] headers, byte[] body)
    {
        var json = new Json();
        json.Parse(body.GetStringFromUtf8());
        var response = json.GetData().AsGodotDictionary();

        // Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
        GD.Print((response["headers"].AsGodotDictionary())["User-Agent"]);
    }



\ **Example:** Load an image using **HTTPRequest** and display it:


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Create an HTTP request node and connect its completion signal.
        var http_request = HTTPRequest.new()
        add_child(http_request)
        http_request.request_completed.connect(self._http_request_completed)

        # Perform the HTTP request. The URL below returns a PNG image as of writing.
        var error = http_request.request("https://placehold.co/512.png")
        if error != OK:
            push_error("An error occurred in the HTTP request.")

    # Called when the HTTP request is completed.
    func _http_request_completed(result, response_code, headers, body):
        if result != HTTPRequest.RESULT_SUCCESS:
            push_error("Image couldn't be downloaded. Try a different image.")

        var image = Image.new()
        var error = image.load_png_from_buffer(body)
        if error != OK:
            push_error("Couldn't load the image.")

        var texture = ImageTexture.create_from_image(image)

        # Display the image in a TextureRect node.
        var texture_rect = TextureRect.new()
        add_child(texture_rect)
        texture_rect.texture = texture

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Create an HTTP request node and connect its completion signal.
        var httpRequest = new HttpRequest();
        AddChild(httpRequest);
        httpRequest.RequestCompleted += HttpRequestCompleted;

        // Perform the HTTP request. The URL below returns a PNG image as of writing.
        Error error = httpRequest.Request("https://placehold.co/512.png");
        if (error != Error.Ok)
        {
            GD.PushError("An error occurred in the HTTP request.");
        }
    }

    // Called when the HTTP request is completed.
    private void HttpRequestCompleted(long result, long responseCode, string[] headers, byte[] body)
    {
        if (result != (long)HttpRequest.Result.Success)
        {
            GD.PushError("Image couldn't be downloaded. Try a different image.");
        }
        var image = new Image();
        Error error = image.LoadPngFromBuffer(body);
        if (error != Error.Ok)
        {
            GD.PushError("Couldn't load the image.");
        }

        var texture = ImageTexture.CreateFromImage(image);

        // Display the image in a TextureRect node.
        var textureRect = new TextureRect();
        AddChild(textureRect);
        textureRect.Texture = texture;
    }



\ **Note:** **HTTPRequest** nodes will automatically handle decompression of response bodies. An ``Accept-Encoding`` header will be automatically added to each of your requests, unless one is already specified. Any response with a ``Content-Encoding: gzip`` header will automatically be decompressed and delivered to you as uncompressed bytes.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Effettuare richieste HTTP <../tutorials/networking/http_request_class>`

- :doc:`Certificati TLS <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`accept_gzip<class_HTTPRequest_property_accept_gzip>`                 | ``true``  |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`body_size_limit<class_HTTPRequest_property_body_size_limit>`         | ``-1``    |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`download_chunk_size<class_HTTPRequest_property_download_chunk_size>` | ``65536`` |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`download_file<class_HTTPRequest_property_download_file>`             | ``""``    |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`max_redirects<class_HTTPRequest_property_max_redirects>`             | ``8``     |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`timeout<class_HTTPRequest_property_timeout>`                         | ``0.0``   |
   +-----------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`use_threads<class_HTTPRequest_property_use_threads>`                 | ``false`` |
   +-----------------------------+----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`cancel_request<class_HTTPRequest_method_cancel_request>`\ (\ )                                                                                                                                                                                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_body_size<class_HTTPRequest_method_get_body_size>`\ (\ ) |const|                                                                                                                                                                                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_downloaded_bytes<class_HTTPRequest_method_get_downloaded_bytes>`\ (\ ) |const|                                                                                                                                                                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_HTTPClient_Status>` | :ref:`get_http_client_status<class_HTTPRequest_method_get_http_client_status>`\ (\ ) |const|                                                                                                                                                                                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`request<class_HTTPRequest_method_request>`\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data\: :ref:`String<class_String>` = ""\ )                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`request_raw<class_HTTPRequest_method_request_raw>`\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data_raw\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_http_proxy<class_HTTPRequest_method_set_http_proxy>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                                                                                                                                                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_https_proxy<class_HTTPRequest_method_set_https_proxy>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                                                                                                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_tls_options<class_HTTPRequest_method_set_tls_options>`\ (\ client_options\: :ref:`TLSOptions<class_TLSOptions>`\ )                                                                                                                                                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_HTTPRequest_signal_request_completed:

.. rst-class:: classref-signal

**request_completed**\ (\ result\: :ref:`int<class_int>`, response_code\: :ref:`int<class_int>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPRequest_signal_request_completed>`

Emesso quando una richiesta è completata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_HTTPRequest_Result:

.. rst-class:: classref-enumeration

enum **Result**: :ref:`🔗<enum_HTTPRequest_Result>`

.. _class_HTTPRequest_constant_RESULT_SUCCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_SUCCESS** = ``0``

Richiesta riuscita.

.. _class_HTTPRequest_constant_RESULT_CHUNKED_BODY_SIZE_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CHUNKED_BODY_SIZE_MISMATCH** = ``1``

Richiesta non riuscita a causa di una mancata corrispondenza tra la dimensione del corpo in blocchi prevista e quella effettiva durante il trasferimento. Le possibili cause includono errori di rete, configurazione errata del server o problemi con la codifica in blocchi.

.. _class_HTTPRequest_constant_RESULT_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CANT_CONNECT** = ``2``

Richiesta fallita durante la connessione.

.. _class_HTTPRequest_constant_RESULT_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CANT_RESOLVE** = ``3``

Richiesta fallita durante la risoluzione.

.. _class_HTTPRequest_constant_RESULT_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CONNECTION_ERROR** = ``4``

Richiesta fallita a causa di un errore di connessione (lettura/scrittura).

.. _class_HTTPRequest_constant_RESULT_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_TLS_HANDSHAKE_ERROR** = ``5``

Richiesta fallita durante l'handshake TLS.

.. _class_HTTPRequest_constant_RESULT_NO_RESPONSE:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_NO_RESPONSE** = ``6``

La richiesta non ha (ancora) una risposta.

.. _class_HTTPRequest_constant_RESULT_BODY_SIZE_LIMIT_EXCEEDED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_BODY_SIZE_LIMIT_EXCEEDED** = ``7``

La richiesta ha superato il limite massimo di dimensione, vedi :ref:`body_size_limit<class_HTTPRequest_property_body_size_limit>`.

.. _class_HTTPRequest_constant_RESULT_BODY_DECOMPRESS_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_BODY_DECOMPRESS_FAILED** = ``8``

Richiesta non riuscita a causa di un errore durante la decompressione del corpo della risposta. Le possibili cause includono un formato di compressione non supportato o non corretto, dati danneggiati o trasferimento incompleto.

.. _class_HTTPRequest_constant_RESULT_REQUEST_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_REQUEST_FAILED** = ``9``

Richiesta fallita (attualmente inutilizzata).

.. _class_HTTPRequest_constant_RESULT_DOWNLOAD_FILE_CANT_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_DOWNLOAD_FILE_CANT_OPEN** = ``10``

HTTPRequest non è riuscito ad aprire il file scaricato.

.. _class_HTTPRequest_constant_RESULT_DOWNLOAD_FILE_WRITE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_DOWNLOAD_FILE_WRITE_ERROR** = ``11``

HTTPRequest non è riuscito a scrivere sul file scaricato.

.. _class_HTTPRequest_constant_RESULT_REDIRECT_LIMIT_REACHED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_REDIRECT_LIMIT_REACHED** = ``12``

La richiesta ha raggiunto il limite massimo di reindirizzamenti, vedi :ref:`max_redirects<class_HTTPRequest_property_max_redirects>`.

.. _class_HTTPRequest_constant_RESULT_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_TIMEOUT** = ``13``

Richiesta non riuscita a causa di un timeout. Se prevedi che le richieste impiegheranno molto tempo, prova ad aumentare il valore di :ref:`timeout<class_HTTPRequest_property_timeout>` o a impostarlo su ``0.0`` per rimuovere completamente il timeout.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_HTTPRequest_property_accept_gzip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **accept_gzip** = ``true`` :ref:`🔗<class_HTTPRequest_property_accept_gzip>`

.. rst-class:: classref-property-setget

- |void| **set_accept_gzip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_accepting_gzip**\ (\ )

Se ``true``, questa intestazione sarà aggiunta a ogni richiesta: ``Accept-Encoding: gzip, deflate`` la quale indica ai server che è possibile comprimere i corpi delle risposte.

Qualsiasi corpo della risposta che dichiara un ``Content-Encoding`` di ``gzip`` o ``deflate`` sarà automaticamente decompresso e i byte non compressi saranno consegnati tramite :ref:`request_completed<class_HTTPRequest_signal_request_completed>`.

Se l'utente ha specificato la propria intestazione ``Accept-Encoding``, nessuna intestazione sarà aggiunta indipendentemente da :ref:`accept_gzip<class_HTTPRequest_property_accept_gzip>`.

Se ``false`` nessuna intestazione sarà aggiunta e nessuna decompressione sarà effettuata sui corpi delle risposte. I byte grezzi del corpo della risposta saranno restituiti tramite :ref:`request_completed<class_HTTPRequest_signal_request_completed>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_body_size_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **body_size_limit** = ``-1`` :ref:`🔗<class_HTTPRequest_property_body_size_limit>`

.. rst-class:: classref-property-setget

- |void| **set_body_size_limit**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_body_size_limit**\ (\ )

Dimensione massima consentita per i corpi delle risposte. Se il corpo della risposta è compresso, ciò sarà utilizzato come dimensione massima consentita per il corpo decompresso.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_download_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **download_chunk_size** = ``65536`` :ref:`🔗<class_HTTPRequest_property_download_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_download_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_download_chunk_size**\ (\ )

La dimensione del buffer utilizzato e il numero massimo di byte da leggere per ogni iterazione. Vedi :ref:`HTTPClient.read_chunk_size<class_HTTPClient_property_read_chunk_size>`.

Imposta questo su un valore inferiore (ad esempio 4096 per 4 KiB) quando si scaricano piccoli file per ridurre l'utilizzo di memoria a scapito della velocità di download.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_download_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **download_file** = ``""`` :ref:`🔗<class_HTTPRequest_property_download_file>`

.. rst-class:: classref-property-setget

- |void| **set_download_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_download_file**\ (\ )

Il file in cui scaricare. Invierà qualsiasi file ricevuto in esso.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_max_redirects:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_redirects** = ``8`` :ref:`🔗<class_HTTPRequest_property_max_redirects>`

.. rst-class:: classref-property-setget

- |void| **set_max_redirects**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_redirects**\ (\ )

Numero massimo di reindirizzamenti consentiti.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **timeout** = ``0.0`` :ref:`🔗<class_HTTPRequest_property_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_timeout**\ (\ )

The duration to wait before a request times out, in seconds (independent of :ref:`Engine.time_scale<class_Engine_property_time_scale>`). If :ref:`timeout<class_HTTPRequest_property_timeout>` is set to ``0.0``, the request will never time out.

For simple requests, such as communication with a REST API, it is recommended to set :ref:`timeout<class_HTTPRequest_property_timeout>` to a value suitable for the server response time (commonly between ``1.0`` and ``10.0``). This will help prevent unwanted timeouts caused by variation in response times while still allowing the application to detect when a request has timed out. For larger requests such as file downloads, it is recommended to set :ref:`timeout<class_HTTPRequest_property_timeout>` to ``0.0``, disabling the timeout functionality. This will help prevent large transfers from failing due to exceeding the timeout value.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_use_threads:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_threads** = ``false`` :ref:`🔗<class_HTTPRequest_property_use_threads>`

.. rst-class:: classref-property-setget

- |void| **set_use_threads**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_threads**\ (\ )

Se ``true``, il multithreading è utilizzato per migliorare le prestazioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_HTTPRequest_method_cancel_request:

.. rst-class:: classref-method

|void| **cancel_request**\ (\ ) :ref:`🔗<class_HTTPRequest_method_cancel_request>`

Annulla la richiesta in corso.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_body_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_body_size**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_body_size>`

Restituisce la lunghezza del corpo della risposta.

\ **Nota:** Alcuni server Web potrebbero non inviare una lunghezza del corpo. In questo caso, il valore restituito sarà ``-1``. Anche se si utilizza la codifica di trasferimento in blocchi, la lunghezza del corpo sarà ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_downloaded_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_downloaded_bytes**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_downloaded_bytes>`

Restituisce il numero di byte scaricati da questa HTTPRequest.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_http_client_status:

.. rst-class:: classref-method

:ref:`Status<enum_HTTPClient_Status>` **get_http_client_status**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_http_client_status>`

Restituisce lo stato attuale del :ref:`HTTPClient<class_HTTPClient>` sottostante.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPRequest_method_request>`

Crea una richiesta sul :ref:`HTTPClient<class_HTTPClient>` sottostante. Se non ci sono errori di configurazione, prova a connettersi tramite :ref:`HTTPClient.connect_to_host()<class_HTTPClient_method_connect_to_host>` e passa i parametri a :ref:`HTTPClient.request()<class_HTTPClient_method_request>`.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` se la richiesta è stata creata correttamente. (Non significa che il server abbia risposto), :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` se non è nell'albero, :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>` se sta ancora elaborando la richiesta precedente, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` se la stringa fornita non è un formato URL valido o :ref:`@GlobalScope.ERR_CANT_CONNECT<class_@GlobalScope_constant_ERR_CANT_CONNECT>` se non sta usando un thread e :ref:`HTTPClient<class_HTTPClient>` non riesce a connettersi all'host.

\ **Nota:** Quando ``method`` è :ref:`HTTPClient.METHOD_GET<class_HTTPClient_constant_METHOD_GET>`, il payload inviato tramite ``request_data`` potrebbe essere ignorato dal server o addirittura causare la richiesta a essere rifiutata dal server (controlla `RFC 7231 sezione 4.3.1 <https://datatracker.ietf.org/doc/html/rfc7231#section-4.3.1>`__ per maggiori dettagli). Come alternativa, è possibile inviare i dati come stringa di richiesta nell'URL (vedi :ref:`String.uri_encode()<class_String_method_uri_encode>` per un esempio).

\ **Nota:** Si consiglia di utilizzare la crittografia di trasporto (TLS) ed evitare di inviare informazioni sensibili (come le credenziali di accesso) nei parametri URL HTTP GET. Considera di utilizzare richieste HTTP POST o intestazioni HTTP per tali informazioni.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data_raw\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) :ref:`🔗<class_HTTPRequest_method_request_raw>`

Crea una richiesta sul sottostante :ref:`HTTPClient<class_HTTPClient>` utilizzando un array grezzo di byte per il corpo della richiesta. Se non ci sono errori di configurazione, prova a connettersi tramite :ref:`HTTPClient.connect_to_host()<class_HTTPClient_method_connect_to_host>` e passa i parametri a :ref:`HTTPClient.request()<class_HTTPClient_method_request>`.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` se la richiesta è stata creata correttamente. (Non significa che il server abbia risposto), :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` se non è nell'albero, :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>` se sta ancora elaborando la richiesta precedente, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` se la stringa fornita non è un formato URL valido o :ref:`@GlobalScope.ERR_CANT_CONNECT<class_@GlobalScope_constant_ERR_CANT_CONNECT>` se non utilizza un thread e :ref:`HTTPClient<class_HTTPClient>` non riesce a connettersi all'host.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPRequest_method_set_http_proxy>`

Imposta il server proxy per le richieste HTTP.

Il server proxy non è impostato se ``host`` è vuoto o ``port`` è -1.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPRequest_method_set_https_proxy>`

Imposta il server proxy per le richieste HTTPS.

Il server proxy non è impostato se ``host`` è vuoto o ``port`` è -1.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_tls_options:

.. rst-class:: classref-method

|void| **set_tls_options**\ (\ client_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_HTTPRequest_method_set_tls_options>`

Imposta le :ref:`TLSOptions<class_TLSOptions>` da utilizzare quando ci si connette a un server HTTPS. Vedi :ref:`TLSOptions.client()<class_TLSOptions_method_client>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
