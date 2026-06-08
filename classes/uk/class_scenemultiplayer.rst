:github_url: hide

.. _class_SceneMultiplayer:

SceneMultiplayer
================

**Успадковує:** :ref:`MultiplayerAPI<class_MultiplayerAPI>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Високорівнева реалізація багатокористувацького API.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас є впровадженням за замовчуванням :ref:`MultiplayerAPI<class_MultiplayerAPI>`, який використовується для забезпечення багатокористувацьких функціональних можливостей в Godot Engine.

Ця реалізація підтримує RPC через :ref:`Node.rpc()<class_Node_method_rpc>` і :ref:`Node.rpc_id()<class_Node_method_rpc_id>` і вимагає :ref:`MultiplayerAPI.rpc()<class_MultiplayerAPI_method_rpc>`, щоб бути передані :ref:`Node<class_Node>` (це не буде для інших типів об'єктів).

Ця реалізація додатково забезпечує повторення :ref:`SceneTree<class_SceneTree>` через :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` та :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` вузлів, а також ресурс :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`.

\ **Примітка:** Високий рівень багатокористувацького API протоколу – це деталь впровадження і не призначено використовуватися не-Godot серверів. Може змінитися без повідомлення.

\ **Примітка:** При експорті на Андроїд, переконайтеся, що ввімкнути ``INTERNET`` дозвіл на експорт Android перед експортуванням проекту або за допомогою однієї кнопки розгортання. Інакше, мережевий зв'язок будь-якого роду буде заблокований Android.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Сигнали
--------------

.. _class_SceneMultiplayer_signal_peer_authenticating:

.. rst-class:: classref-signal

**peer_authenticating**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authenticating>`

Викликається, коли :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` цього MultiplayerAPI підключається до нового вузла, і встановлено дійсний :ref:`auth_callback<class_SceneMultiplayer_property_auth_callback>`. У цьому випадку :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` не буде викликано, доки не буде викликано :ref:`complete_auth()<class_SceneMultiplayer_method_complete_auth>` із заданим вузлом ``id``. У цьому стані вузол не буде включено до списку, що повертається :ref:`MultiplayerAPI.get_peers()<class_MultiplayerAPI_method_get_peers>` (але до списку, що повертається :ref:`get_authenticating_peers()<class_SceneMultiplayer_method_get_authenticating_peers>`), і будуть надіслані або отримані лише дані автентифікації. Див. :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>` для надсилання даних автентифікації.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_authentication_failed:

.. rst-class:: classref-signal

**peer_authentication_failed**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_authentication_failed>`

Виникає, коли цей MultiplayerAPI :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` відключається від вузла, автентифікація якого ще не завершена. Див. :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_signal_peer_packet:

.. rst-class:: classref-signal

