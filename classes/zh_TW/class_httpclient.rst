:github_url: hide

.. _class_HTTPClient:

HTTPClient
==========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

低級別的超文字傳輸協定使用者端。

.. rst-class:: classref-introduction-group

說明
----

Hyper-text transfer protocol client (sometimes called "User Agent"). Used to make HTTP requests to download web content, upload files and other data or to communicate with various services, among other use cases.

See the :ref:`HTTPRequest<class_HTTPRequest>` node for a higher-level alternative.

\ **Note:** This client only needs to connect to a host once (see :ref:`connect_to_host()<class_HTTPClient_method_connect_to_host>`) to send multiple requests. Because of this, methods that take URLs usually take just the part after the host instead of the full URL, as the client is already connected to a host. See :ref:`request()<class_HTTPClient_method_request>` for a full example and to get started.

An **HTTPClient** should be reused between multiple requests or to connect to different hosts instead of creating one client per request. Supports Transport Layer Security (TLS), including server certificate verification. HTTP status codes in the 2xx range indicate success, 3xx redirection (i.e. "try again, but over here"), 4xx something was wrong with the request, and 5xx something went wrong on the server's side.

For more information on HTTP, see `MDN's documentation on HTTP <https://developer.mozilla.org/en-US/docs/Web/HTTP>`__ (or read `RFC 2616 <https://tools.ietf.org/html/rfc2616>`__ to get it straight from the source).

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

\ **Note:** It's recommended to use transport encryption (TLS) and to avoid sending sensitive information (such as login credentials) in HTTP GET URL parameters. Consider using HTTP POST requests or HTTP headers for such information instead.

\ **Note:** When performing HTTP requests from a project exported to Web, keep in mind the remote server may not allow requests from foreign origins due to `CORS <https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS>`__. If you host the server in question, you should modify its backend to allow requests from foreign origins by adding the ``Access-Control-Allow-Origin: *`` HTTP header.

\ **Note:** TLS support is currently limited to TLSv1.2 and TLSv1.3. Attempting to connect to a server that only supports older (insecure) TLS versions will return an error.

\ **Warning:** TLS certificate revocation and certificate pinning are currently not supported. Revoked certificates are accepted as long as they are otherwise valid. If this is a concern, you may want to use automatically managed certificates with a short validity period.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`HTTP 使用者端類 <../tutorials/networking/http_client_class>`

