:github_url: hide

.. _class_ENetPacketPeer:

ENetPacketPeer
==============

**Успадковує:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Клас обгортки для `ENetPeer <http://enet.bespin.org/group__peer.html>`__.

.. rst-class:: classref-introduction-group

Опис
--------

A PacketPeer implementation representing a peer of an :ref:`ENetConnection<class_ENetConnection>`.

This class cannot be instantiated directly but can be retrieved during :ref:`ENetConnection.service()<class_ENetConnection_method_service>` or via :ref:`ENetConnection.get_peers()<class_ENetConnection_method_get_peers>`.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Документація API на сайті ENet <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_channels<class_ENetPacketPeer_method_get_channels>`\ (\ ) |const|                                                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_packet_flags<class_ENetPacketPeer_method_get_packet_flags>`\ (\ ) |const|                                                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`get_remote_address<class_ENetPacketPeer_method_get_remote_address>`\ (\ ) |const|                                                                                                       |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_remote_port<class_ENetPacketPeer_method_get_remote_port>`\ (\ ) |const|                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PeerState<enum_ENetPacketPeer_PeerState>` | :ref:`get_state<class_ENetPacketPeer_method_get_state>`\ (\ ) |const|                                                                                                                         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`get_statistic<class_ENetPacketPeer_method_get_statistic>`\ (\ statistic\: :ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>`\ )                                                    |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_active<class_ENetPacketPeer_method_is_active>`\ (\ ) |const|                                                                                                                         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`peer_disconnect<class_ENetPacketPeer_method_peer_disconnect>`\ (\ data\: :ref:`int<class_int>` = 0\ )                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`peer_disconnect_later<class_ENetPacketPeer_method_peer_disconnect_later>`\ (\ data\: :ref:`int<class_int>` = 0\ )                                                                       |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`peer_disconnect_now<class_ENetPacketPeer_method_peer_disconnect_now>`\ (\ data\: :ref:`int<class_int>` = 0\ )                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`ping<class_ENetPacketPeer_method_ping>`\ (\ )                                                                                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`ping_interval<class_ENetPacketPeer_method_ping_interval>`\ (\ ping_interval\: :ref:`int<class_int>`\ )                                                                                  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`reset<class_ENetPacketPeer_method_reset>`\ (\ )                                                                                                                                         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`send<class_ENetPacketPeer_method_send>`\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ )                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_timeout<class_ENetPacketPeer_method_set_timeout>`\ (\ timeout\: :ref:`int<class_int>`, timeout_min\: :ref:`int<class_int>`, timeout_max\: :ref:`int<class_int>`\ )                  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`throttle_configure<class_ENetPacketPeer_method_throttle_configure>`\ (\ interval\: :ref:`int<class_int>`, acceleration\: :ref:`int<class_int>`, deceleration\: :ref:`int<class_int>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_ENetPacketPeer_PeerState:

.. rst-class:: classref-enumeration

enum **PeerState**: :ref:`🔗<enum_ENetPacketPeer_PeerState>`

.. _class_ENetPacketPeer_constant_STATE_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECTED** = ``0``

Віддалений вузол відключено.

.. _class_ENetPacketPeer_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTING** = ``1``

Віддалений вузол зараз намагається підключитися.

.. _class_ENetPacketPeer_constant_STATE_ACKNOWLEDGING_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ACKNOWLEDGING_CONNECT** = ``2``

Віддалений вузол підтвердив запит на з'єднання.

.. _class_ENetPacketPeer_constant_STATE_CONNECTION_PENDING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTION_PENDING** = ``3``

Пільговий вузол наразі підключається.

.. _class_ENetPacketPeer_constant_STATE_CONNECTION_SUCCEEDED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTION_SUCCEEDED** = ``4``

Юрист успішно підключений, але не готовий спілкуватися з ще (:ref:`STATE_CONNECTED<class_ENetPacketPeer_constant_STATE_CONNECTED>`).

.. _class_ENetPacketPeer_constant_STATE_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTED** = ``5``

В даний час ми зв'яжемося з.

.. _class_ENetPacketPeer_constant_STATE_DISCONNECT_LATER:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECT_LATER** = ``6``

Очікується, що вузол відключиться після того, як у нього більше не буде вихідних пакетів для надсилання.

.. _class_ENetPacketPeer_constant_STATE_DISCONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECTING** = ``7``

В даний час ми відключаємо.

.. _class_ENetPacketPeer_constant_STATE_ACKNOWLEDGING_DISCONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ACKNOWLEDGING_DISCONNECT** = ``8``

У зв’язку з тим, що компанія визнала запит про відключення.

.. _class_ENetPacketPeer_constant_STATE_ZOMBIE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ZOMBIE** = ``9``

У зв'язку з втратою зв'язку, але не вважається дійсно відключенням (як одноліток не визнавав вимогу відключення).

.. rst-class:: classref-item-separator

----

.. _enum_ENetPacketPeer_PeerStatistic:

.. rst-class:: classref-enumeration

enum **PeerStatistic**: :ref:`🔗<enum_ENetPacketPeer_PeerStatistic>`

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS** = ``0``

