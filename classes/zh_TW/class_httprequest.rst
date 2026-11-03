:github_url: hide

.. _class_HTTPRequest:

HTTPRequest
===========

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

具有發送 HTTP(S) 請求能力的節點。

.. rst-class:: classref-introduction-group

說明
----

一個具備發送 HTTP 請求能力的節點。它在內部使用了 :ref:`HTTPClient<class_HTTPClient>`\ 。

可用於發起 HTTP 請求，例如通過 HTTP 下載或上傳檔案及網頁內容。

\ **警告：** 關於各種限制（尤其是 TLS 安全性方面），請參閱 :ref:`HTTPClient<class_HTTPClient>` 上的相關說明和警告。

\ **注意：** 匯出到 Android 平台時，請務必在匯出專案或使用一鍵部署之前，在 Android 匯出預設中啟用 ``INTERNET``\ （網路存取）權限。否則，Android 系統會攔截任何形式的網路通信。

\ **範例：** 呼叫一個 REST API 並輸出其回傳的其中一個欄位：


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # 建立一個 HTTP 請求節點，並連接它的完成訊號。
        var http_request = HTTPRequest.new()
        add_child(http_request)
        http_request.request_completed.connect(self._http_request_completed)

        # 執行一個 GET 請求。編寫（這段程式碼）時，下方的 URL 會回傳 JSON 格式的資料。
        var error = http_request.request("https://httpbin.org/get")
        if error != OK:
            push_error("An error occurred in the HTTP request.")

        # 執行一個 POST 請求。編寫（這段程式碼）時，下方的 URL 會回傳 JSON 格式的資料。
        # 注意：不要使用單個 HTTPRequest 節點同時發起多個請求。
        # 下面提供的程式碼片段僅供參考。
        var body = JSON.stringify({"name": "Godette"})
        error = http_request.request("https://httpbin.org/post", [], HTTPClient.METHOD_POST, body)
        if error != OK:
            push_error("An error occurred in the HTTP request.")

    # 當 HTTP 請求完成時被呼叫。
    func _http_request_completed(result, response_code, headers, body):
        var json = JSON.new()
        json.parse(body.get_string_from_utf8())
        var response = json.get_data()

        # 將輸出出 HTTPRequest 節點所使用的使用者代理字串（該字串由 httpbin.org 識別）。
        print(response.headers["User-Agent"])

 .. code-tab:: csharp

    public override void _Ready()
    {
        // 建立一個 HTTP 請求節點，並連接它的完成訊號。
        var httpRequest = new HttpRequest();
        AddChild(httpRequest);
        httpRequest.RequestCompleted += HttpRequestCompleted;

        // 執行一個 GET 請求。編寫（這段程式碼）時，下方的 URL 會回傳 JSON 格式的資料。
        Error error = httpRequest.Request("https://httpbin.org/get");
        if (error != Error.Ok)
        {
            GD.PushError("An error occurred in the HTTP request.");
        }

        // 執行一個 POST 請求。編寫（這段程式碼）時，下方的 URL 會回傳 JSON 格式的資料。
        // 注意：不要使用單個 HTTPRequest 節點同時發起多個請求。
        // 下面提供的程式碼片段僅供參考。
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

    // 在 HTTP 請求完成時被呼叫。
    private void HttpRequestCompleted(long result, long responseCode, string[] headers, byte[] body)
    {
        var json = new Json();
        json.Parse(body.GetStringFromUtf8());
        var response = json.GetData().AsGodotDictionary();

        // 將輸出出 HTTPRequest 節點所使用的使用者代理字串（該字串由 httpbin.org 識別）。
        GD.Print((response["headers"].AsGodotDictionary())["User-Agent"]);
    }



\ **範例：** 使用 **HTTPRequest** 載入一張圖片並顯示它：


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # 建立一個 HTTP 請求節點，並連接它的完成訊號。
        var http_request = HTTPRequest.new()
        add_child(http_request)
        http_request.request_completed.connect(self._http_request_completed)

        # 執行 HTTP 請求。編寫（這段程式碼）時，下方的 URL 會回傳一張 PNG 格式的圖片。
        var error = http_request.request("https://placehold.co/512.png")
        if error != OK:
            push_error("An error occurred in the HTTP request.")

    # 當 HTTP 請求完成時被呼叫。
    func _http_request_completed(result, response_code, headers, body):
        if result != HTTPRequest.RESULT_SUCCESS:
            push_error("Image couldn't be downloaded. Try a different image.")

        var image = Image.new()
        var error = image.load_png_from_buffer(body)
        if error != OK:
            push_error("Couldn't load the image.")

        var texture = ImageTexture.create_from_image(image)

        # 在 TextureRect 節點中顯示這張圖片。
        var texture_rect = TextureRect.new()
        add_child(texture_rect)
        texture_rect.texture = texture

 .. code-tab:: csharp

    public override void _Ready()
    {
        // 建立一個 HTTP 請求節點，並連接它的完成訊號。
        var httpRequest = new HttpRequest();
        AddChild(httpRequest);
        httpRequest.RequestCompleted += HttpRequestCompleted;

        // 執行 HTTP 請求。在編寫（這段程式碼）時，下方的 URL 會回傳一張 PNG 格式的圖片。
        Error error = httpRequest.Request("https://placehold.co/512.png");
        if (error != Error.Ok)
        {
            GD.PushError("An error occurred in the HTTP request.");
        }
    }

    // 當 HTTP 請求完成時被呼叫。
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

        // 在 TextureRect 節點中顯示這張圖片。
        var textureRect = new TextureRect();
        AddChild(textureRect);
        textureRect.Texture = texture;
    }



