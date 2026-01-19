:github_url: hide

.. _class_HTTPClient:

HTTPClient
==========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

低级别的超文本传输协议客户端。

.. rst-class:: classref-introduction-group

描述
----

超文本传输协议客户端（有时称为“用户代理”）。用于发出 HTTP 请求以下载网络内容，上传文件和其他数据或与各种服务通信，以及其他用例。

请参阅 :ref:`HTTPRequest<class_HTTPRequest>` 节点以获取更高级别的替代方案。

\ **注意：**\ 这个客户端只需要连接一个主机一次（见\ :ref:`connect_to_host()<class_HTTPClient_method_connect_to_host>`\ ），就可以发送多个请求。因此，使用 URL 的方法通常只使用主机后面的部分而不是完整的 URL，因为客户端已经连接到主机。请参阅 :ref:`request()<class_HTTPClient_method_request>` 以获取完整示例并开始使用。

\ **HTTPClient** 应该在多个请求之间重用或连接到不同的主机，而不是为每个请求创建一个客户端。支持传输层安全 (TLS)，包括服务器证书验证。2xx 范围内的 HTTP 状态代码表示成功，3xx 表示重定向（即“再试一次，但在这里”），4xx 表示请求有问题，5xx 表示服务器端出了问题。

有关 HTTP 的更多信息，请参阅 `MDN 上 HTTP 的文档 <https://developer.mozilla.org/en-US/docs/Web/HTTP>`__\ （或阅读 `RFC 2616 <https://tools.ietf.org/html/rfc2616>`__\ ，直接从根源了解）。

\ **注意：**\ 导出到 Android 时，在导出项目或使用一键部署前，请确保在 Android 导出预设中启用 ``INTERNET`` 权限。否则，任何类型的网络通信都将被 Android 阻止。

\ **注意：**\ 建议使用传输加密（TLS）并避免在 HTTP GET URL 参数中发送敏感信息（例如登录凭据）。考虑改用 HTTP POST 请求或 HTTP 标头来获取此类信息。

\ **注意：**\ 当从导出到 Web 的项目执行 HTTP 请求时，请记住，由于 `CORS <https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS>`__\ ，远程服务器可能不允许来自站外的请求。如果托管到有问题的服务器，应该修改其后台，以通过添加 ``Access-Control-Allow-Origin: *`` HTTP 标头来允许来自站外的请求。

\ **注意：**\ TLS 支持目前仅限于 TLSv1.2 和 TLSv1.3。尝试连接到仅支持较早（不安全）TLS 版本服务器时将返回一个错误。

\ **警告：**\ 目前不支持 TLS 证书撤销和证书绑定。只要吊销的证书在其他方面有效，就会被接受。如果这是一个问题，你可能希望使用有效期较短的自动管理的证书。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`HTTP 客户端类 <../tutorials/networking/http_client_class>`

