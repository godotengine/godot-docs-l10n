:github_url: hide

.. _class_PacketPeer:

PacketPeer
==========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`ENetPacketPeer<class_ENetPacketPeer>`, :ref:`MultiplayerPeer<class_MultiplayerPeer>`, :ref:`PacketPeerDTLS<class_PacketPeerDTLS>`, :ref:`PacketPeerExtension<class_PacketPeerExtension>`, :ref:`PacketPeerStream<class_PacketPeerStream>`, :ref:`PacketPeerUDP<class_PacketPeerUDP>`, :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`, :ref:`WebSocketPeer<class_WebSocketPeer>`

基于包的协议的抽象和基类。

.. rst-class:: classref-introduction-group

描述
----

PacketPeer is an abstraction and base class for packet-based protocols (such as UDP). It provides an API for sending and receiving packets both as raw data or variables. This makes it easy to transfer data over a protocol, without having to encode data as low-level bytes or having to worry about network ordering.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_PacketPeer_property_encode_buffer_max_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **encode_buffer_max_size** = ``8388608`` :ref:`🔗<class_PacketPeer_property_encode_buffer_max_size>`

.. rst-class:: classref-property-setget

- |void| **set_encode_buffer_max_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_encode_buffer_max_size**\ (\ )

编码 :ref:`Variant<class_Variant>` 时允许的最大缓冲区大小。提高此值以支持更大的内存分配。

\ :ref:`put_var()<class_PacketPeer_method_put_var>` 方法在栈上分配内存，使用的缓冲区将自动增长到最接近的二次方，以匹配 :ref:`Variant<class_Variant>` 的大小。如果 :ref:`Variant<class_Variant>` 大于 :ref:`encode_buffer_max_size<class_PacketPeer_property_encode_buffer_max_size>`\ ，则该方法将以 :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` 出错。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PacketPeer_method_get_available_packet_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_packet_count**\ (\ ) |const| :ref:`🔗<class_PacketPeer_method_get_available_packet_count>`

返回环形缓冲区中当前可用的数据包数。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_get_packet:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_packet**\ (\ ) :ref:`🔗<class_PacketPeer_method_get_packet>`

获取原始数据包。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_get_packet_error:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **get_packet_error**\ (\ ) |const| :ref:`🔗<class_PacketPeer_method_get_packet_error>`

返回最后接收的数据包的错误状态（通过 :ref:`get_packet()<class_PacketPeer_method_get_packet>` 和 :ref:`get_var()<class_PacketPeer_method_get_var>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_get_var:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_var**\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PacketPeer_method_get_var>`

获取 Variant。如果 ``allow_objects`` 为 ``true``\ ，则允许解码出对象。

在内部，这使用与 :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>` 方法相同的解码机制。

\ **警告：**\ 反序列化出的对象可能包含会被执行的代码。如果序列化的对象来自不受信任的来源，请不要使用此选项，以避免潜在的安全威胁，例如远程代码执行。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_put_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **put_packet**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_PacketPeer_method_put_packet>`

发送一个原始数据包。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_put_var:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **put_var**\ (\ var\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PacketPeer_method_put_var>`

将 :ref:`Variant<class_Variant>` 作为数据包发送。如果 ``full_objects`` 为 ``true``\ ，则允许将对象编码（其中可能包含代码）。

在内部，这使用与 :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` 方法相同的编码机制。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
