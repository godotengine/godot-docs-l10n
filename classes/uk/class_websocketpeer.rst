:github_url: hide

.. _class_WebSocketPeer:

WebSocketPeer
=============

**Успадковує:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Підключення WebSocket.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас представляє з'єднання WebSocket і може використовуватися як клієнт WebSocket (сумісний з RFC 6455) або як віддалений вузол сервера WebSocket.

Ви можете надсилати бінарні кадри WebSocket за допомогою методу :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>`, а текстові кадри WebSocket - за допомогою методу :ref:`send()<class_WebSocketPeer_method_send>` (надавати перевагу текстовим кадрам під час взаємодії з текстовим API). Ви можете перевірити тип кадру останнього пакета за допомогою методу :ref:`was_string_packet()<class_WebSocketPeer_method_was_string_packet>`.

Щоб запустити клієнт WebSocket, спочатку викличте метод ``connect_to_url``, а потім регулярно викликайте метод ``poll`` (наприклад, під час процесу :ref:`Node<class_Node>`). Ви можете запитувати стан сокета за допомогою методу :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>`, отримувати кількість пакетів, що очікують обробки, за допомогою методу :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`, та отримувати їх за допомогою методу :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>`.


.. tabs::

 .. code-tab:: gdscript

    extends Node

    var socket = WebSocketPeer.new()

    func _ready():
        socket.connect_to_url("wss://example.com")

    func _process(delta):
        socket.poll()
        var state = socket.get_ready_state()
        if state == WebSocketPeer.STATE_OPEN:
            while socket.get_available_packet_count():
                print("Packet: ", socket.get_packet())
        elif state == WebSocketPeer.STATE_CLOSING:
            # Keep polling to achieve proper close.
            pass
        elif state == WebSocketPeer.STATE_CLOSED:
            var code = socket.get_close_code()
            var reason = socket.get_close_reason()
            print("WebSocket closed with code: %d, reason %s. Clean: %s" % [code, reason, code != -1])
            set_process(false) # Stop processing.



Щоб використовувати вузол як частину сервера WebSocket, зверніться до :ref:`accept_stream()<class_WebSocketPeer_method_accept_stream>` та онлайн-посібника.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`handshake_headers<class_WebSocketPeer_property_handshake_headers>`       | ``PackedStringArray()`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                         | :ref:`heartbeat_interval<class_WebSocketPeer_property_heartbeat_interval>`     | ``0.0``                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`inbound_buffer_size<class_WebSocketPeer_property_inbound_buffer_size>`   | ``65535``               |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`max_queued_packets<class_WebSocketPeer_property_max_queued_packets>`     | ``4096``                |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`outbound_buffer_size<class_WebSocketPeer_property_outbound_buffer_size>` | ``65535``               |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`supported_protocols<class_WebSocketPeer_property_supported_protocols>`   | ``PackedStringArray()`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`accept_stream<class_WebSocketPeer_method_accept_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`\ )                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`close<class_WebSocketPeer_method_close>`\ (\ code\: :ref:`int<class_int>` = 1000, reason\: :ref:`String<class_String>` = ""\ )                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`connect_to_url<class_WebSocketPeer_method_connect_to_url>`\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )   |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_close_code<class_WebSocketPeer_method_get_close_code>`\ (\ ) |const|                                                                                               |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_close_reason<class_WebSocketPeer_method_get_close_reason>`\ (\ ) |const|                                                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_connected_host<class_WebSocketPeer_method_get_connected_host>`\ (\ ) |const|                                                                                       |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_connected_port<class_WebSocketPeer_method_get_connected_port>`\ (\ ) |const|                                                                                       |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_current_outbound_buffered_amount<class_WebSocketPeer_method_get_current_outbound_buffered_amount>`\ (\ ) |const|                                                   |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`State<enum_WebSocketPeer_State>` | :ref:`get_ready_state<class_WebSocketPeer_method_get_ready_state>`\ (\ ) |const|                                                                                             |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_requested_url<class_WebSocketPeer_method_get_requested_url>`\ (\ ) |const|                                                                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_selected_protocol<class_WebSocketPeer_method_get_selected_protocol>`\ (\ ) |const|                                                                                 |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`poll<class_WebSocketPeer_method_poll>`\ (\ )                                                                                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`send<class_WebSocketPeer_method_send>`\ (\ message\: :ref:`PackedByteArray<class_PackedByteArray>`, write_mode\: :ref:`WriteMode<enum_WebSocketPeer_WriteMode>` = 1\ ) |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`send_text<class_WebSocketPeer_method_send_text>`\ (\ message\: :ref:`String<class_String>`\ )                                                                          |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`set_no_delay<class_WebSocketPeer_method_set_no_delay>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                                        |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                | :ref:`was_string_packet<class_WebSocketPeer_method_was_string_packet>`\ (\ ) |const|                                                                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_WebSocketPeer_WriteMode:

.. rst-class:: classref-enumeration

enum **WriteMode**: :ref:`🔗<enum_WebSocketPeer_WriteMode>`

.. _class_WebSocketPeer_constant_WRITE_MODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebSocketPeer_WriteMode>` **WRITE_MODE_TEXT** = ``0``

Вкажіть, що повідомлення WebSockets повинні передаватися як текстове навантаження (тільки допустимо UTF-8).

.. _class_WebSocketPeer_constant_WRITE_MODE_BINARY:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebSocketPeer_WriteMode>` **WRITE_MODE_BINARY** = ``1``

Визначає, що повідомлення WebSockets повинні бути передані як бінарне навантаження (в будь-якому комбінації байтів дозволено).

.. rst-class:: classref-item-separator

----

.. _enum_WebSocketPeer_State:

.. rst-class:: classref-enumeration

enum **State**: :ref:`🔗<enum_WebSocketPeer_State>`

.. _class_WebSocketPeer_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CONNECTING** = ``0``

Створено гніздо. З'єднання ще не відкривається.

.. _class_WebSocketPeer_constant_STATE_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_OPEN** = ``1``

Відкрито підключення та готовий до спілкування.

.. _class_WebSocketPeer_constant_STATE_CLOSING:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CLOSING** = ``2``

З'єднання знаходиться в процесі закривання. Це означає, що близький запит було відправлено на пульт дистанційного керування, але підтвердження не було отримано.

.. _class_WebSocketPeer_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CLOSED** = ``3``

З'єднання закрито або не вдалося відкрити.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_WebSocketPeer_property_handshake_headers:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **handshake_headers** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketPeer_property_handshake_headers>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_headers**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_handshake_headers**\ (\ )

Додаткові заголовки HTTP, які будуть відправлені під час роботи WebSocket.

\ **Примітка:** Не підтримується в Інтернет-експорту через обмеження браузера.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_heartbeat_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **heartbeat_interval** = ``0.0`` :ref:`🔗<class_WebSocketPeer_property_heartbeat_interval>`

.. rst-class:: classref-property-setget

- |void| **set_heartbeat_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_heartbeat_interval**\ (\ )

Інтервал (у секундах), через який одноранговий вузол автоматично надсилатиме контрольні кадри WebSocket "ping". Якщо встановлено значення ``0``, контрольні кадри "ping" не надсилатимуться. 

\ **Примітка:** не впливає на веб-експорт через обмеження браузера.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_inbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **inbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketPeer_property_inbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_inbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_inbound_buffer_size**\ (\ )