- :doc:`TLS 证书 <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_HTTPClient_Method:

.. rst-class:: classref-enumeration

enum **Method**: :ref:`🔗<enum_HTTPClient_Method>`

.. _class_HTTPClient_constant_METHOD_GET:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_GET** = ``0``

HTTP GET 方法。GET 方法用于请求指定资源的某种表示。使用 GET 的请求应该只进行数据的获取。

.. _class_HTTPClient_constant_METHOD_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_HEAD** = ``1``

HTTP HEAD 方法。HEAD 方法请求的是和 GET 请求一样的相应，但不包含响应体。用来请求元数据很方便，比如可以通过请求 HTTP 报头来判断资源是否存在。

.. _class_HTTPClient_constant_METHOD_POST:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_POST** = ``2``

HTTP POST 方法。POST 方法用于将实体提交给指定的资源，经常会造成服务器端状态的更改或者其他副作用。常用于提交表单和其他数据，或者上传文件。

.. _class_HTTPClient_constant_METHOD_PUT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PUT** = ``3``

HTTP PUT 方法。PUT 方法的目的是使用请求负载替换目标资源的所有当前表示。（可以把 POST 理解为“创建或更新”，把 PUT 理解为“更小”，不过很多服务在这两者的含义之间并不作明显的区别）。

.. _class_HTTPClient_constant_METHOD_DELETE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_DELETE** = ``4``

HTTP DELETE 方法。DELETE 方法请求删除指定的资源。

.. _class_HTTPClient_constant_METHOD_OPTIONS:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_OPTIONS** = ``5``

HTTP OPTIONS 方法。OPTIONS 方法的目的是获取目标资源的通讯选项。很少使用。

.. _class_HTTPClient_constant_METHOD_TRACE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_TRACE** = ``6``

HTTP TRACE 方法。TRACE 方法会沿目标资源的路径做消息回环测试。返回的响应体中会包含完整的 HTTP 请求。很少使用。

.. _class_HTTPClient_constant_METHOD_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_CONNECT** = ``7``

HTTP CONNECT 方法。CONNECT 方法会与目标资源所表示的服务器建立隧道。很少使用。

.. _class_HTTPClient_constant_METHOD_PATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PATCH** = ``8``

HTTP PATCH 方法。PATCH 方法用于对资源进行部分修改。

.. _class_HTTPClient_constant_METHOD_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_MAX** = ``9``

代表 :ref:`Method<enum_HTTPClient_Method>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_HTTPClient_Status>`

.. _class_HTTPClient_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_DISCONNECTED** = ``0``

状态：与服务器断开连接。

.. _class_HTTPClient_constant_STATUS_RESOLVING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_RESOLVING** = ``1``

状态：正在根据 URL 的主机名解析 IP。

.. _class_HTTPClient_constant_STATUS_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_RESOLVE** = ``2``

状态：DNS 失败：无法解析指定 URL 的主机名。

.. _class_HTTPClient_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTING** = ``3``

状态：正在连接到服务器。

.. _class_HTTPClient_constant_STATUS_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_CONNECT** = ``4``

状态：无法连接到服务器。

.. _class_HTTPClient_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTED** = ``5``

状态：连接已建立。

.. _class_HTTPClient_constant_STATUS_REQUESTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_REQUESTING** = ``6``

状态：正在发送请求。

.. _class_HTTPClient_constant_STATUS_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_BODY** = ``7``

状态：已获取 HTTP 响应体。

.. _class_HTTPClient_constant_STATUS_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTION_ERROR** = ``8``

状态：HTTP 连接出错。

.. _class_HTTPClient_constant_STATUS_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_TLS_HANDSHAKE_ERROR** = ``9``

状态：TLS 握手出错。

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_ResponseCode:

.. rst-class:: classref-enumeration

enum **ResponseCode**: :ref:`🔗<enum_HTTPClient_ResponseCode>`

.. _class_HTTPClient_constant_RESPONSE_CONTINUE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONTINUE** = ``100``

HTTP 状态码 ``100 Continue``\ 。是表示目前为止一切正常的中间响应，客户端应该继续请求（如果已经请求完就可以直接忽略这个状态）。

.. _class_HTTPClient_constant_RESPONSE_SWITCHING_PROTOCOLS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCHING_PROTOCOLS** = ``101``

HTTP 状态码 ``101 Switching Protocol``\ 。针对客户 ``Upgrade`` 请求的响应，表示服务器所转换到的协议。

.. _class_HTTPClient_constant_RESPONSE_PROCESSING:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROCESSING** = ``102``

HTTP 状态码 ``102 Processing``\ （WebDAV）。表示服务器已收到请求并且正在处理，尚未生成响应。

.. _class_HTTPClient_constant_RESPONSE_OK:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_OK** = ``200``

HTTP 状态码 ``200 OK``\ 。请求成功，是成功请求的默认响应，根据请求的不同表示的含义也不同：

- :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`\ ：已获取资源并通过消息体发送。

- :ref:`METHOD_HEAD<class_HTTPClient_constant_METHOD_HEAD>`\ ：实体报头在消息体中。

