:github_url: hide

.. _class_HTTPClient:

HTTPClient
==========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Клієнт протоколу передачі гіпертексту низького рівня.

.. rst-class:: classref-introduction-group

Опис
--------

Клієнт протоколу передачі гіпертексту (іноді його називають "Агент користувача"). Використовується для здійснення HTTP-запитів для завантаження веб-контенту, файлів та інших даних або для зв'язку з різними службами, серед інших випадків використання.

Див. вузол :ref:`HTTPRequest<class_HTTPRequest>` для альтернативи вищого рівня.

\ **Примітка:** Цьому клієнту потрібно лише один раз підключитися до хоста (див. :ref:`connect_to_host()<class_HTTPClient_method_connect_to_host>`), щоб надіслати кілька запитів. Через це методи, які приймають URL-адреси, зазвичай приймають лише частину після хоста, а не повну URL-адресу, оскільки клієнт вже підключений до хоста. Див. :ref:`request()<class_HTTPClient_method_request>` для повного прикладу та початку роботи.

\ **HTTPClient** слід повторно використовувати між кількома запитами або для підключення до різних хостів, замість створення одного клієнта на запит. Підтримує безпеку транспортного рівня (TLS), включаючи перевірку сертифіката сервера. Коди стану HTTP у діапазоні 2xx вказують на успіх, 3xx – перенаправлення (тобто "спробуйте ще раз, але тут"), 4xx – щось пішло не так із запитом, а 5xx – щось пішло не так на стороні сервера.

 Щоб отримати додаткову інформацію про HTTP, див. `документацію MDN щодо HTTP <https://developer.mozilla.org/en-US/docs/Web/HTTP>`__ (або прочитайте `RFC 2616 <https://tools.ietf.org/html/rfc2616>`__, щоб отримати її безпосередньо з джерела).

\ **Примітка:** Під час експорту на Android переконайтеся, що ви ввімкнули дозвіл ``INTERNET`` у попередньому налаштуванні експорту Android перед експортом проекту або використанням розгортання одним клацанням миші. В іншому випадку Android блокуватиме будь-який мережевий зв'язок.

\ **Примітка:** Рекомендується використовувати транспортне шифрування (TLS) та уникати надсилання конфіденційної інформації (наприклад, облікових даних для входу) у параметрах URL-адреси HTTP GET. Натомість розгляньте можливість використання запитів HTTP POST або заголовків HTTP для такої інформації.

\ **Примітка:** Під час виконання HTTP-запитів із проекту, експортованого в Інтернет, пам’ятайте, що віддалений сервер може не дозволяти запити із сторонніх джерел через `CORS <https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS>`__. Якщо ви розміщуєте відповідний сервер, вам слід змінити його серверну частину, щоб дозволити запити із сторонніх джерел, додавши HTTP-заголовок ``Access-Control-Allow-Origin: *``.

\ **Примітка:** Підтримка TLS наразі обмежена TLSv1.2 та TLSv1.3. Спроба підключитися до сервера, який підтримує лише старіші (незахищені) версії TLS, поверне помилку.

\ **Попередження:** Відкликання та закріплення сертифіката TLS наразі не підтримуються. Відкликані сертифікати приймаються, якщо вони дійсні. Якщо це вас турбує, ви можете використовувати автоматично керовані сертифікати з коротким терміном дії.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Клас клієнта HTTP <../tutorials/networking/http_client_class>`

- :doc:`сертифікати TLS <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Переліки
----------------

.. _enum_HTTPClient_Method:

.. rst-class:: classref-enumeration

enum **Method**: :ref:`🔗<enum_HTTPClient_Method>`

.. _class_HTTPClient_constant_METHOD_GET:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_GET** = ``0``

Метод HTTP GET. Метод GET запитує представлення зазначеного ресурсу. Запити з використанням GET мають лише отримувати дані.

.. _class_HTTPClient_constant_METHOD_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_HEAD** = ``1``

Метод HTTP HEAD. Метод HEAD запитує відповідь, ідентичну запиту GET, але без тіла відповіді. Це корисно для запиту метаданих, наприклад заголовків HTTP, або для перевірки існування ресурсу.

.. _class_HTTPClient_constant_METHOD_POST:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_POST** = ``2``

Метод HTTP POST. Метод POST використовується для надсилання сутності на вказаний ресурс, що часто спричиняє зміну стану або побічні ефекти на сервері. Це часто використовується для форм і надсилання даних або завантаження файлів.

.. _class_HTTPClient_constant_METHOD_PUT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PUT** = ``3``

