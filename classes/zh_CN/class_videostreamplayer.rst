:github_url: hide

.. _class_VideoStreamPlayer:

VideoStreamPlayer
=================

**继承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于播放视频的控件。

.. rst-class:: classref-introduction-group

描述
----

用于播放 :ref:`VideoStream<class_VideoStream>` 资源的控件。

支持的视频格式有 `Ogg Theora <https://www.theora.org/>`__\ （\ ``.ogv``\ ，\ :ref:`VideoStreamTheora<class_VideoStreamTheora>`\ ）以及任何通过 GDExtension 插件公开的格式。

\ **警告：**\ 在 Web 上，视频播放\ *会*\ 由于缺少特定于体系结构的汇编优化而表现不佳。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`播放视频 <../tutorials/animation/playing_videos>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                 | :ref:`audio_track<class_VideoStreamPlayer_property_audio_track>`         | ``0``         |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`autoplay<class_VideoStreamPlayer_property_autoplay>`               | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                 | :ref:`buffering_msec<class_VideoStreamPlayer_property_buffering_msec>`   | ``500``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`   | :ref:`bus<class_VideoStreamPlayer_property_bus>`                         | ``&"Master"`` |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`expand<class_VideoStreamPlayer_property_expand>`                   | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`loop<class_VideoStreamPlayer_property_loop>`                       | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`paused<class_VideoStreamPlayer_property_paused>`                   | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`speed_scale<class_VideoStreamPlayer_property_speed_scale>`         | ``1.0``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`VideoStream<class_VideoStream>` | :ref:`stream<class_VideoStreamPlayer_property_stream>`                   |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`stream_position<class_VideoStreamPlayer_property_stream_position>` |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`volume<class_VideoStreamPlayer_property_volume>`                   |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`volume_db<class_VideoStreamPlayer_property_volume_db>`             | ``0.0``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`get_stream_length<class_VideoStreamPlayer_method_get_stream_length>`\ (\ ) |const| |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_stream_name<class_VideoStreamPlayer_method_get_stream_name>`\ (\ ) |const|     |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_video_texture<class_VideoStreamPlayer_method_get_video_texture>`\ (\ ) |const| |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_playing<class_VideoStreamPlayer_method_is_playing>`\ (\ ) |const|               |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`play<class_VideoStreamPlayer_method_play>`\ (\ )                                   |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`stop<class_VideoStreamPlayer_method_stop>`\ (\ )                                   |
   +-----------------------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_VideoStreamPlayer_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_signal_finished>`

播放结束时触发。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VideoStreamPlayer_property_audio_track:

.. rst-class:: classref-property

:ref:`int<class_int>` **audio_track** = ``0`` :ref:`🔗<class_VideoStreamPlayer_property_audio_track>`

.. rst-class:: classref-property-setget

- |void| **set_audio_track**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_audio_track**\ (\ )

要播放的嵌入式音轨。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autoplay**\ (\ )

如果为 ``true``\ ，当场景加载时开始播放。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_buffering_msec:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffering_msec** = ``500`` :ref:`🔗<class_VideoStreamPlayer_property_buffering_msec>`

.. rst-class:: classref-property-setget

- |void| **set_buffering_msec**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffering_msec**\ (\ )

播放时存储在缓冲区的时间，以毫秒计。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_VideoStreamPlayer_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

用于声音播放的音频总线。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_expand:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **expand** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_expand>`

.. rst-class:: classref-property-setget

- |void| **set_expand**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_expand**\ (\ )

如果为 ``true``\ ，视频会缩放到控件的尺寸。否则，控件的最小尺寸将被自动调整以匹配视频流的尺寸。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

如果为 ``true``\ ，该视频将在到达末尾时重新开始。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

如果为 ``true``\ ，则暂停视频。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_VideoStreamPlayer_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

视频流的当前速度缩放。\ ``1.0`` 是正常速度，\ ``2.0`` 是二倍速，\ ``0.5`` 是半速。速度缩放为 ``0.0`` 会暂停视频，类似于将 :ref:`paused<class_VideoStreamPlayer_property_paused>` 设置为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_stream:

.. rst-class:: classref-property

:ref:`VideoStream<class_VideoStream>` **stream** :ref:`🔗<class_VideoStreamPlayer_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`VideoStream<class_VideoStream>`\ )
- :ref:`VideoStream<class_VideoStream>` **get_stream**\ (\ )

指定的视频流。支持的格式见描述。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_stream_position:

.. rst-class:: classref-property

:ref:`float<class_float>` **stream_position** :ref:`🔗<class_VideoStreamPlayer_property_stream_position>`

.. rst-class:: classref-property-setget

- |void| **set_stream_position**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stream_position**\ (\ )

返回视频流中的当前位置，单位为秒。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_volume:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume** :ref:`🔗<class_VideoStreamPlayer_property_volume>`

.. rst-class:: classref-property-setget

- |void| **set_volume**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume**\ (\ )

音频音量为线性值。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_VideoStreamPlayer_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

音频音量，单位是 dB。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_VideoStreamPlayer_method_get_stream_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_stream_length**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_stream_length>`

当前视频流的长度，单位为秒。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_get_stream_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stream_name**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_stream_name>`

返回视频流的名称，如果没有指定视频流，则返回 ``"<No Stream>"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_get_video_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_video_texture**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_video_texture>`

Returns the video playback texture.

The texture will be continually updated as the video plays, so call :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` to get a still frame.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_is_playing>`

如果视频正在播放，返回 ``true``\ 。

\ **注意：**\ 如果在播放过程中暂停，视频仍被认为在播放。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_method_play>`

Starts the video playback from the beginning, unless the video is already playing.

\ **Note:** If the video is paused, this will not unpause the video.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_method_stop>`

停止视频播放并将视频流位置设置为 0。

\ **注意：**\ 虽然视频流位置将被设置为 0，但视频流的第一帧不会成为当前帧。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