- :doc:`TLS 憑證 <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

屬性
----

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

方法
----

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

列舉
----

.. _enum_HTTPClient_Method:

.. rst-class:: classref-enumeration

enum **Method**: :ref:`🔗<enum_HTTPClient_Method>`

.. _class_HTTPClient_constant_METHOD_GET:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_GET** = ``0``

HTTP GET 方法。GET 方法用於請求指定資源的某種表示。使用 GET 的請求應該只進行資料的獲取。

.. _class_HTTPClient_constant_METHOD_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_HEAD** = ``1``

HTTP HEAD 方法。HEAD 方法請求的是和 GET 請求一樣的相應，但不包含回應體。用來請求中繼資料很方便，比如可以通過請求 HTTP 報頭來判斷資源是否存在。

.. _class_HTTPClient_constant_METHOD_POST:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_POST** = ``2``

HTTP POST 方法。POST 方法用於將實體提交給指定的資源，經常會造成伺服器端狀態的更改或者其他副作用。常用於提交表單和其他資料，或者上傳檔。

.. _class_HTTPClient_constant_METHOD_PUT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PUT** = ``3``

HTTP PUT 方法。PUT 方法的目的是使用請求負載替換目標資源的所有目前表示。（可以把 POST 理解為“建立或更新”，把 PUT 理解為“更小”，不過很多服務在這兩者的含義之間並不作明顯的區別）。

.. _class_HTTPClient_constant_METHOD_DELETE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_DELETE** = ``4``

HTTP DELETE 方法。DELETE 方法請求刪除指定的資源。

.. _class_HTTPClient_constant_METHOD_OPTIONS:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_OPTIONS** = ``5``

HTTP OPTIONS 方法。OPTIONS 方法的目的是獲取目標資源的通訊選項。很少使用。

.. _class_HTTPClient_constant_METHOD_TRACE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_TRACE** = ``6``

HTTP TRACE 方法。TRACE 方法會沿目標資源的路徑做消息回環測試。返回的回應體中會包含完整的 HTTP 請求。很少使用。

.. _class_HTTPClient_constant_METHOD_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_CONNECT** = ``7``

HTTP CONNECT 方法。CONNECT 方法會與目標資源所表示的伺服器建立隧道。很少使用。

.. _class_HTTPClient_constant_METHOD_PATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PATCH** = ``8``

HTTP PATCH 方法。PATCH 方法用於對資源進行部分修改。

.. _class_HTTPClient_constant_METHOD_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_MAX** = ``9``

代表 :ref:`Method<enum_HTTPClient_Method>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_HTTPClient_Status>`

.. _class_HTTPClient_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_DISCONNECTED** = ``0``

狀態：與伺服器斷開連接。

.. _class_HTTPClient_constant_STATUS_RESOLVING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_RESOLVING** = ``1``

狀態：正在根據 URL 的主機名稱解析 IP。

.. _class_HTTPClient_constant_STATUS_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_RESOLVE** = ``2``

狀態：DNS 失敗：無法解析指定 URL 的主機名稱。

.. _class_HTTPClient_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTING** = ``3``

狀態：正在連接到伺服器。

.. _class_HTTPClient_constant_STATUS_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_CONNECT** = ``4``

狀態：無法連接到伺服器。

.. _class_HTTPClient_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTED** = ``5``

狀態：連接已建立。

.. _class_HTTPClient_constant_STATUS_REQUESTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_REQUESTING** = ``6``

狀態：正在發送請求。

.. _class_HTTPClient_constant_STATUS_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_BODY** = ``7``

狀態：已獲取 HTTP 回應體。

.. _class_HTTPClient_constant_STATUS_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTION_ERROR** = ``8``

狀態：HTTP 連接出錯。

.. _class_HTTPClient_constant_STATUS_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_TLS_HANDSHAKE_ERROR** = ``9``

狀態：TLS 握手出錯。

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_ResponseCode:

.. rst-class:: classref-enumeration

enum **ResponseCode**: :ref:`🔗<enum_HTTPClient_ResponseCode>`

.. _class_HTTPClient_constant_RESPONSE_CONTINUE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONTINUE** = ``100``

HTTP 狀態碼 ``100 Continue``\ 。是表示目前為止一切正常的中間回應，客戶端應該繼續請求（如果已經請求完就可以直接忽略這個狀態）。

.. _class_HTTPClient_constant_RESPONSE_SWITCHING_PROTOCOLS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCHING_PROTOCOLS** = ``101``

HTTP 狀態碼 ``101 Switching Protocol``\ 。針對客戶 ``Upgrade`` 請求的回應，表示伺服器所轉換到的協議。

.. _class_HTTPClient_constant_RESPONSE_PROCESSING:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROCESSING** = ``102``

HTTP 狀態碼 ``102 Processing``\ （WebDAV）。表示伺服器已收到請求並且正在處理，尚未生成回應。

.. _class_HTTPClient_constant_RESPONSE_OK:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_OK** = ``200``

HTTP status code ``200 OK``. The request has succeeded. Default response for successful requests. Meaning varies depending on the request:

- :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`: The resource has been fetched and is transmitted in the message body.

- :ref:`METHOD_HEAD<class_HTTPClient_constant_METHOD_HEAD>`: The entity headers are in the message body.

- :ref:`METHOD_POST<class_HTTPClient_constant_METHOD_POST>`: The resource describing the result of the action is transmitted in the message body.

- :ref:`METHOD_TRACE<class_HTTPClient_constant_METHOD_TRACE>`: The message body contains the request message as received by the server.

.. _class_HTTPClient_constant_RESPONSE_CREATED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CREATED** = ``201``