Метод HTTP PUT. Метод PUT просить замінити всі поточні представлення цільового ресурсу корисним навантаженням запиту. (Ви можете розглядати POST як «створити або оновити», а PUT — як «оновити», хоча багато служб, як правило, не роблять чіткого розмежування або змінюють своє значення).

.. _class_HTTPClient_constant_METHOD_DELETE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_DELETE** = ``4``

Метод HTTP DELETE. Метод DELETE запитує видалення зазначеного ресурсу.

.. _class_HTTPClient_constant_METHOD_OPTIONS:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_OPTIONS** = ``5``

Метод HTTP OPTIONS. Метод OPTIONS запитує опис параметрів зв’язку для цільового ресурсу. Використовується рідко.

.. _class_HTTPClient_constant_METHOD_TRACE:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_TRACE** = ``6``

Метод HTTP TRACE. Метод TRACE виконує перевірку зациклення повідомлення на шляху до цільового ресурсу. Повертає весь запит HTTP, отриманий у тілі відповіді. Використовується рідко.

.. _class_HTTPClient_constant_METHOD_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_CONNECT** = ``7``

Метод HTTP CONNECT. Метод CONNECT встановлює тунель до сервера, ідентифікованого цільовим ресурсом. Використовується рідко.

.. _class_HTTPClient_constant_METHOD_PATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_PATCH** = ``8``

Метод HTTP PATCH. Метод PATCH використовується для застосування часткових змін до ресурсу.

.. _class_HTTPClient_constant_METHOD_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Method<enum_HTTPClient_Method>` **METHOD_MAX** = ``9``

Представляє розмір переліку :ref:`Method<enum_HTTPClient_Method>`.

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_HTTPClient_Status>`

.. _class_HTTPClient_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_DISCONNECTED** = ``0``

Статус: Відключено від сервера.

.. _class_HTTPClient_constant_STATUS_RESOLVING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_RESOLVING** = ``1``

Статус: наразі ім’я хоста для даної URL-адреси перетворюється на IP.

.. _class_HTTPClient_constant_STATUS_CANT_RESOLVE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_RESOLVE** = ``2``

Статус: збій DNS: не вдається розпізнати ім’я хосту для вказаної URL-адреси.

.. _class_HTTPClient_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTING** = ``3``

Статус: підключення до сервера.

.. _class_HTTPClient_constant_STATUS_CANT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CANT_CONNECT** = ``4``

Статус: не вдається підключитися до сервера.

.. _class_HTTPClient_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTED** = ``5``

Статус: підключення встановлено.

.. _class_HTTPClient_constant_STATUS_REQUESTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_REQUESTING** = ``6``

Статус: зараз надсилається запит.

.. _class_HTTPClient_constant_STATUS_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_BODY** = ``7``

Статус: тіло HTTP отримано.

.. _class_HTTPClient_constant_STATUS_CONNECTION_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_CONNECTION_ERROR** = ``8``

Статус: Помилка підключення HTTP.

.. _class_HTTPClient_constant_STATUS_TLS_HANDSHAKE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_HTTPClient_Status>` **STATUS_TLS_HANDSHAKE_ERROR** = ``9``

Статус: помилка в рукостисканні TLS.

.. rst-class:: classref-item-separator

----

.. _enum_HTTPClient_ResponseCode:

.. rst-class:: classref-enumeration

enum **ResponseCode**: :ref:`🔗<enum_HTTPClient_ResponseCode>`

.. _class_HTTPClient_constant_RESPONSE_CONTINUE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONTINUE** = ``100``

Код статусу HTTP ``100 Продовжити``. Проміжна відповідь, яка вказує на те, що наразі все в порядку, і що клієнт має продовжити запит (або проігнорувати цей статус, якщо він уже завершений).

.. _class_HTTPClient_constant_RESPONSE_SWITCHING_PROTOCOLS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCHING_PROTOCOLS** = ``101``

Код статусу HTTP ``101 Switching Protocol``. Надсилається клієнтом у відповідь на заголовок запиту ``Upgrade``. Вказує на протокол, на який перемикається сервер.

.. _class_HTTPClient_constant_RESPONSE_PROCESSING:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROCESSING** = ``102``

Код статусу HTTP ``102 Processing`` (WebDAV). Вказує на те, що сервер отримав і обробляє запит, але відповіді ще немає.

.. _class_HTTPClient_constant_RESPONSE_OK:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_OK** = ``200``

Код статусу HTTP ``200 OK``. Запит виконано. Відповідь за умовчанням для успішних запитів. Значення залежить від запиту: 

- :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`: ресурс було отримано та передано в тілі повідомлення. 

