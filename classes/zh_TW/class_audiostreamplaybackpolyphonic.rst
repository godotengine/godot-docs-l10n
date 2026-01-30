:github_url: hide

.. _class_AudioStreamPlaybackPolyphonic:

AudioStreamPlaybackPolyphonic
=============================

**繼承：** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>` 的播放實例。

.. rst-class:: classref-introduction-group

說明
----

:ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>` 的播放實例。設定 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`\ 、\ :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` 或 :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` 的 ``stream`` 屬性後，可透過 :ref:`AudioStreamPlayer.get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`\ 、\ :ref:`AudioStreamPlayer2D.get_stream_playback()<class_AudioStreamPlayer2D_method_get_stream_playback>` 或 :ref:`AudioStreamPlayer3D.get_stream_playback()<class_AudioStreamPlayer3D_method_get_stream_playback>` 取得播放實例。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_stream_playing<class_AudioStreamPlaybackPolyphonic_method_is_stream_playing>`\ (\ stream\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                   |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`play_stream<class_AudioStreamPlaybackPolyphonic_method_play_stream>`\ (\ stream\: :ref:`AudioStream<class_AudioStream>`, from_offset\: :ref:`float<class_float>` = 0, volume_db\: :ref:`float<class_float>` = 0, pitch_scale\: :ref:`float<class_float>` = 1.0, playback_type\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>` = 0, bus\: :ref:`StringName<class_StringName>` = &"Master"\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_stream_pitch_scale<class_AudioStreamPlaybackPolyphonic_method_set_stream_pitch_scale>`\ (\ stream\: :ref:`int<class_int>`, pitch_scale\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_stream_volume<class_AudioStreamPlaybackPolyphonic_method_set_stream_volume>`\ (\ stream\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                    |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`stop_stream<class_AudioStreamPlaybackPolyphonic_method_stop_stream>`\ (\ stream\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                       |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID:

.. rst-class:: classref-constant

**INVALID_ID** = ``-1`` :ref:`🔗<class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID>`

當無法再分配播放串流時，\ :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>` 會回傳此值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioStreamPlaybackPolyphonic_method_is_stream_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stream_playing**\ (\ stream\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_is_stream_playing>`

若與指定整數 ID 關聯的串流仍在播放則回傳 ``true``\ 。關於此 ID 何時失效請參考 :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_play_stream:

.. rst-class:: classref-method

:ref:`int<class_int>` **play_stream**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`, from_offset\: :ref:`float<class_float>` = 0, volume_db\: :ref:`float<class_float>` = 0, pitch_scale\: :ref:`float<class_float>` = 1.0, playback_type\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>` = 0, bus\: :ref:`StringName<class_StringName>` = &"Master"\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_play_stream>`

以指定的偏移、音量、音高倍率、播放型態及匯流排播放一段 :ref:`AudioStream<class_AudioStream>`\ ，播放會立即開始。

此函式會回傳一個獨一無二的整數 ID，可用來控制該播放串流。

當串流結束（未循環）、\ **AudioStreamPlaybackPolyphonic** 被停止，或呼叫 :ref:`stop_stream()<class_AudioStreamPlaybackPolyphonic_method_stop_stream>` 時，該 ID 將失效。

若同時播放的串流數已達 :ref:`AudioStreamPolyphonic.polyphony<class_AudioStreamPolyphonic_property_polyphony>`\ ，本函式將回傳 :ref:`INVALID_ID<class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID>`\ 。如需更高的最大複音數，請提高此屬性值。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_set_stream_pitch_scale:

.. rst-class:: classref-method

|void| **set_stream_pitch_scale**\ (\ stream\: :ref:`int<class_int>`, pitch_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_set_stream_pitch_scale>`

修改串流的音高倍率。\ ``stream`` 為 :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>` 回傳的整數 ID。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_set_stream_volume:

.. rst-class:: classref-method

|void| **set_stream_volume**\ (\ stream\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_set_stream_volume>`

修改串流音量（dB）。\ ``stream`` 為 :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>` 回傳的整數 ID。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_stop_stream:

.. rst-class:: classref-method

|void| **stop_stream**\ (\ stream\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_stop_stream>`

停止指定串流。\ ``stream`` 為 :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>` 回傳的整數 ID，呼叫後即失效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