- :ref:`METHOD_POST<class_HTTPClient_constant_METHOD_POST>`\ ：描述操作结果的资源已通过消息体发送。

- :ref:`METHOD_TRACE<class_HTTPClient_constant_METHOD_TRACE>`\ ：消息体包含服务器所收到的请求消息。

.. _class_HTTPClient_constant_RESPONSE_CREATED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CREATED** = ``201``

HTTP 状态码 ``201 Created``\ 。请求成功，并且创建了新资源。通常是针对 PUT 请求的响应.

.. _class_HTTPClient_constant_RESPONSE_ACCEPTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ACCEPTED** = ``202``

HTTP 状态码 ``202 Accepted``\ 。请求已收到，但尚未处理。HTTP 协议中无法实现在完成对请求的处理后异步地把请求发回来。这个响应的使用场景应该是会有其他进程或者服务器去处理这个请求，或者会进行批量处理。

.. _class_HTTPClient_constant_RESPONSE_NON_AUTHORITATIVE_INFORMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NON_AUTHORITATIVE_INFORMATION** = ``203``

HTTP 状态码 ``203 Non-Authoritative Information``\ 。该响应状态码表示返回的元消息与原始服务器所返回的不一致，而是从本地或者第三方副本中收集而来。除了特殊情况，应该优先选用 200 OK 响应所返回的内容。

.. _class_HTTPClient_constant_RESPONSE_NO_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NO_CONTENT** = ``204``

HTTP 状态码 ``204 No Content``\ 。本请求无响应内容，但报头可能有用。用户代理可能会根据该资源更新缓存报头。

.. _class_HTTPClient_constant_RESPONSE_RESET_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_RESET_CONTENT** = ``205``

HTTP 状态码 ``205 Reset Content``\ 。服务器已完成对请求的处理，并要求客户端将导致该请求的“文档视图”重置回原始状态。

.. _class_HTTPClient_constant_RESPONSE_PARTIAL_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PARTIAL_CONTENT** = ``206``

HTTP 状态码 ``206 Partial Content``\ 。客户端如果发送范围（Range）报头就会收到该响应码，用于将下载拆分成多个数据流。

.. _class_HTTPClient_constant_RESPONSE_MULTI_STATUS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTI_STATUS** = ``207``

HTTP 状态码 ``207 Multi-Status``\ （WebDAV）。关于多个资源的多状态响应，适用于需要返回多个状态码的情况。

.. _class_HTTPClient_constant_RESPONSE_ALREADY_REPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ALREADY_REPORTED** = ``208``

HTTP 状态码 ``208 Already Reported``\ （WebDAV）。在 DAV: propstat 相应元素内部使用，可以防止重复遍历同一合集中不同绑定的内部成员。

.. _class_HTTPClient_constant_RESPONSE_IM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_USED** = ``226``

HTTP 状态码 ``226 IM Used``\ （WebDAV）。服务器完成了对该资源的 GET 请求，所响应的资源表示，是针对当前实例进行若干共同修改的结果。

.. _class_HTTPClient_constant_RESPONSE_MULTIPLE_CHOICES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTIPLE_CHOICES** = ``300``

HTTP 状态码 ``300 Multiple Choice``\ 。请求有多个可能的响应，并且没有从中挑选其一的标准方法。用户代理或者用户应该自行挑选。

.. _class_HTTPClient_constant_RESPONSE_MOVED_PERMANENTLY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MOVED_PERMANENTLY** = ``301``

HTTP 状态码 ``301 Moved Permanently``\ 。重定向。该响应码表示所请求资源的 URI 已改变。新的 URI 通常包含在响应中。

.. _class_HTTPClient_constant_RESPONSE_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FOUND** = ``302``

HTTP 状态码 ``302 Found``\ 。临时重定向。该响应码表示所请求资源的 URI 已临时改变。该 URI 将来还可能发生变，因此后续的请求应该仍然使用相同的 URI。

