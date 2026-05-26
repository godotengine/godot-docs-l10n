:github_url: hide

.. _class_HTTPRequest:

HTTPRequest
===========

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

具有发送 HTTP(S) 请求能力的节点。

.. rst-class:: classref-introduction-group

描述
----

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

教程
----

- :doc:`发出 HTTP 请求 <../tutorials/networking/http_request_class>`

- :doc:`TLS 证书 <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

属性
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

信号
----

.. _class_HTTPRequest_signal_request_completed:

.. rst-class:: classref-signal

**request_completed**\ (\ result\: :ref:`int<class_int>`, response_code\: :ref:`int<class_int>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPRequest_signal_request_completed>`

请求完成时触发。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_HTTPRequest_Result:

.. rst-class:: classref-enumeration

enum **Result**: :ref:`🔗<enum_HTTPRequest_Result>`

.. _class_HTTPRequest_constant_RESULT_SUCCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_SUCCESS** = ``0``

请求成功。

.. _class_HTTPRequest_constant_RESULT_CHUNKED_BODY_SIZE_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CHUNKED_BODY_SIZE_MISMATCH** = ``1``

请求失败，传输的实际数据块大小与预期不符。可能的原因有网络错误、服务器配置问题、数据块编码问题等。

.. _class_HTTPRequest_constant_RESULT_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CANT_CONNECT** = ``2``

连接时请求失败。

.. _class_HTTPRequest_constant_RESULT_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CANT_RESOLVE** = ``3``

解析时请求失败。

.. _class_HTTPRequest_constant_RESULT_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CONNECTION_ERROR** = ``4``

因连接（读写）错误而失败。

.. _class_HTTPRequest_constant_RESULT_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_TLS_HANDSHAKE_ERROR** = ``5``

TLS 握手时请求失败。

.. _class_HTTPRequest_constant_RESULT_NO_RESPONSE:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_NO_RESPONSE** = ``6``

请求（目前还）没有获得相应。

.. _class_HTTPRequest_constant_RESULT_BODY_SIZE_LIMIT_EXCEEDED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_BODY_SIZE_LIMIT_EXCEEDED** = ``7``

请求超出了大小上限，见 :ref:`body_size_limit<class_HTTPRequest_property_body_size_limit>`\ 。

.. _class_HTTPRequest_constant_RESULT_BODY_DECOMPRESS_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_BODY_DECOMPRESS_FAILED** = ``8``

请求失败，解压响应体出错。可能的原因有压缩格式不支持、压缩格式错误、数据损坏、传输不完整等。

.. _class_HTTPRequest_constant_RESULT_REQUEST_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_REQUEST_FAILED** = ``9``

请求失败（目前未使用）。

.. _class_HTTPRequest_constant_RESULT_DOWNLOAD_FILE_CANT_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_DOWNLOAD_FILE_CANT_OPEN** = ``10``

HTTPRequest 无法打开下载文件。

.. _class_HTTPRequest_constant_RESULT_DOWNLOAD_FILE_WRITE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_DOWNLOAD_FILE_WRITE_ERROR** = ``11``

HTTPRequest 无法写入下载文件。

.. _class_HTTPRequest_constant_RESULT_REDIRECT_LIMIT_REACHED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_REDIRECT_LIMIT_REACHED** = ``12``

请求超出了重定向次数上限，见 :ref:`max_redirects<class_HTTPRequest_property_max_redirects>`\ 。

.. _class_HTTPRequest_constant_RESULT_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_TIMEOUT** = ``13``

请求由于超时而失败。如果本就希望请求花费较长的时间，请尝试增大 :ref:`timeout<class_HTTPRequest_property_timeout>`\ ，或将其设为 ``0.0`` 从而完全移除超时。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_HTTPRequest_property_accept_gzip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **accept_gzip** = ``true`` :ref:`🔗<class_HTTPRequest_property_accept_gzip>`

.. rst-class:: classref-property-setget

- |void| **set_accept_gzip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_accepting_gzip**\ (\ )

如果为 ``true``\ ，这个报头会被添加到每个请求中：\ ``Accept-Encoding: gzip, deflate`` 告诉服务器可以压缩响应正文。

任何声明 ``gzip`` 或 ``deflate`` 的 ``Content-Encoding`` 的响应正文，将被自动解压缩，并且未压缩的字节将通过 :ref:`request_completed<class_HTTPRequest_signal_request_completed>` 被传递。

如果用户指定了自己的 ``Accept-Encoding`` 报头，那么无论 :ref:`accept_gzip<class_HTTPRequest_property_accept_gzip>` 是什么，都不会添加任何报头。

如果为 ``false``\ ，这将不会添加报头，并且不会对响应正文执行任何解压缩。响应正文的原始字节将通过 :ref:`request_completed<class_HTTPRequest_signal_request_completed>` 返回。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_body_size_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **body_size_limit** = ``-1`` :ref:`🔗<class_HTTPRequest_property_body_size_limit>`

.. rst-class:: classref-property-setget

- |void| **set_body_size_limit**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_body_size_limit**\ (\ )

响应正文的最大允许大小。如果响应正文被压缩，这将用作解压缩的正文的最大允许大小。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_download_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **download_chunk_size** = ``65536`` :ref:`🔗<class_HTTPRequest_property_download_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_download_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_download_chunk_size**\ (\ )

