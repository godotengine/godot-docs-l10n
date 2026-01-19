:github_url: hide

.. _class_WebRTCPeerConnection:

WebRTCPeerConnection
====================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>`

Інтерфейс до підключення WebRTC.

.. rst-class:: classref-introduction-group

Опис
--------

З’єднання WebRTC між локальним комп’ютером та віддаленим вузлом. Забезпечує інтерфейс для підключення, підтримки та моніторингу з’єднання.

Налаштування з’єднання WebRTC між двома вузлами може здатися непростим завданням, але його можна розбити на 3 основні кроки:

- Вузол, який хоче ініціювати з’єднання (відтепер ``A``), створює пропозицію та надсилає її іншому вузлу (відтепер ``B``).

- ``B`` отримує пропозицію, генерує відповідь та надсилає її ``A``.

- ``A`` та ``B`` потім генерують та обмінюються кандидатами ICE один з одним.

Після цих кроків з’єднання має бути встановлено. Зверніться до пов’язаних навчальних посібників для отримання детальної інформації.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Документація WebRTC <../tutorials/networking/webrtc>`

- :doc:`Мультиплеєр високого рівня <../tutorials/networking/high_level_multiplayer>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`add_ice_candidate<class_WebRTCPeerConnection_method_add_ice_candidate>`\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`close<class_WebRTCPeerConnection_method_close>`\ (\ )                                                                                                                                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`                 | :ref:`create_data_channel<class_WebRTCPeerConnection_method_create_data_channel>`\ (\ label\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ )            |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`create_offer<class_WebRTCPeerConnection_method_create_offer>`\ (\ )                                                                                                                   |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` | :ref:`get_connection_state<class_WebRTCPeerConnection_method_get_connection_state>`\ (\ ) |const|                                                                                           |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>`   | :ref:`get_gathering_state<class_WebRTCPeerConnection_method_get_gathering_state>`\ (\ ) |const|                                                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>`   | :ref:`get_signaling_state<class_WebRTCPeerConnection_method_get_signaling_state>`\ (\ ) |const|                                                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`initialize<class_WebRTCPeerConnection_method_initialize>`\ (\ configuration\: :ref:`Dictionary<class_Dictionary>` = {}\ )                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`poll<class_WebRTCPeerConnection_method_poll>`\ (\ )                                                                                                                                   |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_default_extension<class_WebRTCPeerConnection_method_set_default_extension>`\ (\ extension_class\: :ref:`StringName<class_StringName>`\ ) |static|                                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`set_local_description<class_WebRTCPeerConnection_method_set_local_description>`\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ )                          |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`set_remote_description<class_WebRTCPeerConnection_method_set_remote_description>`\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ )                        |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_WebRTCPeerConnection_signal_data_channel_received:

.. rst-class:: classref-signal