.. _class_HTTPClient_constant_RESPONSE_SEE_OTHER:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SEE_OTHER** = ``303``

HTTP 状态码 ``303 See Other``\ 。服务器将用户代理重定向到另一个资源，资源由 Location 报头中的 URI 指定。用于提供针对原始请求的间接响应。

.. _class_HTTPClient_constant_RESPONSE_NOT_MODIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_MODIFIED** = ``304``

HTTP 状态码 ``304 Not Modified``\ 。收到了条件 GET 或者 HEAD，并且要不是因为该条件为 ``false`` 就会返回 200 OK 响应。

.. _class_HTTPClient_constant_RESPONSE_USE_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_USE_PROXY** = ``305``

**已弃用：** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

HTTP 状态码 ``305 Use Proxy``\ 。

.. _class_HTTPClient_constant_RESPONSE_SWITCH_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCH_PROXY** = ``306``

**已弃用：** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

HTTP 状态码 ``306 Switch Proxy``\ 。

.. _class_HTTPClient_constant_RESPONSE_TEMPORARY_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TEMPORARY_REDIRECT** = ``307``

HTTP 状态码 ``307 Temporary Redirect``\ 。目标资源暂时位于不同的 URI，用户代理如果要自动重定向到该 URI，就一定不能更改所使用的请求方法。

.. _class_HTTPClient_constant_RESPONSE_PERMANENT_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PERMANENT_REDIRECT** = ``308``

HTTP 状态码 ``308 Permanent Redirect``\ 。目标资源已被赋予全新的永久 URI，后续针对该资源的请求应当使用所提供的 URI。

.. _class_HTTPClient_constant_RESPONSE_BAD_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_REQUEST** = ``400``

HTTP 状态码 ``400 Bad Request``\ 。请求无效。服务器认为客户端出错，所以无法或者拒绝处理该请求（例如：请求语法错误、请求消息帧无效、请求内容无效、请求路由可疑）。

.. _class_HTTPClient_constant_RESPONSE_UNAUTHORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAUTHORIZED** = ``401``

HTTP 状态码 ``401 Unauthorized``\ 。需要提供认证信息。未执行请求，原因是缺少针对目标资源的授权认证信息。

.. _class_HTTPClient_constant_RESPONSE_PAYMENT_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PAYMENT_REQUIRED** = ``402``

HTTP 状态码 ``402 Payment Required``\ 。该响应码是为将来使用保留的，本意是供数字支付系统使用，但目前尚未有所使用。

.. _class_HTTPClient_constant_RESPONSE_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FORBIDDEN** = ``403``

HTTP 状态码 ``403 Forbidden``\ 。客户端没有该内容的访问权限，即未授权，服务器拒绝给出正确响应。与 ``401`` 不同，服务器已收到客户端的身份信息。

.. _class_HTTPClient_constant_RESPONSE_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_FOUND** = ``404``

HTTP 状态码 ``404 Not Found``\ 。服务器无法找到所请求的资源。可能是无法识别 URL，也可能是 URL 有效但资源本身不存在。也有可能在客户端未提供认证信息时代替 403 返回，从而达到隐藏资源存在性的目的。

.. _class_HTTPClient_constant_RESPONSE_METHOD_NOT_ALLOWED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_METHOD_NOT_ALLOWED** = ``405``

HTTP 状态码 ``405 Method Not Allowed``\ 。服务器理解请求所使用的 HTTP 方法，但该方法已被禁止使用。例如：API 可能禁止 DELETE 资源。GET 和 HEAD 这两个方法是必须的，所以不能被禁用，也不应该返回该错误码。

.. _class_HTTPClient_constant_RESPONSE_NOT_ACCEPTABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_ACCEPTABLE** = ``406``

HTTP 状态码 ``406 Not Acceptable``\ 。根据请求中主动注明的交涉报头字段，目标资源没有用户代理所能接受的表示。用于内容交涉过程。