HTTP 狀態碼 ``201 Created``\ 。請求成功，並且建立了新資源。通常是針對 PUT 請求的回應.

.. _class_HTTPClient_constant_RESPONSE_ACCEPTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ACCEPTED** = ``202``

HTTP 狀態碼 ``202 Accepted``\ 。請求已收到，但尚未處理。HTTP 協議中無法實作在完成對請求的處理後非同步地把請求發回來。這個回應的使用場景應該是會有其他程序或者伺服器去處理這個請求，或者會進行批量處理。

.. _class_HTTPClient_constant_RESPONSE_NON_AUTHORITATIVE_INFORMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NON_AUTHORITATIVE_INFORMATION** = ``203``

HTTP 狀態碼 ``203 Non-Authoritative Information``\ 。該回應狀態碼表示返回的元消息與原始伺服器所返回的不一致，而是從本地或者協力廠商副本中收集而來。除了特殊情況，應該優先選用 200 OK 回應所返回的內容。

.. _class_HTTPClient_constant_RESPONSE_NO_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NO_CONTENT** = ``204``

HTTP 狀態碼 ``204 No Content``\ 。本請求無回應內容，但報頭可能有用。用戶代理可能會根據該資源更新快取報頭。

.. _class_HTTPClient_constant_RESPONSE_RESET_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_RESET_CONTENT** = ``205``

HTTP 狀態碼 ``205 Reset Content``\ 。伺服器已完成對請求的處理，並要求使用者端將導致該請求的“文件視圖”重設回原始狀態。

.. _class_HTTPClient_constant_RESPONSE_PARTIAL_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PARTIAL_CONTENT** = ``206``

HTTP 狀態碼 ``206 Partial Content``\ 。使用者端如果發送範圍（Range）報頭就會收到該響應碼，用於將下載拆分成多個資料流程。

.. _class_HTTPClient_constant_RESPONSE_MULTI_STATUS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTI_STATUS** = ``207``

HTTP 狀態碼 ``207 Multi-Status``\ （WebDAV）。關於多個資源的多狀態響應，適用於需要返回多個狀態碼的情況。

.. _class_HTTPClient_constant_RESPONSE_ALREADY_REPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ALREADY_REPORTED** = ``208``

HTTP 狀態碼 ``208 Already Reported``\ （WebDAV）。在 DAV: propstat 相應元素內部使用，可以防止重複走訪同一合集中不同綁定的內部成員。

.. _class_HTTPClient_constant_RESPONSE_IM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_USED** = ``226``

HTTP 狀態碼 ``226 IM Used``\ （WebDAV）。伺服器完成了對該資源的 GET 請求，所回應的資源表示，是針對目前實例進行若干共同修改的結果。

.. _class_HTTPClient_constant_RESPONSE_MULTIPLE_CHOICES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTIPLE_CHOICES** = ``300``

HTTP 狀態碼 ``300 Multiple Choice``\ 。請求有多個可能的回應，並且沒有從中挑選其一的標準方法。使用者代理或者使用者應該自行挑選。

.. _class_HTTPClient_constant_RESPONSE_MOVED_PERMANENTLY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MOVED_PERMANENTLY** = ``301``

HTTP 狀態碼 ``301 Moved Permanently``\ 。重定向。該回應碼表示所請求資源的 URI 已改變。新的 URI 通常包含在響應中。

.. _class_HTTPClient_constant_RESPONSE_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FOUND** = ``302``

HTTP 狀態碼 ``302 Found``\ 。臨時重定向。該回應碼表示所請求資源的 URI 已臨時改變。該 URI 將來還可能發生變，因此後續的請求應該仍然使用相同的 URI。

.. _class_HTTPClient_constant_RESPONSE_SEE_OTHER:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SEE_OTHER** = ``303``

HTTP 狀態碼 ``303 See Other``\ 。伺服器將使用者代理重定向到另一個資源，資源由 Location 報頭中的 URI 指定。用於提供針對原始請求的間接回應。

