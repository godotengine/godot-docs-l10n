:github_url: hide

.. _class_HTTPClient:

HTTPClient
==========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Клиент низкоуровневого протокола передачи гипертекста.

.. rst-class:: classref-introduction-group

Описание
----------------

Hyper-text transfer protocol client (sometimes called "User Agent"). Used to make HTTP requests to download web content, upload files and other data or to communicate with various services, among other use cases.

See the :ref:`HTTPRequest<class_HTTPRequest>` node for a higher-level alternative.

\ **Note:** This client only needs to connect to a host once (see :ref:`connect_to_host()<class_HTTPClient_method_connect_to_host>`) to send multiple requests. Because of this, methods that take URLs usually take just the part after the host instead of the full URL, as the client is already connected to a host. See :ref:`request()<class_HTTPClient_method_request>` for a full example and to get started.

An **HTTPClient** should be reused between multiple requests or to connect to different hosts instead of creating one client per request. Supports Transport Layer Security (TLS), including server certificate verification. HTTP status codes in the 2xx range indicate success, 3xx redirection (i.e. "try again, but over here"), 4xx something was wrong with the request, and 5xx something went wrong on the server's side.

For more information on HTTP, see `MDN's documentation on HTTP <https://developer.mozilla.org/en-US/docs/Web/HTTP>`__ (or read `RFC 2616 <https://tools.ietf.org/html/rfc2616>`__ to get it straight from the source).

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

\ **Note:** It's recommended to use transport encryption (TLS) and to avoid sending sensitive information (such as login credentials) in HTTP GET URL parameters. Consider using HTTP POST requests or HTTP headers for such information instead.

\ **Note:** When performing HTTP requests from a project exported to Web, keep in mind the remote server may not allow requests from foreign origins due to `CORS <https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS>`__. If you host the server in question, you should modify its backend to allow requests from foreign origins by adding the ``Access-Control-Allow-Origin: *`` HTTP header.

\ **Note:** TLS support is currently limited to TLSv1.2 and TLSv1.3. Attempting to connect to a server that only supports older (insecure) TLS versions will return an error.

\ **Warning:** TLS certificate revocation and certificate pinning are currently not supported. Revoked certificates are accepted as long as they are otherwise valid. If this is a concern, you may want to use automatically managed certificates with a short validity period.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Класс HTTP-клиента <../tutorials/networking/http_client_class>`

- :doc:`TLS-сертификаты <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Перечисления
------------------------

.. _enum_HTTPClient_Method:

.. rst-class:: classref-enumeration

enum **Method**: :ref:`🔗<enum_HTTPClient_Method>`

.. _class_HTTPClient_constant_METHOD_GET:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_GET** = ``0``

Метод HTTP GET. Метод GET запрашивает представление указанного ресурса. Запросы с использованием GET должны только извлекать данные.

.. _class_HTTPClient_constant_METHOD_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_HEAD** = ``1``

Метод HTTP HEAD. Метод HEAD запрашивает ответ, идентичный ответу запроса GET, но без тела ответа. Это полезно для запроса метаданных, таких как заголовки HTTP, или для проверки существования ресурса.

.. _class_HTTPClient_constant_METHOD_POST:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_POST** = ``2``

Метод HTTP POST. Метод POST используется для отправки сущности на указанный ресурс, часто вызывая изменение состояния или побочные эффекты на сервере. Это часто используется для форм и отправки данных или загрузки файлов.

.. _class_HTTPClient_constant_METHOD_PUT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PUT** = ``3``

Метод HTTP PUT. Метод PUT запрашивает замену всех текущих представлений целевого ресурса полезной нагрузкой запроса. (Вы можете думать о POST как о «создании или обновлении», а PUT как о «обновлении», хотя многие сервисы, как правило, не делают четкого различия или не меняют их значение).

.. _class_HTTPClient_constant_METHOD_DELETE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_DELETE** = ``4``

Метод HTTP DELETE. Метод DELETE запрашивает удаление указанного ресурса.

.. _class_HTTPClient_constant_METHOD_OPTIONS:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_OPTIONS** = ``5``

Метод HTTP OPTIONS. Метод OPTIONS запрашивает описание параметров связи для целевого ресурса. Используется редко.

