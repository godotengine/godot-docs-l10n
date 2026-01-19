:github_url: hide

.. _class_WebRTCPeerConnection:

WebRTCPeerConnection
====================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>`

Интерфейс для однорангового пир соединения WebRTC.

.. rst-class:: classref-introduction-group

Описание
----------------

Соединение WebRTC между локальным компьютером и удаленным узлом. Предоставляет интерфейс для подключения, поддержания и мониторинга соединения.

Настройка соединения WebRTC между двумя узлами может показаться непростой задачей, но её можно разбить на 3 основных шага:

- Узел, желающий инициировать соединение (далее ``A``), создает предложение и отправляет его другому узлу (далее ``B``).

- ``B`` получает предложение, генерирует ответ и отправляет его ``A``.

- Затем ``A`` и ``B`` генерируют и обмениваются ICE-кандидатами друг с другом.

После этих шагов соединение должно быть установлено. Подробности см. в связанных руководствах.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Документация WebRTC <../tutorials/networking/webrtc>`

- :doc:`Высокоуровневый мультиплеер <../tutorials/networking/high_level_multiplayer>`

.. rst-class:: classref-reftable-group

Методы
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

Сигналы
--------------

.. _class_WebRTCPeerConnection_signal_data_channel_received:

.. rst-class:: classref-signal

**data_channel_received**\ (\ channel\: :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_data_channel_received>`

Выдается при получении нового внутриполосного канала, т. е. когда канал был создан с ``negotiated: false`` (по умолчанию).

Объект будет экземпляром :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`. Вы должны сохранить ссылку на него, иначе он будет автоматически закрыт. См. :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_ice_candidate_created:

.. rst-class:: classref-signal

**ice_candidate_created**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_ice_candidate_created>`

Выдается при создании нового кандидата ICE. Три параметра предназначены для передачи удаленному пиру через сигнальный сервер.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_session_description_created:

.. rst-class:: classref-signal

**session_description_created**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_session_description_created>`

Выдается после успешного вызова :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>` или :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>` (когда он генерирует ответ). Параметры должны быть переданы :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>` на этом объекте и отправлены удаленному пиру через сервер сигнализации.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_WebRTCPeerConnection_ConnectionState:

.. rst-class:: classref-enumeration

enum **ConnectionState**: :ref:`🔗<enum_WebRTCPeerConnection_ConnectionState>`

.. _class_WebRTCPeerConnection_constant_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_NEW** = ``0``

Новое соединение , каналы передачи данных и предложение могут быть созданы в этом состоянии.

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTING** = ``1``

Узел подключается, ICE выполняется, ни один из транспортов не дал сбоев.

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTED** = ``2``

Узел подключен, все транспорты ICE подключены.

.. _class_WebRTCPeerConnection_constant_STATE_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_DISCONNECTED** = ``3``

По крайней мере один транспорт ICE отключен.

.. _class_WebRTCPeerConnection_constant_STATE_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_FAILED** = ``4``

Один или несколько транспортов ICE вышли из строя.

.. _class_WebRTCPeerConnection_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CLOSED** = ``5``

Соединение с одноранговым узлом закрыто (например, после вызова :ref:`close()<class_WebRTCPeerConnection_method_close>`).

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_GatheringState:

.. rst-class:: classref-enumeration

enum **GatheringState**: :ref:`🔗<enum_WebRTCPeerConnection_GatheringState>`

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_NEW** = ``0``

Соединение между одноранговыми узлами было только что создано и еще не выполняло никаких сетевых операций.

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_GATHERING:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_GATHERING** = ``1``

Агент ICE находится в процессе сбора кандидатов на подключение.

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_COMPLETE:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_COMPLETE** = ``2``

Агент ICE завершил сбор кандидатов. Если произойдет что-то, требующее сбора новых кандидатов, например, добавление нового интерфейса или добавление нового сервера ICE, состояние вернется к сбору, чтобы собрать этих кандидатов.

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_SignalingState:

.. rst-class:: classref-enumeration

enum **SignalingState**: :ref:`🔗<enum_WebRTCPeerConnection_SignalingState>`

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_STABLE:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_STABLE** = ``0``

Не происходит никакого текущего обмена предложением и ответом. Это может означать, что **WebRTCPeerConnection** является новым (:ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`) или что переговоры завершены и соединение установлено (:ref:`STATE_CONNECTED<class_WebRTCPeerConnection_constant_STATE_CONNECTED>`).

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_OFFER** = ``1``

Локальный узел вызвал :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`, передав SDP, представляющий предложение (обычно созданное путем вызова :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>`), и предложение было успешно применено.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_OFFER** = ``2``

Удаленный узел создал предложение и использовал сервер сигнализации для его доставки локальному узлу, который установил предложение в качестве удаленного описания, вызвав :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>`.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_PRANSWER** = ``3``

Предложение, отправленное удаленным пиром, было применено, и ответ был создан и применен путем вызова :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`. Этот предварительный ответ описывает поддерживаемые форматы медиа и т. д., но может не включать полный набор кандидатов ICE. Дополнительные кандидаты будут доставлены отдельно позже.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_PRANSWER** = ``4``

Предварительный ответ был получен и успешно применен в ответ на предложение, ранее отправленное и установленное путем вызова :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_CLOSED** = ``5``

