:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerPeer:

MultiplayerPeer
===============

**Наследует:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`ENetMultiplayerPeer<class_ENetMultiplayerPeer>`, :ref:`MultiplayerPeerExtension<class_MultiplayerPeerExtension>`, :ref:`OfflineMultiplayerPeer<class_OfflineMultiplayerPeer>`, :ref:`WebRTCMultiplayerPeer<class_WebRTCMultiplayerPeer>`, :ref:`WebSocketMultiplayerPeer<class_WebSocketMultiplayerPeer>`

Абстрактный класс для специализированных :ref:`PacketPeer<class_PacketPeer>`-ов, используемых :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Manages the connection with one or more remote peers acting as server or client and assigning unique IDs to each of them. See also :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

\ **Note:** The :ref:`MultiplayerAPI<class_MultiplayerAPI>` protocol is an implementation detail and isn't meant to be used by non-Godot servers. It may change without notice.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Высокоуровневый мультиплеер <../tutorials/networking/high_level_multiplayer>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                | :ref:`refuse_new_connections<class_MultiplayerPeer_property_refuse_new_connections>` | ``false`` |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                  | :ref:`transfer_channel<class_MultiplayerPeer_property_transfer_channel>`             | ``0``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` | :ref:`transfer_mode<class_MultiplayerPeer_property_transfer_mode>`                   | ``2``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`close<class_MultiplayerPeer_method_close>`\ (\ )                                                                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`disconnect_peer<class_MultiplayerPeer_method_disconnect_peer>`\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>` = false\ ) |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`generate_unique_id<class_MultiplayerPeer_method_generate_unique_id>`\ (\ ) |const|                                                          |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` | :ref:`get_connection_status<class_MultiplayerPeer_method_get_connection_status>`\ (\ ) |const|                                                    |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`get_packet_channel<class_MultiplayerPeer_method_get_packet_channel>`\ (\ ) |const|                                                          |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`         | :ref:`get_packet_mode<class_MultiplayerPeer_method_get_packet_mode>`\ (\ ) |const|                                                                |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`get_packet_peer<class_MultiplayerPeer_method_get_packet_peer>`\ (\ ) |const|                                                                |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`get_unique_id<class_MultiplayerPeer_method_get_unique_id>`\ (\ ) |const|                                                                    |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`is_server_relay_supported<class_MultiplayerPeer_method_is_server_relay_supported>`\ (\ ) |const|                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`poll<class_MultiplayerPeer_method_poll>`\ (\ )                                                                                              |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`set_target_peer<class_MultiplayerPeer_method_set_target_peer>`\ (\ id\: :ref:`int<class_int>`\ )                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_MultiplayerPeer_signal_peer_connected:

.. rst-class:: classref-signal

**peer_connected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_signal_peer_connected>`

Выдается при подключении удаленного однорангового узла.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_signal_peer_disconnected:

.. rst-class:: classref-signal

**peer_disconnected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_signal_peer_disconnected>`

Выдается при отключении удаленного однорангового узла.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_MultiplayerPeer_ConnectionStatus:

.. rst-class:: classref-enumeration

enum **ConnectionStatus**: :ref:`🔗<enum_MultiplayerPeer_ConnectionStatus>`

.. _class_MultiplayerPeer_constant_CONNECTION_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_DISCONNECTED** = ``0``

MultiplayerPeer отключен.

.. _class_MultiplayerPeer_constant_CONNECTION_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_CONNECTING** = ``1``

В данный момент MultiplayerPeer подключается к серверу.

.. _class_MultiplayerPeer_constant_CONNECTION_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_CONNECTED** = ``2``

Этот MultiplayerPeer подключен.

.. rst-class:: classref-item-separator

----

.. _enum_MultiplayerPeer_TransferMode:

.. rst-class:: classref-enumeration

enum **TransferMode**: :ref:`🔗<enum_MultiplayerPeer_TransferMode>`

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_UNRELIABLE** = ``0``

Пакеты не подтверждаются, повторной отправки потерянных пакетов не производится. Пакеты могут прибывать в любом порядке. Потенциально быстрее, чем :ref:`TRANSFER_MODE_UNRELIABLE_ORDERED<class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED>`. Используйте для некритических данных и всегда учитывайте, имеет ли значение порядок.

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_UNRELIABLE_ORDERED** = ``1``

Пакеты не подтверждаются, повторные попытки отправки потерянных пакетов не предпринимаются. Пакеты принимаются в том порядке, в котором они были отправлены. Потенциально быстрее, чем :ref:`TRANSFER_MODE_RELIABLE<class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE>`. Используйте для некритических данных или данных, которые могут устареть, если будут получены с опозданием из-за попытки(й) повторной отправки, например, данные о движении и местоположении.

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_RELIABLE** = ``2``

Пакеты должны быть получены, и должны быть предприняты попытки повторной отправки, пока пакеты не будут подтверждены. Пакеты должны быть получены в том порядке, в котором они были отправлены. Самый надежный режим передачи, но потенциально самый медленный из-за накладных расходов. Используйте для критических данных, которые должны быть переданы и получены в определенном порядке, например, срабатывание способности или сообщение в чате. Тщательно обдумайте, действительно ли информация является критически важной, и используйте ее экономно.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST:

