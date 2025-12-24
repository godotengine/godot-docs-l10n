:github_url: hide

.. _class_AudioStreamSynchronized:

AudioStreamSynchronized
=======================

**继承：** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

能够适配子音频流的音频流，子音频流会同步播放。

.. rst-class:: classref-introduction-group

描述
----

这是一种能够适配子音频流的音频流，子音频流会同步播放。按下播放时，各条音频流会同时开始播放，最后一条音频流结束播放后该音频流才会结束。如果存在循环的子音频流，那么播放就会继续。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`stream_count<class_AudioStreamSynchronized_property_stream_count>` | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`get_sync_stream<class_AudioStreamSynchronized_method_get_sync_stream>`\ (\ stream_index\: :ref:`int<class_int>`\ ) |const|                                               |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_sync_stream_volume<class_AudioStreamSynchronized_method_get_sync_stream_volume>`\ (\ stream_index\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_sync_stream<class_AudioStreamSynchronized_method_set_sync_stream>`\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_sync_stream_volume<class_AudioStreamSynchronized_method_set_sync_stream_volume>`\ (\ stream_index\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ )  |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_AudioStreamSynchronized_constant_MAX_STREAMS:

.. rst-class:: classref-constant

**MAX_STREAMS** = ``32`` :ref:`🔗<class_AudioStreamSynchronized_constant_MAX_STREAMS>`

可以同步播放的音频流的最大数量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioStreamSynchronized_property_stream_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stream_count** = ``0`` :ref:`🔗<class_AudioStreamSynchronized_property_stream_count>`

.. rst-class:: classref-property-setget

- |void| **set_stream_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stream_count**\ (\ )

设置同步播放的音频流的总数。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioStreamSynchronized_method_get_sync_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_sync_stream**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamSynchronized_method_get_sync_stream>`

获取同步的音频流，使用索引号指定。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_get_sync_stream_volume:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_sync_stream_volume**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamSynchronized_method_get_sync_stream_volume>`

获取同步音频流的音量，使用索引号指定。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_set_sync_stream:

.. rst-class:: classref-method

|void| **set_sync_stream**\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamSynchronized_method_set_sync_stream>`

设置同步的音频流，使用索引号指定。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_set_sync_stream_volume:

.. rst-class:: classref-method

|void| **set_sync_stream_volume**\ (\ stream_index\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamSynchronized_method_set_sync_stream_volume>`

设置同步音频流的音量，使用索引号指定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
