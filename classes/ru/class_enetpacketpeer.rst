:github_url: hide

.. _class_ENetPacketPeer:

ENetPacketPeer
==============

**Наследует:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Класс-оболочка для `ENetPeer <http://enet.bespin.org/group__peer.html>`__.

.. rst-class:: classref-introduction-group

Описание
----------------

A PacketPeer implementation representing a peer of an :ref:`ENetConnection<class_ENetConnection>`.

This class cannot be instantiated directly but can be retrieved during :ref:`ENetConnection.service()<class_ENetConnection_method_service>` or via :ref:`ENetConnection.get_peers()<class_ENetConnection_method_get_peers>`.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Документация API на сайте ENet <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

Методы
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

Перечисления
------------------------

.. _enum_ENetPacketPeer_PeerState:

.. rst-class:: classref-enumeration

enum **PeerState**: :ref:`🔗<enum_ENetPacketPeer_PeerState>`

.. _class_ENetPacketPeer_constant_STATE_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECTED** = ``0``

Узел отключен.

.. _class_ENetPacketPeer_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTING** = ``1``

В настоящее время пир пытается подключиться.

.. _class_ENetPacketPeer_constant_STATE_ACKNOWLEDGING_CONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ACKNOWLEDGING_CONNECT** = ``2``

Пир подтвердил запрос на соединение.

.. _class_ENetPacketPeer_constant_STATE_CONNECTION_PENDING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTION_PENDING** = ``3``

В настоящее время пир подключается.

.. _class_ENetPacketPeer_constant_STATE_CONNECTION_SUCCEEDED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTION_SUCCEEDED** = ``4``

Пир успешно подключился, но пока не готов к взаимодействию (:ref:`STATE_CONNECTED<class_ENetPacketPeer_constant_STATE_CONNECTED>`).

.. _class_ENetPacketPeer_constant_STATE_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_CONNECTED** = ``5``

В настоящее время пир подключен и готов к коммуникации.

.. _class_ENetPacketPeer_constant_STATE_DISCONNECT_LATER:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECT_LATER** = ``6``

Ожидается, что одноранговый узел отключится, когда у него больше не останется исходящих пакетов для отправки.

.. _class_ENetPacketPeer_constant_STATE_DISCONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_DISCONNECTING** = ``7``

В настоящее время соединение с пиром отключается.

.. _class_ENetPacketPeer_constant_STATE_ACKNOWLEDGING_DISCONNECT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ACKNOWLEDGING_DISCONNECT** = ``8``

Пир подтвердил запрос на отключение.

.. _class_ENetPacketPeer_constant_STATE_ZOMBIE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **STATE_ZOMBIE** = ``9``

Соединение с одноранговым пир было потеряно, но оно не считается полностью отключенным (поскольку одноранговый пир не подтвердил запрос на отключение).

.. rst-class:: classref-item-separator

----

.. _enum_ENetPacketPeer_PeerStatistic:

.. rst-class:: classref-enumeration

enum **PeerStatistic**: :ref:`🔗<enum_ENetPacketPeer_PeerStatistic>`

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS** = ``0``

Средняя потеря надежных пакетов как отношение к :ref:`PACKET_LOSS_SCALE<class_ENetPacketPeer_constant_PACKET_LOSS_SCALE>`.

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS_VARIANCE** = ``1``

Коэффициент потери пакетов.

.. _class_ENetPacketPeer_constant_PEER_PACKET_LOSS_EPOCH:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_LOSS_EPOCH** = ``2``

Время последнего обновления статистики потери пакетов (в миллисекундах с момента начала соединения). Интервал обновления статистики потери пакетов составляет 10 секунд, и с момента последнего обновления статистики должен быть отправлен хотя бы один пакет.

.. _class_ENetPacketPeer_constant_PEER_ROUND_TRIP_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_ROUND_TRIP_TIME** = ``3``

Среднее время прохождения пакета туда и обратно для надежных пакетов.

.. _class_ENetPacketPeer_constant_PEER_ROUND_TRIP_TIME_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_ROUND_TRIP_TIME_VARIANCE** = ``4``

Разница среднего времени прохождения сигнала туда и обратно.

.. _class_ENetPacketPeer_constant_PEER_LAST_ROUND_TRIP_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_LAST_ROUND_TRIP_TIME** = ``5``

Последнее зафиксированное время прохождения надежного пакета туда и обратно.

.. _class_ENetPacketPeer_constant_PEER_LAST_ROUND_TRIP_TIME_VARIANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_LAST_ROUND_TRIP_TIME_VARIANCE** = ``6``

Разница во времени последней зафиксированной поездки.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE** = ``7``

Текущий статус дросселя однорангового пира.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_LIMIT** = ``8``

Максимальное количество ненадежных пакетов, которые не должны быть отброшены. Это значение всегда больше или равно ``1``. Начальное значение равно :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_COUNTER:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_COUNTER** = ``9``