.. _class_HTTPClient_constant_RESPONSE_PROXY_AUTHENTICATION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROXY_AUTHENTICATION_REQUIRED** = ``407``

HTTP 状态码 ``407 Proxy Authentication Required``\ 。类似于 401 Unauthorized，表示客户端需要在提供认证信息后使用代理。

.. _class_HTTPClient_constant_RESPONSE_REQUEST_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_TIMEOUT** = ``408``

HTTP 状态码 ``408 Request Timeout``\ 。服务器在其准备等待的时间段内未获取完整的请求信息。

.. _class_HTTPClient_constant_RESPONSE_CONFLICT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONFLICT** = ``409``

HTTP 状态码 ``409 Conflict``\ 。请求无法完成，原因与是目标资源的当前状态存在冲突。该代码的使用场景应该是用户也许能够解决冲突并重新提交请求。

.. _class_HTTPClient_constant_RESPONSE_GONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GONE** = ``410``

HTTP 状态码 ``410 Gone``\ 。目标资源在原始服务器上已不复存在，并且可能永远如此。

.. _class_HTTPClient_constant_RESPONSE_LENGTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LENGTH_REQUIRED** = ``411``

HTTP 状态码 ``411 Length Required``\ 。服务器拒绝接受没有定义 Content-Length 报头的请求。

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_FAILED** = ``412``

HTTP 状态码 ``412 Percondition Failed``\ 。请求报头中给出的若干条件在服务器上检查为 ``false``\ 。

.. _class_HTTPClient_constant_RESPONSE_REQUEST_ENTITY_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_ENTITY_TOO_LARGE** = ``413``

HTTP 状态码 ``413 Entity Too Large``\ 。服务器拒绝处理请求，因为请求的负载超过了服务器所允许或者所能够处理的上限。

.. _class_HTTPClient_constant_RESPONSE_REQUEST_URI_TOO_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_URI_TOO_LONG** = ``414``

HTTP 状态码 ``414 Request-URI Too Long``\ 。服务器拒绝为请求提供服务，因为请求目标的长度超过了服务器所愿意解析的上限。

.. _class_HTTPClient_constant_RESPONSE_UNSUPPORTED_MEDIA_TYPE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNSUPPORTED_MEDIA_TYPE** = ``415``

HTTP 状态码 ``415 Unsupported Media Type``\ 。原始服务器拒绝为请求提供服务，因为负载所使用的格式目标资源的该方法不支持。

.. _class_HTTPClient_constant_RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE** = ``416``

HTTP 状态码 ``416 Requested Range Not Satisfiable``\ 。请求的 Range 报头中指定的所有范围都与所选资源的有效范围不重合，或者拒绝处理该范围的集合。拒绝的可能原因是存在无效的范围，或者存在过多细小或者重叠的范围。

.. _class_HTTPClient_constant_RESPONSE_EXPECTATION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_EXPECTATION_FAILED** = ``417``

HTTP 状态码 ``417 Expectation Failed``\ 。请求的 Expect 报头中给出的预期无法被任何内部服务器满足。

.. _class_HTTPClient_constant_RESPONSE_IM_A_TEAPOT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_A_TEAPOT** = ``418``

HTTP 状态码 ``418 I'm A Teapot``\ 。想要尝试用茶壶煮咖啡就会得到错误码“418 因为我是个茶壶”，得到的实体大概又矮又胖。这个错误是对1998年愚人节玩笑的超文本咖啡壶控制协议的引用。

.. _class_HTTPClient_constant_RESPONSE_MISDIRECTED_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MISDIRECTED_REQUEST** = ``421``

HTTP 状态码 ``421 Misdirected Request``\ 。请求被重定向到了一台无法生成响应的服务器。如果一台服务器没有针对请求 URI 的协议类型和主机身份配置响应，就有可能返回这个代码。

.. _class_HTTPClient_constant_RESPONSE_UNPROCESSABLE_ENTITY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNPROCESSABLE_ENTITY** = ``422``

