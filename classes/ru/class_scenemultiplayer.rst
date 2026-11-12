:github_url: hide

.. _class_SceneMultiplayer:

SceneMultiplayer
================

**Наследует:** :ref:`MultiplayerAPI<class_MultiplayerAPI>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Реализация API многопользовательской игры высокого уровня.

.. rst-class:: classref-introduction-group

Описание
----------------

This class is the default implementation of :ref:`MultiplayerAPI<class_MultiplayerAPI>`, used to provide multiplayer functionalities in Godot Engine.

This implementation supports RPCs via :ref:`Node.rpc()<class_Node_method_rpc>` and :ref:`Node.rpc_id()<class_Node_method_rpc_id>` and requires :ref:`MultiplayerAPI.rpc()<class_MultiplayerAPI_method_rpc>` to be passed a :ref:`Node<class_Node>` (it will fail for other object types).

This implementation additionally provide :ref:`SceneTree<class_SceneTree>` replication via the :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` and :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` nodes, and the :ref:`SceneReplicationConfig<class_SceneReplicationConfig>` resource.

\ **Note:** The high-level multiplayer API protocol is an implementation detail and isn't meant to be used by non-Godot servers. It may change without notice.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`allow_object_decoding<class_SceneMultiplayer_property_allow_object_decoding>`   | ``false``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`Callable<class_Callable>` | :ref:`auth_callback<class_SceneMultiplayer_property_auth_callback>`                   | ``Callable()``   |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`auth_timeout<class_SceneMultiplayer_property_auth_timeout>`                     | ``3.0``          |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`max_delta_packet_size<class_SceneMultiplayer_property_max_delta_packet_size>`   | ``65535``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`max_sync_packet_size<class_SceneMultiplayer_property_max_sync_packet_size>`     | ``1350``         |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`refuse_new_connections<class_SceneMultiplayer_property_refuse_new_connections>` | ``false``        |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`root_path<class_SceneMultiplayer_property_root_path>`                           | ``NodePath("")`` |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`server_relay<class_SceneMultiplayer_property_server_relay>`                     | ``true``         |
   +---------------------------------+---------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_SceneMultiplayer_method_clear>`\ (\ )                                                                                                                                                                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`complete_auth<class_SceneMultiplayer_method_complete_auth>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`disconnect_peer<class_SceneMultiplayer_method_disconnect_peer>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_authenticating_peers<class_SceneMultiplayer_method_get_authenticating_peers>`\ (\ )                                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`send_auth<class_SceneMultiplayer_method_send_auth>`\ (\ id\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`send_bytes<class_SceneMultiplayer_method_send_bytes>`\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, id\: :ref:`int<class_int>` = 0, mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` = 2, channel\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_SceneMultiplayer_signal_peer_authenticating:

.. rst-class:: classref-signal

**peer_authenticating**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authenticating>`

Выдается, когда :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` этого MultiplayerAPI подключается к новому одноранговому узлу и установлен допустимый :ref:`auth_callback<class_SceneMultiplayer_property_auth_callback>`. В этом случае :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` не будет выдан, пока не будет вызван :ref:`complete_auth()<class_SceneMultiplayer_method_complete_auth>` с заданным одноранговым узлом ``id``. В этом состоянии одноранговый узел не будет включен в список, возвращаемый :ref:`MultiplayerAPI.get_peers()<class_MultiplayerAPI_method_get_peers>` (но в тот, который возвращается :ref:`get_authenticating_peers()<class_SceneMultiplayer_method_get_authenticating_peers>`), и будут отправлены или получены только данные аутентификации. См. :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>` для отправки данных аутентификации.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_authentication_failed:

.. rst-class:: classref-signal

**peer_authentication_failed**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authentication_failed>`

Выдается, когда :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` этого MultiplayerAPI отключается от однорангового узла, для которого аутентификация еще не завершена. См. :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_packet:

.. rst-class:: classref-signal