.. _class_HTTPClient_constant_RESPONSE_NOT_MODIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_MODIFIED** = ``304``

HTTP 狀態碼 ``304 Not Modified``\ 。收到了條件 GET 或者 HEAD，並且要不是因為該條件為 ``false`` 就會返回 200 OK 回應。

.. _class_HTTPClient_constant_RESPONSE_USE_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_USE_PROXY** = ``305``

**已棄用：** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

HTTP status code ``305 Use Proxy``.

.. _class_HTTPClient_constant_RESPONSE_SWITCH_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCH_PROXY** = ``306``

**已棄用：** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

HTTP status code ``306 Switch Proxy``.

.. _class_HTTPClient_constant_RESPONSE_TEMPORARY_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TEMPORARY_REDIRECT** = ``307``

HTTP 狀態碼 ``307 Temporary Redirect``\ 。目標資源暫時位於不同的 URI，使用者代理如果要自動重定向到該 URI，就一定不能更改所使用的請求方法。

.. _class_HTTPClient_constant_RESPONSE_PERMANENT_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PERMANENT_REDIRECT** = ``308``

HTTP 狀態碼 ``308 Permanent Redirect``\ 。目標資源已被賦予全新的永久 URI，後續針對該資源的請求應當使用所提供的 URI。

.. _class_HTTPClient_constant_RESPONSE_BAD_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_REQUEST** = ``400``

HTTP 狀態碼 ``400 Bad Request``\ 。請求無效。伺服器認為使用者端出錯，所以無法或者拒絕處理該請求（例如：請求語法錯誤、請求消息影格無效、請求內容無效、請求路由可疑）。

.. _class_HTTPClient_constant_RESPONSE_UNAUTHORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAUTHORIZED** = ``401``

HTTP 狀態碼 ``401 Unauthorized``\ 。需要提供認證資訊。未執行請求，原因是缺少針對目標資源的授權認證資訊。

.. _class_HTTPClient_constant_RESPONSE_PAYMENT_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PAYMENT_REQUIRED** = ``402``

HTTP 狀態碼 ``402 Payment Required``\ 。該回應碼是為將來使用保留的，本意是供數位支付系統使用，但目前尚未有所使用。

.. _class_HTTPClient_constant_RESPONSE_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FORBIDDEN** = ``403``

HTTP 狀態碼 ``403 Forbidden``\ 。使用者端沒有該內容的存取權限，即未授權，伺服器拒絕給出正確回應。與 ``401`` 不同，伺服器已收到使用者端的身份信息。

.. _class_HTTPClient_constant_RESPONSE_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_FOUND** = ``404``

HTTP 狀態碼 ``404 Not Found``\ 。伺服器無法找到所請求的資源。可能是無法識別 URL，也可能是 URL 有效但資源本身不存在。也有可能在使用者端未提供認證資訊時代替 403 返回，從而達到隱藏資源存在性的目的。

.. _class_HTTPClient_constant_RESPONSE_METHOD_NOT_ALLOWED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_METHOD_NOT_ALLOWED** = ``405``

HTTP 狀態碼 ``405 Method Not Allowed``\ 。伺服器理解請求所使用的 HTTP 方法，但該方法已被禁止使用。例如：API 可能禁止 DELETE 資源。GET 和 HEAD 這兩個方法是必須的，所以不能被禁用，也不應該返回該錯誤碼。

.. _class_HTTPClient_constant_RESPONSE_NOT_ACCEPTABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_ACCEPTABLE** = ``406``

HTTP 狀態碼 ``406 Not Acceptable``\ 。根據請求中主動注明的交涉報頭字段，目標資源沒有使用者代理所能接受的表示。用於內容交涉過程。

.. _class_HTTPClient_constant_RESPONSE_PROXY_AUTHENTICATION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROXY_AUTHENTICATION_REQUIRED** = ``407``

HTTP 狀態碼 ``407 Proxy Authentication Required``\ 。類似於 401 Unauthorized，表示使用者端需要在提供認證資訊後使用代理。