\ **注意：** **HTTPRequest** 節點會自動處理響應體（response bodies）的解壓縮。除非你已經手動指定了，否則引擎會自動為你發出的每一個請求新增一個 ``Accept-Encoding`` 請求頭。因此，任何帶有 ``Content-Encoding: gzip`` 響應頭的回傳資料，都會被自動解壓縮，並以未壓縮的位元組形式直接交給你。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`發出 HTTP 請求 <../tutorials/networking/http_request_class>`

- :doc:`TLS 憑證 <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

屬性
----

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

方法
----

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

訊號
----

.. _class_HTTPRequest_signal_request_completed:

.. rst-class:: classref-signal

**request_completed**\ (\ result\: :ref:`int<class_int>`, response_code\: :ref:`int<class_int>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPRequest_signal_request_completed>`

請求完成時觸發。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_HTTPRequest_Result:

.. rst-class:: classref-enumeration

enum **Result**: :ref:`🔗<enum_HTTPRequest_Result>`

.. _class_HTTPRequest_constant_RESULT_SUCCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_SUCCESS** = ``0``

請求成功。

.. _class_HTTPRequest_constant_RESULT_CHUNKED_BODY_SIZE_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CHUNKED_BODY_SIZE_MISMATCH** = ``1``

請求失敗，傳輸的實際資料塊大小與預期不符。可能的原因有網路錯誤、伺服器設定問題、資料塊編碼問題等。

.. _class_HTTPRequest_constant_RESULT_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CANT_CONNECT** = ``2``

連接時請求失敗。

.. _class_HTTPRequest_constant_RESULT_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CANT_RESOLVE** = ``3``

解析時請求失敗。

.. _class_HTTPRequest_constant_RESULT_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CONNECTION_ERROR** = ``4``

因連接（讀寫）錯誤而失敗。

.. _class_HTTPRequest_constant_RESULT_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_TLS_HANDSHAKE_ERROR** = ``5``

TLS 握手時請求失敗。

.. _class_HTTPRequest_constant_RESULT_NO_RESPONSE:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_NO_RESPONSE** = ``6``

請求（目前還）沒有獲得相應。

.. _class_HTTPRequest_constant_RESULT_BODY_SIZE_LIMIT_EXCEEDED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_BODY_SIZE_LIMIT_EXCEEDED** = ``7``

請求超出了大小上限，見 :ref:`body_size_limit<class_HTTPRequest_property_body_size_limit>`\ 。

.. _class_HTTPRequest_constant_RESULT_BODY_DECOMPRESS_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_BODY_DECOMPRESS_FAILED** = ``8``

請求失敗，解壓響應體出錯。可能的原因有壓縮格式不支援、壓縮格式錯誤、資料損壞、傳輸不完整等。

.. _class_HTTPRequest_constant_RESULT_REQUEST_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_REQUEST_FAILED** = ``9``

請求失敗（目前未使用）。

.. _class_HTTPRequest_constant_RESULT_DOWNLOAD_FILE_CANT_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_DOWNLOAD_FILE_CANT_OPEN** = ``10``

HTTPRequest 無法打開下載檔案。

.. _class_HTTPRequest_constant_RESULT_DOWNLOAD_FILE_WRITE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_DOWNLOAD_FILE_WRITE_ERROR** = ``11``

HTTPRequest 無法寫入下載檔案。

.. _class_HTTPRequest_constant_RESULT_REDIRECT_LIMIT_REACHED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_REDIRECT_LIMIT_REACHED** = ``12``

請求超出了重定向次數上限，見 :ref:`max_redirects<class_HTTPRequest_property_max_redirects>`\ 。

.. _class_HTTPRequest_constant_RESULT_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_TIMEOUT** = ``13``

請求由於超時而失敗。如果本就希望請求花費較長的時間，請嘗試增大 :ref:`timeout<class_HTTPRequest_property_timeout>`\ ，或將其設為 ``0.0`` 從而完全移除超時。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_HTTPRequest_property_accept_gzip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **accept_gzip** = ``true`` :ref:`🔗<class_HTTPRequest_property_accept_gzip>`

.. rst-class:: classref-property-setget

- |void| **set_accept_gzip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_accepting_gzip**\ (\ )

如果為 ``true``\ ，這個報頭會被新增到每個請求中：\ ``Accept-Encoding: gzip, deflate`` 告訴伺服器可以壓縮響應正文。

任何聲明 ``gzip`` 或 ``deflate`` 的 ``Content-Encoding`` 的響應正文，將被自動解壓縮，並且未壓縮的位元組將通過 :ref:`request_completed<class_HTTPRequest_signal_request_completed>` 被傳遞。

如果使用者指定了自己的 ``Accept-Encoding`` 報頭，那麼無論 :ref:`accept_gzip<class_HTTPRequest_property_accept_gzip>` 是甚麼，都不會新增任何報頭。

如果為 ``false``\ ，這將不會新增報頭，並且不會對響應正文執行任何解壓縮。響應正文的原始位元組將通過 :ref:`request_completed<class_HTTPRequest_signal_request_completed>` 回傳。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_body_size_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **body_size_limit** = ``-1`` :ref:`🔗<class_HTTPRequest_property_body_size_limit>`

.. rst-class:: classref-property-setget

- |void| **set_body_size_limit**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_body_size_limit**\ (\ )

回應正文的最大允許大小。如果回應正文被壓縮，這將用作解壓縮的正文的最大允許大小。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_download_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **download_chunk_size** = ``65536`` :ref:`🔗<class_HTTPRequest_property_download_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_download_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_download_chunk_size**\ (\ )