.. _class_HTTPClient_constant_METHOD_TRACE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_TRACE** = ``6``

Метод HTTP TRACE. Метод TRACE выполняет проверку обратной связи сообщения по пути к целевому ресурсу. Возвращает весь полученный HTTP-запрос в теле ответа. Используется редко.

.. _class_HTTPClient_constant_METHOD_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_CONNECT** = ``7``

Метод HTTP CONNECT. Метод CONNECT устанавливает туннель к серверу, идентифицированному целевым ресурсом. Используется редко.

.. _class_HTTPClient_constant_METHOD_PATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PATCH** = ``8``

Метод HTTP PATCH. Метод PATCH используется для применения частичных изменений к ресурсу.

.. _class_HTTPClient_constant_METHOD_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_MAX** = ``9``

Представляет размер перечисления :ref:`Method<enum_HTTPClient_Method>`.

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_HTTPClient_Status>`

.. _class_HTTPClient_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_DISCONNECTED** = ``0``

Статус: Отключено от сервера.

.. _class_HTTPClient_constant_STATUS_RESOLVING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_RESOLVING** = ``1``

Статус: В настоящее время выполняется преобразование имени хоста для указанного URL в IP-адрес.

.. _class_HTTPClient_constant_STATUS_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_RESOLVE** = ``2``

Статус: Ошибка DNS: Невозможно определить имя хоста для указанного URL.

.. _class_HTTPClient_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTING** = ``3``

Статус: В настоящее время выполняется подключение к серверу.

.. _class_HTTPClient_constant_STATUS_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_CONNECT** = ``4``

Статус: Невозможно подключиться к серверу.

.. _class_HTTPClient_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTED** = ``5``

Статус: Соединение установлено.

.. _class_HTTPClient_constant_STATUS_REQUESTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_REQUESTING** = ``6``

Статус: В настоящее время отправляется запрос.

.. _class_HTTPClient_constant_STATUS_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_BODY** = ``7``

Статус: получено тело HTTP.

.. _class_HTTPClient_constant_STATUS_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTION_ERROR** = ``8``

Статус: Ошибка HTTP-соединения.

.. _class_HTTPClient_constant_STATUS_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_TLS_HANDSHAKE_ERROR** = ``9``

Статус: Ошибка при установлении связи TLS.

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_ResponseCode:

.. rst-class:: classref-enumeration

enum **ResponseCode**: :ref:`🔗<enum_HTTPClient_ResponseCode>`

.. _class_HTTPClient_constant_RESPONSE_CONTINUE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONTINUE** = ``100``

Код статуса HTTP ``100 Continue``. Промежуточный ответ, который указывает, что пока все в порядке и клиент должен продолжить обработку запроса (или игнорировать этот статус, если он уже завершен).

.. _class_HTTPClient_constant_RESPONSE_SWITCHING_PROTOCOLS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCHING_PROTOCOLS** = ``101``

Код статуса HTTP ``101 Switching Protocol``. Отправляется в ответ на заголовок запроса ``Upgrade`` клиентом. Указывает протокол, на который переключается сервер.

.. _class_HTTPClient_constant_RESPONSE_PROCESSING:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROCESSING** = ``102``

Код статуса HTTP ``102 Processing`` (WebDAV). Указывает, что сервер получил и обрабатывает запрос, но ответ пока недоступен.

.. _class_HTTPClient_constant_RESPONSE_OK:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_OK** = ``200``

Код статуса HTTP ``200 OK``. Запрос выполнен успешно. Ответ по умолчанию для успешных запросов. Значение зависит от запроса:

- :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`: Ресурс был извлечен и передан в теле сообщения.

- :ref:`METHOD_HEAD<class_HTTPClient_constant_METHOD_HEAD>`: Заголовки сущности находятся в теле сообщения.

- :ref:`METHOD_POST<class_HTTPClient_constant_METHOD_POST>`: Ресурс, описывающий результат действия, передается в теле сообщения.

- :ref:`METHOD_TRACE<class_HTTPClient_constant_METHOD_TRACE>`: Тело сообщения содержит сообщение запроса, полученное сервером.