.. _class_HTTPClient_constant_RESPONSE_REQUEST_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_TIMEOUT** = ``408``

HTTP 狀態碼 ``408 Request Timeout``\ 。伺服器在其準備等待的時間段內未獲取完整的請求資訊。

.. _class_HTTPClient_constant_RESPONSE_CONFLICT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONFLICT** = ``409``

HTTP 狀態碼 ``409 Conflict``\ 。請求無法完成，原因與是目標資源的目前狀態存在衝突。該程式碼的使用場景應該是使用者也許能夠解決衝突並重新提交請求。

.. _class_HTTPClient_constant_RESPONSE_GONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GONE** = ``410``

HTTP 狀態碼 ``410 Gone``\ 。目標資源在原始伺服器上已不復存在，並且可能永遠如此。

.. _class_HTTPClient_constant_RESPONSE_LENGTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LENGTH_REQUIRED** = ``411``

HTTP 狀態碼 ``411 Length Required``\ 。伺服器拒絕接受沒有定義 Content-Length 報頭的請求。

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_FAILED** = ``412``

HTTP 狀態碼 ``412 Percondition Failed``\ 。請求報頭中給出的若干條件在伺服器上檢查為 ``false``\ 。

.. _class_HTTPClient_constant_RESPONSE_REQUEST_ENTITY_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_ENTITY_TOO_LARGE** = ``413``

HTTP 狀態碼 ``413 Entity Too Large``\ 。伺服器拒絕處理請求，因為請求的負載超過了伺服器所允許或者所能夠處理的上限。

.. _class_HTTPClient_constant_RESPONSE_REQUEST_URI_TOO_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_URI_TOO_LONG** = ``414``

HTTP 狀態碼 ``414 Request-URI Too Long``\ 。伺服器拒絕為請求提供服務，因為請求目標的長度超過了伺服器所願意解析的上限。

.. _class_HTTPClient_constant_RESPONSE_UNSUPPORTED_MEDIA_TYPE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNSUPPORTED_MEDIA_TYPE** = ``415``

HTTP 狀態碼 ``415 Unsupported Media Type``\ 。原始伺服器拒絕為請求提供服務，因為負載所使用的格式目標資源的該方法不支援。

.. _class_HTTPClient_constant_RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE** = ``416``

HTTP 狀態碼 ``416 Requested Range Not Satisfiable``\ 。請求的 Range 報頭中指定的所有範圍都與所選資源的有效範圍不重合，或者拒絕處理該範圍的集合。拒絕的可能原因是存在無效的範圍，或者存在過多細小或者重疊的範圍。

.. _class_HTTPClient_constant_RESPONSE_EXPECTATION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_EXPECTATION_FAILED** = ``417``

HTTP 狀態碼 ``417 Expectation Failed``\ 。請求的 Expect 報頭中給出的預期無法被任何內部伺服器滿足。

.. _class_HTTPClient_constant_RESPONSE_IM_A_TEAPOT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_A_TEAPOT** = ``418``

HTTP 狀態碼 ``418 I'm A Teapot``\ 。想要嘗試用茶壺煮咖啡就會得到錯誤碼“418 因為我是個茶壺”，得到的實體大概又矮又胖。這個錯誤是對1998年愚人節玩笑的超文字咖啡壺控制協議的引用。

.. _class_HTTPClient_constant_RESPONSE_MISDIRECTED_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MISDIRECTED_REQUEST** = ``421``

HTTP 狀態碼 ``421 Misdirected Request``\ 。請求被重定向到了一台無法生成回應的伺服器。如果一台伺服器沒有針對請求 URI 的協定型別和主機身份配置回應，就有可能返回這個程式碼。

.. _class_HTTPClient_constant_RESPONSE_UNPROCESSABLE_ENTITY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNPROCESSABLE_ENTITY** = ``422``