使用的緩衝區大小和每次反覆運算讀取的最大位元組數。參閱 :ref:`HTTPClient.read_chunk_size<class_HTTPClient_property_read_chunk_size>`\ 。

下載小檔時將其設定為較低的值，以降低記憶體使用量，但會降低下載速度，例如 4096 表示 4 KiB。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_download_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **download_file** = ``""`` :ref:`🔗<class_HTTPRequest_property_download_file>`

.. rst-class:: classref-property-setget

- |void| **set_download_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_download_file**\ (\ )

要下載到的檔案。將任何接收到的檔輸出到其中。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_max_redirects:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_redirects** = ``8`` :ref:`🔗<class_HTTPRequest_property_max_redirects>`

.. rst-class:: classref-property-setget

- |void| **set_max_redirects**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_redirects**\ (\ )

允許的最大重定向數。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **timeout** = ``0.0`` :ref:`🔗<class_HTTPRequest_property_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_timeout**\ (\ )

請求超時前的等待時間，單位為秒（與 :ref:`Engine.time_scale<class_Engine_property_time_scale>` 無關）。如果 :ref:`timeout<class_HTTPRequest_property_timeout>` 為 ``0.0``\ ，則請求將永遠不會超時。

對於簡單的請求，例如與 REST API 通信，建議將 :ref:`timeout<class_HTTPRequest_property_timeout>` 設為與伺服器響應時間匹配的值（通常在 ``1.0`` 到 ``10.0`` 之間）。這將有助於防止由於響應時間波動而導致的不必要的超時，同時仍然允許應用程式檢測請求何時超時。對於較大的請求，例如檔案下載，建議將 :ref:`timeout<class_HTTPRequest_property_timeout>` 設定為 ``0.0``\ ，停用超時功能。這將有助於防止由於超出超時值而導致大型傳輸失敗。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_use_threads:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_threads** = ``false`` :ref:`🔗<class_HTTPRequest_property_use_threads>`

.. rst-class:: classref-property-setget

- |void| **set_use_threads**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_threads**\ (\ )

為 ``true`` 時，將啟用多執行緒提高效能。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_HTTPRequest_method_cancel_request:

.. rst-class:: classref-method

|void| **cancel_request**\ (\ ) :ref:`🔗<class_HTTPRequest_method_cancel_request>`

取消目前請求。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_body_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_body_size**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_body_size>`