Збиток цінного пакета надійного пакету як співвідношення стосовно :ref:`PACKET_LOSS_SCALE<class_ENetPacketPeer_constant_PACKET_LOSS_SCALE>`.

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS_VARIANCE** = ``1``

Варіант втрати пакету.

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS_EPOCH:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS_EPOCH** = ``2``

В той час, в якому було оновлено статистика втрати пакету (в мілісекундах з моменту початку з'єднання). Проміжок для оновлення статистики пакетів становить 10 секунд, і принаймні один пакет повинен бути відправлений з останнього оновлення статистики.

.. _class_ENetPacketPeer_constant_PEER_ROUND_TRIP_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_ROUND_TRIP_TIME** = ``3``

Термін дії пакету Mean для надійного пакету.

.. _class_ENetPacketPeer_constant_PEER_ROUND_TRIP_TIME_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_ROUND_TRIP_TIME_VARIANCE** = ``4``

Варіант середнього часу туру.

.. _class_ENetPacketPeer_constant_PEER_LAST_ROUND_TRIP_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_LAST_ROUND_TRIP_TIME** = ``5``

Останній записаний круглий час поїздки для надійного пакету.

.. _class_ENetPacketPeer_constant_PEER_LAST_ROUND_TRIP_TIME_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_LAST_ROUND_TRIP_TIME_VARIANCE** = ``6``

Варіант останнього часу поїздки записаний.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE** = ``7``

Статус на сервери.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_LIMIT** = ``8``

Максимальна кількість ненадійних пакетів, які не повинні бути впущені. Це значення завжди перевищує або дорівнює ``1``. Початкове значення дорівнює :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_COUNTER:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_COUNTER** = ``9``

Внутрішнє значення, яке використовується для підсилення дросельної стійки пакета. Вартість закодовано ``7`` і не може бути змінена. Ви, ймовірно, хочете подивитися на :ref:`PEER_PACKET_THROTTLE_ACCELERATION<class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_ACCELERATION>` замість.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_EPOCH:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_EPOCH** = ``10``

В той час, в якому було оновлено статистика дросель (в мілісекундах з моменту початку з'єднання). Проміжок для оновлення статистичних даних дросель є :ref:`PEER_PACKET_THROTTLE_INTERVAL<class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_INTERVAL>`.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_ACCELERATION:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_ACCELERATION** = ``11``

Коефіцієнт прискорення кропиви. Найвищі значення дадуть ENet адаптацію до коливання мережевих умов швидше, що викликає ненадійні пакети для відправки *більше*. Вартість за замовчуванням ``2``.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_DECELERATION:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_DECELERATION** = ``12``

Декатераційний фактор дросельної рогатки. Найвищі значення дозволять ENet адаптуватися до коливання мережевих умов швидше, викликаючи небажані пакети, які будуть відправлені *less*. Вартість за замовчуванням ``2``.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_INTERVAL:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_INTERVAL** = ``13``

Проміжок, над яким найнижчий час туру слід виміряти для використання дросельним механізмом (в мілісекундах). Вартість за замовчуванням ``5000``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_ENetPacketPeer_constant_PACKET_LOSS_SCALE:

.. rst-class:: classref-constant

**PACKET_LOSS_SCALE** = ``65536`` :ref:`🔗<class_ENetPacketPeer_constant_PACKET_LOSS_SCALE>`

Еталонна шкала для втрати пакетів. Див. :ref:`get_statistic()<class_ENetPacketPeer_method_get_statistic>` та :ref:`PEER_PACKET_LOSS<class_ENetPacketPeer_constant_PEER_PACKET_LOSS>`.

.. _class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE:

.. rst-class:: classref-constant

**PACKET_THROTTLE_SCALE** = ``32`` :ref:`🔗<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`

Довідкове значення для конфігурації дросель. Вартість за замовчуванням ``32``. Див. :ref:`дросель_configure()<class_ENetPacketPeer_method_дросель_configure>`.

.. _class_ENetPacketPeer_constant_FLAG_RELIABLE:

.. rst-class:: classref-constant

**FLAG_RELIABLE** = ``1`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_RELIABLE>`

Позначте пакет, який буде відправлений як надійний.

.. _class_ENetPacketPeer_constant_FLAG_UNSEQUENCED:

.. rst-class:: classref-constant

**FLAG_UNSEQUENCED** = ``2`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_UNSEQUENCED>`

Позначте пакет, який буде відправлено беззаперечно (ненадійно).

.. _class_ENetPacketPeer_constant_FLAG_UNRELIABLE_FRAGMENT:

.. rst-class:: classref-constant

**FLAG_UNRELIABLE_FRAGMENT** = ``8`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_UNRELIABLE_FRAGMENT>`

Позначити пакет, який буде відправлений ненадійним, навіть якщо пакет занадто великий і потребує фрагментації (зменшуючи шанс його падіння).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ENetPacketPeer_method_get_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_channels**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_channels>`

Повертає кількість каналів, виділених для зв'язку з однолітками.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_packet_flags:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_flags**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_packet_flags>`

Повертає прапори ENet наступного пакета в отриманій черзі. Перегляньте константи ``FLAG_*`` для доступних прапорів пакетів. Зауважте, що не всі прапори реплікуються від однорангового вузла-відправника до однорангового вузла-одержувача.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_remote_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_remote_address**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_remote_address>`

Повертає IP-адресу цього аналога.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_remote_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_remote_port**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_remote_port>`

Повернення віддаленого порту цього однолітків.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_state:

.. rst-class:: classref-method

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **get_state**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_state>`

Повертає поточний стан вузла.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_statistic:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_statistic**\ (\ statistic\: :ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>`\ ) :ref:`🔗<class_ENetPacketPeer_method_get_statistic>`

Повертає запитуваний ``statistic`` для цього вузла.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_is_active>`

Повертає ``true``, якщо вузол наразі активний (тобто пов’язане :ref:`ENetConnection<class_ENetConnection>` все ще дійсне).

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect:

.. rst-class:: classref-method

|void| **peer_disconnect**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect>`

Запит на відключення від вузла. Після завершення відключення під час виконання методу :ref:`ENetConnection.service()<class_ENetConnection_method_service>` буде згенеровано :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>`.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect_later:

.. rst-class:: classref-method

|void| **peer_disconnect_later**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect_later>`

Запитайте відключення від однолітків, але тільки після того, як всі черги будуть відправлені. :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>` генерується під час :ref:`ENetConnection.service()<class_ENetConnection_method_service>` після завершення відключення.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect_now:

.. rst-class:: classref-method

|void| **peer_disconnect_now**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect_now>`

Примусово негайно відключити з'єднання від вузла. :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>` не генеруватиметься. Зовнішній партнер не гарантовано отримає сповіщення про відключення, і його налаштування скидається негайно після повернення з цієї функції.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_ping:

.. rst-class:: classref-method

|void| **ping**\ (\ ) :ref:`🔗<class_ENetPacketPeer_method_ping>`

Надішліть запит на пінг-запит. ENet автоматично ping всіх підключених однолітків при регулярних інтервалах, проте ця функція може бути викликана, щоб забезпечити більш часті запити ping.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_ping_interval:

.. rst-class:: classref-method

|void| **ping_interval**\ (\ ping_interval\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_ping_interval>`

Встановлюємо ``ping_interval`` в мілісекундах, на які будуть відправлені пінги. Пінги використовуються як для моніторингу життєздатності з'єднання, так і для динамічного регулювання дросельності в періоди низького трафіку, так що дросель має обґрунтовану чуйність при поході трафіку. Проміжок за замовчуванням ``500`` мілісекунди.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_ENetPacketPeer_method_reset>`

Примушено відключає однолітків. Іноземний хост, представлений однолітком, не буде повідомлено про відключення та прострочення на зв'язку з місцевим хостом.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_send:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send**\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_send>`

Прийміть ``packet`` для відправки за вказаною ``channel``. Див ``FLAG_*`` константи для доступних прапорів пакета.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_set_timeout:

.. rst-class:: classref-method

|void| **set_timeout**\ (\ timeout\: :ref:`int<class_int>`, timeout_min\: :ref:`int<class_int>`, timeout_max\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_set_timeout>`

Налаштовує часові параметри для однолітків. Контроль параметрів маршруту, як і коли одноліток з моменту визнання надійного трафіку. Значення часу виражаються в мілісекундах.

The ``timeout`` є фактором, який, багатоповненим значенням на основі середнього часу поїздки, визначить ліміт часу для надійного пакету. При досягненні цього ліміту, часовий час буде подвійним, а одноліток буде відключений, якщо досягнуто ліміт ``пармовий час_мін``. параметр ``timeout_max``, з іншого боку, визначає фіксований час, для якого будь-який пакет повинен бути визнаний або буде пошкоджений.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_throttle_configure:

.. rst-class:: classref-method

|void| **throttle_configure**\ (\ interval\: :ref:`int<class_int>`, acceleration\: :ref:`int<class_int>`, deceleration\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_throttle_configure>`

Налаштування параметрів дросельної дросельності для однолітків.

Ненадійні пакети скидаються ENet у відповідь на різні умови підключення до мережі Інтернет. У дросельі є ймовірність того, що ненадійний пакет не повинен бути пошкоджений і таким чином, відправлений ENet на однолітків. При вимірюванні коливань в круглих часах поїздки надійних пакетів над вказаною ``deceleration``, ENet може збільшити ймовірність суми, зазначеної в параметрі ``acceleration``, або зменшити його за величиною, зазначеною в параметрі ``deceleration`` (або є відношення до :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`).

Коли дросель має значення :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`, ненадійні пакетів скидаються ENet, і тому 100% з усіх ненадійні пакетів буде відправлені.

Коли дросель має значення ``0``, всі ненадійні пакети скидаються ENet, і так 0% всіх ненадійних пакетів будуть відправлені.

Проміжні значення для тромбоциту є проміжними ймовірностями між 0% і 100% від ненадійних пачок, які надсилаються. Обмеження пропускної здатності місцевих і іноземних господарів враховуються для визначення нечутливого ліміту для ймовірності тромбоцитів, над яким не варто піднімати навіть в кращих умовах.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