HTTP 狀態碼 ``422 Unprocessable Entity``\ （WebDAV）。伺服器能夠理解請求實體的內容類別型（所以不適用 415 Unsupported Media Type 狀態碼），請求實體的語法也是正確的（所以不適用 400 Bad Request 狀態碼），但仍然無法執行請求中所包含的指令。

.. _class_HTTPClient_constant_RESPONSE_LOCKED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOCKED** = ``423``

HTTP 狀態碼 ``423 Locked``\ （WebDAV）。方法的來源資源或目標資源被鎖定。

.. _class_HTTPClient_constant_RESPONSE_FAILED_DEPENDENCY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FAILED_DEPENDENCY** = ``424``

HTTP 狀態碼 ``424 Failed Dependency``\ （WebDAV）。無法在該資源上執行該方法，因為請求的操作依賴於另一個操作，而那個操作失敗了。

.. _class_HTTPClient_constant_RESPONSE_UPGRADE_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UPGRADE_REQUIRED** = ``426``

HTTP 狀態碼 ``426 Upgrade Required``\ 。伺服器拒絕以目前協議執行請求，但使用者端升級到另一個協議之後可能會願意執行。

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_REQUIRED** = ``428``

HTTP 狀態碼 ``428 Precondition Required``\ 。原始伺服器要求進行條件請求。

.. _class_HTTPClient_constant_RESPONSE_TOO_MANY_REQUESTS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TOO_MANY_REQUESTS** = ``429``

HTTP 狀態碼 ``429 Too Many Requests``\ 。使用者在指定時間段中（見“限流”）發送了過多的請求。靜默一段時間後增加請求之間的時間間隔，稍後再試。

.. _class_HTTPClient_constant_RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE** = ``431``

HTTP 狀態碼 ``431 Request Header Fields Too Large``\ 。伺服器拒絕處理請求，因為報頭欄位過大。請求可以在減小報頭欄位後重新提交。

.. _class_HTTPClient_constant_RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS** = ``451``

HTTP 狀態碼 ``451 Response Unavailable For Legal Reasons``\ 。伺服器因法律要求而拒絕存取該資源。

.. _class_HTTPClient_constant_RESPONSE_INTERNAL_SERVER_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INTERNAL_SERVER_ERROR** = ``500``

HTTP 狀態碼 ``500 Internal Server Error``\ 。伺服器遭遇預料之外的情況，無法完成請求。

.. _class_HTTPClient_constant_RESPONSE_NOT_IMPLEMENTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_IMPLEMENTED** = ``501``

HTTP 狀態碼 ``501 Not Implemented``\ 。伺服器不支援完成請求所需的功能。

.. _class_HTTPClient_constant_RESPONSE_BAD_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_GATEWAY** = ``502``

HTTP 狀態碼 ``502 Bad Gateway``\ 。閘道或代理伺服器嘗試使用內部伺服器處理請求，但從該伺服器收到了無效的回應。通常由負載等化器或者代理伺服器返回。

.. _class_HTTPClient_constant_RESPONSE_SERVICE_UNAVAILABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SERVICE_UNAVAILABLE** = ``503``

HTTP 狀態碼 ``503 Service Unavailable``\ 。伺服器目前無法處理請求，原因是暫時超載或者處於定期維護狀態，可能在一段延遲後就能恢復，請稍後再試。

.. _class_HTTPClient_constant_RESPONSE_GATEWAY_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GATEWAY_TIMEOUT** = ``504``

HTTP 狀態碼 ``504 Gateway Timeout``\ 。閘道或代理伺服器嘗試使用上游服務器處理請求，但無法在指定時間內從該伺服器收到響應。通常由負載等化器或者代理伺服器返回。

.. _class_HTTPClient_constant_RESPONSE_HTTP_VERSION_NOT_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_HTTP_VERSION_NOT_SUPPORTED** = ``505``

HTTP 狀態碼 ``505 HTTP Version Not Supported``\ 。伺服器不支援或者拒絕支援請求消息所使用的 HTTP 主版本。

.. _class_HTTPClient_constant_RESPONSE_VARIANT_ALSO_NEGOTIATES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_VARIANT_ALSO_NEGOTIATES** = ``506``

