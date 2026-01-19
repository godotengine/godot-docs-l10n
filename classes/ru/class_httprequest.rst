:github_url: hide

.. _class_HTTPRequest:

HTTPRequest
===========

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел с возможностью отправки HTTP(S)-запросов.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел с возможностью отправки HTTP-запросов. Использует :ref:`HTTPClient<class_HTTPClient>` для внутренних целей.

Может использоваться для выполнения HTTP-запросов, т. е. загрузки или выгрузки файлов или веб-контента через HTTP.

\ **Предупреждение:** Ознакомьтесь с примечаниями и предупреждениями по :ref:`HTTPClient<class_HTTPClient>` относительно ограничений, особенно касающихся безопасности TLS.

\ **Примечание:** При экспорте на Android убедитесь, что в настройках экспорта Android включено разрешение ``INTERNET`` перед экспортом проекта или использованием развертывания в один клик. В противном случае Android будет блокировать любые сетевые соединения.

\ **Пример:** Обратиться к REST API и вывести одно из возвращенных им полей:


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Создайте узел HTTP-запроса и подключите его сигнал завершения.
        var http_request = HTTPRequest.new()
        add_child(http_request)
        http_request.request_completed.connect(self._http_request_completed)

        # Выполните GET-запрос. URL-адрес ниже возвращает JSON на момент написания статьи.
        var error = http_request.request("https://httpbin.org/get")
        if error != OK:
            push_error("An error occurred in the HTTP request.")

        # Выполните POST-запрос. URL-адрес ниже возвращает JSON на момент написания статьи.
        # Примечание: не отправляйте одновременные запросы с использованием одного узла HTTPRequest.
        # Фрагмент ниже предоставлен только для справки.
        var body = JSON.new().stringify({"name": "Godette"})
        error = http_request.request("https://httpbin.org/post", [], HTTPClient.METHOD_POST, body)
        if error != OK:
            push_error("An error occurred in the HTTP request.")

    # Вызывается после завершения HTTP-запроса.
    func _http_request_completed(result, response_code, headers, body):
        var json = JSON.new()
        json.parse(body.get_string_from_utf8())
        var response = json.get_data()

        # Выведет строку пользовательского агента, используемую узлом HTTPRequest (распознанную httpbin.org).
        print(response.headers["User-Agent"])

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Создайте узел HTTP-запроса и подключите его сигнал завершения.
        var httpRequest = new HttpRequest();
        AddChild(httpRequest);
        httpRequest.RequestCompleted += HttpRequestCompleted;

        // Выполните GET-запрос. URL-адрес ниже возвращает JSON на момент написания статьи.
        Error error = httpRequest.Request("https://httpbin.org/get");
        if (error != Error.Ok)
        {
            GD.PushError("An error occurred in the HTTP request.");
        }

        // Выполните POST-запрос. URL-адрес ниже возвращает JSON на момент написания статьи.
        // Примечание: не отправляйте одновременные запросы с использованием одного узла HTTPRequest.
        // Фрагмент ниже предоставлен только для справки.
        string body = new Json().Stringify(new Godot.Collections.Dictionary
        {
            { "name", "Godette" }
        });
        error = httpRequest.Request("https://httpbin.org/post", null, HttpClient.Method.Post, body);
        if (error != Error.Ok)
        {
            GD.PushError("An error occurred in the HTTP request.");
        }
    }

    // Вызывается после завершения HTTP-запроса.
    private void HttpRequestCompleted(long result, long responseCode, string[] headers, byte[] body)
    {
        var json = new Json();
        json.Parse(body.GetStringFromUtf8());
        var response = json.GetData().AsGodotDictionary();

        // Выведет строку пользовательского агента, используемую узлом HTTPRequest (распознанную httpbin.org).
        GD.Print((response["headers"].AsGodotDictionary())["User-Agent"]);
    }



