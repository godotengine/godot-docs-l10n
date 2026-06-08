:github_url: hide

.. _class_WebRTCDataChannel:

WebRTCDataChannel
=================

**Успадковує:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`WebRTCDataChannelExtension<class_WebRTCDataChannelExtension>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------+-------+
   | :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` | :ref:`write_mode<class_WebRTCDataChannel_property_write_mode>` | ``1`` |
   +----------------------------------------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`close<class_WebRTCDataChannel_method_close>`\ (\ )                                               |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_buffered_amount<class_WebRTCDataChannel_method_get_buffered_amount>`\ (\ ) |const|           |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_id<class_WebRTCDataChannel_method_get_id>`\ (\ ) |const|                                     |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                              | :ref:`get_label<class_WebRTCDataChannel_method_get_label>`\ (\ ) |const|                               |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_max_packet_life_time<class_WebRTCDataChannel_method_get_max_packet_life_time>`\ (\ ) |const| |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_max_retransmits<class_WebRTCDataChannel_method_get_max_retransmits>`\ (\ ) |const|           |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                              | :ref:`get_protocol<class_WebRTCDataChannel_method_get_protocol>`\ (\ ) |const|                         |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` | :ref:`get_ready_state<class_WebRTCDataChannel_method_get_ready_state>`\ (\ ) |const|                   |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_negotiated<class_WebRTCDataChannel_method_is_negotiated>`\ (\ ) |const|                       |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_ordered<class_WebRTCDataChannel_method_is_ordered>`\ (\ ) |const|                             |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                    | :ref:`poll<class_WebRTCDataChannel_method_poll>`\ (\ )                                                 |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`was_string_packet<class_WebRTCDataChannel_method_was_string_packet>`\ (\ ) |const|               |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_WebRTCDataChannel_WriteMode:

.. rst-class:: classref-enumeration

enum **WriteMode**: :ref:`🔗<enum_WebRTCDataChannel_WriteMode>`

.. _class_WebRTCDataChannel_constant_WRITE_MODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **WRITE_MODE_TEXT** = ``0``

Повідомляє канал для надсилання даних через цей канал як текст. Зовнішній одноліток (no-Godot) отримає цей рядок.

.. _class_WebRTCDataChannel_constant_WRITE_MODE_BINARY:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **WRITE_MODE_BINARY** = ``1``

Скажіть канал для відправки даних через цей канал як бінарний. Зовнішній одноліток (no-Godot) отримає цей масивний буфер або баб.

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCDataChannel_ChannelState:

.. rst-class:: classref-enumeration

enum **ChannelState**: :ref:`🔗<enum_WebRTCDataChannel_ChannelState>`

.. _class_WebRTCDataChannel_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CONNECTING** = ``0``

Канал був створений, але він все ще намагається підключитися.

.. _class_WebRTCDataChannel_constant_STATE_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_OPEN** = ``1``

В даний час канал працює, і дані можуть протікати над ним.

.. _class_WebRTCDataChannel_constant_STATE_CLOSING:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CLOSING** = ``2``

Канал закритий, не будуть прийняті нові повідомлення, але ті, які вже в черзі будуть розпущені.

.. _class_WebRTCDataChannel_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CLOSED** = ``3``

Канал був закритий, або з'єднання не вдалося.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_WebRTCDataChannel_property_write_mode:

.. rst-class:: classref-property

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **write_mode** = ``1`` :ref:`🔗<class_WebRTCDataChannel_property_write_mode>`

.. rst-class:: classref-property-setget

- |void| **set_write_mode**\ (\ value\: :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>`\ )
- :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **get_write_mode**\ (\ )

Режим передачі для використання при відправці вихідного пакета. Ефіший текст або бінарний.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_WebRTCDataChannel_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCDataChannel_method_close>`

Закриває цей канал даних, повідомивши інший одноліток.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_buffered_amount:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_buffered_amount**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_buffered_amount>`

Повертаємо кількість байтів, які в даний час чергаються на цьому каналі.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_id>`

Повертає ідентифікатор, який присвоєно даним каналом при створенні (або автоматичним призначеним під час переговорів).

Якщо канал не веде переговори, ID буде доступний тільки після встановлення з'єднання (повернеться ``65535`` до тих пір, поки не буде.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_label**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_label>`

Повертає етикетку, призначену для цього каналу під час створення.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_max_packet_life_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_packet_life_time**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_max_packet_life_time>`

Повертає значення ``maxPacketLifeTime``, призначене для цього каналу під час створення.

Буде ``65535`` якщо не вказано.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_max_retransmits:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_retransmits**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_max_retransmits>`

Повертає значення ``maxRetransmits``, призначене для цього каналу під час створення.

Буде ``65535`` якщо не вказано.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_protocol**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_protocol>`

Повертає на цей канал під час створення. Порожня рядок, якщо не вказано.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_ready_state:

.. rst-class:: classref-method

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **get_ready_state**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_ready_state>`

Повертає поточний стан цього каналу.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_is_negotiated:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_negotiated**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_is_negotiated>`

Повертаємо ``true``, якщо цей канал був створений з зовнішньої конфігурації.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_is_ordered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_ordered**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_is_ordered>`

Повертає ``true``, якщо цей канал був створений з ввімкненим замовленням (default).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCDataChannel_method_poll>`

Заброньовані, але не використовуються зараз.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_was_string_packet:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **was_string_packet**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_was_string_packet>`

Повертаємо ``true``, якщо останній отриманий пакет був переведений в текст. Див. :ref:`write_mode<class_WebRTCDataChannel_property_write_mode>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