HTTP 狀態碼 ``506 Variant Also Negotiates``\ 。伺服器存在內部配置錯誤：所選的可變資源被配置為參與自身的透明內容交涉，因此不是交涉過程中的正確端點。

.. _class_HTTPClient_constant_RESPONSE_INSUFFICIENT_STORAGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INSUFFICIENT_STORAGE** = ``507``

HTTP 狀態碼 ``507 Insufficient Storage``\ 。無法在該資源上執行該方法，因為伺服器無法保存成功完成請求所需的表示。

.. _class_HTTPClient_constant_RESPONSE_LOOP_DETECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOOP_DETECTED** = ``508``

HTTP 狀態碼 ``508 Loop Detected``\ 。伺服器在處理“Depth: infinity”請求時遇到了閉環並終止了操作。該狀態表示該操作整體失敗。

.. _class_HTTPClient_constant_RESPONSE_NOT_EXTENDED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_EXTENDED** = ``510``

HTTP 狀態碼 ``510 Not Extended``\ 。請求未滿足存取該資源的策略。伺服器應當將所需資訊返回給使用者端，以便其提交後續請求。

.. _class_HTTPClient_constant_RESPONSE_NETWORK_AUTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NETWORK_AUTH_REQUIRED** = ``511``

HTTP 狀態碼 ``511 Network Authentication Required``\ 。使用者端需要身份認證才能存取網路。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_HTTPClient_property_blocking_mode_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **blocking_mode_enabled** = ``false`` :ref:`🔗<class_HTTPClient_property_blocking_mode_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_blocking_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blocking_mode_enabled**\ (\ )

為 ``true`` 時，執行會阻塞至從回應中讀取所有資料為止。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_connection:

.. rst-class:: classref-property

:ref:`StreamPeer<class_StreamPeer>` **connection** :ref:`🔗<class_HTTPClient_property_connection>`

.. rst-class:: classref-property-setget

- |void| **set_connection**\ (\ value\: :ref:`StreamPeer<class_StreamPeer>`\ )
- :ref:`StreamPeer<class_StreamPeer>` **get_connection**\ (\ )

該使用者端所使用的連接。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_read_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **read_chunk_size** = ``65536`` :ref:`🔗<class_HTTPClient_property_read_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_read_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_read_chunk_size**\ (\ )

使用的緩衝區大小，即每次反覆運算讀取的最大位元組數。見 :ref:`read_response_body_chunk()<class_HTTPClient_method_read_response_body_chunk>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_HTTPClient_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_HTTPClient_method_close>`

關閉目前連接，允許重用此\ **HTTPClient**\ 。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>` = -1, tls_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_HTTPClient_method_connect_to_host>`

連接到主機。這需要在發送任何請求之前完成。

如果未指定 ``port``\ （或使用 ``-1``\ ），則自動將其設定為 80（用於 HTTP）和 443（用於 HTTPS）。可以傳入可選的 ``tls_options`` 參數來自訂受信任的憑證授權，或者使用 HTTPS 時的通用名稱驗證。請參閱 :ref:`TLSOptions.client()<class_TLSOptions_method_client>` 和 :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_body_length:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_body_length**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_body_length>`

返回回應體長度。

\ **注意：**\ 部分 Web 伺服器可能不發送回應體長度，此時返回值將為 ``-1``\ 。如果使用分塊傳輸編碼，回應體的長度也將為 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_code**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_code>`

返回回應的 HTTP 狀態碼。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_response_headers**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers>`

返回回應報頭。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers_as_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_response_headers_as_dictionary**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers_as_dictionary>`

Returns all response headers as a :ref:`Dictionary<class_Dictionary>`. Each entry is composed by the header name, and a :ref:`String<class_String>` containing the values separated by ``"; "``. The casing is kept the same as the headers were received.

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