Внутреннее значение, используемое для увеличения счетчика дросселя пакетов. Значение жестко закодировано в ``7`` и не может быть изменено. Вероятно, вместо этого вам следует взглянуть на :ref:`PEER_PACKET_THROTTLE_ACCELERATION<class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_ACCELERATION>`.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_EPOCH:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_EPOCH** = ``10``

Время последнего обновления статистики дросселя (в миллисекундах с момента начала соединения). Интервал обновления статистики дросселя — :ref:`PEER_PACKET_THROTTLE_INTERVAL<class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_INTERVAL>`.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_ACCELERATION:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_ACCELERATION** = ``11``

Фактор ускорения дросселя. Более высокие значения заставят ENet быстрее адаптироваться к изменяющимся условиям сети, что приведет к отправке ненадежных пакетов *чаще*. Значение по умолчанию — ``2``.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_DECELERATION:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_DECELERATION** = ``12``

Фактор замедления дросселя. Более высокие значения заставят ENet быстрее адаптироваться к изменяющимся условиям сети, что приведет к отправке ненадежных пакетов *реже* часто. Значение по умолчанию — ``2``.

.. _class_ENetPacketPeer_constant_PEER_PACKET_THROTTLE_INTERVAL:

.. rst-class:: classref-enumeration-constant

:ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>` **PEER_PACKET_THROTTLE_INTERVAL** = ``13``

Интервал, в течение которого должно измеряться наименьшее среднее время прохождения сигнала туда и обратно для использования механизмом дроссельной заслонки (в миллисекундах). Значение по умолчанию — ``5000``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_ENetPacketPeer_constant_PACKET_LOSS_SCALE:

.. rst-class:: classref-constant

**PACKET_LOSS_SCALE** = ``65536`` :ref:`🔗<class_ENetPacketPeer_constant_PACKET_LOSS_SCALE>`

Опорная шкала для потери пакетов. См. :ref:`get_statistic()<class_ENetPacketPeer_method_get_statistic>` и :ref:`PEER_PACKET_LOSS<class_ENetPacketPeer_constant_PEER_PACKET_LOSS>`.

.. _class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE:

.. rst-class:: classref-constant

**PACKET_THROTTLE_SCALE** = ``32`` :ref:`🔗<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`

Опорное значение для конфигурации дросселя. Значение по умолчанию — ``32``. См. :ref:`throttle_configure()<class_ENetPacketPeer_method_throttle_configure>`.

.. _class_ENetPacketPeer_constant_FLAG_RELIABLE:

.. rst-class:: classref-constant

**FLAG_RELIABLE** = ``1`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_RELIABLE>`

Пометить отправляемый пакет как надежный.

.. _class_ENetPacketPeer_constant_FLAG_UNSEQUENCED:

.. rst-class:: classref-constant

**FLAG_UNSEQUENCED** = ``2`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_UNSEQUENCED>`

Отметить пакет, подлежащий отправке, как непоследовательный (ненадежный).

.. _class_ENetPacketPeer_constant_FLAG_UNRELIABLE_FRAGMENT:

.. rst-class:: classref-constant

**FLAG_UNRELIABLE_FRAGMENT** = ``8`` :ref:`🔗<class_ENetPacketPeer_constant_FLAG_UNRELIABLE_FRAGMENT>`

Пометить отправляемый пакет как ненадежный, даже если пакет слишком большой и требует фрагментации (что увеличивает вероятность его потери).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ENetPacketPeer_method_get_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_channels**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_channels>`

Возвращает количество каналов, выделенных для связи с одноранговым узлом.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_packet_flags:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_flags**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_packet_flags>`

Возвращает флаги ENet следующего пакета в полученной очереди. См. константы ``FLAG_*`` для доступных флагов пакетов. Обратите внимание, что не все флаги реплицируются от отправляющего узла к принимающему узлу.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_remote_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_remote_address**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_remote_address>`

Возвращает IP-адрес этого однорангового узла.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_remote_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_remote_port**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_remote_port>`

Возвращает удаленный порт данного однорангового узла.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_state:

.. rst-class:: classref-method

:ref:`PeerState<enum_ENetPacketPeer_PeerState>` **get_state**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_get_state>`

Возвращает текущее состояние однорангового узла (Peer).

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_get_statistic:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_statistic**\ (\ statistic\: :ref:`PeerStatistic<enum_ENetPacketPeer_PeerStatistic>`\ ) :ref:`🔗<class_ENetPacketPeer_method_get_statistic>`

Возвращает запрошенную ``statistic`` для данного однорангового узла.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_ENetPacketPeer_method_is_active>`

Возвращает ``true``, если одноранговый узел в данный момент активен (т. е. связанный :ref:`ENetConnection<class_ENetConnection>` все еще действителен).

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect:

.. rst-class:: classref-method

|void| **peer_disconnect**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect>`

