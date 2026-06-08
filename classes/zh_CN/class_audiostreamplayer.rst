:github_url: hide

.. meta::
	:keywords: sound, music, song

.. _class_AudioStreamPlayer:

AudioStreamPlayer
=================

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于播放音频的节点。

.. rst-class:: classref-introduction-group

描述
----

**AudioStreamPlayer** 节点能够播放音频流，播放的效果与位置无关，是用户界面、菜单、背景音乐的理想选择。

使用该节点时，需要将 :ref:`stream<class_AudioStreamPlayer_property_stream>` 设为有效的 :ref:`AudioStream<class_AudioStream>` 资源。此外，还支持同时播放多个声音，见 :ref:`max_polyphony<class_AudioStreamPlayer_property_max_polyphony>`\ 。

如果你需要在特定的位置播放音频，请改用 :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` 或 :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频流 <../tutorials/audio/audio_streams>`

- `2D Dodge The Creeps 演示 <https://godotengine.org/asset-library/asset/2712>`__

- `音频设备切换演示 <https://godotengine.org/asset-library/asset/2758>`__

- `音频生成器演示 <https://godotengine.org/asset-library/asset/2759>`__

- `音频麦克风录音演示 <https://godotengine.org/asset-library/asset/2760>`__

- `音频频谱可视化演示 <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`autoplay<class_AudioStreamPlayer_property_autoplay>`           | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`                | :ref:`bus<class_AudioStreamPlayer_property_bus>`                     | ``&"Master"`` |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                              | :ref:`max_polyphony<class_AudioStreamPlayer_property_max_polyphony>` | ``1``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` | :ref:`mix_target<class_AudioStreamPlayer_property_mix_target>`       | ``0``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`pitch_scale<class_AudioStreamPlayer_property_pitch_scale>`     | ``1.0``       |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`PlaybackType<enum_AudioServer_PlaybackType>` | :ref:`playback_type<class_AudioStreamPlayer_property_playback_type>` | ``0``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`playing<class_AudioStreamPlayer_property_playing>`             | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`AudioStream<class_AudioStream>`              | :ref:`stream<class_AudioStreamPlayer_property_stream>`               |               |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>`         | ``0.0``       |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_linear<class_AudioStreamPlayer_property_volume_linear>` |               |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayer_method_get_playback_position>`\ (\ )                |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` | :ref:`get_stream_playback<class_AudioStreamPlayer_method_get_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`has_stream_playback<class_AudioStreamPlayer_method_has_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`play<class_AudioStreamPlayer_method_play>`\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayer_method_seek>`\ (\ to_position\: :ref:`float<class_float>`\ )         |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayer_method_stop>`\ (\ )                                                  |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_AudioStreamPlayer_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_signal_finished>`

当声音不受打断完成播放时发出。调用 :ref:`stop()<class_AudioStreamPlayer_method_stop>` 时\ *不会*\ 发出该信号，播放声音时退出场景树也不会。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AudioStreamPlayer_MixTarget:

.. rst-class:: classref-enumeration

enum **MixTarget**: :ref:`🔗<enum_AudioStreamPlayer_MixTarget>`

.. _class_AudioStreamPlayer_constant_MIX_TARGET_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_STEREO** = ``0``

音频将只在第一个声道中播放。这是默认行为。

.. _class_AudioStreamPlayer_constant_MIX_TARGET_SURROUND:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_SURROUND** = ``1``

音频将在所有环绕声声道中播放。

.. _class_AudioStreamPlayer_constant_MIX_TARGET_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_CENTER** = ``2``

音频将在第二个声道中播放，通常位于中央。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioStreamPlayer_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

如果为 ``true``\ ，则该节点会在进入场景树时调用 :ref:`play()<class_AudioStreamPlayer_method_play>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

目标总线的名称。该节点的所有声音都会在这条总线上播放。

\ **注意：**\ 在运行时，如果不存在该名称的总线，那么所有声音都会回退至 ``"Master"`` 总线。另见 :ref:`AudioServer.get_bus_name()<class_AudioServer_method_get_bus_name>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

