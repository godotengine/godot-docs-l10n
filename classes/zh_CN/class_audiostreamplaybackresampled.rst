:github_url: hide

.. _class_AudioStreamPlaybackResampled:

AudioStreamPlaybackResampled
============================

**继承：** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AudioStreamGeneratorPlayback<class_AudioStreamGeneratorPlayback>`, :ref:`AudioStreamPlaybackOggVorbis<class_AudioStreamPlaybackOggVorbis>`

Playback class used for resampled :ref:`AudioStream<class_AudioStream>`\ s.

.. rst-class:: classref-introduction-group

描述
----

Playback class used to mix an :ref:`AudioStream<class_AudioStream>`'s audio samples to :ref:`AudioServer.get_mix_rate()<class_AudioServer_method_get_mix_rate>` using cubic interpolation.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`_get_stream_sampling_rate<class_AudioStreamPlaybackResampled_private_method__get_stream_sampling_rate>`\ (\ ) |virtual| |required| |const|                                      |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`_mix_resampled<class_AudioStreamPlaybackResampled_private_method__mix_resampled>`\ (\ dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`begin_resample<class_AudioStreamPlaybackResampled_method_begin_resample>`\ (\ )                                                                                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioStreamPlaybackResampled_private_method__get_stream_sampling_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_stream_sampling_rate**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStreamPlaybackResampled_private_method__get_stream_sampling_rate>`

Returns an :ref:`AudioStream<class_AudioStream>`'s sample rate, in Hz. Used to perform resampling.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackResampled_private_method__mix_resampled:

.. rst-class:: classref-method

:ref:`int<class_int>` **_mix_resampled**\ (\ dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlaybackResampled_private_method__mix_resampled>`

Called by :ref:`begin_resample()<class_AudioStreamPlaybackResampled_method_begin_resample>` to mix an :ref:`AudioStream<class_AudioStream>` to :ref:`AudioServer.get_mix_rate()<class_AudioServer_method_get_mix_rate>`. Uses :ref:`_get_stream_sampling_rate()<class_AudioStreamPlaybackResampled_private_method__get_stream_sampling_rate>` as the source sample rate. Returns the number of mixed frames.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackResampled_method_begin_resample:

.. rst-class:: classref-method

|void| **begin_resample**\ (\ ) :ref:`🔗<class_AudioStreamPlaybackResampled_method_begin_resample>`

Called when an :ref:`AudioStream<class_AudioStream>` is played. Clears the cubic interpolation history and starts mixing by calling :ref:`_mix_resampled()<class_AudioStreamPlaybackResampled_private_method__mix_resampled>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