``WebRTC PeerConnection`` было закрыто.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_WebRTCPeerConnection_method_add_ice_candidate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_ice_candidate**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_add_ice_candidate>`

Добавьте кандидата ice, сгенерированного удаленным пиром (и полученного через сервер сигнализации). См. :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_close>`

Закройте одноранговое соединение и все каналы данных, связанные с ним.

\ **Примечание:** Вы не сможете повторно использовать этот объект для нового соединения, если не вызовете :ref:`initialize()<class_WebRTCPeerConnection_method_initialize>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_data_channel:

.. rst-class:: classref-method

:ref:`WebRTCDataChannel<class_WebRTCDataChannel>` **create_data_channel**\ (\ label\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_data_channel>`

Возвращает новый :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` (или ``null`` при неудаче) с заданной ``label`` и опционально настроенным через словарь ``options``. Этот метод может быть вызван только тогда, когда соединение находится в состоянии :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`.

Существует два способа создания рабочего канала данных: либо вызвать :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>` только на одном из одноранговых узлов и прослушивать :ref:`data_channel_received<class_WebRTCPeerConnection_signal_data_channel_received>` на другом, либо вызвать :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>` на обоих одноранговых узлах с одинаковыми значениями и параметром ``"negotiated"``, установленным на ``true``. 

Допустимые ``options``:

::

    {
        "negotiated": true, # Если установлено значение true (по умолчанию отключено), это означает, что канал согласовывается вне диапазона. Также необходимо задать «id». «data_channel_received» не будет вызываться.
        "id": 1, # Если «negotiated» имеет значение true, это значение также должно быть установлено на одно и то же значение на обоих одноранговых узлах.

        # Можно указать только один из maxRetransmits и maxPacketLifeTime, но не оба. Они делают канал ненадежным (но также лучше в реальном времени).
        "maxRetransmits": 1, # Укажите максимальное количество попыток, которые одноранговый узел предпримет для повторной передачи пакетов, если они не подтверждены.
        "maxPacketLifeTime": 100, # Укажите максимальный промежуток времени до прекращения повторной передачи неподтвержденных пакетов (в миллисекундах).
        "ordered": true, # В ненадежном режиме (т. е. установлено либо «maxRetransmits», либо «maxPacketLifetime») «ordered» (по умолчанию true) указывает, следует ли принудительно применять упорядочивание пакетов.

        "protocol": "my-custom-protocol", # Пользовательская строка под-протокола для этого канала.
    }

\ **Примечание:** Вы должны сохранить ссылку на каналы, созданные таким образом, иначе они будут закрыты.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_offer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_offer**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_offer>`

Создает новое предложение SDP для запуска соединения WebRTC с удаленным пиром. Перед вызовом этого метода должен быть создан хотя бы один :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`. 

Если эта функция возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` будет вызван, когда сеанс будет готов к отправке.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_connection_state:

.. rst-class:: classref-method

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **get_connection_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_connection_state>`

Возвращает состояние соединения.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_gathering_state:

.. rst-class:: classref-method

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **get_gathering_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_gathering_state>`

Возвращает ICE :ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` соединения. Это позволяет определить, например, когда сбор кандидатов ICE завершен.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_signaling_state:

.. rst-class:: classref-method

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **get_signaling_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_signaling_state>`

Возвращает состояние сигнализации на локальном конце соединения при подключении или повторном подключении к другому одноранговому узлу.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_initialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **initialize**\ (\ configuration\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_initialize>`

Повторно инициализируйте это одноранговое соединение, закрыв все ранее активные соединения и вернувшись в состояние :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`. Для настройки однорангового соединения можно передать словарь параметров ``configuration``. 

Допустимые параметры ``configuration``:

::

    {
        "iceServers": [
            {
                "urls": [ "stun:stun.example.com:3478" ], # Один или несколько STUN-серверов.
            },
            {
                "urls": [ "turn:turn.example.com:3478" ], # Один или несколько STUN-серверов.
                "username": "a_username", # Необязательное имя пользователя для сервера TURN.
                "credential": "a_password", # Необязательное имя пользователя для сервера TURN.
            }
        ]
    }

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_poll>`

Чаще вызывайте этот метод (например, в :ref:`Node._process()<class_Node_private_method__process>` или :ref:`Node._physics_process()<class_Node_private_method__physics_process>`) для правильного приема сигналов.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_default_extension:

.. rst-class:: classref-method

|void| **set_default_extension**\ (\ extension_class\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_WebRTCPeerConnection_method_set_default_extension>`

Устанавливает ``extension_class`` в качестве :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>` по умолчанию, возвращаемого при создании нового **WebRTCPeerConnection**.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_local_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_local_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_local_description>`

Устанавливает описание SDP локального однорангового узла. Это должно быть вызвано в ответ на :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>`.

После вызова этой функции одноранговый узел начнет выдавать :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>` (если только не будет возвращено :ref:`Error<enum_@GlobalScope_Error>`, отличное от :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_remote_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_remote_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_remote_description>`

Устанавливает описание SDP удаленного пира. Это должно быть вызвано со значениями, сгенерированными удаленным пиром и полученными через сервер сигнализации.

Если ``type`` — ``"offer"``, то пир выдаст :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` с соответствующим ответом.

Если ``type`` — ``"answer"``, то пир начнет выдавать :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