- :ref:`METHOD_HEAD<class_HTTPClient_constant_METHOD_HEAD>`: заголовки об’єктів знаходяться в тілі повідомлення. 

- :ref:`METHOD_POST<class_HTTPClient_constant_METHOD_POST>`: ресурс, що описує результат дії, передається в тілі повідомлення. 

- :ref:`METHOD_TRACE<class_HTTPClient_constant_METHOD_TRACE>`: тіло повідомлення містить повідомлення запиту, отримане сервером.

.. _class_HTTPClient_constant_RESPONSE_CREATED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CREATED** = ``201``

Код статусу HTTP ``201 Створено``. Запит виконано успішно, і в результаті цього було створено новий ресурс. Зазвичай це відповідь, що надсилається після запиту PUT.

.. _class_HTTPClient_constant_RESPONSE_ACCEPTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ACCEPTED** = ``202``

Код статусу HTTP ``202 Accepted``. Запит отримано, але ще не виконано. Це не зобов’язує, тобто в HTTP немає способу пізніше надіслати асинхронну відповідь із зазначенням результату обробки запиту. Він призначений для випадків, коли інший процес або сервер обробляє запит, або для пакетної обробки.

.. _class_HTTPClient_constant_RESPONSE_NON_AUTHORITATIVE_INFORMATION:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NON_AUTHORITATIVE_INFORMATION** = ``203``

Код статусу HTTP ``203 Неавторитетна інформація``. Цей код відповіді означає, що повернутий набір метаінформації не є точно встановленим як доступний із вихідного сервера, а зібраний із локальної або сторонньої копії. За винятком цієї умови, відповідь 200 OK має бути перевагою замість цієї відповіді.

.. _class_HTTPClient_constant_RESPONSE_NO_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NO_CONTENT** = ``204``

Код статусу HTTP ``204 Немає вмісту``. Для цього запиту немає вмісту для надсилання, але заголовки можуть бути корисними. Агент користувача може оновити свої кешовані заголовки для цього ресурсу новими.

.. _class_HTTPClient_constant_RESPONSE_RESET_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_RESET_CONTENT** = ``205``

Код статусу HTTP ``205 Скинути вміст``. Сервер виконав запит і бажає, щоб клієнт скинув «перегляд документа», який спричинив надсилання запиту до початкового стану, отриманого від вихідного сервера.

.. _class_HTTPClient_constant_RESPONSE_PARTIAL_CONTENT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PARTIAL_CONTENT** = ``206``

Код статусу HTTP ``206 Частковий вміст``. Цей код відповіді використовується через заголовок діапазону, надісланий клієнтом для розділення завантаження на кілька потоків.

.. _class_HTTPClient_constant_RESPONSE_MULTI_STATUS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTI_STATUS** = ``207``

Код статусу HTTP ``207 Multi-Status`` (WebDAV). Відповідь Multi-Status передає інформацію про кілька ресурсів у ситуаціях, коли кілька кодів стану можуть бути доречними.

.. _class_HTTPClient_constant_RESPONSE_ALREADY_REPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_ALREADY_REPORTED** = ``208``

Код статусу HTTP ``208 уже повідомлено`` (WebDAV). Використовується всередині елемента відповіді DAV: propstat, щоб уникнути повторного перерахування внутрішніх членів кількох прив’язок до однієї колекції.

.. _class_HTTPClient_constant_RESPONSE_IM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_USED** = ``226``

Код статусу HTTP ``226 IM Used`` (WebDAV). Сервер виконав запит GET для ресурсу, і відповідь є представленням результату однієї або кількох маніпуляцій із екземпляром, застосованих до поточного екземпляра.

.. _class_HTTPClient_constant_RESPONSE_MULTIPLE_CHOICES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MULTIPLE_CHOICES** = ``300``

Код статусу HTTP ``300 Multiple Choice``. Запит має більше ніж одну можливу відповідь, і немає стандартного способу вибрати одну з відповідей. Користувач-агент або користувач повинен вибрати один із них.

.. _class_HTTPClient_constant_RESPONSE_MOVED_PERMANENTLY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MOVED_PERMANENTLY** = ``301``

Код статусу HTTP ``301 переміщено назавжди``. Перенаправлення. Цей код відповіді означає, що URI запитуваного ресурсу було змінено. Новий URI зазвичай включається у відповідь.

.. _class_HTTPClient_constant_RESPONSE_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FOUND** = ``302``

Код статусу HTTP ``302 знайдено``. Тимчасове перенаправлення. Цей код відповіді означає, що URI запитуваного ресурсу тимчасово змінено. У майбутньому можуть бути внесені нові зміни в URI. Таким чином, цей самий URI повинен використовуватися клієнтом у майбутніх запитах.