\ **Пример:** Загрузите изображение с помощью **HTTPRequest** и отобразите его:


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Создайте узел HTTP-запроса и подключите его сигнал завершения.
        var http_request = HTTPRequest.new()
        add_child(http_request)
        http_request.request_completed.connect(self._http_request_completed)

        # Выполните HTTP-запрос. URL-адрес ниже возвращает изображение в формате PNG (на момент написания статьи).
        var error = http_request.request("https://placehold.co/512.png")
        if error != OK:
            push_error("An error occurred in the HTTP request.")

    # Вызывается после завершения HTTP-запроса.
    func _http_request_completed(result, response_code, headers, body):
        if result != HTTPRequest.RESULT_SUCCESS:
            push_error("Image couldn't be downloaded. Try a different image.")

        var image = Image.new()
        var error = image.load_png_from_buffer(body)
        if error != OK:
            push_error("Couldn't load the image.")

        var texture = ImageTexture.create_from_image(image)

        # Отобразите изображение в узле TextureRect.
        var texture_rect = TextureRect.new()
        add_child(texture_rect)
        texture_rect.texture = texture

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Создайте узел HTTP-запроса и подключите его сигнал завершения.
        var httpRequest = new HttpRequest();
        AddChild(httpRequest);
        httpRequest.RequestCompleted += HttpRequestCompleted;

        // Выполните HTTP-запрос. URL-адрес ниже возвращает изображение в формате PNG (на момент написания статьи).
        Error error = httpRequest.Request("https://placehold.co/512.png");
        if (error != Error.Ok)
        {
            GD.PushError("An error occurred in the HTTP request.");
        }
    }

    // Вызывается после завершения HTTP-запроса.
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

        // Отобразите изображение в узле TextureRect.
        var textureRect = new TextureRect();
        AddChild(textureRect);
        textureRect.Texture = texture;
    }



\ **Примечание:** Узлы **HTTPRequest** автоматически распаковывают тела ответов. Заголовок ``Accept-Encoding`` будет автоматически добавлен к каждому вашему запросу, если он ещё не указан. Любой ответ с заголовком ``Content-Encoding: gzip`` будет автоматически распакован и доставлен вам в виде несжатых байтов.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Выполнение HTTP-запросов <../tutorials/networking/http_request_class>`

- :doc:`TLS-сертификаты <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Сигналы
--------------

.. _class_HTTPRequest_signal_request_completed:

.. rst-class:: classref-signal

