:github_url: hide

.. _class_WebRTCDataChannel:

WebRTCDataChannel
=================

**Наследует:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`WebRTCDataChannelExtension<class_WebRTCDataChannelExtension>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------+-------+
   | :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` | :ref:`write_mode<class_WebRTCDataChannel_property_write_mode>` | ``1`` |
   +----------------------------------------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методы
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

Перечисления
------------------------

.. _enum_WebRTCDataChannel_WriteMode:

.. rst-class:: classref-enumeration

enum **WriteMode**: :ref:`🔗<enum_WebRTCDataChannel_WriteMode>`

.. _class_WebRTCDataChannel_constant_WRITE_MODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **WRITE_MODE_TEXT** = ``0``

Сообщает каналу отправлять данные по этому каналу как текст. Внешний пир (не Godot) получит это как строку.

.. _class_WebRTCDataChannel_constant_WRITE_MODE_BINARY:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **WRITE_MODE_BINARY** = ``1``

Сообщает каналу отправлять данные по этому каналу в двоичном виде. Внешний пир (не Godot) получит это как массив буфера или blob.

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCDataChannel_ChannelState:

.. rst-class:: classref-enumeration

enum **ChannelState**: :ref:`🔗<enum_WebRTCDataChannel_ChannelState>`

.. _class_WebRTCDataChannel_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CONNECTING** = ``0``

Канал создан, но он все еще пытается подключиться.

.. _class_WebRTCDataChannel_constant_STATE_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_OPEN** = ``1``

В настоящее время канал открыт, и по нему могут передаваться данные.

.. _class_WebRTCDataChannel_constant_STATE_CLOSING:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CLOSING** = ``2``

Канал закрывается, новые сообщения приниматься не будут, но те, которые уже находятся в очереди, будут очищены.

.. _class_WebRTCDataChannel_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CLOSED** = ``3``

Канал был закрыт или соединение не удалось.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_WebRTCDataChannel_property_write_mode:

.. rst-class:: classref-property

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **write_mode** = ``1`` :ref:`🔗<class_WebRTCDataChannel_property_write_mode>`

.. rst-class:: classref-property-setget

- |void| **set_write_mode**\ (\ value\: :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>`\ )
- :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **get_write_mode**\ (\ )

Режим передачи, используемый при отправке исходящего пакета. Текстовый или двоичный.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_WebRTCDataChannel_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCDataChannel_method_close>`

Закрывает этот канал данных, уведомляя другого однорангового узла.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_buffered_amount:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_buffered_amount**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_buffered_amount>`

Возвращает количество байтов, находящихся в очереди на отправку по этому каналу.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_id>`

Возвращает ID, назначенный этому каналу во время создания (или автоматически назначенный во время согласования).

Если канал не согласован вне диапазона, ID будет доступен только после установления соединения (до этого момента будет возвращать ``65535``).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_label**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_label>`

Возвращает метку (label), назначенную данному каналу при создании.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_max_packet_life_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_packet_life_time**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_max_packet_life_time>`

Возвращает значение ``maxPacketLifeTime``, назначенное этому каналу при создании.

Будет ``65535``, если не указано.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_max_retransmits:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_retransmits**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_max_retransmits>`

Возвращает значение ``maxRetransmits``, назначенное этому каналу при создании.

Будет ``65535``, если не указано.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_protocol**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_protocol>`

Возвращает подпротокол, назначенный этому каналу во время создания. Пустая строка, если не указано.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_ready_state:

.. rst-class:: classref-method

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **get_ready_state**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_ready_state>`

Возвращает текущее состояние этого канала.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_is_negotiated:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_negotiated**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_is_negotiated>`

Возвращает ``true``, если этот канал был создан с использованием внеполосной конфигурации.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_is_ordered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_ordered**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_is_ordered>`

Возвращает ``true``, если этот канал был создан с включенным упорядочиванием (по умолчанию).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCDataChannel_method_poll>`

Зарезервировано, в данный момент не используется.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_was_string_packet:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **was_string_packet**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_was_string_packet>`

Возвращает ``true``, если последний полученный пакет был передан как текст. См. :ref:`write_mode<class_WebRTCDataChannel_property_write_mode>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
