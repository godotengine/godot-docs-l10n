:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerPeerExtension:

MultiplayerPeerExtension
========================

**Наследует:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Класс, который можно унаследовать для реализации пользовательских сетевых уровней многопользовательского API через GDExtension.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс предназначен для наследования от плагина GDExtension для реализации пользовательских сетевых слоев для API многопользовательского режима (например, WebRTC). Все методы ниже **должны** быть реализованы для рабочей реализации пользовательского многопользовательского режима. См. также :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_close<class_MultiplayerPeerExtension_private_method__close>`\ (\ ) |virtual| |required|                                                                                        |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_disconnect_peer<class_MultiplayerPeerExtension_private_method__disconnect_peer>`\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>`\ ) |virtual| |required|     |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_available_packet_count<class_MultiplayerPeerExtension_private_method__get_available_packet_count>`\ (\ ) |virtual| |required| |const|                                      |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` | :ref:`_get_connection_status<class_MultiplayerPeerExtension_private_method__get_connection_status>`\ (\ ) |virtual| |required| |const|                                                |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_max_packet_size<class_MultiplayerPeerExtension_private_method__get_max_packet_size>`\ (\ ) |virtual| |required| |const|                                                    |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                          | :ref:`_get_packet<class_MultiplayerPeerExtension_private_method__get_packet>`\ (\ r_buffer\: ``const uint8_t **``, r_buffer_size\: ``int32_t*``\ ) |virtual|                          |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_packet_channel<class_MultiplayerPeerExtension_private_method__get_packet_channel>`\ (\ ) |virtual| |required| |const|                                                      |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`         | :ref:`_get_packet_mode<class_MultiplayerPeerExtension_private_method__get_packet_mode>`\ (\ ) |virtual| |required| |const|                                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_packet_peer<class_MultiplayerPeerExtension_private_method__get_packet_peer>`\ (\ ) |virtual| |required| |const|                                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                  | :ref:`_get_packet_script<class_MultiplayerPeerExtension_private_method__get_packet_script>`\ (\ ) |virtual|                                                                           |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_transfer_channel<class_MultiplayerPeerExtension_private_method__get_transfer_channel>`\ (\ ) |virtual| |required| |const|                                                  |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`         | :ref:`_get_transfer_mode<class_MultiplayerPeerExtension_private_method__get_transfer_mode>`\ (\ ) |virtual| |required| |const|                                                        |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_unique_id<class_MultiplayerPeerExtension_private_method__get_unique_id>`\ (\ ) |virtual| |required| |const|                                                                |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`_is_refusing_new_connections<class_MultiplayerPeerExtension_private_method__is_refusing_new_connections>`\ (\ ) |virtual| |const|                                               |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`_is_server<class_MultiplayerPeerExtension_private_method__is_server>`\ (\ ) |virtual| |required| |const|                                                                        |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`_is_server_relay_supported<class_MultiplayerPeerExtension_private_method__is_server_relay_supported>`\ (\ ) |virtual| |const|                                                   |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_poll<class_MultiplayerPeerExtension_private_method__poll>`\ (\ ) |virtual| |required|                                                                                          |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                          | :ref:`_put_packet<class_MultiplayerPeerExtension_private_method__put_packet>`\ (\ buffer\: ``const uint8_t*``, buffer_size\: :ref:`int<class_int>`\ ) |virtual|                       |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                          | :ref:`_put_packet_script<class_MultiplayerPeerExtension_private_method__put_packet_script>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |virtual|                   |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_refuse_new_connections<class_MultiplayerPeerExtension_private_method__set_refuse_new_connections>`\ (\ enable\: :ref:`bool<class_bool>`\ ) |virtual|                       |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_target_peer<class_MultiplayerPeerExtension_private_method__set_target_peer>`\ (\ peer\: :ref:`int<class_int>`\ ) |virtual| |required|                                      |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_transfer_channel<class_MultiplayerPeerExtension_private_method__set_transfer_channel>`\ (\ channel\: :ref:`int<class_int>`\ ) |virtual| |required|                         |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_transfer_mode<class_MultiplayerPeerExtension_private_method__set_transfer_mode>`\ (\ mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ ) |virtual| |required| |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_MultiplayerPeerExtension_private_method__close:

.. rst-class:: classref-method

