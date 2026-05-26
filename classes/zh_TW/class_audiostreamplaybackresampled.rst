:github_url: hide

.. _class_AudioStreamPlaybackResampled:

AudioStreamPlaybackResampled
============================

**繼承：** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AudioStreamGeneratorPlayback<class_AudioStreamGeneratorPlayback>`, :ref:`AudioStreamPlaybackOggVorbis<class_AudioStreamPlaybackOggVorbis>`

Playback class used for resampled :ref:`AudioStream<class_AudioStream>`\ s.

.. rst-class:: classref-introduction-group

說明
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

方法說明
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

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