**peer_packet**\ (\ id\: :ref:`int<class_int>`, packet\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_signal_peer_packet>`

Викликається, коли цей MultiplayerAPI :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` отримує ``packet`` з користувацькими даними (див. :ref:`send_bytes()<class_SceneMultiplayer_method_send_bytes>`). ID — це ідентифікатор вузла, який надіслав пакет.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SceneMultiplayer_property_allow_object_decoding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_object_decoding** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_allow_object_decoding>`

.. rst-class:: classref-property-setget

- |void| **set_allow_object_decoding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_object_decoding_allowed**\ (\ )

Якщо ``true``, MultiplayerAPI дозволить кодування та декодування об'єкта під час RPC.

\ **Попередження:** Десеріалізовані об'єкти можуть містити код, який отримує виконану. Не використовуйте цей параметр, якщо послідовний об'єкт надходить від ненадійних джерел, щоб уникнути загрози безпеки, таких як віддалене виконання коду.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_callback:

.. rst-class:: classref-property

:ref:`Callable<class_Callable>` **auth_callback** = ``Callable()`` :ref:`🔗<class_SceneMultiplayer_property_auth_callback>`

.. rst-class:: classref-property-setget

- |void| **set_auth_callback**\ (\ value\: :ref:`Callable<class_Callable>`\ )
- :ref:`Callable<class_Callable>` **get_auth_callback**\ (\ )

Зворотний виклик для виконання під час отримання даних автентифікації, надісланих через :ref:`send_auth()<class_SceneMultiplayer_method_send_auth>`. Якщо поле :ref:`Callable<class_Callable>` порожнє (за замовчуванням), однорангові вузли будуть автоматично прийняті, щойно вони з’єднаються.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_auth_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **auth_timeout** = ``3.0`` :ref:`🔗<class_SceneMultiplayer_property_auth_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_auth_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auth_timeout**\ (\ )

Якщо встановлено значення більше за ``0.0``, максимальна тривалість у секундах однорангові вузли можуть залишатися в стані автентифікації, після чого автентифікація автоматично завершується помилкою. Перегляньте сигнали :ref:`peer_authenticating<class_SceneMultiplayer_signal_peer_authenticating>` і :ref:`peer_authentication_failed<class_SceneMultiplayer_signal_peer_authentication_failed>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_delta_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_delta_packet_size** = ``65535`` :ref:`🔗<class_SceneMultiplayer_property_max_delta_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_delta_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_delta_packet_size**\ (\ )

Максимальний розмір кожного пакета дельта. Вищі значення підвищують ймовірність отримання повноцінних оновлень в одному кадрі, але також шанс викликати мереживність (висока надійність, відключення). Див. :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_max_sync_packet_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_sync_packet_size** = ``1350`` :ref:`🔗<class_SceneMultiplayer_property_max_sync_packet_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_sync_packet_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_sync_packet_size**\ (\ )

Максимальний розмір кожного пакета синхронізації. Вищі значення підвищують ймовірність отримання повного оновлення в одному кадрі, але також шанс втрати пакету. Див. :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_refuse_new_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **refuse_new_connections** = ``false`` :ref:`🔗<class_SceneMultiplayer_property_refuse_new_connections>`

.. rst-class:: classref-property-setget

- |void| **set_refuse_new_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_refusing_new_connections**\ (\ )

Якщо ``true``, MultiplayerAPI :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` відмовляється від нових вхідних з'єднань.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_root_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_path** = ``NodePath("")`` :ref:`🔗<class_SceneMultiplayer_property_root_path>`

.. rst-class:: classref-property-setget

- |void| **set_root_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_path**\ (\ )

Кореневий шлях до застосування для РПК і реплікації. Замість абсолютного шляху, відносний шлях буде використовуватися для пошуку вершини, на якому повинна бути виконана РПК.

Цей ефект дозволяє мати різні гілки дерева сцени, які будуть керуватися різними MultiplayerAPI, що дозволяє використовувати як клієнт, так і сервер в одній сцені.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_property_server_relay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **server_relay** = ``true`` :ref:`🔗<class_SceneMultiplayer_property_server_relay>`

.. rst-class:: classref-property-setget

- |void| **set_server_relay_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_server_relay_enabled**\ (\ )

Увімкнути або вимкнути функцію сервера, яка повідомляє клієнтів інших підключень/відключень, а також відредагувати повідомлення між ними. Коли цей параметр є ``false``, клієнти не будуть автоматично повідомлені про інших однолітків і не зможуть надсилати їх пакети через сервер.

\ **Примітка:** Зміна цього параметра, а інші однолітки підключені можуть призвести до несподіваних поведінок.

\ **Примітка:** Підтримка цієї функції може залежати від поточного :ref:`MultiplayerPeer<class_MultiplayerPeer>` конфігурації. :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SceneMultiplayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_clear>`

Очищає поточний стан мережі SceneMultiplayer (Ви не повинні викликати це, якщо ви знаєте, що ви робите).

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_complete_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **complete_auth**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_complete_auth>`

Позначте автентифікаційний крок, як завершено для дистанційного з’єднання ``id``. :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` сигнал буде видана для цього однолітків, коли віддалена сторона також завершує автентифікацію. Повідомляємо про те, що з цього річного віку не допускаються.

У разі відключення однолітків перед завершенням автентифікації, або через мережевий номер, параметр :ref:`auth_timeout<class_SceneMultiplayer_property_auth_timeout>`, або ручний дзвінок :ref:`відключення_peer()<class_SceneMultiplayer_method_відключення_peer>`, сигнал :ref:`односторонній_authentication_failed<class_SceneMultiplayer_signal_односторонній_authentication_failed>` буде видано замість :ref:`MultiplayerAPI.peer_disconnected<class_MultiplayerAPI_signal_peer_disconnected>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_disconnect_peer:

.. rst-class:: classref-method

|void| **disconnect_peer**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneMultiplayer_method_disconnect_peer>`

Відключення однолітків, визначених ``id``, знімаючи його з переліку підключених однолітків, і закриваючи основне з'єднання з ним.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_get_authenticating_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_authenticating_peers**\ (\ ) :ref:`🔗<class_SceneMultiplayer_method_get_authenticating_peers>`

Повертає ідентифікатори однолітків, які намагаються автентифікувати з цим :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_auth:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_auth**\ (\ id\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_SceneMultiplayer_method_send_auth>`

Відправляє зазначені ``data`` до віддалених однолітків, визначених ``id`` в складі автентифікації повідомлення. Це може бути використана для автентифікації однолітків, а також контролю при :ref:`MultiplayerAPI.peer_connected<class_MultiplayerAPI_signal_peer_connected>` (і віддалений одноліток, прийнятий як один з підключених однолітків).

.. rst-class:: classref-item-separator

----

.. _class_SceneMultiplayer_method_send_bytes:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_bytes**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, id\: :ref:`int<class_int>` = 0, mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` = 2, channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneMultiplayer_method_send_bytes>`

Надійшла сира ``bytes`` до конкретного однолітника, визначеного ``id`` (див. :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`). За замовчуванням ID ``0``, тобто трансляція всіх однолітків.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
