:github_url: hide

.. _class_WebRTCMultiplayerPeer:

WebRTCMultiplayerPeer
=====================

**Успадковує:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Простий інтерфейс для створення односторонньої сітки, що складається з :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, який сумісний з :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас побудує повну сіточку :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` (одне підключення для кожного однолітка), яке можна використовувати як :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

Ви можете додати кожен :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` через :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` або видалити їх через :ref:`видалення_peer()<class_WebRTCMultiplayerPeer_method_видалення_peer>`. Пірс необхідно додати в :ref:`WebRTCPeerConnection. STATE_NEW<class_WebRTCPeerConnection_constant_ STATE_NEW>` стан для створення відповідних каналів. Цей клас не створить пропозиції, не встановлюючи описи, він буде тільки обпилювати їх, і повідомляти з'єднання і відключення.

При створенні однолітків через :ref:`create_server()<class_WebRTCMultiplayerPeer_method_create_server>` або ``method[code`` створення_server] :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>` повернеться ``true``, що дозволяє проводити реле міжряддя та пакету при підтримці впровадження :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

\ **Примітка:** При експорті на Андроїд, переконайтеся, що ввімкнути ``INTERNET`` дозвіл на експорт Android перед експортуванням проекту або за допомогою однієї кнопки розгортання. Інакше, мережевий зв'язок будь-якого роду буде заблокований Android.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_peer<class_WebRTCMultiplayerPeer_method_add_peer>`\ (\ peer\: :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, peer_id\: :ref:`int<class_int>`, unreliable_lifetime\: :ref:`int<class_int>` = 1\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_client<class_WebRTCMultiplayerPeer_method_create_client>`\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ )                                                      |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_mesh<class_WebRTCMultiplayerPeer_method_create_mesh>`\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ )                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_server<class_WebRTCMultiplayerPeer_method_create_server>`\ (\ channels_config\: :ref:`Array<class_Array>` = []\ )                                                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`get_peer<class_WebRTCMultiplayerPeer_method_get_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`get_peers<class_WebRTCMultiplayerPeer_method_get_peers>`\ (\ )                                                                                                                                                 |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`has_peer<class_WebRTCMultiplayerPeer_method_has_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`remove_peer<class_WebRTCMultiplayerPeer_method_remove_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_WebRTCMultiplayerPeer_method_add_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_peer**\ (\ peer\: :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, peer_id\: :ref:`int<class_int>`, unreliable_lifetime\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_add_peer>`

Додайте нового піра до мережі з заданим параметром ``peer_id``. :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` має бути у стані :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`.

Буде створено три канали для надійного, ненадійного та впорядкованого транспортування. Значення ``unrelable_lifetime`` буде передано до опції ``"maxPacketLifetime"`` під час створення ненадійних та впорядкованих каналів (див. :ref:`WebRTCPeerConnection.create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_client>`

Ініціалізуйте багатокористувацький вузол як клієнт із заданим параметром ``peer_id`` (повинен бути між 2 та 2147483647). У цьому режимі слід викликати метод :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` лише один раз та з параметром ``peer_id`` з параметра ``1``. Цей режим дозволяє методу :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`, що дозволяє верхньому рівню :ref:`MultiplayerAPI<class_MultiplayerAPI>` виконувати обмін вузлами та ретрансляцію пакетів.

За потреби можна вказати масив ``channels_config`` з параметром :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`, який буде використовуватися для створення додаткових каналів (WebRTC підтримує лише один режим передачі на канал).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_mesh>`

Ініціалізація багатокористувацьких однолітків як сітчаста (тобто всі однолітки з'єднуються один з одним) з наведених ``peer_id`` (міститься між 1 і 2147483647).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_server>`

Іноземець мультиплеєра як сервер (з унікальним ідентифікатором ``1``). Цей режим дозволяє :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`, дозволяючи верхній :ref:`MultiplayerAPI<class_MultiplayerAPI>` шар, щоб виконати обмін і перекриття пакетів.

Ви можете додатково вказати ``каналів_config`` масив :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` який буде використовуватися для створення додаткових каналів (WebRTC тільки підтримує один режим передачі на канал).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peer>`

Повернутися до словникової репрезентації однолітків з даними ``du_id`` з трьома ключами. ``"connection"``, що містить :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` на цей одноліток, ``"канали"`` масив трьох :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`, і ``" підключено"``, що представляє, якщо з'єднання з'єднання підключено (всі три канали відкриті).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peers:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peers**\ (\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peers>`

Повертає словник, який ключі є однолітковими кришками та значеннями, що є репрезентацією, як у :ref:`get_peer()<class_WebRTCMultiplayerPeer_method_get_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_has_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_has_peer>`

Повертаємо ``true``, якщо надана ``аналог_id`` знаходиться на карті однолітків (не може бути підключений, хоча).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_remove_peer:

.. rst-class:: classref-method

|void| **remove_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_remove_peer>`

Видаліть дует з наданою ``peer_id`` з сітки. Якщо був підключений одноліток, і для цього був представлений :ref:`MultiplayerPeer.peer_connected<class_MultiplayerPeer_signal_peer_connected>`, то :ref:`MultiplayerPeer.peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
