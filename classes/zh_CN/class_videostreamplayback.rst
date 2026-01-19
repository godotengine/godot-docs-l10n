:github_url: hide

.. _class_VideoStreamPlayback:

VideoStreamPlayback
===================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`VideoStream<class_VideoStream>` 使用的内部类，用于管理其在 :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` 中的播放状态。

.. rst-class:: classref-introduction-group

描述
----

该类旨在被具有 :ref:`VideoStream<class_VideoStream>` 自定义实现的视频解码器扩展所覆盖。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`_get_channels<class_VideoStreamPlayback_private_method__get_channels>`\ (\ ) |virtual| |const|                                                                                                                            |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`_get_length<class_VideoStreamPlayback_private_method__get_length>`\ (\ ) |virtual| |const|                                                                                                                                |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`_get_mix_rate<class_VideoStreamPlayback_private_method__get_mix_rate>`\ (\ ) |virtual| |const|                                                                                                                            |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`_get_playback_position<class_VideoStreamPlayback_private_method__get_playback_position>`\ (\ ) |virtual| |const|                                                                                                          |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_get_texture<class_VideoStreamPlayback_private_method__get_texture>`\ (\ ) |virtual| |const|                                                                                                                              |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_is_paused<class_VideoStreamPlayback_private_method__is_paused>`\ (\ ) |virtual| |const|                                                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_is_playing<class_VideoStreamPlayback_private_method__is_playing>`\ (\ ) |virtual| |const|                                                                                                                                |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_play<class_VideoStreamPlayback_private_method__play>`\ (\ ) |virtual|                                                                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_seek<class_VideoStreamPlayback_private_method__seek>`\ (\ time\: :ref:`float<class_float>`\ ) |virtual|                                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_set_audio_track<class_VideoStreamPlayback_private_method__set_audio_track>`\ (\ idx\: :ref:`int<class_int>`\ ) |virtual|                                                                                                 |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_set_paused<class_VideoStreamPlayback_private_method__set_paused>`\ (\ paused\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                      |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_stop<class_VideoStreamPlayback_private_method__stop>`\ (\ ) |virtual|                                                                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_update<class_VideoStreamPlayback_private_method__update>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |required|                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`mix_audio<class_VideoStreamPlayback_method_mix_audio>`\ (\ num_frames\: :ref:`int<class_int>`, buffer\: :ref:`PackedFloat32Array<class_PackedFloat32Array>` = PackedFloat32Array(), offset\: :ref:`int<class_int>` = 0\ ) |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_VideoStreamPlayback_private_method__get_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_channels**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_channels>`

返回音频通道的数量。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_length**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_length>`

视频时长已知时返回视频时长，未知时返回 0。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_mix_rate:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_mix_rate**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_mix_rate>`

返回用于混音的音频采样率。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_playback_position**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_playback_position>`

返回当前播放时间戳。获取 :ref:`VideoStreamPlayer.stream_position<class_VideoStreamPlayer_property_stream_position>` 时会被调用。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_texture**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_texture>`

分配一个 :ref:`Texture2D<class_Texture2D>`\ ，解码得到的视频帧会在其中绘制。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__is_paused:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_paused**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__is_paused>`

返回暂停状态，由 :ref:`_set_paused()<class_VideoStreamPlayback_private_method__set_paused>` 设置。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_playing**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__is_playing>`

返回由调用 :ref:`_play()<class_VideoStreamPlayback_private_method__play>` 和 :ref:`_stop()<class_VideoStreamPlayback_private_method__stop>` 决定的播放状态。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__play:

.. rst-class:: classref-method

|void| **_play**\ (\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__play>`

:ref:`VideoStreamPlayer.autoplay<class_VideoStreamPlayer_property_autoplay>` 或 :ref:`VideoStreamPlayer.play()<class_VideoStreamPlayer_method_play>` 时会被调用。请注意，手动播放在这个方法被调用前也可能多次调用 :ref:`_stop()<class_VideoStreamPlayback_private_method__stop>`\ 。开始播放后 :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` 就应该返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__seek:

.. rst-class:: classref-method

|void| **_seek**\ (\ time\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__seek>`

检索至第 ``time`` 秒。设置 :ref:`VideoStreamPlayer.stream_position<class_VideoStreamPlayer_property_stream_position>` 时会被调用。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__set_audio_track:

.. rst-class:: classref-method

|void| **_set_audio_track**\ (\ idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__set_audio_track>`

选择 ``idx`` 音轨。播放开始时，或者设置 :ref:`VideoStreamPlayer.audio_track<class_VideoStreamPlayer_property_audio_track>` 时会被调用。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__set_paused:

.. rst-class:: classref-method

|void| **_set_paused**\ (\ paused\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__set_paused>`

设置视频播放的暂停状态。\ :ref:`_is_paused()<class_VideoStreamPlayback_private_method__is_paused>` 必须返回 ``paused``\ 。设置 :ref:`VideoStreamPlayer.paused<class_VideoStreamPlayer_property_paused>` 时会被调用。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__stop:

.. rst-class:: classref-method

|void| **_stop**\ (\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__stop>`

停止播放。可能在 :ref:`_play()<class_VideoStreamPlayback_private_method__play>` 多次调用，也可能与 :ref:`VideoStreamPlayer.stop()<class_VideoStreamPlayer_method_stop>` 对应。停止后 :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` 应返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__update:

.. rst-class:: classref-method

|void| **_update**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_VideoStreamPlayback_private_method__update>`

将视频播放推进 ``delta`` 秒。只要 :ref:`_is_paused()<class_VideoStreamPlayback_private_method__is_paused>` 和 :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` 返回 ``true``\ ，就会为每一帧调用。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_method_mix_audio:

.. rst-class:: classref-method

:ref:`int<class_int>` **mix_audio**\ (\ num_frames\: :ref:`int<class_int>`, buffer\: :ref:`PackedFloat32Array<class_PackedFloat32Array>` = PackedFloat32Array(), offset\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_VideoStreamPlayback_method_mix_audio>`

从数组中的索引 ``offset`` 开始，从 ``buffer`` 渲染 ``num_frames`` 个音频帧（每帧 :ref:`_get_channels()<class_VideoStreamPlayback_private_method__get_channels>` 个浮点数）。返回渲染的音频帧数，如果出错则返回 -1。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
