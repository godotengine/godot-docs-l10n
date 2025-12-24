:github_url: hide

.. meta::
	:keywords: sound, sfx

.. _class_AudioStreamPlayer3D:

AudioStreamPlayer3D
===================

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

在 3D 空间中播放与位置相关的声音。

.. rst-class:: classref-introduction-group

描述
----

根据音频收听者的相对位置播放具有位置音效的音频。位置效应包括距离衰减、方向性和多普勒效应。为了更逼真，低通滤波器会自动应用于远处的声音。这可以通过将 :ref:`attenuation_filter_cutoff_hz<class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz>` 设置为 ``20500`` 来禁用。

默认情况下，音频是从相机的位置听到的，这可以通过在场景中添加一个 :ref:`AudioListener3D<class_AudioListener3D>` 节点，并通过对其调用 :ref:`AudioListener3D.make_current()<class_AudioListener3D_method_make_current>` 来启用该节点来改变。

参阅 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 来播放非位置的声音。

\ **注意：**\ 隐藏一个 **AudioStreamPlayer3D** 节点并不能禁用其音频输出。要暂时禁用 **AudioStreamPlayer3D** 的音频输出，请将 :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` 设置为一个非常低的值，如 ``-100``\ （人的听觉听不到）。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频流 <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                                              | :ref:`area_mask<class_AudioStreamPlayer3D_property_area_mask>`                                                       | ``1``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`attenuation_filter_cutoff_hz<class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz>`                 | ``5000.0``    |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`attenuation_filter_db<class_AudioStreamPlayer3D_property_attenuation_filter_db>`                               | ``-24.0``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` | :ref:`attenuation_model<class_AudioStreamPlayer3D_property_attenuation_model>`                                       | ``0``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`autoplay<class_AudioStreamPlayer3D_property_autoplay>`                                                         | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`bus<class_AudioStreamPlayer3D_property_bus>`                                                                   | ``&"Master"`` |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>`   | :ref:`doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>`                                         | ``0``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`emission_angle_degrees<class_AudioStreamPlayer3D_property_emission_angle_degrees>`                             | ``45.0``      |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`emission_angle_enabled<class_AudioStreamPlayer3D_property_emission_angle_enabled>`                             | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`emission_angle_filter_attenuation_db<class_AudioStreamPlayer3D_property_emission_angle_filter_attenuation_db>` | ``-12.0``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`max_db<class_AudioStreamPlayer3D_property_max_db>`                                                             | ``3.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>`                                                 | ``0.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                                              | :ref:`max_polyphony<class_AudioStreamPlayer3D_property_max_polyphony>`                                               | ``1``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`panning_strength<class_AudioStreamPlayer3D_property_panning_strength>`                                         | ``1.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>`                                                   | ``1.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`PlaybackType<enum_AudioServer_PlaybackType>`                 | :ref:`playback_type<class_AudioStreamPlayer3D_property_playback_type>`                                               | ``0``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`playing<class_AudioStreamPlayer3D_property_playing>`                                                           | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`AudioStream<class_AudioStream>`                              | :ref:`stream<class_AudioStreamPlayer3D_property_stream>`                                                             |               |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`stream_paused<class_AudioStreamPlayer3D_property_stream_paused>`                                               | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`unit_size<class_AudioStreamPlayer3D_property_unit_size>`                                                       | ``10.0``      |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>`                                                       | ``0.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`volume_linear<class_AudioStreamPlayer3D_property_volume_linear>`                                               |               |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayer3D_method_get_playback_position>`\ (\ )                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` | :ref:`get_stream_playback<class_AudioStreamPlayer3D_method_get_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`has_stream_playback<class_AudioStreamPlayer3D_method_has_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`play<class_AudioStreamPlayer3D_method_play>`\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayer3D_method_seek>`\ (\ to_position\: :ref:`float<class_float>`\ )         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayer3D_method_stop>`\ (\ )                                                  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_AudioStreamPlayer3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_signal_finished>`

当音频停止播放时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AudioStreamPlayer3D_AttenuationModel:

.. rst-class:: classref-enumeration

enum **AttenuationModel**: :ref:`🔗<enum_AudioStreamPlayer3D_AttenuationModel>`

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_INVERSE_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_INVERSE_DISTANCE** = ``0``

根据距离对响度进行线性衰减。

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_INVERSE_SQUARE_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_INVERSE_SQUARE_DISTANCE** = ``1``

根据距离对响度进行平方衰减。

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_LOGARITHMIC:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_LOGARITHMIC** = ``2``

根据距离对响度进行对数衰减。

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_DISABLED** = ``3``

不根据距离衰减响度。与 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 不同，声音仍会在位置上被听到。\ :ref:`ATTENUATION_DISABLED<class_AudioStreamPlayer3D_constant_ATTENUATION_DISABLED>` 可以与大于 ``0.0`` 的 :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>` 值结合使用，以实现线性衰减，限制在定义的球体大小。

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamPlayer3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_AudioStreamPlayer3D_DopplerTracking>`

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

禁用多普勒跟踪。

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

在过程帧期间执行多普勒跟踪（请参阅 :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`\ ）。

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