使用的缓冲区大小和每次迭代读取的最大字节数。参阅 :ref:`HTTPClient.read_chunk_size<class_HTTPClient_property_read_chunk_size>`\ 。

下载小文件时将其设置为较低的值，以降低内存使用量，但会降低下载速度，例如 4096 表示 4 KiB。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_download_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **download_file** = ``""`` :ref:`🔗<class_HTTPRequest_property_download_file>`

.. rst-class:: classref-property-setget

- |void| **set_download_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_download_file**\ (\ )

要下载到的文件。将任何接收到的文件输出到其中。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_max_redirects:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_redirects** = ``8`` :ref:`🔗<class_HTTPRequest_property_max_redirects>`

.. rst-class:: classref-property-setget

- |void| **set_max_redirects**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_redirects**\ (\ )

允许的最大重定向数。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **timeout** = ``0.0`` :ref:`🔗<class_HTTPRequest_property_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_timeout**\ (\ )

请求超时前的等待时间，单位为秒（与 :ref:`Engine.time_scale<class_Engine_property_time_scale>` 无关）。如果 :ref:`timeout<class_HTTPRequest_property_timeout>` 为 ``0.0``\ ，则请求将永远不会超时。

对于简单的请求，例如与 REST API 通信，建议将 :ref:`timeout<class_HTTPRequest_property_timeout>` 设为与服务器响应时间匹配的值（通常在 ``1.0`` 到 ``10.0`` 之间）。这将有助于防止由于响应时间波动而导致的不必要的超时，同时仍然允许应用程序检测请求何时超时。对于较大的请求，例如文件下载，建议将 :ref:`timeout<class_HTTPRequest_property_timeout>` 设置为 ``0.0``\ ，禁用超时功能。这将有助于防止由于超出超时值而导致大型传输失败。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_use_threads:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_threads** = ``false`` :ref:`🔗<class_HTTPRequest_property_use_threads>`

.. rst-class:: classref-property-setget

- |void| **set_use_threads**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_threads**\ (\ )

为 ``true`` 时，将启用多线程提高性能。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_HTTPRequest_method_cancel_request:

.. rst-class:: classref-method

|void| **cancel_request**\ (\ ) :ref:`🔗<class_HTTPRequest_method_cancel_request>`

取消当前请求。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_body_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_body_size**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_body_size>`

返回响应体长度。