**request_completed**\ (\ result\: :ref:`int<class_int>`, response_code\: :ref:`int<class_int>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPRequest_signal_request_completed>`

Выдается после завершения запроса.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_HTTPRequest_Result:

.. rst-class:: classref-enumeration

enum **Result**: :ref:`🔗<enum_HTTPRequest_Result>`

.. _class_HTTPRequest_constant_RESULT_SUCCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_SUCCESS** = ``0``

Запрос успешен.

.. _class_HTTPRequest_constant_RESULT_CHUNKED_BODY_SIZE_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CHUNKED_BODY_SIZE_MISMATCH** = ``1``

Запрос не выполнен из-за несоответствия между ожидаемым и фактическим размером фрагментированного тела во время передачи. Возможные причины включают сетевые ошибки, неправильную конфигурацию сервера или проблемы с фрагментированным кодированием.

.. _class_HTTPRequest_constant_RESULT_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CANT_CONNECT** = ``2``

Запрос не удался при подключении.

.. _class_HTTPRequest_constant_RESULT_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CANT_RESOLVE** = ``3``

Запрос не удалось разрешить.

.. _class_HTTPRequest_constant_RESULT_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_CONNECTION_ERROR** = ``4``

Запрос не выполнен из-за ошибки соединения (чтение/запись).

.. _class_HTTPRequest_constant_RESULT_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_TLS_HANDSHAKE_ERROR** = ``5``

Запрос не выполнен при установлении связи TLS.

.. _class_HTTPRequest_constant_RESULT_NO_RESPONSE:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_NO_RESPONSE** = ``6``

Запрос не получил ответа (пока что).

.. _class_HTTPRequest_constant_RESULT_BODY_SIZE_LIMIT_EXCEEDED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_BODY_SIZE_LIMIT_EXCEEDED** = ``7``

Запрос превысил максимальный размер, см. :ref:`body_size_limit<class_HTTPRequest_property_body_size_limit>`.

.. _class_HTTPRequest_constant_RESULT_BODY_DECOMPRESS_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_BODY_DECOMPRESS_FAILED** = ``8``

Запрос не выполнен из-за ошибки при распаковке тела ответа. Возможные причины включают неподдерживаемый или неправильный формат сжатия, поврежденные данные или неполную передачу.

.. _class_HTTPRequest_constant_RESULT_REQUEST_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_REQUEST_FAILED** = ``9``

Запрос не выполнен (в настоящее время не используется).

.. _class_HTTPRequest_constant_RESULT_DOWNLOAD_FILE_CANT_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_DOWNLOAD_FILE_CANT_OPEN** = ``10``

HTTPRequest не смог открыть загружаемый файл.

.. _class_HTTPRequest_constant_RESULT_DOWNLOAD_FILE_WRITE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_DOWNLOAD_FILE_WRITE_ERROR** = ``11``

HTTPRequest не смог выполнить запись в загружаемый файл.

.. _class_HTTPRequest_constant_RESULT_REDIRECT_LIMIT_REACHED:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_REDIRECT_LIMIT_REACHED** = ``12``

Запрос достиг максимального предела перенаправления, см. :ref:`max_redirects<class_HTTPRequest_property_max_redirects>`.

.. _class_HTTPRequest_constant_RESULT_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`Result<enum_HTTPRequest_Result>` **RESULT_TIMEOUT** = ``13``

Запрос не выполнен из-за тайм-аута. Если вы ожидаете, что запросы будут выполняться долго, попробуйте увеличить значение :ref:`timeout<class_HTTPRequest_property_timeout>` или установить его на ``0.0``, чтобы полностью убрать тайм-аут.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_HTTPRequest_property_accept_gzip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **accept_gzip** = ``true`` :ref:`🔗<class_HTTPRequest_property_accept_gzip>`

.. rst-class:: classref-property-setget

- |void| **set_accept_gzip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_accepting_gzip**\ (\ )

Если ``true``, этот заголовок будет добавлен к каждому запросу: ``Accept-Encoding: gzip, deflate``, сообщая серверам, что сжимать тела ответов можно.

Любое тело ответа, объявляющее ``Content-Encoding`` либо ``gzip``, либо ``deflate``, будет автоматически распаковано, а несжатые байты будут доставлены через :ref:`request_completed<class_HTTPRequest_signal_request_completed>`.

Если пользователь указал свой собственный заголовок ``Accept-Encoding``, то заголовок не будет добавлен независимо от :ref:`accept_gzip<class_HTTPRequest_property_accept_gzip>`.

Если ``false``, заголовок не будет добавлен, и распаковка тел ответов не будет выполнена. Необработанные байты тела ответа будут возвращены через :ref:`request_completed<class_HTTPRequest_signal_request_completed>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_body_size_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **body_size_limit** = ``-1`` :ref:`🔗<class_HTTPRequest_property_body_size_limit>`

.. rst-class:: classref-property-setget

- |void| **set_body_size_limit**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_body_size_limit**\ (\ )

Максимально допустимый размер для тел ответов. Если тело ответа сжато, это будет использоваться как максимально допустимый размер для распакованного тела.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_download_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **download_chunk_size** = ``65536`` :ref:`🔗<class_HTTPRequest_property_download_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_download_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_download_chunk_size**\ (\ )

Размер используемого буфера и максимальное количество байтов для чтения за одну итерацию. См. :ref:`HTTPClient.read_chunk_size<class_HTTPClient_property_read_chunk_size>`.

Установите меньшее значение (например, 4096 для 4 КиБ) при загрузке небольших файлов, чтобы уменьшить использование памяти за счет скорости загрузки.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_download_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **download_file** = ``""`` :ref:`🔗<class_HTTPRequest_property_download_file>`

.. rst-class:: classref-property-setget

- |void| **set_download_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_download_file**\ (\ )

Файл для загрузки. В него будет выведен любой полученный файл.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_max_redirects:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_redirects** = ``8`` :ref:`🔗<class_HTTPRequest_property_max_redirects>`

.. rst-class:: classref-property-setget

- |void| **set_max_redirects**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_redirects**\ (\ )

Максимальное количество разрешенных перенаправлений.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **timeout** = ``0.0`` :ref:`🔗<class_HTTPRequest_property_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_timeout**\ (\ )

Длительность ожидания до истечения таймаута запроса в секундах (независимо от параметра :ref:`Engine.time_scale<class_Engine_property_time_scale>`). Если :ref:`timeout<class_HTTPRequest_property_timeout>` установлено на ``0.0``, запрос никогда не истечет по таймауту.

Для простых запросов, таких как взаимодействие с REST API, рекомендуется установить :ref:`timeout<class_HTTPRequest_property_timeout>` на значение, подходящее для времени ответа сервера (обычно от ``1.0`` до ``10.0``). Это поможет предотвратить нежелательные таймауты, вызванные колебаниями времени ответа, и при этом позволит приложению определять, когда запрос истек по таймауту. Для более крупных запросов, таких как загрузка файлов, рекомендуется установить :ref:`timeout<class_HTTPRequest_property_timeout>` на ``0.0``, отключив функцию таймаута. Это поможет предотвратить сбои при больших передачах из-за превышения значения таймаута.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_property_use_threads:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_threads** = ``false`` :ref:`🔗<class_HTTPRequest_property_use_threads>`

.. rst-class:: classref-property-setget

- |void| **set_use_threads**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_threads**\ (\ )

Если ``true``, для повышения производительности используется многопоточность.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_HTTPRequest_method_cancel_request:

.. rst-class:: classref-method

|void| **cancel_request**\ (\ ) :ref:`🔗<class_HTTPRequest_method_cancel_request>`

Отменяет текущий запрос.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_body_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_body_size**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_body_size>`

Возвращает длину тела запроса.

\ **Примечание:** Некоторые веб-серверы могут не отправлять длину тела. В этом случае возвращаемое значение будет ``-1``. При использовании кодирования передачи по частям длина тела также будет ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_downloaded_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_downloaded_bytes**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_downloaded_bytes>`

Возвращает количество байтов, загруженных по этому HTTP-запросу.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_get_http_client_status:

.. rst-class:: classref-method

:ref:`Status<enum_HTTPClient_Status>` **get_http_client_status**\ (\ ) |const| :ref:`🔗<class_HTTPRequest_method_get_http_client_status>`

Возвращает текущий статус базового :ref:`HTTPClient<class_HTTPClient>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPRequest_method_request>`

Создает запрос на базовом :ref:`HTTPClient<class_HTTPClient>`. Если ошибок конфигурации нет, он пытается подключиться с помощью :ref:`HTTPClient.connect_to_host()<class_HTTPClient_method_connect_to_host>` и передает параметры в :ref:`HTTPClient.request()<class_HTTPClient_method_request>`.

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, если запрос успешно создан. (Не подразумевает, что сервер ответил), :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>`, если нет в дереве, :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>`, если все еще обрабатывается предыдущий запрос, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`, если заданная строка не является допустимым форматом URL, или :ref:`@GlobalScope.ERR_CANT_CONNECT<class_@GlobalScope_constant_ERR_CANT_CONNECT>`, если поток не используется и :ref:`HTTPClient<class_HTTPClient>` не может подключиться к хосту.

\ **Примечание:** Когда ``method`` — :ref:`HTTPClient.METHOD_GET<class_HTTPClient_constant_METHOD_GET>`, полезная нагрузка, отправленная через ``request_data``, может быть проигнорирована сервером или даже привести к отклонению запроса сервером (подробнее см. в `RFC 7231, раздел 4.3.1 <https://datatracker.ietf.org/doc/html/rfc7231#section-4.3.1>`__). В качестве обходного пути вы можете отправить данные в виде строки запроса в URL (см. пример в :ref:`String.uri_encode()<class_String_method_uri_encode>`).

\ **Примечание:** Рекомендуется использовать транспортное шифрование (TLS) и избегать отправки конфиденциальной информации (например, учетных данных для входа) в параметрах URL HTTP GET. Рассмотрите возможность использования запросов HTTP POST или заголовков HTTP для такой информации.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ url\: :ref:`String<class_String>`, custom_headers\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), method\: :ref:`Method<enum_HTTPClient_Method>` = 0, request_data_raw\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) :ref:`🔗<class_HTTPRequest_method_request_raw>`

