:github_url: hide

.. _class_AudioStreamPlayback:

AudioStreamPlayback
===================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AudioStreamPlaybackInteractive<class_AudioStreamPlaybackInteractive>`, :ref:`AudioStreamPlaybackPlaylist<class_AudioStreamPlaybackPlaylist>`, :ref:`AudioStreamPlaybackPolyphonic<class_AudioStreamPlaybackPolyphonic>`, :ref:`AudioStreamPlaybackResampled<class_AudioStreamPlaybackResampled>`, :ref:`AudioStreamPlaybackSynchronized<class_AudioStreamPlaybackSynchronized>`

播放音频的元类。

.. rst-class:: classref-introduction-group

描述
----

可以播放、循环播放、暂停滚动播放音频。有关用法，请参阅 :ref:`AudioStream<class_AudioStream>` 和 :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `音频生成器演示 <https://godotengine.org/asset-library/asset/2759>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`_get_loop_count<class_AudioStreamPlayback_private_method__get_loop_count>`\ (\ ) |virtual| |const|                                                                                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                         | :ref:`_get_parameter<class_AudioStreamPlayback_private_method__get_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                      |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`_get_playback_position<class_AudioStreamPlayback_private_method__get_playback_position>`\ (\ ) |virtual| |required| |const|                                                       |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`_is_playing<class_AudioStreamPlayback_private_method__is_playing>`\ (\ ) |virtual| |required| |const|                                                                             |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`_mix<class_AudioStreamPlayback_private_method__mix>`\ (\ buffer\: ``AudioFrame*``, rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ ) |virtual| |required| |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_seek<class_AudioStreamPlayback_private_method__seek>`\ (\ position\: :ref:`float<class_float>`\ ) |virtual|                                                                      |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_set_parameter<class_AudioStreamPlayback_private_method__set_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |virtual|       |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_start<class_AudioStreamPlayback_private_method__start>`\ (\ from_pos\: :ref:`float<class_float>`\ ) |virtual| |required|                                                         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_stop<class_AudioStreamPlayback_private_method__stop>`\ (\ ) |virtual| |required|                                                                                                 |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_tag_used_streams<class_AudioStreamPlayback_private_method__tag_used_streams>`\ (\ ) |virtual|                                                                                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_loop_count<class_AudioStreamPlayback_method_get_loop_count>`\ (\ ) |const|                                                                                                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayback_method_get_playback_position>`\ (\ ) |const|                                                                                      |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioSamplePlayback<class_AudioSamplePlayback>` | :ref:`get_sample_playback<class_AudioStreamPlayback_method_get_sample_playback>`\ (\ ) |const|                                                                                          |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_playing<class_AudioStreamPlayback_method_is_playing>`\ (\ ) |const|                                                                                                            |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`   | :ref:`mix_audio<class_AudioStreamPlayback_method_mix_audio>`\ (\ rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayback_method_seek>`\ (\ time\: :ref:`float<class_float>` = 0.0\ )                                                                                        |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_sample_playback<class_AudioStreamPlayback_method_set_sample_playback>`\ (\ playback_sample\: :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`\ )                         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`start<class_AudioStreamPlayback_method_start>`\ (\ from_pos\: :ref:`float<class_float>` = 0.0\ )                                                                                  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayback_method_stop>`\ (\ )                                                                                                                                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioStreamPlayback_private_method__get_loop_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_loop_count**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_loop_count>`

可覆盖的方法。应该返回该音频流已经循环了多少次。大多数内置播放始终返回 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__get_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_parameter>`

按名称返回播放参数的当前值（请参阅 :ref:`AudioStream._get_parameter_list()<class_AudioStream_private_method__get_parameter_list>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_playback_position**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_playback_position>`

可覆盖的方法。应返回音频流的当前进度，单位为秒。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_playing**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__is_playing>`

可覆盖的方法。如果该播放处于活动状态并正在播放其音频流，则应返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__mix:

.. rst-class:: classref-method

:ref:`int<class_int>` **_mix**\ (\ buffer\: ``AudioFrame*``, rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlayback_private_method__mix>`

覆盖该方法以自定义音频流的混合方式。即使播放未激活，也会调用该方法。

\ **注意：**\ 在 GDScript 或 C# 中覆盖该方法没有用。只有 GDExtension 可以利用它。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__seek:

.. rst-class:: classref-method

|void| **_seek**\ (\ position\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__seek>`

覆盖该方法以自定义在给定的 ``position`` 处查找该音频流时发生的情况，例如通过调用 :ref:`AudioStreamPlayer.seek()<class_AudioStreamPlayer_method_seek>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__set_parameter:

.. rst-class:: classref-method

|void| **_set_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__set_parameter>`

按名称设置播放参数的当前值（请参阅 :ref:`AudioStream._get_parameter_list()<class_AudioStream_private_method__get_parameter_list>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__start:

.. rst-class:: classref-method

|void| **_start**\ (\ from_pos\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlayback_private_method__start>`

覆盖该方法以自定义在给定位置开始播放时发生的情况，例如通过调用 :ref:`AudioStreamPlayer.play()<class_AudioStreamPlayer_method_play>` 覆盖。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__stop:

.. rst-class:: classref-method

|void| **_stop**\ (\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlayback_private_method__stop>`

覆盖该方法以自定义播放停止时发生的情况，例如通过调用 :ref:`AudioStreamPlayer.stop()<class_AudioStreamPlayer_method_stop>` 覆盖。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__tag_used_streams:

.. rst-class:: classref-method

|void| **_tag_used_streams**\ (\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__tag_used_streams>`

可覆盖的方法。如果播放处于活动状态并且 :ref:`AudioServer.set_enable_tagging_used_audio_streams()<class_AudioServer_method_set_enable_tagging_used_audio_streams>` 已被设置为 ``true``\ ，则每当混合音频流时调用。编辑器插件可以使用该方法以“标记”音频流中的当前位置并将其显示在预览中。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_loop_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_loop_count**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_loop_count>`

返回音频流已循环的次数。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_playback_position>`

返回音频流中的当前位置，单位为秒。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_sample_playback:

.. rst-class:: classref-method

:ref:`AudioSamplePlayback<class_AudioSamplePlayback>` **get_sample_playback**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_sample_playback>`

**实验性：** 未来版本中可能会修改或移除该方法。

返回与该 **AudioStreamPlayback** 相关联的、用于播放该流的音频样本的 :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`\ ，。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_is_playing>`

音频流正在播放时，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_mix_audio:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **mix_audio**\ (\ rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlayback_method_mix_audio>`

从当前位置开始，以 ``rate_scale`` 的速率混合音频流中最多 ``frames`` 帧音频，并推进该流的位置。

返回一个 :ref:`PackedVector2Array<class_PackedVector2Array>`\ ，其中每个元素保存每帧的左右声道音量电平。

\ **注意：**\ 返回的帧数可能少于请求的帧数，请确保使用返回值的大小。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ time\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayback_method_seek>`

跳转到音频流中给定的时间点 ``time``\ ，单位为秒。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_set_sample_playback:

.. rst-class:: classref-method

|void| **set_sample_playback**\ (\ playback_sample\: :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`\ ) :ref:`🔗<class_AudioStreamPlayback_method_set_sample_playback>`

**实验性：** 未来版本中可能会修改或移除该方法。

将 :ref:`AudioSamplePlayback<class_AudioSamplePlayback>` 与该 **AudioStreamPlayback** 关联以播放该流的音频样本。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ from_pos\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayback_method_start>`

从给定的位置 ``from_pos`` 开始播放音频流，单位为秒。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayback_method_stop>`

停止音频流。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