**peer_packet**\ (\ id\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_packet>`

Вызывается, когда :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` этого MultiplayerAPI получает ``packet`` с пользовательскими данными (см. :ref:`send_bytes()<class_SceneMultiplayer_method_send_bytes>`). ID — это идентификатор однорангового узла, отправившего пакет.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SceneMultiplayer_property_allow_object_decoding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_object_decoding** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_allow_object_decoding>`

.. rst-class:: classref-property-setget

- |void| **set_allow_object_decoding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_object_decoding_allowed**\ (\ )

Если ``true``, MultiplayerAPI разрешит кодирование и декодирование объекта во время RPC.

\ **Предупреждение:** Десериализованные объекты могут содержать код, который выполняется. Не используйте эту опцию, если сериализованный объект поступает из ненадежных источников, чтобы избежать потенциальной угрозы безопасности, такой как удаленное выполнение кода.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_callback:

.. rst-class:: classref-property

:ref:`Callable<class_Callable>` **auth_callback** = ``Callable()`` :ref:`🔗<class_SceneMultiplayer_property_auth_callback>`

.. rst-class:: classref-property-setget

- |void| **set_auth_callback**\ (\ value\: :ref:`Callable<class_Callable>`\ )
- :ref:`Callable<class_Callable>` **get_auth_callback**\ (\ )

Обратный вызов, выполняемый при получении данных аутентификации, отправленных через :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>`. Если :ref:`Callable<class_Callable>` пуст (по умолчанию), одноранговые узлы будут автоматически приняты, как только они подключатся.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **auth_timeout** = ``3.0`` :ref:`🔗<class_SceneMultiplayer_property_auth_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_auth_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auth_timeout**\ (\ )

Если установлено значение больше ``0.0``, максимальная продолжительность в секундах, в течение которой одноранговые узлы могут оставаться в состоянии аутентификации, после чего аутентификация автоматически провалится. См. сигналы :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>` и :ref:`peer_authentication_failed<class_SceneMultiplayer_signal_peer_authentication_failed>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_delta_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_delta_packet_size** = ``65535`` :ref:`🔗<class_SceneMultiplayer_property_max_delta_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_delta_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_delta_packet_size**\ (\ )

Максимальный размер каждого дельта-пакета. Более высокие значения увеличивают вероятность получения полных обновлений в одном кадре, но также и вероятность перегрузки сети (более высокая задержка, отключения). См. :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_sync_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_sync_packet_size** = ``1350`` :ref:`🔗<class_SceneMultiplayer_property_max_sync_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_sync_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_sync_packet_size**\ (\ )

Максимальный размер каждого пакета синхронизации. Более высокие значения увеличивают вероятность получения полных обновлений в одном кадре, но также и вероятность потери пакетов. См. :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_refuse_new_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **refuse_new_connections** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_refuse_new_connections>`

.. rst-class:: classref-property-setget

- |void| **set_refuse_new_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_refusing_new_connections**\ (\ )

Если ``true``, :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` MultiplayerAPI отклоняет новые входящие соединения.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_root_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_path** = ``NodePath("")`` :ref:`🔗<class_SceneMultiplayer_property_root_path>`

.. rst-class:: classref-property-setget

- |void| **set_root_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_path**\ (\ )

Корневой путь для использования для RPC-ов и репликации. Вместо абсолютного пути будет использоваться относительный путь для поиска узла, на котором должен быть выполнен RPC. 

Это фактически позволяет иметь разные ветви дерева сцены, которые будут управляться разными MultiplayerAPI, что позволяет, например, запускать как клиент, так и сервер в одной сцене.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_server_relay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **server_relay** = ``true`` :ref:`🔗<class_SceneMultiplayer_property_server_relay>`

.. rst-class:: classref-property-setget

- |void| **set_server_relay_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_server_relay_enabled**\ (\ )

Включить или отключить функцию сервера, которая уведомляет клиентов о подключении/отключении других пиров и ретранслирует сообщения между ними. Если эта опция ``false``, клиенты не будут автоматически уведомляться о других пирах и не смогут отправлять им пакеты через сервер.

\ **Примечание:** Изменение этой опции при подключенных других пирах может привести к неожиданному поведению.

\ **Примечание:** Поддержка этой функции может зависеть от текущей конфигурации :ref:`MultiplayerPeer<class_MultiplayerPeer>`. См. :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SceneMultiplayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_clear>`

Очищает текущее состояние сети SceneMultiplayer (вызывать эту функцию следует только в том случае, если вы точно знаете, что делаете).

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_complete_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **complete_auth**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_complete_auth>`

Отметьте шаг аутентификации как завершенный для удаленного однорангового узла, идентифицированного ``id``. Сигнал :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` будет отправлен для этого однорангового узла, как только удаленная сторона также завершит аутентификацию. Дальнейшие сообщения об аутентификации от этого однорангового узла не ожидаются.

Если одноранговый узел отключается до завершения аутентификации из-за проблем с сетью, истечения :ref:`auth_timeout<class_SceneMultiplayer_property_auth_timeout>` или ручного вызова :ref:`disconnect_peer()<class_SceneMultiplayer_method_disconnect_peer>`, вместо :ref:`MultiplayerAPI.peer_disconnected<class_MultiplayerAPI_signal_peer_disconnected>` будет отправлен сигнал :ref:`peer_authentication_failed<class_SceneMultiplayer_signal_peer_authentication_failed>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_disconnect_peer:

.. rst-class:: classref-method

|void| **disconnect_peer**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_disconnect_peer>`

Отключает одноранговый узел, идентифицированный ``id``, удаляя его из списка подключенных одноранговых узлов и закрывая базовое соединение с ним.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_get_authenticating_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_authenticating_peers**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_get_authenticating_peers>`

Возвращает идентификаторы участников, которые в данный момент пытаются пройти аутентификацию с помощью этого :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_auth**\ (\ id\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_method_send_auth>`

Отправляет указанные ``data`` удаленному пиру, идентифицированному ``id``, как часть сообщения аутентификации. Это может использоваться для аутентификации пиров и управления тем, когда выдается :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` (и удаленный пир принимается как один из подключенных пиров).

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_bytes:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_bytes**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, id\: :ref:`int<class_int>` = 0, mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` = 2, channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneMultiplayer_method_send_bytes>`

Отправляет заданные необработанные ``bytes`` определенному пиру, идентифицированному ``id`` (см. :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`). Идентификатор по умолчанию — ``0``, т.е. транслируется всем пирам.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