HTTP 状态码 ``422 Unprocessable Entity``\ （WebDAV）。服务器能够理解请求实体的内容类型（所以不适用 415 Unsupported Media Type 状态码），请求实体的语法也是正确的（所以不适用 400 Bad Request 状态码），但仍然无法执行请求中所包含的指令。

.. _class_HTTPClient_constant_RESPONSE_LOCKED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOCKED** = ``423``

HTTP 状态码 ``423 Locked``\ （WebDAV）。方法的来源资源或目标资源被锁定。

.. _class_HTTPClient_constant_RESPONSE_FAILED_DEPENDENCY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FAILED_DEPENDENCY** = ``424``

HTTP 状态码 ``424 Failed Dependency``\ （WebDAV）。无法在该资源上执行该方法，因为请求的操作依赖于另一个操作，而那个操作失败了。

.. _class_HTTPClient_constant_RESPONSE_UPGRADE_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UPGRADE_REQUIRED** = ``426``

HTTP 状态码 ``426 Upgrade Required``\ 。服务器拒绝以当前协议执行请求，但客户端升级到另一个协议之后可能会愿意执行。

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_REQUIRED** = ``428``

HTTP 状态码 ``428 Precondition Required``\ 。原始服务器要求进行条件请求。

.. _class_HTTPClient_constant_RESPONSE_TOO_MANY_REQUESTS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TOO_MANY_REQUESTS** = ``429``

HTTP 状态码 ``429 Too Many Requests``\ 。用户在指定时间段中（见“限流”）发送了过多的请求。静默一段时间后增加请求之间的时间间隔，稍后再试。

.. _class_HTTPClient_constant_RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE** = ``431``

HTTP 状态码 ``431 Request Header Fields Too Large``\ 。服务器拒绝处理请求，因为报头字段过大。请求可以在减小报头字段后重新提交。

.. _class_HTTPClient_constant_RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS** = ``451``

HTTP 状态码 ``451 Response Unavailable For Legal Reasons``\ 。服务器因法律要求而拒绝访问该资源。

.. _class_HTTPClient_constant_RESPONSE_INTERNAL_SERVER_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INTERNAL_SERVER_ERROR** = ``500``

HTTP 状态码 ``500 Internal Server Error``\ 。服务器遭遇预料之外的情况，无法完成请求。

.. _class_HTTPClient_constant_RESPONSE_NOT_IMPLEMENTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_IMPLEMENTED** = ``501``

HTTP 状态码 ``501 Not Implemented``\ 。服务器不支持完成请求所需的功能。

.. _class_HTTPClient_constant_RESPONSE_BAD_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_GATEWAY** = ``502``

HTTP 状态码 ``502 Bad Gateway``\ 。网关或代理服务器尝试使用内部服务器处理请求，但从该服务器收到了无效的响应。通常由负载均衡器或者代理服务器返回。

.. _class_HTTPClient_constant_RESPONSE_SERVICE_UNAVAILABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SERVICE_UNAVAILABLE** = ``503``

HTTP 状态码 ``503 Service Unavailable``\ 。服务器目前无法处理请求，原因是暂时过载或者处于定期维护状态，可能在一段延迟后就能恢复，请稍后再试。

.. _class_HTTPClient_constant_RESPONSE_GATEWAY_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GATEWAY_TIMEOUT** = ``504``

HTTP 状态码 ``504 Gateway Timeout``\ 。网关或代理服务器尝试使用上游服务器处理请求，但无法在指定时间内从该服务器收到响应。通常由负载均衡器或者代理服务器返回。

.. _class_HTTPClient_constant_RESPONSE_HTTP_VERSION_NOT_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_HTTP_VERSION_NOT_SUPPORTED** = ``505``

HTTP 状态码 ``505 HTTP Version Not Supported``\ 。服务器不支持或者拒绝支持请求消息所使用的 HTTP 主版本。