.. _class_HTTPClient_constant_RESPONSE_SEE_OTHER:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SEE_OTHER** = ``303``

Код статусу HTTP ``303 See Other``. Сервер перенаправляє агент користувача на інший ресурс, як зазначено URI в полі заголовка Location, який призначений для надання непрямої відповіді на вихідний запит.

.. _class_HTTPClient_constant_RESPONSE_NOT_MODIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_MODIFIED** = ``304``

Код статусу HTTP ``304 не змінено``. Було отримано умовний запит GET або HEAD, який мав би отримати відповідь 200 OK, якби не той факт, що умова оцінюється як ``false``.

.. _class_HTTPClient_constant_RESPONSE_USE_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_USE_PROXY** = ``305``

**Застаріло:** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

Код статусу HTTP ``305 Use Proxy``.

.. _class_HTTPClient_constant_RESPONSE_SWITCH_PROXY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SWITCH_PROXY** = ``306``

**Застаріло:** Many clients ignore this response code for security reasons. It is also deprecated by the HTTP standard.

Код статусу HTTP ``306 Switch Proxy``.

.. _class_HTTPClient_constant_RESPONSE_TEMPORARY_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TEMPORARY_REDIRECT** = ``307``

Код статусу HTTP ``307 Тимчасове перенаправлення``. Цільовий ресурс тимчасово знаходиться під іншим URI, і агент користувача НЕ ПОВИНЕН змінювати метод запиту, якщо він виконує автоматичне перенаправлення до цього URI.

.. _class_HTTPClient_constant_RESPONSE_PERMANENT_REDIRECT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PERMANENT_REDIRECT** = ``308``

Код статусу HTTP ``308 Постійне перенаправлення``. Цільовому ресурсу було призначено новий постійний URI, і будь-які майбутні посилання на цей ресурс мають використовувати один із наданих URI.

.. _class_HTTPClient_constant_RESPONSE_BAD_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_REQUEST** = ``400``

Код статусу HTTP ``400 Bad Request``. Запит був недійсним. Сервер не може або не хоче обробити запит через щось, що сприймається як помилка клієнта (наприклад, неправильний синтаксис запиту, неприпустимий кадр повідомлення запиту, недійсний вміст запиту або оманлива маршрутизація запиту).

.. _class_HTTPClient_constant_RESPONSE_UNAUTHORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAUTHORIZED** = ``401``

Код статусу HTTP ``401 Неавторизовано``. Потрібні облікові дані. Запит не застосовано, оскільки в ньому відсутні дійсні облікові дані автентифікації для цільового ресурсу.

.. _class_HTTPClient_constant_RESPONSE_PAYMENT_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PAYMENT_REQUIRED** = ``402``

Код статусу HTTP ``402 Payment Required``. Цей код відповіді зарезервовано для використання в майбутньому. Початковою метою створення цього коду було використання його для цифрових платіжних систем, однак наразі він не використовується.

.. _class_HTTPClient_constant_RESPONSE_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FORBIDDEN** = ``403``

Код статусу HTTP ``403 Forbidden``. Клієнт не має прав доступу до вмісту, тобто він неавторизований, тому сервер відмовляється надати належну відповідь. На відміну від ``401``, особа клієнта відома серверу.

.. _class_HTTPClient_constant_RESPONSE_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_FOUND** = ``404``

Код статусу HTTP ``404 не знайдено``. Сервер не може знайти запитуваний ресурс. Або URL-адресу не розпізнано, або кінцева точка дійсна, але сам ресурс не існує. Також може надсилатися замість 403, щоб приховати існування ресурсу, якщо клієнт не авторизований.

.. _class_HTTPClient_constant_RESPONSE_METHOD_NOT_ALLOWED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_METHOD_NOT_ALLOWED** = ``405``

Код статусу HTTP ``405 Method Not Allowed``. Метод HTTP запиту відомий серверу, але його вимкнено та не може використовуватися. Наприклад, API може заборонити DELETE-ing ресурсу. Два обов’язкових методи, GET і HEAD, ніколи не можна вимикати та не повинні повертати цей код помилки.

.. _class_HTTPClient_constant_RESPONSE_NOT_ACCEPTABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_ACCEPTABLE** = ``406``

Код статусу HTTP ``406 неприйнятно``. Цільовий ресурс не має поточного представлення, яке було б прийнятним для агента користувача відповідно до полів заголовка проактивного узгодження, отриманих у запиті. Використовується при обговоренні змісту.