.. _class_HTTPClient_constant_RESPONSE_CREATED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CREATED** = ``201``

Код статуса HTTP ``201 Created``. Запрос выполнен успешно, и в результате создан новый ресурс. Обычно это ответ, отправляемый после запроса PUT.

.. _class_HTTPClient_constant_RESPONSE_ACCEPTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ACCEPTED** = ``202``

Код статуса HTTP ``202 Accepted``. Запрос получен, но еще не обработан. Он необязателен, то есть в HTTP нет способа позже отправить асинхронный ответ, указывающий результат обработки запроса. Он предназначен для случаев, когда другой процесс или сервер обрабатывает запрос, или для пакетной обработки.

.. _class_HTTPClient_constant_RESPONSE_NON_AUTHORITATIVE_INFORMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NON_AUTHORITATIVE_INFORMATION** = ``203``

Код статуса HTTP ``203 Non-Authoritative Information``. Этот код ответа означает, что возвращаемый набор метаинформации не является точным набором, доступным с исходного сервера, а собран из локальной или сторонней копии. За исключением этого условия, ответ 200 OK должен быть предпочтительнее этого ответа.

.. _class_HTTPClient_constant_RESPONSE_NO_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NO_CONTENT** = ``204``

Код статуса HTTP ``204 No Content``. Нет контента для отправки по этому запросу, но заголовки могут быть полезны. Пользовательский агент может обновить свои кэшированные заголовки для этого ресурса новыми.

.. _class_HTTPClient_constant_RESPONSE_RESET_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_RESET_CONTENT** = ``205``

Код статуса HTTP ``205 Reset Content``. Сервер выполнил запрос и хочет, чтобы клиент сбросил «представление документа», вызвавшее отправку запроса, в исходное состояние, полученное от исходного сервера.

.. _class_HTTPClient_constant_RESPONSE_PARTIAL_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PARTIAL_CONTENT** = ``206``

Код статуса HTTP ``206 Partial Content``. Этот код ответа используется из-за заголовка диапазона, отправленного клиентом для разделения загрузки на несколько потоков.

.. _class_HTTPClient_constant_RESPONSE_MULTI_STATUS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTI_STATUS** = ``207``

Код статуса HTTP ``207 Multi-Status`` (WebDAV). Ответ Multi-Status передает информацию о нескольких ресурсах в ситуациях, когда могут быть уместны несколько кодов статуса.

.. _class_HTTPClient_constant_RESPONSE_ALREADY_REPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ALREADY_REPORTED** = ``208``

Код статуса HTTP ``208 Already Reported`` (WebDAV). Используется внутри элемента ответа DAV: propstat, чтобы избежать повторного перечисления внутренних членов нескольких привязок к одной и той же коллекции.

.. _class_HTTPClient_constant_RESPONSE_IM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_USED** = ``226``

Код статуса HTTP ``226 IM Used`` (WebDAV). Сервер выполнил запрос GET для ресурса, а ответ представляет собой представление результата одной или нескольких манипуляций с экземпляром, примененных к текущему экземпляру.

.. _class_HTTPClient_constant_RESPONSE_MULTIPLE_CHOICES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTIPLE_CHOICES** = ``300``

HTTP-код статуса ``300 Multiple Choice``. Запрос имеет более одного возможного ответа, и нет стандартизированного способа выбора одного из ответов. User-agent или пользователь должны выбрать один из них.

.. _class_HTTPClient_constant_RESPONSE_MOVED_PERMANENTLY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MOVED_PERMANENTLY** = ``301``

Код статуса HTTP ``301 Moved Permanently``. Перенаправление. Этот код ответа означает, что URI запрошенного ресурса был изменен. Новый URI обычно включается в ответ.

.. _class_HTTPClient_constant_RESPONSE_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FOUND** = ``302``

Код статуса HTTP ``302 Found``. Временное перенаправление. Этот код ответа означает, что URI запрошенного ресурса был временно изменен. В будущем могут быть внесены новые изменения в URI. Поэтому этот же URI должен использоваться клиентом в будущих запросах.

.. _class_HTTPClient_constant_RESPONSE_SEE_OTHER:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SEE_OTHER** = ``303``

