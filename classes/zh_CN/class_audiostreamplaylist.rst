:github_url: hide

.. _class_AudioStreamPlaylist:

AudioStreamPlaylist
===================

**继承：** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`AudioStream<class_AudioStream>` 包含子音频流并像播放列表一样播放它们。

.. rst-class:: classref-introduction-group

描述
----

An audio stream that can play back sub-streams in sequence. Streams can be added to the Playlist with :ref:`set_list_stream()<class_AudioStreamPlaylist_method_set_list_stream>`, and shuffled with :ref:`shuffle<class_AudioStreamPlaylist_property_shuffle>`.

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频流 <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`fade_time<class_AudioStreamPlaylist_property_fade_time>`       | ``0.3``   |
   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_AudioStreamPlaylist_property_loop>`                 | ``true``  |
   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`shuffle<class_AudioStreamPlaylist_property_shuffle>`           | ``false`` |
   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`stream_count<class_AudioStreamPlaylist_property_stream_count>` | ``0``     |
   +---------------------------+----------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_bpm<class_AudioStreamPlaylist_method_get_bpm>`\ (\ ) |const|                                                                                                     |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`get_list_stream<class_AudioStreamPlaylist_method_get_list_stream>`\ (\ stream_index\: :ref:`int<class_int>`\ ) |const|                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_list_stream<class_AudioStreamPlaylist_method_set_list_stream>`\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_AudioStreamPlaylist_constant_MAX_STREAMS:

.. rst-class:: classref-constant

**MAX_STREAMS** = ``64`` :ref:`🔗<class_AudioStreamPlaylist_constant_MAX_STREAMS>`

播放列表中支持的音频流的最大数量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioStreamPlaylist_property_fade_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fade_time** = ``0.3`` :ref:`🔗<class_AudioStreamPlaylist_property_fade_time>`

.. rst-class:: classref-property-setget

- |void| **set_fade_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fade_time**\ (\ )

音频流结束、切换到下一个音频流时，淡入淡出的时间。音频流的最后应该留有一些额外的音频，便于淡入淡出。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_AudioStreamPlaylist_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

如果为 ``true``\ ，则播放列表将循环播放，否则播放列表将在播放完最后一个音频流时结束。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_shuffle:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shuffle** = ``false`` :ref:`🔗<class_AudioStreamPlaylist_property_shuffle>`

.. rst-class:: classref-property-setget

- |void| **set_shuffle**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_shuffle**\ (\ )

如果为 ``true``\ ，则每次播放开始和循环时，播放列表都会随机播放。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_stream_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stream_count** = ``0`` :ref:`🔗<class_AudioStreamPlaylist_property_stream_count>`

.. rst-class:: classref-property-setget

- |void| **set_stream_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stream_count**\ (\ )

播放列表中音频流的数量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioStreamPlaylist_method_get_bpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bpm**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlaylist_method_get_bpm>`

返回播放列表的 BPM（每分钟节拍数），该值可能根据正在播放的剪辑而变化。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_method_get_list_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_list_stream**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamPlaylist_method_get_list_stream>`

返回播放位置索引处的音频流。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_method_set_list_stream:

.. rst-class:: classref-method

|void| **set_list_stream**\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamPlaylist_method_set_list_stream>`

设置播放位置索引处的音频流。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