**data_channel_received**\ (\ channel\: :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_data_channel_received>`

Випромінюється, коли надходить новий внутрішньосмуговий канал, тобто коли канал було створено з ``negotiated: false`` (за замовчуванням).

Об’єкт буде екземпляром :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`. Ви повинні зберегти посилання на нього, інакше воно буде закрито автоматично. Перегляньте :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_ice_candidate_created:

.. rst-class:: classref-signal

**ice_candidate_created**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_ice_candidate_created>`

При створенні нового кандидата ICE. Три параметри повинні бути передані на віддалений одноліток над сигналізацією сервера.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_session_description_created:

.. rst-class:: classref-signal

**session_description_created**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_session_description_created>`

Викликається після успішного виклику методу :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>` або методу :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>` (коли генерується відповідь). Параметри призначені для передачі методу :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>` цього об'єкта та надсилання віддаленому вузлу через сигнальний сервер.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_WebRTCPeerConnection_ConnectionState:

.. rst-class:: classref-enumeration

enum **ConnectionState**: :ref:`🔗<enum_WebRTCPeerConnection_ConnectionState>`

.. _class_WebRTCPeerConnection_constant_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_NEW** = ``0``

З'єднання є новими, каналами даних і пропозицією може бути створений в цьому стані.

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTING** = ``1``

Компанія «Експо» не з'єднує, ICE не вдається.

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTED** = ``2``

Підключаються всі транспортні засоби ICE.

.. _class_WebRTCPeerConnection_constant_STATE_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_DISCONNECTED** = ``3``

Принаймні один ICE-транспорт відключений.

.. _class_WebRTCPeerConnection_constant_STATE_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_FAILED** = ``4``

Один або інший вантажний транспорт не вдалося.

.. _class_WebRTCPeerConnection_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CLOSED** = ``5``

З'єднання з'єднання закрито (після виклику ``методиком близько``.

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_GatheringState:

.. rst-class:: classref-enumeration

enum **GatheringState**: :ref:`🔗<enum_WebRTCPeerConnection_GatheringState>`

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_NEW** = ``0``

У зв'язку з тим, що зв'язок був створений і не зробив жодного зв'язку.

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_GATHERING:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_GATHERING** = ``1``

У процесі збору кандидатів на з'єднання є агент ICE.

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_COMPLETE:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_COMPLETE** = ``2``

Збір кандидатів на ICE агент. Якщо щось відбувається, що вимагає збору нових кандидатів, таких як новий інтерфейс, який додається або додавання нового сервера ICE, держава буде перевернутися до збору кандидатів.

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_SignalingState:

.. rst-class:: classref-enumeration

enum **SignalingState**: :ref:`🔗<enum_WebRTCPeerConnection_SignalingState>`

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_STABLE:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_STABLE** = ``0``

Не існує постійного обміну пропозицією та відповіді на метро. Це може означати, що **WebRTCPeerConnection** є новим (:ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`) або що переговори є повним і з'єднання було створено (:ref:`STATE_CONNECTED<class_WebRTCPeerConnection_constant_STATE_CONNECTED>`).

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_OFFER** = ``1``

Локальний вузол викликав метод :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`, передавши SDP, що представляє пропозицію (зазвичай створену викликом методу ``create_offer``), і пропозицію було успішно застосовано.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_OFFER** = ``2``

Віддалений одноліток створив пропозицію і використовував сервер сигналізації, щоб доставити його на локальний одноліток, який встановлює пропозицію як віддалений опис за допомогою виклику :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>`.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_PRANSWER** = ``3``

Надана послуга дистанційного з’єднання, яка була створена і надана за допомогою виклику :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`. Ця надана відповідь описує підтримувані медіа формати і так далі, але не може мати повного набору кандидатів ICE. Далі кандидатів будуть доставлені окремо.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_PRANSWER** = ``4``

Відповідна відповідь була отримана і успішно застосована у відповідь на пропозицію раніше відправлено і встановлене за телефоном :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_CLOSED** = ``5``

Закрило **WebRTCPeerConnection**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_WebRTCPeerConnection_method_add_ice_candidate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_ice_candidate**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_add_ice_candidate>`

Додавання кандидата льоду, створеного дистанційним атом (і отримано на сервері сигналізації). Подивитися :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_close>`

Закрийте підключення та всі канали даних, пов'язані з ним.

\ **Примітка:** Ви не можете повторно використовувати цей об'єкт для нового підключення, якщо ви зателефонуєте :ref:`initialize()<class_WebRTCPeerConnection_method_initialize>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_data_channel:

.. rst-class:: classref-method