Код статуса HTTP ``303 See Other``. Сервер перенаправляет агента пользователя на другой ресурс, как указано в URI в поле заголовка Location, который предназначен для предоставления косвенного ответа на исходный запрос.

.. _class_HTTPClient_constant_RESPONSE_NOT_MODIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_MODIFIED** = ``304``

Код статуса HTTP ``304 Не изменено``. Получен условный запрос GET или HEAD, который привел бы к ответу 200 OK, если бы не тот факт, что условие было оценено как ``ложное``.

.. _class_HTTPClient_constant_RESPONSE_USE_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_USE_PROXY** = ``305``

**Устарело:** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

Код статуса HTTP ``305 Использовать прокси``.

.. _class_HTTPClient_constant_RESPONSE_SWITCH_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCH_PROXY** = ``306``

**Устарело:** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

Код статуса HTTP ``306 Переключить прокси``.

.. _class_HTTPClient_constant_RESPONSE_TEMPORARY_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TEMPORARY_REDIRECT** = ``307``

Код статуса HTTP ``307 Temporary Redirect``. Целевой ресурс временно находится под другим URI, и пользовательский агент НЕ ДОЛЖЕН изменять метод запроса, если он выполняет автоматическое перенаправление на этот URI.

.. _class_HTTPClient_constant_RESPONSE_PERMANENT_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PERMANENT_REDIRECT** = ``308``

Код статуса HTTP ``308 Permanent Redirect``. Целевому ресурсу был назначен новый постоянный URI, и любые будущие ссылки на этот ресурс должны использовать один из включенных URI.

.. _class_HTTPClient_constant_RESPONSE_BAD_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_REQUEST** = ``400``

Код статуса HTTP ``400 Bad Request``. Запрос был недействительным. Сервер не может или не будет обрабатывать запрос из-за чего-то, что воспринимается как ошибка клиента (например, неверный синтаксис запроса, недопустимое кадрирование сообщения запроса, недопустимое содержимое запроса или обманчивая маршрутизация запроса).

.. _class_HTTPClient_constant_RESPONSE_UNAUTHORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAUTHORIZED** = ``401``

Код статуса HTTP ``401 Unauthorized``. Требуются учетные данные. Запрос не был применен, поскольку отсутствуют действительные учетные данные аутентификации для целевого ресурса.

.. _class_HTTPClient_constant_RESPONSE_PAYMENT_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PAYMENT_REQUIRED** = ``402``

Код статуса HTTP ``402 Payment Required``. Этот код ответа зарезервирован для будущего использования. Первоначальной целью создания этого кода было его использование для цифровых платежных систем, однако в настоящее время это не используется.

.. _class_HTTPClient_constant_RESPONSE_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FORBIDDEN** = ``403``

Код статуса HTTP ``403 Forbidden``. У клиента нет прав доступа к контенту, т. е. он не авторизован, поэтому сервер отказывается дать надлежащий ответ. В отличие от ``401``, идентификация клиента известна серверу.

.. _class_HTTPClient_constant_RESPONSE_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_FOUND** = ``404``

Код статуса HTTP ``404 Not Found``. Сервер не может найти запрошенный ресурс. Либо URL не распознан, либо конечная точка действительна, но сам ресурс не существует. Может также отправляться вместо 403, чтобы скрыть существование ресурса, если клиент не авторизован.

.. _class_HTTPClient_constant_RESPONSE_METHOD_NOT_ALLOWED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_METHOD_NOT_ALLOWED** = ``405``

Код статуса HTTP ``405 Method Not Allowed``. HTTP-метод запроса известен серверу, но был отключен и не может быть использован. Например, API может запретить DELETE-инвестирование ресурса. Два обязательных метода, GET и HEAD, никогда не должны быть отключены и не должны возвращать этот код ошибки.

.. _class_HTTPClient_constant_RESPONSE_NOT_ACCEPTABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_ACCEPTABLE** = ``406``

Код статуса HTTP ``406 Not Acceptable``. Целевой ресурс не имеет текущего представления, которое было бы приемлемо для пользовательского агента, согласно полям заголовка проактивного согласования, полученным в запросе. Используется при согласовании содержимого.