Создает запрос на базовом :ref:`HTTPClient<class_HTTPClient>`, используя необработанный массив байтов для тела запроса. Если ошибок конфигурации нет, он пытается подключиться с помощью :ref:`HTTPClient.connect_to_host()<class_HTTPClient_method_connect_to_host>` и передает параметры в :ref:`HTTPClient.request()<class_HTTPClient_method_request>`. 

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, если запрос успешно создан. (Не подразумевает, что сервер ответил), :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>`, если нет в дереве, :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>`, если все еще обрабатывается предыдущий запрос, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`, если заданная строка не является допустимым форматом URL, или :ref:`@GlobalScope.ERR_CANT_CONNECT<class_@GlobalScope_constant_ERR_CANT_CONNECT>`, если поток не используется и :ref:`HTTPClient<class_HTTPClient>` не может подключиться к хосту.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPRequest_method_set_http_proxy>`

Устанавливает прокси-сервер для HTTP-запросов.

Прокси-сервер не установлен, если ``host`` пуст или ``port`` равен -1.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPRequest_method_set_https_proxy>`

Устанавливает прокси-сервер для HTTPS-запросов.

Прокси-сервер не установлен, если ``host`` пуст или ``port`` равен -1.

.. rst-class:: classref-item-separator

----

.. _class_HTTPRequest_method_set_tls_options:

.. rst-class:: classref-method

|void| **set_tls_options**\ (\ client_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_HTTPRequest_method_set_tls_options>`

Устанавливает :ref:`TLSOptions<class_TLSOptions>`, которые будут использоваться при подключении к HTTPS-серверу. См. :ref:`TLSOptions.client()<class_TLSOptions_method_client>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