:ref:`WebRTCDataChannel<class_WebRTCDataChannel>` **create_data_channel**\ (\ label\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_data_channel>`

Повертає новий :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` (або ``null`` у разі невдачі) із заданим ``label`` та опціонально налаштованим через словник ``options``. Цей метод можна викликати лише тоді, коли з'єднання перебуває в стані :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`.

Існує два способи створити робочий канал даних: або викликати :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>` лише на одному з вузлів та прослуховувати :ref:`data_channel_received<class_WebRTCPeerConnection_signal_data_channel_received>` на іншому, або викликати :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>` на обох вузлах, з однаковими значеннями, та опцією ``"negotiated"``, встановленою на ``true``.

Дійсні ``options``:

::

    {
        "negotiated": true, # Якщо встановлено значення true (за замовчуванням вимкнено), це означає, що канал узгоджується поза діапазоном. Також потрібно встановити "id". "data_channel_received" не буде викликано.
        "id": 1, # Коли "negotiated" має значення true, це значення також має бути встановлене на однакове значення на обох вузлах.

        # Можна вказати лише один з maxRetransmits та maxPacketLifeTime, а не обидва одночасно. Вони роблять канал ненадійним (але також кращим у режимі реального часу).
        "maxRetransmits": 1, # Вкажіть максимальну кількість спроб повторної передачі пакетів, яку зробить вузол, якщо вони не будуть підтверджені.
        "maxPacketLifeTime": 100, # Вкажіть максимальний час (у мілісекундах), після якого повторна передача непідтверджених пакетів може бути припинена.
        "ordered": true, # У ненадійному режимі (тобто встановлено значення "maxRetransmits" або "maxPacketLifetime"), значення "ordered" (за замовчуванням true) вказує, чи потрібно примусово встановлювати порядок пакетів.

        "protocol": "my-custom-protocol", # Рядок спеціального підпротоколу для цього каналу.
    }

\ **Примітка:** Ви повинні зберегти посилання на канали, створені таким чином, інакше їх буде закрито.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_offer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_offer**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_offer>`

Створює нову SDP пропозицію, щоб запустити підключення WebRTC з віддаленим літцем. Принаймні один :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` повинен бути створений перед тим, як викликати цей метод.

Якщо ця функція повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, :ref:`Session_description_created<class_WebRTCPeerConnection_signal_Session_description_created>` буде викликано, коли сеанс готовий надсилати.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_connection_state:

.. rst-class:: classref-method

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **get_connection_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_connection_state>`

Повертає стан з'єднання.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_gathering_state:

.. rst-class:: classref-method

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **get_gathering_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_gathering_state>`

Повернення ICE :ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` з'єднання. Це дозволяє виявляти, наприклад, при отриманні кандидатів ICE.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_signaling_state:

.. rst-class:: classref-method

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **get_signaling_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_signaling_state>`

Повертає стан сигналізації на локальному кінці з'єднання при підключенні або відключенні на інший одноліток.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_initialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **initialize**\ (\ configuration\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_initialize>`

Повторно ініціалізуйте це однорангове з’єднання, закриваючи будь-яке раніше активне з’єднання та повертаючись до стану :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`. Для налаштування однорангового з’єднання можна передати словник параметрів ``configuration``. 

Дійсні параметри ``configuration``: 

::
 
    {
        "iceServers": [ 
            { 
                "urls": [ "stun:stun.example.com:3478" ], # Один або кілька серверів STUN. 
            }, 
            { 
                "urls": [ "turn:turn.example.com:3478" ], # Один або більше серверів TURN. 
                "username": "a_username", # Додаткове ім'я користувача для сервера TURN. 
                "credential": "a_password", # Додатковий пароль для сервера TURN. 
            } 
        ] 
    }

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_poll>`

Викликайте цей метод часто (наприклад, у :ref:`Node._process()<class_Node_private_method__process>` або :ref:`Node._physics_process()<class_Node_private_method__physics_process>`), щоб правильно отримувати сигнали.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_default_extension:

.. rst-class:: classref-method

|void| **set_default_extension**\ (\ extension_class\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_WebRTCPeerConnection_method_set_default_extension>`

Налаштування ``розширення_class`` як за замовчуванням :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>` повертається при створенні нового **WebRTCPeerConnection**.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_local_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_local_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_local_description>`

Встановлює SDP-опис локального вузла. Його слід викликати у відповідь на :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>`.

Після виклику цієї функції вузол почне видавати :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>` (якщо не буде повернуто :ref:`Error<enum_@GlobalScope_Error>`, відмінний від :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_remote_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_remote_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_remote_description>`

Встановлює SDP опис пульта дистанційного керування. Це має бути викликано значеннями, що створюються віддаленими однолітками і отримані над сервером сигналізації.

Якщо ``type`` is ``"offer"`` одноліток випромінює :ref:`Session_description_created<class_WebRTCPeerConnection_signal_Session_description_created>` з відповідною відповідь.

Якщо ``type`` is ``"answer""`` одноліток почне випромінювати :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