Розмір вхідного буфера в байтах (хоча максимальна кількість пам'яті, яка буде виділена для вхідних пакетів).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_max_queued_packets:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_queued_packets** = ``4096`` :ref:`🔗<class_WebSocketPeer_property_max_queued_packets>`

.. rst-class:: classref-property-setget

- |void| **set_max_queued_packets**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_queued_packets**\ (\ )

Максимальна кількість пакетів, які будуть допущені в черзі (внутрішній і вихідний).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_outbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketPeer_property_outbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_outbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outbound_buffer_size**\ (\ )

Розмір вхідного буфера в байтах (хоча максимальна кількість пам'яті, яка буде виділена для вихідних пакетів).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_supported_protocols:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **supported_protocols** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketPeer_property_supported_protocols>`

.. rst-class:: classref-property-setget

- |void| **set_supported_protocols**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_supported_protocols**\ (\ )

Під-протоколи WebSocket допускаються під час роботи з WebSocket.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_WebSocketPeer_method_accept_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **accept_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`\ ) :ref:`🔗<class_WebSocketPeer_method_accept_stream>`

Приймає з'єднання, що виконує HTTP-підказку як сервер WebSocket. ``stream`` повинен бути дійсним TCP потік, отриманий через :ref:`TCPServer.take_connection()<class_TCPServer_method_take_connection>`, або потік TLS, прийнятий через :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>`.

\ **Note:** Не підтримується в Інтернет-експортах з урахуванням обмежень браузера.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ code\: :ref:`int<class_int>` = 1000, reason\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WebSocketPeer_method_close>`

Закриває це з’єднання WebSocket.

\ ``code`` – це код стану закриття (див. `RFC 6455 розділ 7.4 <https://datatracker.ietf.org/doc/html/rfc6455#section-7.4.1>`__ для списку дійсних кодів стану). Якщо ``code`` від’ємне, з’єднання буде негайно закрито без повідомлення віддаленого вузла.

\ ``reason`` – це причина закриття з’єднання, яку може прочитати людина. Це може бути будь-який рядок UTF-8, менший за 123 байти.

\ **Примітка:** Щоб досягти чистого закриття, потрібно продовжувати опитування, доки не буде досягнуто :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>`.

\ **Примітка:** Веб-експорт може не підтримувати всі коди стану. Будь ласка, зверніться до документації до конкретного браузера для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_connect_to_url:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_url**\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketPeer_method_connect_to_url>`

Підключається до вказаної URL-адреси. Сертифікати TLS перевірятимуться на ім’я хоста під час підключення за допомогою протоколу ``wss://``. Ви можете передати додатковий параметр ``tls_client_options``, щоб налаштувати довірені центри сертифікації, або вимкнути перевірку загального імені. Перегляньте :ref:`TLSOptions.client()<class_TLSOptions_method_client>` і :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`. 

\ **Примітка: ** Цей метод не блокує і поверне :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` перед встановленням з’єднання, доки надані параметри дійсні, а вузол не перебуває в недійсному стані (наприклад, уже підключений). Регулярно викликайте :ref:`poll()<class_WebSocketPeer_method_poll>` (наприклад, під час процесу :ref:`Node<class_Node>`) і перевіряйте результат :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>`, щоб знати, успішне чи невдале підключення. 

\ **Примітка:** Щоб уникнути попереджень про змішаний вміст або помилок у Інтернеті, можливо, вам доведеться використовувати ``url``, який починається з ``wss://`` (безпечно) замість ``ws://``. При цьому переконайтеся, що використовуєте повне доменне ім’я, яке відповідає визначеному в сертифікаті TLS сервера. Не підключайтеся безпосередньо через IP-адресу для з’єднань ``wss://``, оскільки вона не збігатиметься з сертифікатом TLS.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_close_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_close_code**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_close_code>`

Повернення отриманого WebSocket закритого коду кадру, або ``-1``, коли підключення не було чисто закрито. Тільки зателефонуйте цей метод, коли :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` повертає :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_close_reason:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_close_reason**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_close_reason>`

Повертає отриманий WebSocket близький рядок стану кадру. Тільки зателефонуйте цей метод, коли :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` повертає :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_connected_host:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_host**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_connected_host>`

Повертає IP-адресу підключеного однолітка.

\ **Примітка:** Не доступний в Інтернет-експорті.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_connected_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connected_port**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_connected_port>`

Повертає віддалений порт підключених однолітків.

\ **Примітка:** Не доступний в Інтернет-експорті.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_current_outbound_buffered_amount:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_outbound_buffered_amount**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_current_outbound_buffered_amount>`

Повертаємо поточну кількість даних у виїзному буфері websocket. **Примітка:** Інтернет-експорти використовують WebSocket.bufferedAmount, в той час як інші платформи використовують внутрішній буфер.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_ready_state:

.. rst-class:: classref-method

:ref:`State<enum_WebSocketPeer_State>` **get_ready_state**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_ready_state>`

Повертає стан готовності з'єднання.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_requested_url:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_requested_url**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_requested_url>`

Повернути URL-адресу, запитаний цим аналогом. URL виводиться з ``url`` до :ref:`connect_to_url()<class_WebSocketPeer_method_connect_to_url>` або з заголовків HTTP при дії сервера (тобто при використанні :ref:`accept_stream()<class_WebSocketPeer_method_accept_stream>`).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_selected_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_selected_protocol**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_selected_protocol>`

Повертає вибраний WebSocket sub-protocol для цього з'єднання або порожній рядок, якщо суб-protocol ще не було вибрано.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_WebSocketPeer_method_poll>`

Оновлює стан з'єднання і отримує вхідні пакети. Зателефонуйте цю функцію, щоб зберегти її в чистому стані.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_send:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send**\ (\ message\: :ref:`PackedByteArray<class_PackedByteArray>`, write_mode\: :ref:`WriteMode<enum_WebSocketPeer_WriteMode>` = 1\ ) :ref:`🔗<class_WebSocketPeer_method_send>`

Надіслане повідомлення ``message`` за допомогою бажаного ``Write_mode``. При надсиланні :ref:`String<class_String>`, волійте використання :ref:`send_text()<class_WebSocketPeer_method_send_text>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_send_text:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_text**\ (\ message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebSocketPeer_method_send_text>`

Надсилає задане повідомлення ``message``, використовуючи текстовий режим WebSocket. Надайте перевагу цьому методу над :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>` під час взаємодії зі стороннім текстовим API (наприклад, під час використання повідомлень у форматі :ref:`JSON<class_JSON>`).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_set_no_delay:

.. rst-class:: classref-method

|void| **set_no_delay**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_WebSocketPeer_method_set_no_delay>`

Вимкнено алгоритм Nagle на підставі розетки TCP (default). Див. :ref:`StreamPeerTCP.set_no_delay()<class_StreamPeerTCP_method_set_no_delay>` для отримання додаткової інформації.

\ **Примітка:** Не доступний в Web-експорті.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_was_string_packet:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **was_string_packet**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_was_string_packet>`

Повертаємо ``true``, якщо останній отриманий пакет був відправлений як текстове навантаження. Див. :ref:`WriteMode<enum_WebSocketPeer_WriteMode>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