.. _class_HTTPClient_constant_RESPONSE_PROXY_AUTHENTICATION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROXY_AUTHENTICATION_REQUIRED** = ``407``

Код статуса HTTP ``407 Proxy Authentication Required``. Аналогичен коду 401 Неавторизованный, но указывает на то, что клиенту необходимо пройти аутентификацию, чтобы использовать прокси-сервер.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_TIMEOUT** = ``408``

Код статуса HTTP ``408 Request Timeout``. Сервер не получил полное сообщение запроса в течение времени, которое он был готов ждать.

.. _class_HTTPClient_constant_RESPONSE_CONFLICT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONFLICT** = ``409``

Код статуса HTTP ``409 Conflict``. Запрос не может быть выполнен из-за конфликта с текущим состоянием целевого ресурса. Этот код используется в ситуациях, когда пользователь может разрешить конфликт и повторно отправить запрос.

.. _class_HTTPClient_constant_RESPONSE_GONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GONE** = ``410``

Код статуса HTTP ``410 Gone``. Целевой ресурс больше не доступен на исходном сервере, и это состояние, скорее всего, постоянно.

.. _class_HTTPClient_constant_RESPONSE_LENGTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LENGTH_REQUIRED** = ``411``

Код статуса HTTP ``411 Length Required``. Сервер отказывается принимать запрос без определенного заголовка Content-Length.

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_FAILED** = ``412``

Код статуса HTTP ``412 Precondition Failed``. Одно или несколько условий, указанных в полях заголовка запроса, оценены как ``false`` при проверке на сервере.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_ENTITY_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_ENTITY_TOO_LARGE** = ``413``

Код статуса HTTP ``413 Entity Too Large``. Сервер отказывается обрабатывать запрос, поскольку полезная нагрузка запроса больше, чем сервер готов или может обработать.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_URI_TOO_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_URI_TOO_LONG** = ``414``

Код статуса HTTP ``414 Request-URI Too Long``. Сервер отказывается обслуживать запрос, поскольку request-target длиннее, чем сервер готов интерпретировать.

.. _class_HTTPClient_constant_RESPONSE_UNSUPPORTED_MEDIA_TYPE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNSUPPORTED_MEDIA_TYPE** = ``415``

Код статуса HTTP ``415 Unsupported Media``. Исходный сервер отказывается обслуживать запрос, поскольку полезная нагрузка имеет формат, не поддерживаемый этим методом на целевом ресурсе.

.. _class_HTTPClient_constant_RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE** = ``416``

Код статуса HTTP ``416 Запрошенный диапазон невыполним``. Ни один из диапазонов в поле заголовка Range запроса не перекрывает текущий экстент выбранного ресурса, или набор запрошенных диапазонов был отклонен из-за недопустимых диапазонов или чрезмерного запроса маленьких или перекрывающихся диапазонов.

.. _class_HTTPClient_constant_RESPONSE_EXPECTATION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_EXPECTATION_FAILED** = ``417``

Код статуса HTTP ``417 Expectation Failed``. Ожидание, указанное в поле заголовка Expect запроса, не может быть удовлетворено по крайней мере одним из входящих серверов.

.. _class_HTTPClient_constant_RESPONSE_IM_A_TEAPOT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_A_TEAPOT** = ``418``

Код статуса HTTP ``418 Я чайник``. Любая попытка заварить кофе с помощью чайника должна привести к коду ошибки "418 Я чайник". Результирующее тело сущности МОЖЕТ быть коротким и толстым.

.. _class_HTTPClient_constant_RESPONSE_MISDIRECTED_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MISDIRECTED_REQUEST** = ``421``

Код статуса HTTP ``421 Неправильно направленный запрос``. Запрос был направлен на сервер, который не может выдать ответ. Это может быть отправлено сервером, который не настроен на выдачу ответов для комбинации схемы и полномочий, которые включены в URI запроса.

.. _class_HTTPClient_constant_RESPONSE_UNPROCESSABLE_ENTITY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNPROCESSABLE_ENTITY** = ``422``

Код статуса HTTP ``422 Unprocessable Entity`` (WebDAV). Сервер понимает тип содержимого сущности запроса (поэтому код статуса 415 Unsupported Media Type недопустим), а синтаксис сущности запроса правильный (поэтому код статуса 400 Bad Request недопустим), но не смог обработать содержащиеся инструкции.