返回 :ref:`Status<enum_HTTPClient_Status>` 常數。需要呼叫 :ref:`poll()<class_HTTPClient_method_poll>` 才能更新狀態。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_has_response:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_response**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_has_response>`

為 ``true`` 時，則該 **HTTPClient** 有可用的回應。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_is_response_chunked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_response_chunked**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_is_response_chunked>`

為 ``true`` 時，則該 **HTTPClient** 有分塊的回應。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_HTTPClient_method_poll>`

呼叫此方法才能對請求進行處理。使用 :ref:`get_status()<class_HTTPClient_method_get_status>` 獲取檢查。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_query_string_from_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_string_from_dict**\ (\ fields\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_HTTPClient_method_query_string_from_dict>`

Generates a GET/POST application/x-www-form-urlencoded style query string from a provided dictionary, e.g.:


.. tabs::

 .. code-tab:: gdscript

    var fields = { "username": "user", "password": "pass" }
    var query_string = http_client.query_string_from_dict(fields)
    # Returns "username=user&password=pass"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary { { "username", "user" }, { "password", "pass" } };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Returns "username=user&password=pass"



Furthermore, if a key has a ``null`` value, only the key itself is added, without equal sign and value. If the value is an array, for each value in it a pair with the same key is added.


.. tabs::

 .. code-tab:: gdscript

    var fields = { "single": 123, "not_valued": null, "multiple": [22, 33, 44] }
    var query_string = http_client.query_string_from_dict(fields)
    # Returns "single=123&not_valued&multiple=22&multiple=33&multiple=44"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary
    {
        { "single", 123 },
        { "notValued", default },
        { "multiple", new Godot.Collections.Array { 22, 33, 44 } },
    };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Returns "single=123&not_valued&multiple=22&multiple=33&multiple=44"



.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_read_response_body_chunk:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **read_response_body_chunk**\ (\ ) :ref:`🔗<class_HTTPClient_method_read_response_body_chunk>`

從回應中讀取一塊資料。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPClient_method_request>`

Sends an HTTP request to the connected host with the given ``method``.

The URL parameter is usually just the part after the host, so for ``https://example.com/index.php``, it is ``/index.php``. When sending requests to an HTTP proxy server, it should be an absolute URL. For :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>` requests, ``*`` is also allowed. For :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>` requests, it should be the authority component (``host:port``).

\ ``headers`` are HTTP request headers.

To create a POST request with query strings to push to the server, do:


.. tabs::

 .. code-tab:: gdscript

    var fields = { "username": "user", "password": "pass" }
    var query_string = http_client.query_string_from_dict(fields)
    var headers = ["Content-Type: application/x-www-form-urlencoded", "Content-Length: " + str(query_string.length())]
    var result = http_client.request(http_client.METHOD_POST, "/index.php", headers, query_string)

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary { { "username", "user" }, { "password", "pass" } };
    string queryString = new HttpClient().QueryStringFromDict(fields);
    string[] headers = ["Content-Type: application/x-www-form-urlencoded", $"Content-Length: {queryString.Length}"];
    var result = new HttpClient().Request(HttpClient.Method.Post, "index.php", headers, queryString);



\ **Note:** The ``body`` parameter is ignored if ``method`` is :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`. This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See :ref:`String.uri_encode()<class_String_method_uri_encode>` for an example.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPClient_method_request_raw>`

Sends a raw HTTP request to the connected host with the given ``method``.

The URL parameter is usually just the part after the host, so for ``https://example.com/index.php``, it is ``/index.php``. When sending requests to an HTTP proxy server, it should be an absolute URL. For :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>` requests, ``*`` is also allowed. For :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>` requests, it should be the authority component (``host:port``).

\ ``headers`` are HTTP request headers.

Sends the body data raw, as a byte array and does not encode it in any way.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_http_proxy>`

設定 HTTP 請求使用的代理伺服器。

如果 ``host`` 為空或者 ``port`` 為 -1，則會取消設定代理伺服器。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_https_proxy>`

設定 HTTPS 請求使用的代理伺服器。

如果 ``host`` 為空或者 ``port`` 為 -1，則會取消設定代理伺服器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
