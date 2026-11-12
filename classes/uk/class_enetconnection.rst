:github_url: hide

.. _class_ENetConnection:

ENetConnection
==============

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Клас обгортки для `ENetHost <http://enet.bespin.org/group_host.html>`__.

.. rst-class:: classref-introduction-group

Опис
--------

Мета ENet полягає в тому, щоб забезпечити відносно тонкий, простий і надійний мережевий шар зв'язку на вершині UDP (користувацький протокол Datagram).

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Документація API на сайті ENet <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`bandwidth_limit<class_ENetConnection_method_bandwidth_limit>`\ (\ in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`broadcast<class_ENetConnection_method_broadcast>`\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ )                                                                                                                                               |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`channel_limit<class_ENetConnection_method_channel_limit>`\ (\ limit\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`compress<class_ENetConnection_method_compress>`\ (\ mode\: :ref:`CompressionMode<enum_ENetConnection_CompressionMode>`\ )                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ENetPacketPeer<class_ENetPacketPeer>`                              | :ref:`connect_to_host<class_ENetConnection_method_connect_to_host>`\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channels\: :ref:`int<class_int>` = 0, data\: :ref:`int<class_int>` = 0\ )                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`create_host<class_ENetConnection_method_create_host>`\ (\ max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ )                                                                                            |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`create_host_bound<class_ENetConnection_method_create_host_bound>`\ (\ bind_address\: :ref:`String<class_String>`, bind_port\: :ref:`int<class_int>`, max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`destroy<class_ENetConnection_method_destroy>`\ (\ )                                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`dtls_client_setup<class_ENetConnection_method_dtls_client_setup>`\ (\ hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )                                                                                                                                                  |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                    | :ref:`dtls_server_setup<class_ENetConnection_method_dtls_server_setup>`\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ )                                                                                                                                                                                                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`flush<class_ENetConnection_method_flush>`\ (\ )                                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                    | :ref:`get_local_port<class_ENetConnection_method_get_local_port>`\ (\ ) |const|                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                    | :ref:`get_max_channels<class_ENetConnection_method_get_max_channels>`\ (\ ) |const|                                                                                                                                                                                                                                                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`ENetPacketPeer<class_ENetPacketPeer>`\] | :ref:`get_peers<class_ENetConnection_method_get_peers>`\ (\ )                                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                | :ref:`pop_statistic<class_ENetConnection_method_pop_statistic>`\ (\ statistic\: :ref:`HostStatistic<enum_ENetConnection_HostStatistic>`\ )                                                                                                                                                                                          |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`refuse_new_connections<class_ENetConnection_method_refuse_new_connections>`\ (\ refuse\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                | :ref:`service<class_ENetConnection_method_service>`\ (\ timeout\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                                                                                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`socket_send<class_ENetConnection_method_socket_send>`\ (\ destination_address\: :ref:`String<class_String>`, destination_port\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_ENetConnection_CompressionMode:

.. rst-class:: classref-enumeration

enum **CompressionMode**: :ref:`🔗<enum_ENetConnection_CompressionMode>`

.. _class_ENetConnection_constant_COMPRESS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_NONE** = ``0``

Немає стиснення. Це використовує найбільш пропускну здатність, але має в сторону, що вимагає декількох ресурсів процесора. Ця опція також може бути використана для того, щоб зробити мережеве відключення за допомогою інструментів, таких як Wireshark простіше.

.. _class_ENetConnection_constant_COMPRESS_RANGE_CODER:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_RANGE_CODER** = ``1``

Вбудований кодування діапазону ENet. Добре працює на невеликих пакетах, але не є найефективнішим алгоритмом пакетів більше 4 КБ.

.. _class_ENetConnection_constant_COMPRESS_FASTLZ:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_FASTLZ** = ``2``

` QuickLZ <https://fastlz.org/>`__ стиснення. Цей параметр використовує менше ресурсів процесора порівняно з :ref:`COMPRESS_ZLIB<class_ENetConnection_constant_COMPRESS_ZLIB>`, за рахунок використання більш пропускної здатності.

.. _class_ENetConnection_constant_COMPRESS_ZLIB:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_ZLIB** = ``3``

`Зліб <https://www.zlib.net/>`__ стиснення. Цей параметр використовує меншу пропускну здатність порівняно з :ref:`COMPRESS_FASTLZ<class_ENetConnection_constant_COMPRESS_FASTLZ>`, за рахунок використання більше ресурсів процесора.

.. _class_ENetConnection_constant_COMPRESS_ZSTD:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_ENetConnection_CompressionMode>` **COMPRESS_ZSTD** = ``4``

`Зстандарт <https://facebook.github.io/zstd/>`__ стиснення. Зауважте, що цей алгоритм не дуже ефективний у пакетах менше 4 КБ. Тому рекомендується використовувати інші алгоритми стиснення в більшості випадків.

.. rst-class:: classref-item-separator

----

.. _enum_ENetConnection_EventType:

.. rst-class:: classref-enumeration

enum **EventType**: :ref:`🔗<enum_ENetConnection_EventType>`

.. _class_ENetConnection_constant_EVENT_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_ERROR** = ``-1``

Сталася помилка під час обслуговування :ref:`service()<class_ENetConnection_method_service>`. Вам, ймовірно, потрібно буде знищити :ref:`destroy()<class_ENetConnection_method_destroy>` хост і створити його заново.

.. _class_ENetConnection_constant_EVENT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_NONE** = ``0``

Жодна подія сталася в межах зазначеного ліміту часу.

.. _class_ENetConnection_constant_EVENT_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_CONNECT** = ``1``

Завершено запит підключення enet_host_connect. У масиві є однолітки, які успішно підключені.

.. _class_ENetConnection_constant_EVENT_DISCONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_DISCONNECT** = ``2``

Відключений одноліток. Цей захід генерується на успішному завершенні від’єднання, що ініціюється :ref:`ENetPacketPeer.peer_disconnect()<class_ENetPacketPeer_method_peer_disconnect>`, якщо у однолітків з'явився час, або якщо запит з'єднання, що ініціюється :ref:`підключення_to_host()<class_ENetConnection_method_підключення_to_host>`. У масиві є однолітки, які відключені. Поле даних містить дані, що містять дані, що містять відключення, або 0, якщо немає.

.. _class_ENetConnection_constant_EVENT_RECEIVE:

.. rst-class:: classref-enumeration-constant

:ref:`EventType<enum_ENetConnection_EventType>` **EVENT_RECEIVE** = ``3``

Пакет отримав від однолітків. У масиві будуть представлені однолітки, які відправили пакет і номер каналу, на який був отриманий пакет. Отриманий пакет буде черганий асоційованим :ref:`ENetPacketPeer<class_ENetPacketPeer>`.

.. rst-class:: classref-item-separator

----

.. _enum_ENetConnection_HostStatistic:

.. rst-class:: classref-enumeration

enum **HostStatistic**: :ref:`🔗<enum_ENetConnection_HostStatistic>`

.. _class_ENetConnection_constant_HOST_TOTAL_SENT_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_SENT_DATA** = ``0``

Загальна кількість відправлених даних.

.. _class_ENetConnection_constant_HOST_TOTAL_SENT_PACKETS:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_SENT_PACKETS** = ``1``

Сумарні пакети UDP відправлені.

.. _class_ENetConnection_constant_HOST_TOTAL_RECEIVED_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_RECEIVED_DATA** = ``2``

Отримані дані.

.. _class_ENetConnection_constant_HOST_TOTAL_RECEIVED_PACKETS:

.. rst-class:: classref-enumeration-constant

:ref:`HostStatistic<enum_ENetConnection_HostStatistic>` **HOST_TOTAL_RECEIVED_PACKETS** = ``3``

Отримано всі пакети UDP.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ENetConnection_method_bandwidth_limit:

.. rst-class:: classref-method

|void| **bandwidth_limit**\ (\ in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_bandwidth_limit>`

Регулює обмеження смуги хосту.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_broadcast:

.. rst-class:: classref-method

|void| **broadcast**\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetConnection_method_broadcast>`

Прийміть ``packet`` для відправки всіх однолітків, пов'язаних з господарем за вказаною ``channel``. :ref:`ENetPacketPeer<class_ENetPacketPeer>` ``FLAG_*`` константи для доступних прапорів пакета.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_channel_limit:

.. rst-class:: classref-method

|void| **channel_limit**\ (\ limit\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetConnection_method_channel_limit>`

Обмеження максимальних дозволених каналів майбутнього вхідних з'єднань.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_compress:

.. rst-class:: classref-method

|void| **compress**\ (\ mode\: :ref:`CompressionMode<enum_ENetConnection_CompressionMode>`\ ) :ref:`🔗<class_ENetConnection_method_compress>`

Налаштовує метод стиснення, який використовується для мережевих пакетів. Вони мають різні торгові точки швидкості стиснення versus пропускної здатності, ви можете перевірити, що один працює краще для вашого використання випадку, якщо ви використовуєте стиснення на всіх.

\ **Примітка:** Більшість дизайн мережі ігор передбачають відправку багато невеликих пакетів часто (менше 4 КБ кожен). Якщо в сумніві, рекомендується зберігати алгоритм стиснення за замовчуванням, оскільки він працює краще на цих невеликих пакетах.

\ **Примітка:** Режим стиснення повинен бути встановленим до того ж значення на сервері і всіх його клієнтів. Клієнти не з’єднуються, якщо встановлений на сервері режим стиснення відрізняється від одного набору.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_connect_to_host:

.. rst-class:: classref-method

:ref:`ENetPacketPeer<class_ENetPacketPeer>` **connect_to_host**\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channels\: :ref:`int<class_int>` = 0, data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_connect_to_host>`

Ініціати з'єднання з іноземною ``параційна адреса`` за допомогою вказаного ``port`` і виділення запитуваного ``channels``. Додатково ``data`` можна пройти під час підключення у вигляді цілого 32 біт.

\ **Примітка:** Ви повинні викликати або :ref:`створення_host()<class_ENetConnection_method_створення_host>` або :ref:`створення_host_bound()<class_ENetConnection_method_створення_host_bound>` на обох кінцях, перш ніж викликати цей метод.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_create_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_host**\ (\ max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_create_host>`

Створює ENetHost, що дозволяє підключенням однолітків ``max_peers``, кожен бажаючий до каналів ``max_channels``, додатково обмежуючи пропускну здатність до ``in_width`` і ``out_bandwidth`` (якщо більше нуля.)

Цей етод поєднує в собі випадковий доступний динамічний порт UDP на хост-машину за адресою *unspecified*. Використовуйте :ref:`create_host_bound()<class_ENetConnection_method_create_host_bound>`, щоб вказати адресу та порт.

\ **Примітка:** Для встановлення з'єднання необхідно створити хост як клієнт, так і сервер.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_create_host_bound:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_host_bound**\ (\ bind_address\: :ref:`String<class_String>`, bind_port\: :ref:`int<class_int>`, max_peers\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_create_host_bound>`

Створює ENetHost, що межує з даним ``bind_address`` і ``bind_port``, що дозволяє ``max_peers`` підключених однолітків, кожен бажаючий до ``max_channels`` каналів, додатково обмежуючи пропускну здатність до ``in_width`` і ``out_width`` (якщо більше нуля).

\ **Примітка:** Для встановлення підключення необхідно створити хост як клієнт, так і сервер.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_destroy:

.. rst-class:: classref-method

|void| **destroy**\ (\ ) :ref:`🔗<class_ENetConnection_method_destroy>`

Дестройс хост і всі ресурси, пов'язані з ним.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_dtls_client_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **dtls_client_setup**\ (\ hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_ENetConnection_method_dtls_client_setup>`

Налаштовує цей ENetHost для використання власного розширення Godot, що забезпечує шифрування DTLS для клієнтів ENet. Викличте цей метод перед :ref:`connect_to_host()<class_ENetConnection_method_connect_to_host>`, щоб підключення ENet використовувало DTLS та перевіряло сертифікат сервера за значенням ``hostname``. Необов’язковий параметр ``client_options`` дозволяє налаштувати довірені центри сертифікації або вимкнути перевірку загального імені. Див. :ref:`TLSOptions.client()<class_TLSOptions_method_client>` та :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_dtls_server_setup:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **dtls_server_setup**\ (\ server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_ENetConnection_method_dtls_server_setup>`

Налаштуйте цей ENetHost для використання користувацького розширення Godot, що дозволяє шифрування DTLS для серверів ENet. Зателефонуйте за допомогою DTLS. Див. :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_flush:

.. rst-class:: classref-method

|void| **flush**\ (\ ) :ref:`🔗<class_ENetConnection_method_flush>`

Відправляє будь-які черги пакетів на ведучих, зазначених до його призначених однолітків.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_ENetConnection_method_get_local_port>`

Повертає локальний порт, до якого зв'язується цей одноліток.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_max_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_channels**\ (\ ) |const| :ref:`🔗<class_ENetConnection_method_get_max_channels>`

Повертаємо максимальну кількість каналів, дозволених для підключених однолітків.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_get_peers:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ENetPacketPeer<class_ENetPacketPeer>`\] **get_peers**\ (\ ) :ref:`🔗<class_ENetConnection_method_get_peers>`

Повертає список однолітків, пов'язаних з цим хостом.

\ **Примітка:** Цей список може включати деякі однолітки, які не повністю підключені або поки не відключені.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_pop_statistic:

.. rst-class:: classref-method

:ref:`float<class_float>` **pop_statistic**\ (\ statistic\: :ref:`HostStatistic<enum_ENetConnection_HostStatistic>`\ ) :ref:`🔗<class_ENetConnection_method_pop_statistic>`

Повертає та скидає статистику хоста.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_refuse_new_connections:

.. rst-class:: classref-method

|void| **refuse_new_connections**\ (\ refuse\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ENetConnection_method_refuse_new_connections>`

Налаштування сервера DTLS для автоматичного падіння нових підключень.

\ **Примітка:** Цей метод доступний тільки після виклику :ref:`dtls_server_setup()<class_ENetConnection_method_dtls_server_setup>`.

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_service:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **service**\ (\ timeout\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetConnection_method_service>`

Очікується, що події на цьому з'єднанні та упакуванні маршрутів між хостом та його однолітками, з заданим ``timeout`` (в мілісекунді). Повернутий :ref:`Array<class_Array>` буде мати 4 елементи. :ref:`EventType<enum_ENetConnection_EventType>`, :ref:`ENetPacketPeer<class_ENetPacketPeer>`, який створив захід, пов'язаний дані (якщо це), подія, пов'язана з каналом (за наявності). Якщо сформований захід :ref:`EVENT_RECEIVE<class_ENetConnection_constant_EVENT_RECEIVE>`, отриманий пакет буде черганий асоційованим :ref:`ENetPacketPeer<class_ENetPacketPeer>`.

Зателефонуйте цю функцію регулярно, щоб обробляти з'єднання, відключення та отримувати нові пакети.

\ **Примітка:** Цей метод повинен бути викликаний як на кінцях, що беруть участь у заході (закінчення та отримання господарів).

.. rst-class:: classref-item-separator

----

.. _class_ENetConnection_method_socket_send:

.. rst-class:: classref-method

|void| **socket_send**\ (\ destination_address\: :ref:`String<class_String>`, destination_port\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ENetConnection_method_socket_send>`

Надсилання ``packet`` до місця призначення з адреси та порту, в даний час, пов'язаної з цим екземпляром ENetConnection.

Це корисно, оскільки він служить для встановлення записів в таблицях NAT на всіх пристроях між цією межею та Інтернетом громадського облицювання, що дозволяє потенційним пакетам з'єднання клієнтів, які можуть бути передані назад через пристрій NAT (s) між громадським інтернетом та цим хостом.

Для того, щоб отримати знання про адресний та комунікаційний порт потенційного клієнта, як видно громадський інтернет - після того, як будь-які пристрої NAT обробляються запитом про підключення. Ця інформація може бути отримана за допомогою ` Послуга STUN <https://en.wikipedia.org/wiki/STUN>`__ і повинна бути передана вашому господарю особою, яка не є потенційним клієнтом. У зв’язку з характером алгоритму маршрутизації Symmetric NAT, оскільки їх IP і порт не можуть бути відомі заздалегідь.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
