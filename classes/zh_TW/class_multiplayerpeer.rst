:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerPeer:

MultiplayerPeer
===============

**繼承：** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`ENetMultiplayerPeer<class_ENetMultiplayerPeer>`, :ref:`MultiplayerPeerExtension<class_MultiplayerPeerExtension>`, :ref:`OfflineMultiplayerPeer<class_OfflineMultiplayerPeer>`, :ref:`WebRTCMultiplayerPeer<class_WebRTCMultiplayerPeer>`, :ref:`WebSocketMultiplayerPeer<class_WebSocketMultiplayerPeer>`

特化 :ref:`PacketPeer<class_PacketPeer>` 的抽象類別，\ :ref:`MultiplayerAPI<class_MultiplayerAPI>` 會用到。

.. rst-class:: classref-introduction-group

說明
----

Manages the connection with one or more remote peers acting as server or client and assigning unique IDs to each of them. See also :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

\ **Note:** The :ref:`MultiplayerAPI<class_MultiplayerAPI>` protocol is an implementation detail and isn't meant to be used by non-Godot servers. It may change without notice.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`進階多人遊戲 <../tutorials/networking/high_level_multiplayer>`

.. rst-class:: classref-reftable-group

屬性
----

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

方法
----

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

訊號
----

.. _class_MultiplayerPeer_signal_peer_connected:

.. rst-class:: classref-signal

**peer_connected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_signal_peer_connected>`

遠端對等體連接時發出。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_signal_peer_disconnected:

.. rst-class:: classref-signal

**peer_disconnected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_signal_peer_disconnected>`

遠端對等體斷開連接時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_MultiplayerPeer_ConnectionStatus:

.. rst-class:: classref-enumeration

enum **ConnectionStatus**: :ref:`🔗<enum_MultiplayerPeer_ConnectionStatus>`

.. _class_MultiplayerPeer_constant_CONNECTION_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_DISCONNECTED** = ``0``

該 MultiplayerPeer 已斷開連接。

.. _class_MultiplayerPeer_constant_CONNECTION_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_CONNECTING** = ``1``

該 MultiplayerPeer 正在連接到伺服器。

.. _class_MultiplayerPeer_constant_CONNECTION_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **CONNECTION_CONNECTED** = ``2``

該 MultiplayerPeer 已連接。

.. rst-class:: classref-item-separator

----

.. _enum_MultiplayerPeer_TransferMode:

.. rst-class:: classref-enumeration

enum **TransferMode**: :ref:`🔗<enum_MultiplayerPeer_TransferMode>`

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_UNRELIABLE** = ``0``

封包不被確認，對丟失的封包不進行重發嘗試。封包可以以任何順序到達。可能比 :ref:`TRANSFER_MODE_UNRELIABLE_ORDERED<class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED>` 快。用於非關鍵資料，並注意考慮順序是否重要。

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_UNRELIABLE_ORDERED** = ``1``

封包不被確認，對丟失的封包不進行重發嘗試。封包按其發送順序接收。有可能比 :ref:`TRANSFER_MODE_RELIABLE<class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE>` 快。用於非關鍵資料或由於重發嘗試而遲遲不能收到的資料，例如運動和位置資料。

.. _class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE:

.. rst-class:: classref-enumeration-constant

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **TRANSFER_MODE_RELIABLE** = ``2``

封包必須被接收，並應進行重發嘗試，直到封包被確認。封包必須按照其發送的順序接收。最可靠的傳輸模式，但由於開銷很大，可能是最慢的。用於必須按順序傳輸和到達的關鍵資料，例如觸發的能力或聊天資訊。仔細考慮資訊是否真的是關鍵的，並儘量少用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST:

.. rst-class:: classref-constant

**TARGET_PEER_BROADCAST** = ``0`` :ref:`🔗<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>`

將封包發送至所有已連接的對等體。

.. _class_MultiplayerPeer_constant_TARGET_PEER_SERVER:

.. rst-class:: classref-constant

**TARGET_PEER_SERVER** = ``1`` :ref:`🔗<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>`

將封包發送至作為伺服器的遠端對等體。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_MultiplayerPeer_property_refuse_new_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **refuse_new_connections** = ``false`` :ref:`🔗<class_MultiplayerPeer_property_refuse_new_connections>`

.. rst-class:: classref-property-setget

- |void| **set_refuse_new_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_refusing_new_connections**\ (\ )

如果為 ``true``\ ，則這個 **MultiplayerPeer** 拒絕新的連接。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_property_transfer_channel:

.. rst-class:: classref-property

:ref:`int<class_int>` **transfer_channel** = ``0`` :ref:`🔗<class_MultiplayerPeer_property_transfer_channel>`

.. rst-class:: classref-property-setget

- |void| **set_transfer_channel**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_transfer_channel**\ (\ )

用於發送封包的通道。許多網路 API，例如 ENet 和 WebRTC，允許建立多個獨立的通道，這些通道的行為在某種程度上類似於單獨的連接。這意味著可靠資料只會阻止該通道上其他封包的傳遞，並且排序將僅與正在發送封包的通道有關。使用不同的通道發送\ **不同且獨立的**\ 狀態更新，是最佳化快節奏遊戲的網路使用和減少延遲的常用方法。

\ **注意：**\ 預設通道（\ ``0``\ ）實際上作為 3 個獨立的通道工作（每種 :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` 一個），因此預設情況下，\ :ref:`TRANSFER_MODE_RELIABLE<class_MultiplayerPeer_constant_TRANSFER_MODE_RELIABLE>` 和 :ref:`TRANSFER_MODE_UNRELIABLE_ORDERED<class_MultiplayerPeer_constant_TRANSFER_MODE_UNRELIABLE_ORDERED>` 不會相互互動。請參閱特定的網路 API 文件（例如 ENet 或 WebRTC），以瞭解如何正確地設定通道。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_property_transfer_mode:

.. rst-class:: classref-property

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **transfer_mode** = ``2`` :ref:`🔗<class_MultiplayerPeer_property_transfer_mode>`

.. rst-class:: classref-property-setget

- |void| **set_transfer_mode**\ (\ value\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ )
- :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **get_transfer_mode**\ (\ )

向目標對等端發送封包的方式。見 :ref:`set_target_peer()<class_MultiplayerPeer_method_set_target_peer>` 方法。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_MultiplayerPeer_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_MultiplayerPeer_method_close>`

立即關閉多人對等體，返回到 :ref:`CONNECTION_DISCONNECTED<class_MultiplayerPeer_constant_CONNECTION_DISCONNECTED>` 狀態。已連接的對等體將被丟棄，不會發出 :ref:`peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_disconnect_peer:

.. rst-class:: classref-method

|void| **disconnect_peer**\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_MultiplayerPeer_method_disconnect_peer>`

斷開給定的 ``peer`` 與該主機的連接。如果 ``force`` 為 ``true``\ ，則不會為該對等體發出 :ref:`peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>` 訊號。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_generate_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **generate_unique_id**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_generate_unique_id>`

返回隨機生成的整數，可用作網路唯一 ID。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_connection_status:

.. rst-class:: classref-method

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **get_connection_status**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_connection_status>`

回傳連接的目前狀態。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_channel**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_channel>`

返回下一個可用封包被接收使用的通道。請參閱 :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **get_packet_mode**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_mode>`

回傳遠端對等端用於發送下一個可用封包的傳輸模式。請參閱 :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_packet_peer:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_peer**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_packet_peer>`

返回發送下一個可用封包的 **MultiplayerPeer** 的 ID。見 :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unique_id**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_get_unique_id>`

返回該 **MultiplayerPeer** 的 ID。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_is_server_relay_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server_relay_supported**\ (\ ) |const| :ref:`🔗<class_MultiplayerPeer_method_is_server_relay_supported>`

如果伺服器在目前設定中可以充當中繼者，則回傳 ``true``\ （也就是說，如果更進階別的 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 應該通知連接的用戶端有其他對等端，並實作一個中繼協議以允許它們之間的通信）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_MultiplayerPeer_method_poll>`

等待最多 1 秒以接收一個新的網路事件。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeer_method_set_target_peer:

.. rst-class:: classref-method

|void| **set_target_peer**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerPeer_method_set_target_peer>`

設定封包將被發送至的對等體。

\ ``id`` 可以是以下之一：\ :ref:`TARGET_PEER_BROADCAST<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>`\ ，以發送到所有連接的對等體；\ :ref:`TARGET_PEER_SERVER<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>`\ ，以發送到充當伺服器的對等體；一個有效的對等體 ID ，以發送到那個特定的對等體；一個負的對等體 ID，以發送到除那個對等體以外的所有對等體。預設情況下，目標對等體是 :ref:`TARGET_PEER_BROADCAST<class_MultiplayerPeer_constant_TARGET_PEER_BROADCAST>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