返回回應體長度。

\ **注意：**\ 部分 Web 伺服器可能不發送回應體長度，此時返回值將為 ``-1``\ 。如果使用分塊傳輸編碼，回應體的長度也將為 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_downloaded_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_downloaded_bytes**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_downloaded_bytes>`

返回該 HTTPRequest 已下載的位元組數。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_http_client_status:

.. rst-class:: classref-method

:ref:`Status<enum_HTTPClient_Status>` **get_http_client_status**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_http_client_status>`

回傳內部 :ref:`HTTPClient<class_HTTPClient>` 的目前狀態。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPRequest_method_request>`

在底層的 :ref:`HTTPClient<class_HTTPClient>` 上建立請求。如果沒有配置錯誤，它會嘗試使用 :ref:`HTTPClient.connect_to_host()<class_HTTPClient_method_connect_to_host>` 連接並將參數傳遞給 :ref:`HTTPClient.request()<class_HTTPClient_method_request>`\ 。

如果成功建立請求，則返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。（並不意味著伺服器已回應），如果不在樹中，則返回 :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>`\ ；如果仍在處理先前的請求，則返回 :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>`\ ；如果給定的字串不是有效的 URL 格式，則返回 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`\ ；或者如果不使用執行緒並且 :ref:`HTTPClient<class_HTTPClient>` 無法連接到主機，則返回 :ref:`@GlobalScope.ERR_CANT_CONNECT<class_@GlobalScope_constant_ERR_CANT_CONNECT>`\ 。

\ **注意：**\ 當 ``method`` 為 :ref:`HTTPClient.METHOD_GET<class_HTTPClient_constant_METHOD_GET>` 時，通過 ``request_data`` 發送的有效載荷可能會被伺服器忽略，甚至導致伺服器拒絕請求（見 `RFC 7231 第 4.3.1 節 <https://datatracker.ietf.org/doc/html/rfc7231#section-4.3.1>`__\ 瞭解更多詳情）。作為一種變通方法，可以在 URL 中將資料作為查詢字串發送（有關範例，請參見 :ref:`String.uri_encode()<class_String_method_uri_encode>`\ ）。

\ **注意：**\ 建議使用傳輸加密（TLS）並避免在 HTTP GET URL 參數中發送敏感資訊（例如登錄憑據）。考慮改用 HTTP POST 請求或 HTTP 報頭來取得此類資訊。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data_raw\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) :ref:`🔗<class_HTTPRequest_method_request_raw>`

在底層的\ :ref:`HTTPClient<class_HTTPClient>`\ 上建立請求，使用一個原始位元組陣列作為請求主體。如果沒有配置錯誤，它會嘗試使用 :ref:`HTTPClient.connect_to_host()<class_HTTPClient_method_connect_to_host>` 連接並將參數傳遞給 :ref:`HTTPClient.request()<class_HTTPClient_method_request>`\ 。

如果請求建立成功，則返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。（並不意味著伺服器已回應），\ :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` 如果不在樹中，\ :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>` 如果仍在處理先前的請求，\ :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` 如果給定的字串不是有效的 URL 格式，或 :ref:`@GlobalScope.ERR_CANT_CONNECT<class_@GlobalScope_constant_ERR_CANT_CONNECT>`\ 如果不使用執行緒並且 :ref:`HTTPClient<class_HTTPClient>` 無法連接到主機。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPRequest_method_set_http_proxy>`

設定 HTTP 請求使用的代理伺服器。

如果 ``host`` 為空或者 ``port`` 為 -1，則會取消設定代理伺服器。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPRequest_method_set_https_proxy>`

設定 HTTPS 請求使用的代理伺服器。

如果 ``host`` 為空或者 ``port`` 為 -1，則會取消設定代理伺服器。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_tls_options:

.. rst-class:: classref-method

|void| **set_tls_options**\ (\ client_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_HTTPRequest_method_set_tls_options>`

設定連接到 HTTPS 伺服器時使用的 :ref:`TLSOptions<class_TLSOptions>`\ 。見 :ref:`TLSOptions.client()<class_TLSOptions_method_client>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
