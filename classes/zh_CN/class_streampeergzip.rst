:github_url: hide

.. _class_StreamPeerGZIP:

StreamPeerGZIP
==============

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

能够处理 GZIP 和 deflate 压缩/解压缩的流对等端。

.. rst-class:: classref-introduction-group

描述
----

这个类能够使用 GZIP/deflate 对数据进行流式压缩或解压缩。压缩或解压缩经过网络发送的文件时尤其有用，不必事先分配内存。

使用 :ref:`start_compression()<class_StreamPeerGZIP_method_start_compression>`\ （或 :ref:`start_decompression()<class_StreamPeerGZIP_method_start_decompression>`\ ）开启流之后，在这个流上调用 :ref:`StreamPeer.put_partial_data()<class_StreamPeer_method_put_partial_data>` 会对数据进行压缩（或解压缩）并写入内部缓冲区。调用 :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` 会返回内部缓冲区中待处理的字节数，\ :ref:`StreamPeer.get_partial_data()<class_StreamPeer_method_get_partial_data>` 会从中获取压缩后（或解压后）的字节。流结束后，你必须调用 :ref:`finish()<class_StreamPeerGZIP_method_finish>` 来确保正确清空内部缓冲区（请务必最后再调用一次 :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>`\ ，检查此时是否还有需要读取的数据）。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear<class_StreamPeerGZIP_method_clear>`\ (\ )                                                                                                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`finish<class_StreamPeerGZIP_method_finish>`\ (\ )                                                                                                                       |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_compression<class_StreamPeerGZIP_method_start_compression>`\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ )     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_decompression<class_StreamPeerGZIP_method_start_decompression>`\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_StreamPeerGZIP_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_StreamPeerGZIP_method_clear>`

清空该流，重设内部状态。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_finish:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **finish**\ (\ ) :ref:`🔗<class_StreamPeerGZIP_method_finish>`

终止该流，对缓冲中剩余的数据块进行压缩。

只有在压缩时才能调用。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_start_compression:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_compression**\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) :ref:`🔗<class_StreamPeerGZIP_method_start_compression>`

开始压缩模式的流，缓冲区大小为 ``buffer_size``\ ，如果 ``use_deflate`` 为 ``true`` 则使用 deflate 而不是 GZIP。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_start_decompression:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_decompression**\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) :ref:`🔗<class_StreamPeerGZIP_method_start_decompression>`

开始解压模式的流，缓冲区大小为 ``buffer_size``\ ，如果 ``use_deflate`` 为 ``true`` 则使用 deflate 而不是 GZIP。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