|void| **_close**\ (\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__close>`

Вызывается, когда многопользовательский пир должен быть немедленно закрыт (см. :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__disconnect_peer:

.. rst-class:: classref-method

|void| **_disconnect_peer**\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__disconnect_peer>`

Вызывается, когда подключенный ``peer`` должен быть принудительно отключен (см. :ref:`MultiplayerPeer.disconnect_peer()<class_MultiplayerPeer_method_disconnect_peer>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_available_packet_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_available_packet_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_available_packet_count>`

Вызывается, когда :ref:`MultiplayerAPI<class_MultiplayerAPI>` внутренне запрашивает доступное количество пакетов.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_connection_status:

.. rst-class:: classref-method

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **_get_connection_status**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_connection_status>`

Вызывается при запросе статуса соединения на :ref:`MultiplayerPeer<class_MultiplayerPeer>` (см. :ref:`MultiplayerPeer.get_connection_status()<class_MultiplayerPeer_method_get_connection_status>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_max_packet_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_max_packet_size**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_max_packet_size>`

Вызывается, когда :ref:`MultiplayerAPI<class_MultiplayerAPI>` запрашивает максимально допустимый размер пакета (в байтах).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_get_packet**\ (\ r_buffer\: ``const uint8_t **``, r_buffer_size\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet>`

Вызывается, когда :ref:`MultiplayerAPI<class_MultiplayerAPI>` необходимо получить пакет, при этом ``r_buffer_size`` представляет собой размер двоичного файла ``r_buffer`` в байтах.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_packet_channel**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_channel>`

Вызывается для получения канала, по которому был получен следующий доступный пакет. См. :ref:`MultiplayerPeer.get_packet_channel()<class_MultiplayerPeer_method_get_packet_channel>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **_get_packet_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_mode>`

Вызывается для получения режима передачи, который удаленный узел использовал для отправки следующего доступного пакета. См. :ref:`MultiplayerPeer.get_packet_mode()<class_MultiplayerPeer_method_get_packet_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_peer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_packet_peer**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_peer>`

Вызывается при запросе идентификатора :ref:`MultiplayerPeer<class_MultiplayerPeer>`, отправившего последний пакет (см. :ref:`MultiplayerPeer.get_packet_peer()<class_MultiplayerPeer_method_get_packet_peer>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_script:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_get_packet_script**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_script>`

Вызывается, когда пакет должен быть получен :ref:`MultiplayerAPI<class_MultiplayerAPI>`, если :ref:`_get_packet()<class_MultiplayerPeerExtension_private_method__get_packet>` не реализован. Используйте это при расширении этого класса через GDScript.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_transfer_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_transfer_channel**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_transfer_channel>`

Вызывается, когда используемый канал передачи считывается на этом :ref:`MultiplayerPeer<class_MultiplayerPeer>` (см. :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_transfer_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **_get_transfer_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_transfer_mode>`

Вызывается, когда используемый режим передачи считывается на этом :ref:`MultiplayerPeer<class_MultiplayerPeer>` (см. :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_unique_id**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_unique_id>`

Вызывается, когда запрашивается уникальный идентификатор этого :ref:`MultiplayerPeer<class_MultiplayerPeer>` (см. :ref:`MultiplayerPeer.get_unique_id()<class_MultiplayerPeer_method_get_unique_id>`). Значение должно быть между ``1`` и ``2147483647``.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_refusing_new_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_refusing_new_connections**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_refusing_new_connections>`

Вызывается, когда на этом :ref:`MultiplayerPeer<class_MultiplayerPeer>` запрашивается статус «отклонить новые подключения» (см. :ref:`MultiplayerPeer.refuse_new_connections<class_MultiplayerPeer_property_refuse_new_connections>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_server**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_server>`

Вызывается, когда запрашивается статус «is server» в :ref:`MultiplayerAPI<class_MultiplayerAPI>`. См. :ref:`MultiplayerAPI.is_server()<class_MultiplayerAPI_method_is_server>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_server_relay_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_server_relay_supported**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_server_relay_supported>`

Вызывается для проверки, может ли сервер работать как ретранслятор в текущей конфигурации. См. :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__poll:

.. rst-class:: classref-method

|void| **_poll**\ (\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__poll>`

Вызывается при опросе :ref:`MultiplayerAPI<class_MultiplayerAPI>`. См. :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__put_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_packet**\ (\ buffer\: ``const uint8_t*``, buffer_size\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__put_packet>`

Вызывается, когда необходимо отправить пакет через :ref:`MultiplayerAPI<class_MultiplayerAPI>`, при этом ``buffer_size`` — размер двоичного файла ``buffer`` в байтах.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__put_packet_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_packet_script**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__put_packet_script>`

Вызывается, когда пакет должен быть отправлен :ref:`MultiplayerAPI<class_MultiplayerAPI>`, если :ref:`_put_packet()<class_MultiplayerPeerExtension_private_method__put_packet>` не реализован. Используйте это при расширении этого класса через GDScript.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_refuse_new_connections:

.. rst-class:: classref-method

|void| **_set_refuse_new_connections**\ (\ enable\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_refuse_new_connections>`

Вызывается, когда на этом :ref:`MultiplayerPeer<class_MultiplayerPeer>` установлен статус «отклонять новые подключения» (см. :ref:`MultiplayerPeer.refuse_new_connections<class_MultiplayerPeer_property_refuse_new_connections>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_target_peer:

.. rst-class:: classref-method

|void| **_set_target_peer**\ (\ peer\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_target_peer>`

Вызывается, когда для этого :ref:`MultiplayerPeer<class_MultiplayerPeer>` задан целевой одноранговый узел (см. :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_transfer_channel:

.. rst-class:: classref-method

|void| **_set_transfer_channel**\ (\ channel\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_transfer_channel>`

Вызывается, когда для этого :ref:`MultiplayerPeer<class_MultiplayerPeer>` задан используемый канал (см. :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_transfer_mode:

.. rst-class:: classref-method

|void| **_set_transfer_mode**\ (\ mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_transfer_mode>`

Вызывается, когда на этом :ref:`MultiplayerPeer<class_MultiplayerPeer>` установлен режим передачи (см. :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