.. _class_HTTPClient_constant_RESPONSE_PROXY_AUTHENTICATION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PROXY_AUTHENTICATION_REQUIRED** = ``407``

Код статусу HTTP ``407 Потрібна автентифікація проксі``. Подібно до 401 Unauthorized, але воно вказує на те, що клієнту потрібно автентифікуватися, щоб використовувати проксі.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_TIMEOUT** = ``408``

Код статусу HTTP ``408 Час очікування запиту``. Сервер не отримав повне повідомлення запиту протягом часу, який він був готовий чекати.

.. _class_HTTPClient_constant_RESPONSE_CONFLICT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_CONFLICT** = ``409``

Код статусу HTTP ``409 Конфлікт``. Запит не вдалося виконати через конфлікт із поточним станом цільового ресурсу. Цей код використовується в ситуаціях, коли користувач може вирішити конфлікт і повторно надіслати запит.

.. _class_HTTPClient_constant_RESPONSE_GONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GONE** = ``410``

Код статусу HTTP ``410 Gone``. Цільовий ресурс більше недоступний на початковому сервері, і ця умова, ймовірно, є постійною.

.. _class_HTTPClient_constant_RESPONSE_LENGTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LENGTH_REQUIRED** = ``411``

Код статусу HTTP ``411 Необхідна довжина``. Сервер відмовляється прийняти запит без визначеного заголовка Content-Length.

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_FAILED** = ``412``

Код статусу HTTP ``412 Попередня умова не виконана``. Одна або кілька умов, наведених у полях заголовка запиту, оцінюються як ``false`` під час тестування на сервері.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_ENTITY_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_ENTITY_TOO_LARGE** = ``413``

Код статусу HTTP ``413 Entity Too Large``. Сервер відмовляється обробити запит, оскільки корисне навантаження запиту більше, ніж сервер хоче або може обробити.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_URI_TOO_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_URI_TOO_LONG** = ``414``

Код статусу HTTP ``414 Request-URI Too Long``. Сервер відмовляється обслуговувати запит, оскільки ціль запиту довша, ніж сервер готовий інтерпретувати.

.. _class_HTTPClient_constant_RESPONSE_UNSUPPORTED_MEDIA_TYPE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNSUPPORTED_MEDIA_TYPE** = ``415``

Код статусу HTTP ``415 Непідтримуваний тип носія``. Початковий сервер відмовляється обслуговувати запит, оскільки корисне навантаження має формат, який не підтримується цим методом на цільовому ресурсі.

.. _class_HTTPClient_constant_RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE** = ``416``

Код статусу HTTP ``416 Запитуваний діапазон не задовольняється``. Жоден із діапазонів у полі заголовка "Діапазон" запиту не перекриває поточний обсяг вибраного ресурсу, або запитуваний набір діапазонів було відхилено через недійсні діапазони або надмірний запит малих діапазонів або діапазонів, що перекриваються.

.. _class_HTTPClient_constant_RESPONSE_EXPECTATION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_EXPECTATION_FAILED** = ``417``

Код статусу HTTP ``417 Expectation Failed ``. Очікування, указане в полі заголовка Expect запиту, не може бути виконано принаймні одним із вхідних серверів.

.. _class_HTTPClient_constant_RESPONSE_IM_A_TEAPOT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_IM_A_TEAPOT** = ``418``

Код статусу HTTP ``418 Я чайник``. Будь-яка спроба заварити каву за допомогою чайника повинна призвести до коду помилки «418 Я чайник». Отримане тіло сутності МОЖЕ бути коротким і товстим.

.. _class_HTTPClient_constant_RESPONSE_MISDIRECTED_REQUEST:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_MISDIRECTED_REQUEST** = ``421``

Код статусу HTTP ``421 Misdirected Request``. Запит було спрямовано на сервер, який не може дати відповідь. Це може бути надіслано сервером, який не налаштований на створення відповідей для комбінації схеми та повноважень, які включені в URI запиту.

.. _class_HTTPClient_constant_RESPONSE_UNPROCESSABLE_ENTITY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNPROCESSABLE_ENTITY** = ``422``

Код статусу HTTP ``422 Unprocessable Entity`` (WebDAV). Сервер розуміє тип вмісту об’єкта запиту (отже код статусу 415 Unsupported Media Type є неприйнятним), а синтаксис об’єкта запиту є правильним (тому код статусу 400 Bad Request є невідповідним), але не зміг обробити вміст, що міститься інструкції.

.. _class_HTTPClient_constant_RESPONSE_LOCKED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOCKED** = ``423``

Код статусу HTTP ``423 заблоковано`` (WebDAV). Ресурс джерела або призначення методу заблоковано.

