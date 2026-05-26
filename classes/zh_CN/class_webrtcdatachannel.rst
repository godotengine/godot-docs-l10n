:github_url: hide

.. _class_WebRTCDataChannel:

WebRTCDataChannel
=================

**继承：** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`WebRTCDataChannelExtension<class_WebRTCDataChannelExtension>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------+-------+
   | :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` | :ref:`write_mode<class_WebRTCDataChannel_property_write_mode>` | ``1`` |
   +----------------------------------------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

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

枚举
----

.. _enum_WebRTCDataChannel_WriteMode:

.. rst-class:: classref-enumeration

enum **WriteMode**: :ref:`🔗<enum_WebRTCDataChannel_WriteMode>`

.. _class_WebRTCDataChannel_constant_WRITE_MODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **WRITE_MODE_TEXT** = ``0``

告诉通道以文本形式在这个通道上发送数据。外部对等端（非 Godot）会以字符串的形式接收。

.. _class_WebRTCDataChannel_constant_WRITE_MODE_BINARY:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **WRITE_MODE_BINARY** = ``1``

告诉通道以二进制形式在此通道上发送数据。外部对等端（非 Godot）将以数组缓冲区或 blob 的形式接收。

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCDataChannel_ChannelState:

.. rst-class:: classref-enumeration

enum **ChannelState**: :ref:`🔗<enum_WebRTCDataChannel_ChannelState>`

.. _class_WebRTCDataChannel_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CONNECTING** = ``0``

通道已经创建，但它仍在尝试连接。

.. _class_WebRTCDataChannel_constant_STATE_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_OPEN** = ``1``

该通道目前是打开的，数据可以在其上流动。

.. _class_WebRTCDataChannel_constant_STATE_CLOSING:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CLOSING** = ``2``

通道正在关闭，将不接受新的消息，但已经在队列中的消息将被刷新。

.. _class_WebRTCDataChannel_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CLOSED** = ``3``

通道已关闭，或连接失败。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_WebRTCDataChannel_property_write_mode:

.. rst-class:: classref-property

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **write_mode** = ``1`` :ref:`🔗<class_WebRTCDataChannel_property_write_mode>`

.. rst-class:: classref-property-setget

- |void| **set_write_mode**\ (\ value\: :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>`\ )
- :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **get_write_mode**\ (\ )

发送出去数据包时要使用的传输模式。可以是文本或二进制。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_WebRTCDataChannel_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCDataChannel_method_close>`

关闭此数据通道，通知另一个对等端。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_buffered_amount:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_buffered_amount**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_buffered_amount>`

返回当前排队在此通道上发送的字节数。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_id>`

返回创建时分配给该通道的 ID（或是在协商时自动分配的）。

如果该通道没有进行带外协商，那么该 ID 将只在连接建立后可用（在此之前将返回 ``65535``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_label**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_label>`

返回创建时分配给该通道的标签。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_max_packet_life_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_packet_life_time**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_max_packet_life_time>`

返回创建时分配给这个通道的 ``maxPacketLifeTime`` 值。

如果没有指定，将是 ``65535``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_max_retransmits:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_retransmits**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_max_retransmits>`

返回创建时分配给这个通道的 ``maxRetransmits`` 值。

如果没有指定，将是 ``65535``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_protocol**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_protocol>`

返回创建时分配给这个通道的子协议。如果没有指定，则为空字符串。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_ready_state:

.. rst-class:: classref-method

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **get_ready_state**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_ready_state>`

返回该通道的当前状态。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_is_negotiated:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_negotiated**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_is_negotiated>`

如果这个通道是用带外配置创建的，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_is_ordered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_ordered**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_is_ordered>`

如果这个通道在创建时启用了排序功能，则默认返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCDataChannel_method_poll>`

保留，目前未使用。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_was_string_packet:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **was_string_packet**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_was_string_packet>`

如果最后收到的数据包是以文本形式传输，则返回 ``true``\ 。见 :ref:`write_mode<class_WebRTCDataChannel_property_write_mode>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