该节点可以同时播放的声音的最大数量。达到此值后再调用 :ref:`play()<class_AudioStreamPlayer_method_play>` 将切断最早播放的声音。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_mix_target:

.. rst-class:: classref-property

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **mix_target** = ``0`` :ref:`🔗<class_AudioStreamPlayer_property_mix_target>`

.. rst-class:: classref-property-setget

- |void| **set_mix_target**\ (\ value\: :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>`\ )
- :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **get_mix_target**\ (\ )

混合目标声道。检测到小于等于两个扬声器时无效（见 :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

音频的音高和拍速，是 :ref:`stream<class_AudioStreamPlayer_property_stream>` 采样率的乘数。取值为 ``2.0`` 时音频的音高翻倍，为 ``0.5`` 时音高减半。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**实验性：** 未来版本中可能会修改或移除该属性。

流播放器的播放类型。如果设置为非默认值，则将强制使用该播放类型。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

如果为 ``true``\ ，则该节点正在播放声音。设置该属性与 :ref:`play()<class_AudioStreamPlayer_method_play>` 和 :ref:`stop()<class_AudioStreamPlayer_method_stop>` 等效。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

要播放的 :ref:`AudioStream<class_AudioStream>` 资源。设置该属性会停止所有正在播放的声音。如果留空，则 **AudioStreamPlayer** 不工作。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

如果为 ``true``\ ，则声音暂停。将 :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` 设置为 ``false`` 会恢复所有声音。

\ **注意：**\ 进入和退出场景树以及节点暂停时均会自动修改该属性（见 :ref:`Node.process_mode<class_Node_property_process_mode>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

音量，单位为分贝。这是相对于 :ref:`stream<class_AudioStreamPlayer_property_stream>` 音量的偏移。

\ **注意：**\ 如需在分贝和线性能量（常见于音量滑块）间进行转换，请使用 :ref:`volume_linear<class_AudioStreamPlayer_property_volume_linear>`\ 、\ :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` 和 :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

线性形式的音量。

\ **注意：**\ 该成员会帮助修改 :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>`\ 。返回的值等价于使用 :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>` 调用 :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` 的结果。设置该成员等价于将 :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>` 设置为使用新值调用 :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` 的结果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioStreamPlayer_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_get_playback_position>`

返回最近播放的 :ref:`AudioStream<class_AudioStream>` 声音中的位置，单位为秒。如果没有正在播放的声音，则返回 ``0.0``\ 。

\ **注意：**\ 返回的位置不一定精准，因为 :ref:`AudioServer<class_AudioServer>` 不会在每个处理的帧中混合音频。要想得到更多准确的结果，请将 :ref:`AudioServer.get_time_since_last_mix()<class_AudioServer_method_get_time_since_last_mix>` 添加到返回的位置。

\ **注意：**\ 如果 :ref:`stream<class_AudioStreamPlayer_property_stream>` 是 :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`\ ，则始终返回 ``0.0``\ ，因为这种音频流可以同时播放多个剪辑。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_get_stream_playback>`

返回该节点最近的 :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`\ ，通常是最近由 :ref:`play()<class_AudioStreamPlayer_method_play>` 创建的对象。如果当前没有在播放任何声音，则这个方法会失败并返回空的回放对象。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_has_stream_playback>`

如果有活动的声音则返回 ``true``\ ，即便 :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` 为 ``true``\ 。另见 :ref:`playing<class_AudioStreamPlayer_property_playing>` 和 :ref:`get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer_method_play>`

从开头或给定的位置 ``from_position`` 开始播放声音，位置的单位为秒。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer_method_seek>`

从给定的位置 ``to_position`` 开始重新播放所有声音，位置的单位为秒。如果当前没有在播放任何声音，则无事发生。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_stop>`

停止该节点发出的所有声音。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