.. _class_HTTPClient_constant_RESPONSE_FAILED_DEPENDENCY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_FAILED_DEPENDENCY** = ``424``

Код статусу HTTP ``424 Failed Dependency`` (WebDAV). Метод не вдалося виконати на ресурсі, оскільки запитана дія залежала від іншої дії, і ця дія не вдалася.

.. _class_HTTPClient_constant_RESPONSE_UPGRADE_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UPGRADE_REQUIRED** = ``426``

Код статусу HTTP ``426 Потрібне оновлення``. Сервер відмовляється виконувати запит із використанням поточного протоколу, але може захотіти це зробити після оновлення клієнта до іншого протоколу.

.. _class_HTTPClient_constant_RESPONSE_PRECONDITION_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_PRECONDITION_REQUIRED** = ``428``

Код статусу HTTP ``428 Необхідна передумова``. Початковий сервер вимагає, щоб запит був умовним.

.. _class_HTTPClient_constant_RESPONSE_TOO_MANY_REQUESTS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_TOO_MANY_REQUESTS** = ``429``

Код статусу HTTP ``429 Забагато запитів``. Користувач надіслав занадто багато запитів за певний проміжок часу (див. «Обмеження швидкості»). Відступіть і збільште час між запитами або повторіть спробу пізніше.

.. _class_HTTPClient_constant_RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE** = ``431``

Код статусу HTTP ``431 Завеликі поля заголовка запиту``. Сервер не бажає обробити запит, оскільки його поля заголовка завеликі. Запит МОЖЕ бути повторно поданий після зменшення розміру полів заголовка запиту.

.. _class_HTTPClient_constant_RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS** = ``451``

Код статусу HTTP ``451 Відповідь недоступна з юридичних причин``. Сервер відмовляє в доступі до ресурсу внаслідок законної вимоги.

.. _class_HTTPClient_constant_RESPONSE_INTERNAL_SERVER_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INTERNAL_SERVER_ERROR** = ``500``

Код статусу HTTP ``500 Внутрішня помилка сервера``. Сервер зіткнувся з неочікуваною умовою, яка завадила йому виконати запит.

.. _class_HTTPClient_constant_RESPONSE_NOT_IMPLEMENTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_IMPLEMENTED** = ``501``

Код статусу HTTP ``501 не реалізовано``. Сервер не підтримує функції, необхідні для виконання запиту.

.. _class_HTTPClient_constant_RESPONSE_BAD_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_BAD_GATEWAY** = ``502``

Код статусу HTTP ``502 Bad Gateway``. Сервер, діючи як шлюз або проксі, отримав недійсну відповідь від вхідного сервера, до якого він мав доступ під час спроби виконати запит. Зазвичай повертається балансувальниками навантаження або проксі-серверами.

.. _class_HTTPClient_constant_RESPONSE_SERVICE_UNAVAILABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_SERVICE_UNAVAILABLE** = ``503``

Код статусу HTTP ``503 Служба недоступна``. Сервер наразі не може обробити запит через тимчасове перевантаження або заплановане технічне обслуговування, яке, ймовірно, буде полегшено після деякої затримки. Повторіть спробу пізніше.

.. _class_HTTPClient_constant_RESPONSE_GATEWAY_TIMEOUT:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_GATEWAY_TIMEOUT** = ``504``

Код статусу HTTP ``504 Час очікування шлюзу``. Сервер, діючи як шлюз або проксі, не отримав своєчасної відповіді від вищестоящого сервера, до якого йому потрібно було отримати доступ, щоб виконати запит. Зазвичай повертається балансувальниками навантаження або проксі-серверами.

.. _class_HTTPClient_constant_RESPONSE_HTTP_VERSION_NOT_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_HTTP_VERSION_NOT_SUPPORTED** = ``505``

Код статусу HTTP ``505 Версія HTTP не підтримується``. Сервер не підтримує або відмовляється підтримувати основну версію HTTP, яка використовувалася в повідомленні запиту.

.. _class_HTTPClient_constant_RESPONSE_VARIANT_ALSO_NEGOTIATES:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_VARIANT_ALSO_NEGOTIATES** = ``506``

Код статусу HTTP ``506 Variant also Negotiates``. На сервері виникла внутрішня помилка конфігурації: вибраний варіант ресурсу налаштовано для участі в узгодженні прозорого вмісту, тому він не є належною кінцевою точкою в процесі узгодження.

.. _class_HTTPClient_constant_RESPONSE_INSUFFICIENT_STORAGE:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_INSUFFICIENT_STORAGE** = ``507``