.. _class_HTTPClient_constant_RESPONSE_LOCKED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOCKED** = ``423``

Код статуса HTTP ``423 Заблокировано`` (WebDAV). Исходный или целевой ресурс метода заблокирован.

.. _class_HTTPClient_constant_RESPONSE_FAILED_DEPENDENCY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FAILED_DEPENDENCY** = ``424``

Код статуса HTTP ``424 Неудачная зависимость`` (WebDAV). Метод не может быть выполнен на ресурсе, поскольку запрошенное действие зависело от другого действия, а это действие не удалось.

.. _class_HTTPClient_constant_RESPONSE_UPGRADE_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UPGRADE_REQUIRED** = ``426``

Код статуса HTTP ``426 Требуется обновление``. Сервер отказывается выполнять запрос с использованием текущего протокола, но может быть готов сделать это после того, как клиент обновит протокол до другого.

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_REQUIRED** = ``428``

Код статуса HTTP ``428 Требуется предварительное условие``. Исходный сервер требует, чтобы запрос был условным.

.. _class_HTTPClient_constant_RESPONSE_TOO_MANY_REQUESTS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TOO_MANY_REQUESTS** = ``429``

Код статуса HTTP ``429 Слишком много запросов``. Пользователь отправил слишком много запросов за указанный промежуток времени (см. «ограничение скорости»). Отступите и увеличьте время между запросами или повторите попытку позже.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE** = ``431``

Код статуса HTTP ``431 Поля заголовка запроса слишком велики``. Сервер не желает обрабатывать запрос, поскольку поля заголовка слишком велики. Запрос МОЖЕТ быть отправлен повторно после уменьшения размера полей заголовка запроса.

.. _class_HTTPClient_constant_RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS** = ``451``

Код статуса HTTP ``451 Ответ недоступен по юридическим причинам``. Сервер отказывает в доступе к ресурсу в связи с юридическим требованием.

.. _class_HTTPClient_constant_RESPONSE_INTERNAL_SERVER_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INTERNAL_SERVER_ERROR** = ``500``

Код статуса HTTP ``500 Внутренняя ошибка сервера``. Сервер столкнулся с непредвиденным условием, которое не позволило выполнить запрос.

.. _class_HTTPClient_constant_RESPONSE_NOT_IMPLEMENTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_IMPLEMENTED** = ``501``

Код статуса HTTP ``501 Не реализовано``. Сервер не поддерживает функциональность, необходимую для выполнения запроса.

.. _class_HTTPClient_constant_RESPONSE_BAD_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_GATEWAY** = ``502``

Код статуса HTTP ``502 Bad Gateway``. Сервер, выступая в качестве шлюза или прокси, получил недопустимый ответ от входящего сервера, к которому он обращался при попытке выполнить запрос. Обычно возвращается балансировщиками нагрузки или прокси.

.. _class_HTTPClient_constant_RESPONSE_SERVICE_UNAVAILABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SERVICE_UNAVAILABLE** = ``503``

Код статуса HTTP ``503 Service Unavailable``. В настоящее время сервер не может обработать запрос из-за временной перегрузки или планового обслуживания, которое, скорее всего, будет устранено после некоторой задержки. Повторите попытку позже.

.. _class_HTTPClient_constant_RESPONSE_GATEWAY_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GATEWAY_TIMEOUT** = ``504``

Код статуса HTTP ``504 Gateway Timeout``. Сервер, выступая в качестве шлюза или прокси-сервера, не получил своевременного ответа от вышестоящего сервера, к которому ему нужно было получить доступ для выполнения запроса. Обычно возвращается балансировщиками нагрузки или прокси-серверами.

.. _class_HTTPClient_constant_RESPONSE_HTTP_VERSION_NOT_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_HTTP_VERSION_NOT_SUPPORTED** = ``505``

Код статуса HTTP ``505 Версия HTTP не поддерживается``. Сервер не поддерживает или отказывается поддерживать основную версию HTTP, которая использовалась в сообщении запроса.