在物理帧期间执行多普勒跟踪（请参阅 :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioStreamPlayer3D_property_area_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **area_mask** = ``1`` :ref:`🔗<class_AudioStreamPlayer3D_property_area_mask>`

.. rst-class:: classref-property-setget

- |void| **set_area_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_area_mask**\ (\ )

确定哪些 :ref:`Area3D<class_Area3D>` 层影响混响和音频总线效果的声音。区域可用于重定向 :ref:`AudioStream<class_AudioStream>`\ ，以便它们在特定音频总线中播放。可以如何使用它的一个示例是制作一个“水”区域，以便在水中播放的声音通过音频总线重定向，使它们听起来像是在水下播放的。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation_filter_cutoff_hz** = ``5000.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_filter_cutoff_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation_filter_cutoff_hz**\ (\ )

衰减低通滤波器的截止频率，单位为 Hz。高于该频率的声音比低于此频率的声音衰减得更多。要禁用该效果，请将其设置为 ``20500``\ ，因为该频率高于人类听力极限。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_filter_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation_filter_db** = ``-24.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_filter_db>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_filter_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation_filter_db**\ (\ )

滤波器对响度的影响程度，以分贝为单位。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_model:

.. rst-class:: classref-property

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **attenuation_model** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_model>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_model**\ (\ value\: :ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>`\ )
- :ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **get_attenuation_model**\ (\ )

决定音频是否应该随着距离，以线性、二次、对数的方式变得更安静，或者不受距离影响，有效地禁用衰减。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

如果为 ``true``\ ，则在将 AudioStreamPlayer3D 节点添加到场景树时播放音频。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer3D_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

播放音频的总线。

\ **注意：**\ 设置这个属性时，请记住它并不会对给定的名称是否与现有总线匹配进行校验。这是因为音频总线布局可以在设置这个属性后再加载。如果这个给定的名称在运行时无法解析，就会回退到 ``"Master"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

决定在哪一步计算多普勒效应。

\ **注意：**\ 如果 :ref:`doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` 的值不是 :ref:`DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>`\ ，且当前 :ref:`Camera3D<class_Camera3D>`/:ref:`AudioListener3D<class_AudioListener3D>` 禁用了多普勒跟踪，则多普勒效应会被听到，但不会考虑当前监听器的移动。如果需要精确的多普勒效应，则应在 **AudioStreamPlayer3D** 和当前 :ref:`Camera3D<class_Camera3D>`/:ref:`AudioListener3D<class_AudioListener3D>` 上同时启用多普勒跟踪。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_angle_degrees** = ``45.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_angle**\ (\ )

音频到达听者而不衰减的角度。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emission_angle_enabled** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emission_angle_enabled**\ (\ )

如果为 ``true``\ ，则音频应该根据声音的方向衰减。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_filter_attenuation_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_angle_filter_attenuation_db** = ``-12.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_filter_attenuation_db>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle_filter_attenuation_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_angle_filter_attenuation_db**\ (\ )

听者在 :ref:`emission_angle_degrees<class_AudioStreamPlayer3D_property_emission_angle_degrees>` 之外且 :ref:`emission_angle_enabled<class_AudioStreamPlayer3D_property_emission_angle_enabled>` 被设置时使用的衰减系数，单位是分贝。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_db** = ``3.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_db>`

.. rst-class:: classref-property-setget

- |void| **set_max_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_db**\ (\ )

设置声级的绝对最大值，以分贝为单位。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

完全听不到声音的距离。仅当设置为大于 ``0.0`` 的值时才有效。\ :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>` 与 :ref:`unit_size<class_AudioStreamPlayer3D_property_unit_size>` 协同工作。但是，与 :ref:`unit_size<class_AudioStreamPlayer3D_property_unit_size>` 的行为取决于 :ref:`attenuation_model<class_AudioStreamPlayer3D_property_attenuation_model>` 不同，\ :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>` 始终以线性方式工作。这可用于防止 **AudioStreamPlayer3D** 在听者较远时需要混音，从而节省 CPU 资源。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

该节点可以同时播放的最大声音数。达到此值后，播放额外的声音将切断最旧的声音。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_panning_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **panning_strength** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_panning_strength>`

.. rst-class:: classref-property-setget

- |void| **set_panning_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_panning_strength**\ (\ )

该系数会与基础的 :ref:`ProjectSettings.audio/general/3d_panning_strength<class_ProjectSettings_property_audio/general/3d_panning_strength>` 相乘，缩放节点的声像强度。如果乘积为 ``0.0`` 则禁用立体声声像，所有声道的音量相同。如果乘积为 ``1.0`` 则当声音位于听者的正左（或正右）时，有一个通道将被静音。

两个扬声器的立体声配置实现了 `WebAudio 标准的 StereoPannerNode 声像 <https://webaudio.github.io/web-audio-api/#stereopanner-algorithm>`__\ ，音量为到耳朵的半方位角的余弦值。

5.1 和 7.1 等其他扬声器配置则实现了 SPCAP（扬声器放置校正幅度）算法。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

音频的音高和节奏，作为音频样本的采样率的倍数。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**实验性：** 未来版本中可能会修改或移除该属性。

流播放器的播放类型。如果设置为非默认值，则将强制使用该播放类型。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

如果为 ``true``\ ，则音频正在播放，或者已加入播放队列（见 :ref:`play()<class_AudioStreamPlayer3D_method_play>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer3D_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

要播放的 :ref:`AudioStream<class_AudioStream>` 资源。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

如果为 ``true``\ ，则播放会暂停。你可以通过将 :ref:`stream_paused<class_AudioStreamPlayer3D_property_stream_paused>` 设置为 ``false``\ 来恢复它。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_unit_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **unit_size** = ``10.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_unit_size>`

.. rst-class:: classref-property-setget

- |void| **set_unit_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_unit_size**\ (\ )

衰减效果的系数。更高的值使声音在更远的距离可以听到。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

不受衰减影响的基础声级，单位为分贝。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer3D_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

线性形式的不受衰减影响的基础声级。

\ **注意：**\ 该成员会帮助修改 :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>`\ 。返回的值等价于使用 :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` 调用 :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` 的结果。设置该成员等价于将 :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` 设置为使用新值调用 :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` 的结果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioStreamPlayer3D_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_get_playback_position>`

返回 :ref:`AudioStream<class_AudioStream>` 中的位置。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_get_stream_playback>`

返回与这个 **AudioStreamPlayer3D** 相关联的 :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_has_stream_playback>`

返回该 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 是否能够返回 :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_play>`

将要播放的音频入队，将在下一物理帧从给定的位置 ``from_position`` 开始播放，单位为秒。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_seek>`

设置音频的播放位置，以秒为单位。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_stop>`

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