Код статусу HTTP ``507 Insufficient Storage``. Метод не вдалося виконати на ресурсі, оскільки сервер не може зберегти представлення, необхідне для успішного виконання запиту.

.. _class_HTTPClient_constant_RESPONSE_LOOP_DETECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_LOOP_DETECTED** = ``508``

Код статусу HTTP ``508 Виявлено цикл``. Сервер перервав операцію, оскільки виявив нескінченний цикл під час обробки запиту з «Глибина: нескінченність». Цей статус означає, що вся операція не виконана.

.. _class_HTTPClient_constant_RESPONSE_NOT_EXTENDED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NOT_EXTENDED** = ``510``

Код статусу HTTP ``510 Not Extended``. У запиті не дотримано політику доступу до ресурсу. Сервер повинен надіслати всю інформацію, необхідну клієнту для надсилання розширеного запиту.

.. _class_HTTPClient_constant_RESPONSE_NETWORK_AUTH_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`ResponseCode<enum_HTTPClient_ResponseCode>` **RESPONSE_NETWORK_AUTH_REQUIRED** = ``511``

Код статусу HTTP ``511 Потрібна автентифікація мережі``. Клієнт повинен пройти автентифікацію, щоб отримати доступ до мережі.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_HTTPClient_property_blocking_mode_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **blocking_mode_enabled** = ``false`` :ref:`🔗<class_HTTPClient_property_blocking_mode_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_blocking_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blocking_mode_enabled**\ (\ )

Якщо ``true``, виконання буде заблоковано, доки всі дані не будуть прочитані з відповіді.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_connection:

.. rst-class:: classref-property

:ref:`StreamPeer<class_StreamPeer>` **connection** :ref:`🔗<class_HTTPClient_property_connection>`

.. rst-class:: classref-property-setget

- |void| **set_connection**\ (\ value\: :ref:`StreamPeer<class_StreamPeer>`\ )
- :ref:`StreamPeer<class_StreamPeer>` **get_connection**\ (\ )

Підключення для цього клієнта.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_property_read_chunk_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **read_chunk_size** = ``65536`` :ref:`🔗<class_HTTPClient_property_read_chunk_size>`

.. rst-class:: classref-property-setget

- |void| **set_read_chunk_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_read_chunk_size**\ (\ )

Розмір використовуваного буфера та максимальна кількість байтів для читання за ітерацію. Перегляньте :ref:`read_response_body_chunk()<class_HTTPClient_method_read_response_body_chunk>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_HTTPClient_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_HTTPClient_method_close>`

Закриває поточне підключення, дозволяючи повторне використання цього **HTTPClient**.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>` = -1, tls_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_HTTPClient_method_connect_to_host>`

Підключається до хосту. Це потрібно зробити перед надсиланням запитів.

Якщо ``port`` не вказано (або використовується ``-1``), він автоматично встановлюється на 80 для HTTP та 443 для HTTPS. Ви можете передати додатковий параметр ``tls_options``, щоб налаштувати довірені центри сертифікації або загальну перевірку імен під час використання HTTPS. Перегляньте :ref:`TLSOptions.client()<class_TLSOptions_method_client>` і :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_body_length:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_body_length**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_body_length>`

Повертає довжину тіла відповіді.

\ **Примітка.** Деякі веб-сервери можуть не надсилати довжину тіла. У цьому випадку поверненим значенням буде ``-1``. Якщо використовується кодування передачі фрагментів, довжина тіла також буде ``-1``.

\ **Примітка.** Ця функція завжди повертає ``-1`` на веб-платформі через обмеження браузерів.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_response_code**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_get_response_code>`

Повертає код статусу HTTP відповіді.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_response_headers**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers>`

Повертає заголовки відповідей.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_get_response_headers_as_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_response_headers_as_dictionary**\ (\ ) :ref:`🔗<class_HTTPClient_method_get_response_headers_as_dictionary>`

Повертає всі заголовки відповідей як :ref:`Dictionary<class_Dictionary>`. Кожен запис складається з імені заголовка та :ref:`String<class_String>`, що містить значення, розділені ``"; "``. Оболочка зберігається такою ж, як були отримані заголовки. 

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

Повертає константу :ref:`Status<enum_HTTPClient_Status>`. Потрібно викликати :ref:`poll()<class_HTTPClient_method_poll>`, щоб отримувати оновлення статусу.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_has_response:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_response**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_has_response>`

Якщо ``true``, цей **HTTPClient** має доступну відповідь.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_is_response_chunked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_response_chunked**\ (\ ) |const| :ref:`🔗<class_HTTPClient_method_is_response_chunked>`

Якщо ``true``, цей **HTTPClient** має відповідь, яка є фрагментованою.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_HTTPClient_method_poll>`