.. _class_HTTPClient_constant_RESPONSE_VARIANT_ALSO_NEGOTIATES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_VARIANT_ALSO_NEGOTIATES** = ``506``

HTTP 状态码 ``506 Variant Also Negotiates``\ 。服务器存在内部配置错误：所选的可变资源被配置为参与自身的透明内容交涉，因此不是交涉过程中的正确端点。

.. _class_HTTPClient_constant_RESPONSE_INSUFFICIENT_STORAGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INSUFFICIENT_STORAGE** = ``507``

HTTP 状态码 ``507 Insufficient Storage``\ 。无法在该资源上执行该方法，因为服务器无法保存成功完成请求所需的表示。

.. _class_HTTPClient_constant_RESPONSE_LOOP_DETECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOOP_DETECTED** = ``508``

HTTP 状态码 ``508 Loop Detected``\ 。服务器在处理“Depth: infinity”请求时遇到了死循环并终止了操作。该状态表示该操作整体失败。

.. _class_HTTPClient_constant_RESPONSE_NOT_EXTENDED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_EXTENDED** = ``510``

HTTP 状态码 ``510 Not Extended``\ 。请求未满足访问该资源的策略。服务器应当将所需信息返回给客户端，以便其提交后续请求。

.. _class_HTTPClient_constant_RESPONSE_NETWORK_AUTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NETWORK_AUTH_REQUIRED** = ``511``

HTTP 状态码 ``511 Network Authentication Required``\ 。客户端需要身份认证才能访问网络。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_HTTPClient_property_blocking_mode_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **blocking_mode_enabled** = ``false`` :ref:`🔗<class_HTTPClient_property_blocking_mode_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_blocking_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blocking_mode_enabled**\ (\ )

为 ``true`` 时，执行会阻塞至从响应中读取所有数据为止。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_connection:

.. rst-class:: classref-property

:ref:`StreamPeer<class_StreamPeer>` **connection** :ref:`🔗<class_HTTPClient_property_connection>`

.. rst-class:: classref-property-setget

- |void| **set_connection**\ (\ value\: :ref:`StreamPeer<class_StreamPeer>`\ )
- :ref:`StreamPeer<class_StreamPeer>` **get_connection**\ (\ )

该客户端所使用的连接。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_read_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **read_chunk_size** = ``65536`` :ref:`🔗<class_HTTPClient_property_read_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_read_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_read_chunk_size**\ (\ )

使用的缓冲区大小，即每次迭代读取的最大字节数。见 :ref:`read_response_body_chunk()<class_HTTPClient_method_read_response_body_chunk>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_HTTPClient_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_HTTPClient_method_close>`

关闭当前连接，允许重用此\ **HTTPClient**\ 。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>` = -1, tls_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_HTTPClient_method_connect_to_host>`

连接到主机。这需要在发送任何请求之前完成。

如果未指定 ``port``\ （或使用 ``-1``\ ），则自动将其设置为 80（用于 HTTP）和 443（用于 HTTPS）。可以传入可选的 ``tls_options`` 参数来自定义受信任的证书颁发机构，或者使用 HTTPS 时的通用名称验证。请参阅 :ref:`TLSOptions.client()<class_TLSOptions_method_client>` 和 :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_body_length:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_body_length**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_body_length>`

返回响应体长度。

\ **注意：**\ 部分 Web 服务器可能不发送响应体长度，此时返回值将为 ``-1``\ 。如果使用分块传输编码，响应体的长度也将为 ``-1``\ 。

\ **注意：**\ 由于浏览器的限制，该函数在 Web 平台上始终返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_code**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_code>`

返回响应的 HTTP 状态码。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_response_headers**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers>`

返回响应报头。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers_as_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_response_headers_as_dictionary**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers_as_dictionary>`

以 :ref:`Dictionary<class_Dictionary>` 的形式返回所有响应报头。每个条目都是报头名称以及用 ``"; "`` 分隔的对应取值。大小写与收到的报头保持一致。

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

