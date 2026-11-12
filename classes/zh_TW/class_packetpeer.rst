:github_url: hide

.. _class_PacketPeer:

PacketPeer
==========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`ENetPacketPeer<class_ENetPacketPeer>`, :ref:`MultiplayerPeer<class_MultiplayerPeer>`, :ref:`PacketPeerDTLS<class_PacketPeerDTLS>`, :ref:`PacketPeerExtension<class_PacketPeerExtension>`, :ref:`PacketPeerStream<class_PacketPeerStream>`, :ref:`PacketPeerUDP<class_PacketPeerUDP>`, :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`, :ref:`WebSocketPeer<class_WebSocketPeer>`

基於包的協議的抽象和基底類別。

.. rst-class:: classref-introduction-group

說明
----

PacketPeer is an abstraction and base class for packet-based protocols (such as UDP). It provides an API for sending and receiving packets both as raw data or variables. This makes it easy to transfer data over a protocol, without having to encode data as low-level bytes or having to worry about network ordering.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------+-------------+
   | :ref:`int<class_int>` | :ref:`encode_buffer_max_size<class_PacketPeer_property_encode_buffer_max_size>` | ``8388608`` |
   +-----------------------+---------------------------------------------------------------------------------+-------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`get_available_packet_count<class_PacketPeer_method_get_available_packet_count>`\ (\ ) |const|                                        |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`get_packet<class_PacketPeer_method_get_packet>`\ (\ )                                                                                |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`get_packet_error<class_PacketPeer_method_get_packet_error>`\ (\ ) |const|                                                            |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                 | :ref:`get_var<class_PacketPeer_method_get_var>`\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ )                                     |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`put_packet<class_PacketPeer_method_put_packet>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                        |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`put_var<class_PacketPeer_method_put_var>`\ (\ var\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PacketPeer_property_encode_buffer_max_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **encode_buffer_max_size** = ``8388608`` :ref:`🔗<class_PacketPeer_property_encode_buffer_max_size>`

.. rst-class:: classref-property-setget

- |void| **set_encode_buffer_max_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_encode_buffer_max_size**\ (\ )

編碼 :ref:`Variant<class_Variant>` 時允許的最大緩衝區大小。提高此值以支援更大的記憶體分配。

\ :ref:`put_var()<class_PacketPeer_method_put_var>` 方法在堆疊上分配記憶體，使用的緩衝區將自動增長到最接近的二次方，以匹配 :ref:`Variant<class_Variant>` 的大小。如果 :ref:`Variant<class_Variant>` 大於 :ref:`encode_buffer_max_size<class_PacketPeer_property_encode_buffer_max_size>`\ ，則該方法將以 :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` 出錯。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PacketPeer_method_get_available_packet_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_packet_count**\ (\ ) |const| :ref:`🔗<class_PacketPeer_method_get_available_packet_count>`

返回環形緩衝區中目前可用的封包數。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_get_packet:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_packet**\ (\ ) :ref:`🔗<class_PacketPeer_method_get_packet>`

取得原始封包。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_get_packet_error:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **get_packet_error**\ (\ ) |const| :ref:`🔗<class_PacketPeer_method_get_packet_error>`

返回最後接收的封包的錯誤狀態（通過 :ref:`get_packet()<class_PacketPeer_method_get_packet>` 和 :ref:`get_var()<class_PacketPeer_method_get_var>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_get_var:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_var**\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PacketPeer_method_get_var>`

取得 Variant。如果 ``allow_objects`` 為 ``true``\ ，則允許解碼出對象。

在內部，這使用與 :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>` 方法相同的解碼機制。

\ **警告：**\ 反序列化出的物件可能包含會被執行的程式碼。如果序列化的物件來自不受信任的來源，請不要使用此選項，以避免潛在的安全威脅，例如遠端程式碼執行。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_put_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **put_packet**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_PacketPeer_method_put_packet>`

發送一個原始封包。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_put_var:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **put_var**\ (\ var\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PacketPeer_method_put_var>`

將 :ref:`Variant<class_Variant>` 作為封包發送。如果 ``full_objects`` 為 ``true``\ ，則允許將物件編碼（其中可能包含程式碼）。

在內部，這使用與 :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` 方法相同的編碼機制。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