Запрос на отключение от однорангового пира. :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>` будет сгенерирована во время :ref:`ENetConnection.service()<class_ENetConnection_method_service>` после завершения отключения.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect_later:

.. rst-class:: classref-method

|void| **peer_disconnect_later**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect_later>`

Запросить отключение от пира, но только после того, как все исходящие пакеты в очереди будут отправлены. :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>` будет сгенерирована во время :ref:`ENetConnection.service()<class_ENetConnection_method_service>` после завершения отключения.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_peer_disconnect_now:

.. rst-class:: classref-method

|void| **peer_disconnect_now**\ (\ data\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetPacketPeer_method_peer_disconnect_now>`

Принудительно выполнить немедленное отключение от однорангового пир. :ref:`ENetConnection.EVENT_DISCONNECT<class_ENetConnection_constant_EVENT_DISCONNECT>` не будет сгенерирован. Не гарантируется, что внешний одноранговый узел получит уведомление об отключении, и он немедленно сбрасывается после возврата из этой функции.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_ping:

.. rst-class:: classref-method

|void| **ping**\ (\ ) :ref:`🔗<class_ENetPacketPeer_method_ping>`

Отправляет запрос ping на одноранговый узел. ENet автоматически пингует все подключенные одноранговые узлы через регулярные интервалы, однако эта функция может быть вызвана для обеспечения более частых запросов ping.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_ping_interval:

.. rst-class:: classref-method

|void| **ping_interval**\ (\ ping_interval\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_ping_interval>`

Устанавливает ``ping_interval`` в миллисекундах, с которым будут отправляться пинги на одноранговый пир. Пинги используются как для мониторинга активности соединения, так и для динамической регулировки дросселя в периоды низкого трафика, чтобы дроссель имел разумную скорость реагирования во время пиков трафика. Интервал пинга по умолчанию составляет ``500`` миллисекунд.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_ENetPacketPeer_method_reset>`

Принудительно отключает одноранговый пир. Внешний хост, представленный одноранговым пир, не уведомляется об отключении и будет отключаться по тайм-ауту при подключении к локальному хосту.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_send:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send**\ (\ channel\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_send>`

Ставит в очередь ``packet`` для отправки по указанному ``channel``. См. константы ``FLAG_*`` для доступных флагов пакетов.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_set_timeout:

.. rst-class:: classref-method

|void| **set_timeout**\ (\ timeout\: :ref:`int<class_int>`, timeout_min\: :ref:`int<class_int>`, timeout_max\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_set_timeout>`

Устанавливает параметры тайм-аута для однорангового пира. Параметры тайм-аута управляют тем, как и когда одноранговый узел будет выходить из-за неспособности подтвердить надежный трафик. Значения тайм-аута выражаются в миллисекундах.

\ ``timeout`` — это фактор, который, умноженный на значение, основанное на среднем времени кругового пути, определит предел тайм-аута для надежного пакета. Когда этот предел достигнут, тайм-аут будет удвоен, и одноранговый узел будет отключен, если этот предел достигнет ``timeout_min``. Параметр ``timeout_max``, с другой стороны, определяет фиксированный тайм-аут, в течение которого любой пакет должен быть подтвержден, иначе одноранговый узел будет отброшен.

.. rst-class:: classref-item-separator

----

.. _class_ENetPacketPeer_method_throttle_configure:

.. rst-class:: classref-method

|void| **throttle_configure**\ (\ interval\: :ref:`int<class_int>`, acceleration\: :ref:`int<class_int>`, deceleration\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetPacketPeer_method_throttle_configure>`

Настраивает параметр дросселя для однорангового пир.

Ненадежные пакеты отбрасываются ENet в ответ на изменяющиеся условия интернет-подключения к одноранговому пир. Дроссель представляет собой вероятность того, что ненадежный пакет не будет отброшен и, таким образом, отправлен ENet одноранговому пиру. Измеряя колебания времени кругового пути надежных пакетов в течение указанного ``interval``, ENet либо увеличит вероятность на величину, указанную в параметре ``acceleration``, либо уменьшит ее на величину, указанную в параметре ``deceleration`` (оба являются отношениями к :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`).

Когда дроссель имеет значение :ref:`PACKET_THROTTLE_SCALE<class_ENetPacketPeer_constant_PACKET_THROTTLE_SCALE>`, ненадежные пакеты не отбрасываются ENet, и поэтому будет отправлено 100% всех ненадежных пакетов.

Когда дроссель имеет значение ``0``, все ненадежные пакеты отбрасываются ENet, и поэтому будет отправлено 0% всех ненадежных пакетов.

Промежуточные значения для дросселя представляют собой промежуточные вероятности между 0% и 100% ненадежных отправляемых пакетов. Ограничения пропускной способности локальных и внешних хостов учитываются для определения разумного предела для вероятности дросселя, выше которого он не должен подниматься даже в самых лучших условиях.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