返回 :ref:`Status<enum_HTTPClient_Status>` 常量。需要调用 :ref:`poll()<class_HTTPClient_method_poll>` 才能更新状态。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_has_response:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_response**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_has_response>`

为 ``true`` 时，则该 **HTTPClient** 有可用的响应。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_is_response_chunked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_response_chunked**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_is_response_chunked>`

为 ``true`` 时，则该 **HTTPClient** 有分块的响应。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_HTTPClient_method_poll>`

调用此方法才能对请求进行处理。使用 :ref:`get_status()<class_HTTPClient_method_get_status>` 获取检查。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_query_string_from_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_string_from_dict**\ (\ fields\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_HTTPClient_method_query_string_from_dict>`

从提供的字典生成 GET/POST application/x-www-form-urlencoded 样式的查询字符串，例如：


.. tabs::

 .. code-tab:: gdscript

    var fields = { "username": "user", "password": "pass" }
    var query_string = http_client.query_string_from_dict(fields)
    # 返回 "username=user&password=pass"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary { { "username", "user" }, { "password", "pass" } };
    string queryString = httpClient.QueryStringFromDict(fields);
    // 返回 "username=user&password=pass"



此外，如果键具有 ``null`` 值，则仅添加键本身，而不添加等号和值。如果该值是一个数组，则添加该相同键，与其中的每个值组成一对。


.. tabs::

 .. code-tab:: gdscript

    var fields = { "single": 123, "not_valued": null, "multiple": [22, 33, 44] }
    var query_string = http_client.query_string_from_dict(fields)
    # 返回 "single=123&not_valued&multiple=22&multiple=33&multiple=44"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary
    {
        { "single", 123 },
        { "notValued", default },
        { "multiple", new Godot.Collections.Array { 22, 33, 44 } },
    };
    string queryString = httpClient.QueryStringFromDict(fields);
    // 返回 "single=123&not_valued&multiple=22&multiple=33&multiple=44"



.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_read_response_body_chunk:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **read_response_body_chunk**\ (\ ) :ref:`🔗<class_HTTPClient_method_read_response_body_chunk>`

从响应中读取一块数据。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPClient_method_request>`

使用 ``method`` 方法向已连接的服务器发送 HTTP 请求。

URL 参数通常只是主机名后面的部分，所以对于 ``https://example.com/index.php`` 来说就是 ``/index.php``\ 。当向 HTTP 代理服务器发送请求时，它应该是一个绝对 URL。对于 :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>` 请求，\ ``*`` 也是允许的。对于 :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>` 请求，它应该是权限组件 (``host:port``)。

\ ``headers`` 是 HTTP 请求的报头。

要创建带有查询字符串的 POST 请求以推送到服务器，请执行以下操作：


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



\ **注意：**\ 如果 ``method`` 是 :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`\ ，则忽略 ``body`` 参数。这是因为 GET 方法不能包含请求数据。解决方法是，可以将请求数据作为 URL 中的查询字符串传递。示例见 :ref:`String.uri_encode()<class_String_method_uri_encode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPClient_method_request_raw>`

使用 ``method`` 方法向已连接的服务器发送原始 HTTP 请求。

URL 参数通常只是主机名后面的部分，所以对于 ``https://example.com/index.php`` 来说就是 ``/index.php``\ 。当向 HTTP 代理服务器发送请求时，它应该是一个绝对 URL。对于 :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>` 请求，\ ``*`` 也是允许的。对于 :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>` 请求，它应该是权限组件 (``host:port``)。

\ ``headers`` 是 HTTP 请求的报头。

请求体是以字节数组的形式原样发送的，不会进行任何形式的编码。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_http_proxy>`

设置 HTTP 请求使用的代理服务器。

如果 ``host`` 为空或者 ``port`` 为 -1，则会取消设置代理服务器。

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_https_proxy>`

设置 HTTPS 请求使用的代理服务器。

如果 ``host`` 为空或者 ``port`` 为 -1，则会取消设置代理服务器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