.. _class_HTTPClient_constant_RESPONSE_VARIANT_ALSO_NEGOTIATES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_VARIANT_ALSO_NEGOTIATES** = ``506``

Код статуса HTTP ``506 Вариант также согласовывает``. На сервере произошла внутренняя ошибка конфигурации: выбранный вариантный ресурс настроен на участие в прозрачном согласовании контента и, следовательно, не является надлежащей конечной точкой в процессе согласования.

.. _class_HTTPClient_constant_RESPONSE_INSUFFICIENT_STORAGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INSUFFICIENT_STORAGE** = ``507``

Код статуса HTTP ``507 Недостаточно места на диске``. Метод не может быть выполнен на ресурсе, поскольку сервер не может сохранить представление, необходимое для успешного выполнения запроса.

.. _class_HTTPClient_constant_RESPONSE_LOOP_DETECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOOP_DETECTED** = ``508``

Код статуса HTTP ``508 Loop Detected``. Сервер завершил операцию, поскольку обнаружил бесконечный цикл при обработке запроса с "Depth: infinity". Этот статус указывает на то, что вся операция не удалась.

.. _class_HTTPClient_constant_RESPONSE_NOT_EXTENDED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_EXTENDED** = ``510``

Код статуса HTTP ``510 Not Extended``. Политика доступа к ресурсу не была соблюдена в запросе. Сервер должен отправить обратно всю информацию, необходимую клиенту для выдачи расширенного запроса.

.. _class_HTTPClient_constant_RESPONSE_NETWORK_AUTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NETWORK_AUTH_REQUIRED** = ``511``

Код статуса HTTP ``511 Требуется сетевая аутентификация``. Клиенту необходимо пройти аутентификацию, чтобы получить доступ к сети.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_HTTPClient_property_blocking_mode_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **blocking_mode_enabled** = ``false`` :ref:`🔗<class_HTTPClient_property_blocking_mode_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_blocking_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blocking_mode_enabled**\ (\ )

Если ``true``, выполнение будет заблокировано до тех пор, пока все данные не будут прочитаны из ответа.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_connection:

.. rst-class:: classref-property

:ref:`StreamPeer<class_StreamPeer>` **connection** :ref:`🔗<class_HTTPClient_property_connection>`

.. rst-class:: classref-property-setget

- |void| **set_connection**\ (\ value\: :ref:`StreamPeer<class_StreamPeer>`\ )
- :ref:`StreamPeer<class_StreamPeer>` **get_connection**\ (\ )

Соединение, которое будет использоваться для этого клиента.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_read_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **read_chunk_size** = ``65536`` :ref:`🔗<class_HTTPClient_property_read_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_read_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_read_chunk_size**\ (\ )

Размер используемого буфера и максимальное количество байтов для чтения за одну итерацию. См. :ref:`read_response_body_chunk()<class_HTTPClient_method_read_response_body_chunk>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_HTTPClient_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_HTTPClient_method_close>`

Закрывает текущее соединение, позволяя повторно использовать этот **HTTPClient**.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>` = -1, tls_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_HTTPClient_method_connect_to_host>`

Подключается к хосту. Это необходимо сделать до отправки любых запросов.

