:github_url: hide

.. meta::
	:keywords: sound, sfx

.. _class_AudioStreamPlayer2D:

AudioStreamPlayer2D
===================

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

在 2D 空间中播放与位置相关的声音。

.. rst-class:: classref-introduction-group

描述
----

播放随与监听者的距离增大而衰减的音频。

默认情况下，音频是从屏幕中心收听的。要修改这个位置，可以在场景中添加一个 :ref:`AudioListener2D<class_AudioListener2D>` 节点，并通过调用 :ref:`AudioListener2D.make_current()<class_AudioListener2D_method_make_current>` 将其启用。

另见 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 以非定位的方式播放声音。

\ **注意：**\ 隐藏 **AudioStreamPlayer2D** 节点并不能禁用其音频输出。要暂时禁用 **AudioStreamPlayer2D** 的音频输出，请将 :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>` 设置为非常低的值，如 ``-100``\ （人的听觉听不到）。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频流 <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                              | :ref:`area_mask<class_AudioStreamPlayer2D_property_area_mask>`               | ``0``         |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`attenuation<class_AudioStreamPlayer2D_property_attenuation>`           | ``1.0``       |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`autoplay<class_AudioStreamPlayer2D_property_autoplay>`                 | ``false``     |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`                | :ref:`bus<class_AudioStreamPlayer2D_property_bus>`                           | ``&"Master"`` |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`max_distance<class_AudioStreamPlayer2D_property_max_distance>`         | ``2000.0``    |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                              | :ref:`max_polyphony<class_AudioStreamPlayer2D_property_max_polyphony>`       | ``1``         |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`panning_strength<class_AudioStreamPlayer2D_property_panning_strength>` | ``1.0``       |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`pitch_scale<class_AudioStreamPlayer2D_property_pitch_scale>`           | ``1.0``       |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`PlaybackType<enum_AudioServer_PlaybackType>` | :ref:`playback_type<class_AudioStreamPlayer2D_property_playback_type>`       | ``0``         |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`playing<class_AudioStreamPlayer2D_property_playing>`                   | ``false``     |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`AudioStream<class_AudioStream>`              | :ref:`stream<class_AudioStreamPlayer2D_property_stream>`                     |               |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`stream_paused<class_AudioStreamPlayer2D_property_stream_paused>`       | ``false``     |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>`               | ``0.0``       |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_linear<class_AudioStreamPlayer2D_property_volume_linear>`       |               |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayer2D_method_get_playback_position>`\ (\ )                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` | :ref:`get_stream_playback<class_AudioStreamPlayer2D_method_get_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`has_stream_playback<class_AudioStreamPlayer2D_method_has_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`play<class_AudioStreamPlayer2D_method_play>`\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayer2D_method_seek>`\ (\ to_position\: :ref:`float<class_float>`\ )         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayer2D_method_stop>`\ (\ )                                                  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_AudioStreamPlayer2D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_signal_finished>`

当音频停止播放时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioStreamPlayer2D_property_area_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **area_mask** = ``0`` :ref:`🔗<class_AudioStreamPlayer2D_property_area_mask>`

.. rst-class:: classref-property-setget

- |void| **set_area_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_area_mask**\ (\ )

决定对混响及音频总线效果有影响的 :ref:`Area2D<class_Area2D>` 层。可使用区域对 :ref:`AudioStream<class_AudioStream>` 进行重定向，使其在特定的音频总线中播放。一个例子是可以用来制作“水域”，将水中播放的声音重定向至单独的音频总线，让声音听起来像是在水下播放。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation**\ (\ )

以该属性为指数，将音量随着距离的增加而衰减。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer2D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

如果为 ``true``\ ，在添加到场景树时将播放音频。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer2D_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

这个音频在哪个总线上播放。

\ **注意：**\ 设置这个属性时，请记住它并不会对给定的名称是否与现有总线匹配进行校验。这是因为音频总线布局可以在设置这个属性后再加载。如果这个给定的名称在运行时无法解析，就会回退到 ``"Master"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``2000.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

音频仍可听到的最大距离。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer2D_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

该节点可以同时播放的最大声音数。达到此值后，播放额外的声音将切断最旧的声音。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_panning_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **panning_strength** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_panning_strength>`

.. rst-class:: classref-property-setget

- |void| **set_panning_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_panning_strength**\ (\ )

通过将基础 :ref:`ProjectSettings.audio/general/2d_panning_strength<class_ProjectSettings_property_audio/general/2d_panning_strength>` 与该因子相乘，来缩放该节点的声像强度。与较低的值相比，较高的值将从左到右更显著地声像移动音频。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

音频的音高和拍速，作为音频样本的采样率的倍数。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer2D_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**实验性：** 未来版本中可能会修改或移除该属性。

流播放器的播放类型。如果设置为非默认值，则将强制使用该播放类型。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer2D_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

如果为 ``true``\ ，则音频正在播放，或者已加入播放队列（见 :ref:`play()<class_AudioStreamPlayer2D_method_play>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer2D_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

要播放的 :ref:`AudioStream<class_AudioStream>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer2D_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

如果为 ``true``\ ，则播放会暂停。你可以通过将 :ref:`stream_paused<class_AudioStreamPlayer2D_property_stream_paused>` 设置为 ``false``\ 来恢复它。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

衰减前的基础音量，单位为分贝。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer2D_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

线性形式的衰减前的基础音量。

\ **注意：**\ 该成员会帮助修改 :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>`\ 。返回的值等价于使用 :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>` 调用 :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` 的结果。设置该成员等价于将 :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>` 设置为使用新值调用 :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` 的结果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioStreamPlayer2D_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_get_playback_position>`

返回 :ref:`AudioStream<class_AudioStream>` 中的位置。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_get_stream_playback>`

返回与该 **AudioStreamPlayer2D** 相关联的 :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_has_stream_playback>`

返回该 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 是否能够返回 :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_play>`

将要播放的音频入队，将在下一物理帧从给定的位置 ``from_position`` 开始播放，单位为秒。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_seek>`

设置音频的播放位置，以秒为单位。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_stop>`

停止音频。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
