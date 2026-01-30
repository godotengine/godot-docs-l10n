:github_url: hide

.. _class_PacketPeerStream:

PacketPeerStream
================

**继承：** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在 StreamPeer 上使用 PacketPeer 的包装器。

.. rst-class:: classref-introduction-group

描述
----

PacketStreamPeer 提供了一个在流中使用数据包的包装器。这样就能够在基于数据包的代码中使用 StreamPeer。PacketPeerStream 在 StreamPeer 的基础上实现了自定义协议，因此用户不应该直接读取或写入被包装的 StreamPeer。

\ **注意：**\ 导出到安卓时，在导出项目或使用一键部署之前，请务必在安卓导出预设中，开启 ``INTERNET`` 权限。否则，任何类型的网络通信，都将被 Android 阻止。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`input_buffer_max_size<class_PacketPeerStream_property_input_buffer_max_size>`   | ``65532`` |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`output_buffer_max_size<class_PacketPeerStream_property_output_buffer_max_size>` | ``65532`` |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`StreamPeer<class_StreamPeer>` | :ref:`stream_peer<class_PacketPeerStream_property_stream_peer>`                       |           |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PacketPeerStream_property_input_buffer_max_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **input_buffer_max_size** = ``65532`` :ref:`🔗<class_PacketPeerStream_property_input_buffer_max_size>`

.. rst-class:: classref-property-setget

- |void| **set_input_buffer_max_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_input_buffer_max_size**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerStream_property_output_buffer_max_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **output_buffer_max_size** = ``65532`` :ref:`🔗<class_PacketPeerStream_property_output_buffer_max_size>`

.. rst-class:: classref-property-setget

- |void| **set_output_buffer_max_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_output_buffer_max_size**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerStream_property_stream_peer:

.. rst-class:: classref-property

:ref:`StreamPeer<class_StreamPeer>` **stream_peer** :ref:`🔗<class_PacketPeerStream_property_stream_peer>`

.. rst-class:: classref-property-setget

- |void| **set_stream_peer**\ (\ value\: :ref:`StreamPeer<class_StreamPeer>`\ )
- :ref:`StreamPeer<class_StreamPeer>` **get_stream_peer**\ (\ )

被包装的 :ref:`StreamPeer<class_StreamPeer>` 对象。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