Если ``port`` не указан (или используется ``-1``, он автоматически устанавливается на 80 для HTTP и 443 для HTTPS. Вы можете передать необязательный параметр ``tls_options``, чтобы настроить доверенные центры сертификации или проверку общего имени при использовании HTTPS. См. :ref:`TLSOptions.client()<class_TLSOptions_method_client>` и :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_body_length:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_body_length**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_body_length>`

Возвращает длину тела ответа.

\ **Примечание:** Некоторые веб-серверы могут не отправлять длину тела. В этом случае возвращаемое значение будет ``-1``. При использовании кодирования передачи по частям длина тела также будет ``-1``.

\ **Примечание:** Эта функция всегда возвращает ``-1`` на веб-платформе из-за ограничений браузеров.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_code**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_code>`

Возвращает код статуса HTTP ответа.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_response_headers**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers>`

Возвращает заголовки ответа.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers_as_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_response_headers_as_dictionary**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers_as_dictionary>`

Возвращает все заголовки ответа в виде :ref:`Dictionary<class_Dictionary>`. Каждая запись состоит из имени заголовка и :ref:`String<class_String>`, содержащей значения, разделенные ``"; "``. Регистр сохраняется таким же, как и при получении заголовков.

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

Возвращает константу :ref:`Status<enum_HTTPClient_Status>`. Необходимо вызвать :ref:`poll()<class_HTTPClient_method_poll>`, чтобы получить обновления статуса.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_has_response:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_response**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_has_response>`

Если ``true``, этот **HTTPClient** имеет доступный ответ.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_is_response_chunked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_response_chunked**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_is_response_chunked>`

Если ``true``, этот **HTTPClient** имеет ответ, который разбит на фрагменты.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_HTTPClient_method_poll>`

Это необходимо вызвать, чтобы обработать любой запрос. Проверьте результаты с помощью :ref:`get_status()<class_HTTPClient_method_get_status>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_query_string_from_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_string_from_dict**\ (\ fields\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_HTTPClient_method_query_string_from_dict>`

Формирует строку запроса в стиле GET/POST application/x-www-form-urlencoded из предоставленного словаря, например:


.. tabs::

 .. code-tab:: gdscript

    var fields = { "username": "user", "password": "pass" }
    var query_string = http_client.query_string_from_dict(fields)
    # Возвращает "username=user&password=pass"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary { { "username", "user" }, { "password", "pass" } };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Возвращает "username=user&password=pass"



Более того, если ключ имеет значение ``null``, добавляется только сам ключ, без знака равенства и значения. Если значение — массив, для каждого значения в нём добавляется пара с тем же ключом.


.. tabs::

 .. code-tab:: gdscript

    var fields = { "single": 123, "not_valued": null, "multiple": [22, 33, 44] }
    var query_string = http_client.query_string_from_dict(fields)
    # Возвращает "single=123&not_valued&multiple=22&multiple=33&multiple=44"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary
    {
        { "single", 123 },
        { "notValued", default },
        { "multiple", new Godot.Collections.Array { 22, 33, 44 } },
    };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Возвращает "single=123&not_valued&multiple=22&multiple=33&multiple=44"



.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_read_response_body_chunk:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **read_response_body_chunk**\ (\ ) :ref:`🔗<class_HTTPClient_method_read_response_body_chunk>`

Считывает один фрагмент ответа.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPClient_method_request>`

Отправляет HTTP-запрос к подключенному хосту с заданным методом ``method``.

Параметр URL обычно представляет собой только часть, следующую за хостом, например, для ``https://example.com/index.php`` это ``/index.php``. При отправке запросов к HTTP-прокси-серверу это должен быть абсолютный URL. Для запросов :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>` также допускается ``*``. Для запросов :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>` это должен быть компонент полномочий (\ ``host:port``).

\ ``headers`` — это заголовки HTTP-запроса.

Чтобы создать POST-запрос со строками запроса для отправки на сервер, выполните:


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



\ **Примечание:** Параметр ``body`` игнорируется, если ``method`` — это :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`. Это связано с тем, что методы GET не могут содержать данные запроса. В качестве обходного решения можно передать данные запроса в виде строки запроса в URL. См. пример в :ref:`String.uri_encode()<class_String_method_uri_encode>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPClient_method_request_raw>`

Отправляет необработанный HTTP-запрос на подключенный хост с заданным ``method``.

Параметр URL обычно представляет собой только часть после хоста, поэтому для ``https://example.com/index.php`` это ``/index.php``. При отправке запросов на HTTP-прокси-сервер это должен быть абсолютный URL. Для запросов :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>` также допускается ``*``. Для запросов :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>` это должен быть компонент полномочий (\ ``host:port``).

\ ``headers`` — это заголовки HTTP-запроса.

Отправляет данные body необработанными, как массив байтов, и никак их не кодирует.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_http_proxy>`

Устанавливает прокси-сервер для HTTP-запросов.

Прокси-сервер не установлен, если ``host`` пуст или ``port`` равен -1.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_https_proxy>`

Устанавливает прокси-сервер для HTTPS-запросов.

Прокси-сервер не установлен, если ``host`` пуст или ``port`` равен -1.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
