:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerPeerExtension:

MultiplayerPeerExtension
========================

**繼承：** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

可以通過 GDExtension 繼承，從而實作自訂多人 API 網路層的類。

.. rst-class:: classref-introduction-group

說明
----

該類旨在被一個 GDExtension 外掛程式繼承，以實作多人遊戲 API（例如 WebRTC）的自定義網路層。下面的所有方法都\ **必須**\ 被實作，才能實作一個有效的自訂多人遊戲實作。另請參閱 :ref:`MultiplayerAPI<class_MultiplayerAPI>`\ 。

.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

.. _class_MultiplayerPeerExtension_private_method__close:

.. rst-class:: classref-method

|void| **_close**\ (\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__close>`

該多人遊戲對等體應當立即關閉時呼叫（見 :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__disconnect_peer:

.. rst-class:: classref-method

|void| **_disconnect_peer**\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__disconnect_peer>`

Called when the connected ``peer`` should be forcibly disconnected (see :ref:`MultiplayerPeer.disconnect_peer()<class_MultiplayerPeer_method_disconnect_peer>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_available_packet_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_available_packet_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_available_packet_count>`

:ref:`MultiplayerAPI<class_MultiplayerAPI>` 對可用的封包數量發出內部請求時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_connection_status:

.. rst-class:: classref-method

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **_get_connection_status**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_connection_status>`

:ref:`MultiplayerAPI<class_MultiplayerAPI>` 請求連接狀態時呼叫（見 :ref:`MultiplayerPeer.get_connection_status()<class_MultiplayerPeer_method_get_connection_status>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_max_packet_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_max_packet_size**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_max_packet_size>`

:ref:`MultiplayerAPI<class_MultiplayerAPI>` 請求最大允許的封包大小（單位為位元組）時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_get_packet**\ (\ r_buffer\: ``const uint8_t **``, r_buffer_size\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet>`

:ref:`MultiplayerAPI<class_MultiplayerAPI>` 需要接收一個封包時呼叫，\ ``r_buffer_size`` 是二進位緩衝區 ``r_buffer`` 的位元組大小。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_packet_channel**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_channel>`

返回接收下一個可用封包所使用的通道。請參閱 :ref:`MultiplayerPeer.get_packet_channel()<class_MultiplayerPeer_method_get_packet_channel>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **_get_packet_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_mode>`

Called to get the transfer mode the remote peer used to send the next available packet. See :ref:`MultiplayerPeer.get_packet_mode()<class_MultiplayerPeer_method_get_packet_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_peer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_packet_peer**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_peer>`

請求最近封包發送方 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的 ID 時呼叫（見 :ref:`MultiplayerPeer.get_packet_peer()<class_MultiplayerPeer_method_get_packet_peer>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_script:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_get_packet_script**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_script>`

如果 :ref:`_get_packet()<class_MultiplayerPeerExtension_private_method__get_packet>` 未實作，則在有封包需要被 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 接收時呼叫。使用 GDScript 擴充這個類時請使用。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_transfer_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_transfer_channel**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_transfer_channel>`

讀取 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 所使用的傳輸通道時呼叫（見 :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_transfer_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **_get_transfer_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_transfer_mode>`

讀取 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 所使用的傳輸模式時呼叫（見 :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_unique_id**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_unique_id>`

請求 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的唯一 ID 時呼叫（見 :ref:`MultiplayerPeer.get_unique_id()<class_MultiplayerPeer_method_get_unique_id>`\ ）。取值必須在 ``1`` 和 ``2147483647`` 之間。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_refusing_new_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_refusing_new_connections**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_refusing_new_connections>`

請求 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的“拒絕新連接”狀態時呼叫（見 :ref:`MultiplayerPeer.refuse_new_connections<class_MultiplayerPeer_property_refuse_new_connections>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_server**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_server>`

請求 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的“是否為伺服器”狀態時呼叫。見 :ref:`MultiplayerAPI.is_server()<class_MultiplayerAPI_method_is_server>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_server_relay_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_server_relay_supported**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_server_relay_supported>`

檢查伺服器在目前配置中是否能夠作為中繼時呼叫。見 :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__poll:

.. rst-class:: classref-method

|void| **_poll**\ (\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__poll>`

輪詢 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 時呼叫。見 :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__put_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_packet**\ (\ buffer\: ``const uint8_t*``, buffer_size\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__put_packet>`

Called when a packet needs to be sent by the :ref:`MultiplayerAPI<class_MultiplayerAPI>`, with ``buffer_size`` being the size of the binary ``buffer`` in bytes.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__put_packet_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_packet_script**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__put_packet_script>`

如果 :ref:`_put_packet()<class_MultiplayerPeerExtension_private_method__put_packet>` 未實作，則在需要讓 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 發送封包時調用。使用 GDScript 擴充這個類時請使用。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_refuse_new_connections:

.. rst-class:: classref-method

|void| **_set_refuse_new_connections**\ (\ enable\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_refuse_new_connections>`

設定 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 的“拒絕新連接”狀態時呼叫（見 :ref:`MultiplayerPeer.refuse_new_connections<class_MultiplayerPeer_property_refuse_new_connections>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_target_peer:

.. rst-class:: classref-method

|void| **_set_target_peer**\ (\ peer\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_target_peer>`

設定 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 所使用的目標對等體時呼叫（見 :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_transfer_channel:

.. rst-class:: classref-method

|void| **_set_transfer_channel**\ (\ channel\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_transfer_channel>`

設定 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 所使用的通道時呼叫（見 :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_transfer_mode:

.. rst-class:: classref-method

|void| **_set_transfer_mode**\ (\ mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_transfer_mode>`

設定 :ref:`MultiplayerPeer<class_MultiplayerPeer>` 所使用的傳輸模式時呼叫（見 :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