Це потрібно викликати, щоб обробити будь-який запит. Перевірте результати за допомогою :ref:`get_status()<class_HTTPClient_method_get_status>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_query_string_from_dict:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_string_from_dict**\ (\ fields\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_HTTPClient_method_query_string_from_dict>`

Генерує рядок запиту в стилі GET/POST application/x-www-form-urlencoded з наданого словника, наприклад:


.. tabs::

 .. code-tab:: gdscript

    var fields = { "username": "user", "password": "pass" }
    var query_string = http_client.query_string_from_dict(fields)
    # Повертає "username=user&password=pass"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary { { "username", "user" }, { "password", "pass" } };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Повертає "username=user&password=pass"



Крім того, якщо ключ має значення ``null``, додається лише сам ключ, без знака рівності та значення. Якщо значення є масивом, для кожного значення в ньому додається пара з тим самим ключем.


.. tabs::

 .. code-tab:: gdscript

    var fields = { "single": 123, "not_valued": null, "multiple": [22, 33, 44] }
    var query_string = http_client.query_string_from_dict(fields)
    # Повертає "single=123&not_valued&multiple=22&multiple=33&multiple=44"

 .. code-tab:: csharp

    var fields = new Godot.Collections.Dictionary
    {
        { "single", 123 },
        { "notValued", default },
        { "multiple", new Godot.Collections.Array { 22, 33, 44 } },
    };
    string queryString = httpClient.QueryStringFromDict(fields);
    // Повертає "single=123&not_valued&multiple=22&multiple=33&multiple=44"



.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_read_response_body_chunk:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **read_response_body_chunk**\ (\ ) :ref:`🔗<class_HTTPClient_method_read_response_body_chunk>`

Читає один фрагмент із відповіді.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_HTTPClient_method_request>`

Надсилає HTTP-запит на підключений хост із заданим ``method``.

Параметр URL зазвичай є лише частиною, що йде після імені хосту, тож для ``https://example.com/index.php`` це ``/index.php``. При надсиланні запитів на HTTP-проксі-сервер це має бути абсолютний URL. Для запитів типу :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>` також допускається використання ``*``. Для запитів типу :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>` це має бути компонент авторитету (``host:port``).

\ ``headers`` — це заголовки HTTP-запиту.

Щоб створити POST-запит із рядками запиту для передачі на сервер, виконайте наступне:


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



\ **Примітка:** Параметр ``body`` ігнорується, якщо ``method`` дорівнює :ref:`METHOD_GET<class_HTTPClient_constant_METHOD_GET>`. Це пов’язано з тим, що методи GET не можуть містити дані запиту. Щоб обійти це обмеження, можна передати дані запиту у вигляді рядка запиту в URL-адресі. Див. приклад у розділі :ref:`String.uri_encode()<class_String_method_uri_encode>`.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_request_raw:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **request_raw**\ (\ method\: :ref:`Method<enum_HTTPClient_Method>`, url\: :ref:`String<class_String>`, headers\: :ref:`PackedStringArray<class_PackedStringArray>`, body\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HTTPClient_method_request_raw>`

Надсилає необроблений HTTP-запит на підключений хост за допомогою заданого методу ``method``.

Параметр URL зазвичай є лише частиною після імені хоста, тому для ``https://example.com/index.php`` це ``/index.php``. Під час надсилання запитів на HTTP-проксі-сервер це має бути абсолютна URL-адреса. Для запитів :ref:`METHOD_OPTIONS<class_HTTPClient_constant_METHOD_OPTIONS>` також дозволено ``*``. Для запитів :ref:`METHOD_CONNECT<class_HTTPClient_constant_METHOD_CONNECT>` це має бути компонент авторитету (``host:port``).

\ ``headers`` – це заголовки HTTP-запиту.

Надсилає дані тіла необробленими, як масив байтів, і жодним чином не кодує їх.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_http_proxy:

.. rst-class:: classref-method

|void| **set_http_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_http_proxy>`

Встановлює проксі-сервер для запитів HTTP.

Проксі-сервер не встановлено, якщо ``host`` порожній або ``port`` має значення -1.

.. rst-class:: classref-item-separator

----

.. _class_HTTPClient_method_set_https_proxy:

.. rst-class:: classref-method

|void| **set_https_proxy**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_HTTPClient_method_set_https_proxy>`

Встановлює проксі-сервер для запитів HTTPS.

Проксі-сервер не встановлено, якщо ``host`` порожній або ``port`` має значення -1.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
