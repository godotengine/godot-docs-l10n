:github_url: hide

.. _class_WebRTCDataChannelExtension:

WebRTCDataChannelExtension
==========================

**继承：** :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`_close<class_WebRTCDataChannelExtension_private_method__close>`\ (\ ) |virtual| |required|                                                                                      |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`_get_available_packet_count<class_WebRTCDataChannelExtension_private_method__get_available_packet_count>`\ (\ ) |virtual| |required| |const|                                    |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`_get_buffered_amount<class_WebRTCDataChannelExtension_private_method__get_buffered_amount>`\ (\ ) |virtual| |required| |const|                                                  |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`_get_id<class_WebRTCDataChannelExtension_private_method__get_id>`\ (\ ) |virtual| |required| |const|                                                                            |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                              | :ref:`_get_label<class_WebRTCDataChannelExtension_private_method__get_label>`\ (\ ) |virtual| |required| |const|                                                                      |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`_get_max_packet_life_time<class_WebRTCDataChannelExtension_private_method__get_max_packet_life_time>`\ (\ ) |virtual| |required| |const|                                        |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`_get_max_packet_size<class_WebRTCDataChannelExtension_private_method__get_max_packet_size>`\ (\ ) |virtual| |required| |const|                                                  |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`_get_max_retransmits<class_WebRTCDataChannelExtension_private_method__get_max_retransmits>`\ (\ ) |virtual| |required| |const|                                                  |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                    | :ref:`_get_packet<class_WebRTCDataChannelExtension_private_method__get_packet>`\ (\ r_buffer\: ``const uint8_t **``, r_buffer_size\: ``int32_t*``\ ) |virtual|                        |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                              | :ref:`_get_protocol<class_WebRTCDataChannelExtension_private_method__get_protocol>`\ (\ ) |virtual| |required| |const|                                                                |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` | :ref:`_get_ready_state<class_WebRTCDataChannelExtension_private_method__get_ready_state>`\ (\ ) |virtual| |required| |const|                                                          |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>`       | :ref:`_get_write_mode<class_WebRTCDataChannelExtension_private_method__get_write_mode>`\ (\ ) |virtual| |required| |const|                                                            |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`_is_negotiated<class_WebRTCDataChannelExtension_private_method__is_negotiated>`\ (\ ) |virtual| |required| |const|                                                              |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`_is_ordered<class_WebRTCDataChannelExtension_private_method__is_ordered>`\ (\ ) |virtual| |required| |const|                                                                    |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                    | :ref:`_poll<class_WebRTCDataChannelExtension_private_method__poll>`\ (\ ) |virtual| |required|                                                                                        |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                    | :ref:`_put_packet<class_WebRTCDataChannelExtension_private_method__put_packet>`\ (\ p_buffer\: ``const uint8_t*``, p_buffer_size\: :ref:`int<class_int>`\ ) |virtual|                 |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`_set_write_mode<class_WebRTCDataChannelExtension_private_method__set_write_mode>`\ (\ p_write_mode\: :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>`\ ) |virtual| |required| |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`_was_string_packet<class_WebRTCDataChannelExtension_private_method__was_string_packet>`\ (\ ) |virtual| |required| |const|                                                      |
   +----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_WebRTCDataChannelExtension_private_method__close:

.. rst-class:: classref-method

|void| **_close**\ (\ ) |virtual| |required| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__close>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__get_available_packet_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_available_packet_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__get_available_packet_count>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__get_buffered_amount:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_buffered_amount**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__get_buffered_amount>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_id**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__get_id>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__get_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_label**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__get_label>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__get_max_packet_life_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_max_packet_life_time**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__get_max_packet_life_time>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__get_max_packet_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_max_packet_size**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__get_max_packet_size>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__get_max_retransmits:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_max_retransmits**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__get_max_retransmits>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__get_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_get_packet**\ (\ r_buffer\: ``const uint8_t **``, r_buffer_size\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__get_packet>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__get_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_protocol**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__get_protocol>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__get_ready_state:

.. rst-class:: classref-method

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **_get_ready_state**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__get_ready_state>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__get_write_mode:

.. rst-class:: classref-method

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **_get_write_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__get_write_mode>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__is_negotiated:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_negotiated**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__is_negotiated>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__is_ordered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_ordered**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__is_ordered>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_poll**\ (\ ) |virtual| |required| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__poll>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__put_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_packet**\ (\ p_buffer\: ``const uint8_t*``, p_buffer_size\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__put_packet>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__set_write_mode:

.. rst-class:: classref-method

|void| **_set_write_mode**\ (\ p_write_mode\: :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>`\ ) |virtual| |required| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__set_write_mode>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannelExtension_private_method__was_string_packet:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_was_string_packet**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCDataChannelExtension_private_method__was_string_packet>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