.. rst-class:: classref-constant

**TARGET_PEER_BROADCAST** = ``0`` :ref:`🔗<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>`

Пакеты отправляются всем подключенным одноранговым узлам.

.. _class_MultiplayerPeer_constant_TARGET_PEER_SERVER:

.. rst-class:: classref-constant

**TARGET_PEER_SERVER** = ``1`` :ref:`🔗<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>`

Пакеты отправляются удаленному узлу, выступающему в роли сервера.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_MultiplayerPeer_property_refuse_new_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **refuse_new_connections** = ``false`` :ref:`🔗<class_MultiplayerPeer_property_refuse_new_connections>`

.. rst-class:: classref-property-setget

- |void| **set_refuse_new_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_refusing_new_connections**\ (\ )

Если ``true``, этот **MultiplayerPeer** отклоняет новые подключения.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_property_transfer_channel:

.. rst-class:: classref-property

:ref:`int<class_int>` **transfer_channel** = ``0`` :ref:`🔗<class_MultiplayerPeer_property_transfer_channel>`

.. rst-class:: classref-property-setget

- |void| **set_transfer_channel**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_transfer_channel**\ (\ )

Канал, используемый для отправки пакетов. Многие сетевые API, такие как ENet и WebRTC, позволяют создавать несколько независимых каналов, которые ведут себя, в некотором роде, как отдельные соединения. Это означает, что надежные данные будут блокировать только доставку других пакетов по этому каналу, а упорядочивание будет осуществляться только в отношении канала, по которому отправляется пакет. Использование разных каналов для отправки **различных и независимых** обновлений состояния является распространенным способом оптимизации использования сети и уменьшения задержки в динамичных играх.

\ **Примечание:** Канал по умолчанию (\ ``0``) фактически работает как 3 отдельных канала (по одному для каждого :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`), так что :ref:`TRANSFER_MODE_RELIABLE<class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE>` и :ref:`TRANSFER_MODE_UNRELIABLE_ORDERED<class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED>` по умолчанию не взаимодействуют друг с другом. Обратитесь к документации конкретного сетевого API (например, ENet или WebRTC), чтобы узнать, как правильно настроить каналы.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_property_transfer_mode:

.. rst-class:: classref-property

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **transfer_mode** = ``2`` :ref:`🔗<class_MultiplayerPeer_property_transfer_mode>`

.. rst-class:: classref-property-setget

- |void| **set_transfer_mode**\ (\ value\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ )
- :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **get_transfer_mode**\ (\ )

Способ отправки пакетов целевому пиру. См. метод :ref:`set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_MultiplayerPeer_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_MultiplayerPeer_method_close>`

Немедленно закрыть многопользовательский пир, вернувшись в состояние :ref:`CONNECTION_DISCONNECTED<class_MultiplayerPeer_constant_CONNECTION_DISCONNECTED>`. Подключенные пиры будут отключены без передачи :ref:`peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_disconnect_peer:

.. rst-class:: classref-method

|void| **disconnect_peer**\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_MultiplayerPeer_method_disconnect_peer>`

Отключает указанный ``peer`` от этого хоста. Если ``force`` равен ``true``, то сигнал :ref:`peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>` не будет отправлен для этого пира.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_generate_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **generate_unique_id**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_generate_unique_id>`

Возвращает случайно сгенерированное целое число, которое можно использовать в качестве уникального идентификатора сети.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_connection_status:

.. rst-class:: classref-method

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **get_connection_status**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_connection_status>`

Возвращает текущее состояние соединения.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_channel**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_channel>`

Возвращает канал, по которому был получен следующий доступный пакет. См. :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **get_packet_mode**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_mode>`

Возвращает режим передачи, который удаленный узел использовал для отправки следующего доступного пакета. См. :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_peer:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_peer**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_peer>`

Возвращает идентификатор **MultiplayerPeer**, отправившего следующий доступный пакет. См. :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unique_id**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_unique_id>`

Возвращает идентификатор этого **MultiplayerPeer**.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_is_server_relay_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server_relay_supported**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_is_server_relay_supported>`

Возвращает ``true``, если сервер может действовать как ретранслятор в текущей конфигурации. То есть, если более высокий уровень :ref:`MultiplayerAPI<class_MultiplayerAPI>` должен уведомлять подключенных клиентов о других пирах и реализовывать протокол ретрансляции, чтобы разрешить связь между ними.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_MultiplayerPeer_method_poll>`

Ожидает до 1 секунды для получения нового сетевого события.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_set_target_peer:

.. rst-class:: classref-method

|void| **set_target_peer**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_method_set_target_peer>`

Устанавливает пир, которому будут отправляться пакеты.

\ ``id`` может быть одним из: :ref:`TARGET_PEER_BROADCAST<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>` для отправки всем подключенным пирам, :ref:`TARGET_PEER_SERVER<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>` для отправки пиру, выступающему в качестве сервера, допустимый идентификатор пира для отправки этому конкретному пиру, отрицательный идентификатор пира для отправки всем пирам, кроме этого. По умолчанию целевой пир — :ref:`TARGET_PEER_BROADCAST<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