\ **注意：**\ 部分 Web 服务器可能不发送响应体长度，此时返回值将为 ``-1``\ 。如果使用分块传输编码，响应体的长度也将为 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_downloaded_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_downloaded_bytes**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_downloaded_bytes>`

返回该 HTTPRequest 已下载的字节数。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_http_client_status:

.. rst-class:: classref-method

:ref:`Status<enum_HTTPClient_Status>` **get_http_client_status**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_http_client_status>`

返回内部 :ref:`HTTPClient<class_HTTPClient>` 的当前状态。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPRequest_method_request>`

在底层的 :ref:`HTTPClient<class_HTTPClient>` 上创建请求。如果没有配置错误，它会尝试使用 :ref:`HTTPClient.connect_to_host()<class_HTTPClient_method_connect_to_host>` 连接并将参数传递给 :ref:`HTTPClient.request()<class_HTTPClient_method_request>`\ 。

如果成功创建请求，则返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。（并不意味着服务器已响应），如果不在树中，则返回 :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>`\ ；如果仍在处理先前的请求，则返回 :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>`\ ；如果给定的字符串不是有效的 URL 格式，则返回 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`\ ；或者如果不使用线程并且 :ref:`HTTPClient<class_HTTPClient>` 无法连接到主机，则返回 :ref:`@GlobalScope.ERR_CANT_CONNECT<class_@GlobalScope_constant_ERR_CANT_CONNECT>`\ 。

\ **注意：**\ 当 ``method`` 为 :ref:`HTTPClient.METHOD_GET<class_HTTPClient_constant_METHOD_GET>` 时，通过 ``request_data`` 发送的有效载荷可能会被服务器忽略，甚至导致服务器拒绝请求（见 `RFC 7231 第 4.3.1 节 <https://datatracker.ietf.org/doc/html/rfc7231#section-4.3.1>`__\ 了解更多详情）。作为一种变通方法，可以在 URL 中将数据作为查询字符串发送（有关示例，请参见 :ref:`String.uri_encode()<class_String_method_uri_encode>`\ ）。

\ **注意：**\ 建议使用传输加密（TLS）并避免在 HTTP GET URL 参数中发送敏感信息（例如登录凭据）。考虑改用 HTTP POST 请求或 HTTP 报头来获取此类信息。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data_raw\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) :ref:`🔗<class_HTTPRequest_method_request_raw>`

在底层的\ :ref:`HTTPClient<class_HTTPClient>`\ 上创建请求，使用一个原始字节数组作为请求主体。如果没有配置错误，它会尝试使用 :ref:`HTTPClient.connect_to_host()<class_HTTPClient_method_connect_to_host>` 连接并将参数传递给 :ref:`HTTPClient.request()<class_HTTPClient_method_request>`\ 。

如果请求创建成功，则返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。（并不意味着服务器已响应），\ :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` 如果不在树中，\ :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>` 如果仍在处理先前的请求，\ :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` 如果给定的字符串不是有效的 URL 格式，或 :ref:`@GlobalScope.ERR_CANT_CONNECT<class_@GlobalScope_constant_ERR_CANT_CONNECT>`\ 如果不使用线程并且 :ref:`HTTPClient<class_HTTPClient>` 无法连接到主机。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPRequest_method_set_http_proxy>`

设置 HTTP 请求使用的代理服务器。

如果 ``host`` 为空或者 ``port`` 为 -1，则会取消设置代理服务器。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPRequest_method_set_https_proxy>`

设置 HTTPS 请求使用的代理服务器。

如果 ``host`` 为空或者 ``port`` 为 -1，则会取消设置代理服务器。

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_tls_options:

.. rst-class:: classref-method

|void| **set_tls_options**\ (\ client_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_HTTPRequest_method_set_tls_options>`

设置连接到 HTTPS 服务器时使用的 :ref:`TLSOptions<class_TLSOptions>`\ 。见 :ref:`TLSOptions.client()<class_TLSOptions_method_client>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
