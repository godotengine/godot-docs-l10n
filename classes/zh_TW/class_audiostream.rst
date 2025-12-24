:github_url: hide

.. _class_AudioStream:

AudioStream
===========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AudioStreamGenerator<class_AudioStreamGenerator>`, :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`, :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`, :ref:`AudioStreamMP3<class_AudioStreamMP3>`, :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>`, :ref:`AudioStreamPlaylist<class_AudioStreamPlaylist>`, :ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>`, :ref:`AudioStreamRandomizer<class_AudioStreamRandomizer>`, :ref:`AudioStreamSynchronized<class_AudioStreamSynchronized>`, :ref:`AudioStreamWAV<class_AudioStreamWAV>`

音訊流的基底類別。

.. rst-class:: classref-introduction-group

說明
----

音訊流的基底類別。音訊流用於音效與音樂播放，支援 WAV（透過 :ref:`AudioStreamWAV<class_AudioStreamWAV>`\ ）與 Ogg（透過 :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>`\ ）格式。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊流 <../tutorials/audio/audio_streams>`

- `音訊產生器範例 <https://godotengine.org/asset-library/asset/2759>`__

- `音訊麥克風錄音示範 <https://godotengine.org/asset-library/asset/2760>`__

- `音訊頻譜視覺化範例 <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_bar_beats<class_AudioStream_private_method__get_bar_beats>`\ (\ ) |virtual| |const|               |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_beat_count<class_AudioStream_private_method__get_beat_count>`\ (\ ) |virtual| |const|             |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_get_bpm<class_AudioStream_private_method__get_bpm>`\ (\ ) |virtual| |const|                           |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_get_length<class_AudioStream_private_method__get_length>`\ (\ ) |virtual| |const|                     |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_parameter_list<class_AudioStream_private_method__get_parameter_list>`\ (\ ) |virtual| |const|     |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_stream_name<class_AudioStream_private_method__get_stream_name>`\ (\ ) |virtual| |const|           |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`_get_tags<class_AudioStream_private_method__get_tags>`\ (\ ) |virtual| |const|                         |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_loop<class_AudioStream_private_method__has_loop>`\ (\ ) |virtual| |const|                         |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`            | :ref:`_instantiate_playback<class_AudioStream_private_method__instantiate_playback>`\ (\ ) |virtual| |const| |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_is_monophonic<class_AudioStream_private_method__is_monophonic>`\ (\ ) |virtual| |const|               |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_be_sampled<class_AudioStream_method_can_be_sampled>`\ (\ ) |const|                                 |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioSample<class_AudioSample>`                            | :ref:`generate_sample<class_AudioStream_method_generate_sample>`\ (\ ) |const|                               |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_length<class_AudioStream_method_get_length>`\ (\ ) |const|                                         |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`            | :ref:`instantiate_playback<class_AudioStream_method_instantiate_playback>`\ (\ )                             |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_meta_stream<class_AudioStream_method_is_meta_stream>`\ (\ ) |const|                                 |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_monophonic<class_AudioStream_method_is_monophonic>`\ (\ ) |const|                                   |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_AudioStream_signal_parameter_list_changed:

.. rst-class:: classref-signal

**parameter_list_changed**\ (\ ) :ref:`🔗<class_AudioStream_signal_parameter_list_changed>`

當參數清單變更時發出此訊號。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioStream_private_method__get_bar_beats:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_bar_beats**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_bar_beats>`

覆寫此方法以返回此串流的小節拍數。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_beat_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_beat_count**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_beat_count>`

可覆寫的方法，應返回此音訊串流的總拍數，供引擎計算各拍位置。

理想情況下，該值應以串流的取樣率（如 :ref:`AudioStreamWAV.mix_rate<class_AudioStreamWAV_property_mix_rate>`\ ）為基礎計算。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_bpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_bpm**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_bpm>`

可覆寫的方法，應返回此音訊串流的速度 (BPM)，供引擎計算各拍位置。

理想情況下，該值應以串流的取樣率（如 :ref:`AudioStreamWAV.mix_rate<class_AudioStreamWAV_property_mix_rate>`\ ）為基礎計算。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_length**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_length>`

覆寫此方法以自訂 :ref:`get_length()<class_AudioStream_method_get_length>` 的返回值；應返回此音訊串流的長度（秒）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_parameter_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_parameter_list**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_parameter_list>`

傳回此串流可控制的參數。此陣列包含採用屬性資訊描述格式的字典（參見 :ref:`Object.get_property_list()<class_Object_method_get_property_list>`\ ）。此外，必須在每個字典的 「default_value」欄位中加入該參數的預設值。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_stream_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_stream_name**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_stream_name>`

重寫此方法以自訂此音訊流所使用的名稱（引擎本身不會使用）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_tags:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_tags**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_tags>`

重寫此方法以自訂此音訊流的標籤。應回傳一個以標籤為鍵、內容為值的 :ref:`Dictionary<class_Dictionary>` 字串字典。

常見的標籤包含 ``title``\ 、\ ``artist``\ 、\ ``album``\ 、\ ``tracknumber`` 與 ``date``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__has_loop:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_loop**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__has_loop>`

重寫此方法，若此串流具有循環則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__instantiate_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **_instantiate_playback**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__instantiate_playback>`

重寫此方法以自訂 :ref:`instantiate_playback()<class_AudioStream_method_instantiate_playback>` 的回傳值。應建立並回傳一個於串流被播放時產生的新 :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`\ （例如由 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 觸發）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__is_monophonic:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_monophonic**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__is_monophonic>`

重寫此方法以自訂 :ref:`is_monophonic()<class_AudioStream_method_is_monophonic>` 的回傳值。若此音訊流僅支援單聲道，應回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_can_be_sampled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_be_sampled**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_can_be_sampled>`

**實驗性：** 此方法可能在未來版本中變更或移除。

回傳目前的 **AudioStream** 是否可用作取樣。僅靜態串流可被取樣。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_generate_sample:

.. rst-class:: classref-method

:ref:`AudioSample<class_AudioSample>` **generate_sample**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_generate_sample>`

**實驗性：** 此方法可能在未來版本中變更或移除。

依據目前的串流產生一個新的 :ref:`AudioSample<class_AudioSample>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_get_length>`

Returns the length of the audio stream in seconds. If this stream is an :ref:`AudioStreamRandomizer<class_AudioStreamRandomizer>`, returns the length of the last played stream. If this stream has an indefinite length (such as for :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` and :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`), returns ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_instantiate_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **instantiate_playback**\ (\ ) :ref:`🔗<class_AudioStream_method_instantiate_playback>`

傳回一個新建立的 :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`\ ，用於播放此音訊流。當你想覆寫 :ref:`_instantiate_playback()<class_AudioStream_private_method__instantiate_playback>`\ ，但需要從內部持有的 AudioStream 子資源呼叫 :ref:`instantiate_playback()<class_AudioStream_method_instantiate_playback>` 時特別有用。範例可參考 ``AudioStreamRandomPitch::instantiate_playback`` 的原始程式碼。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_is_meta_stream:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_meta_stream**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_is_meta_stream>`

若此串流是其他串流的集合則回傳 ``true``\ ，否則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_is_monophonic:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_monophonic**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_is_monophonic>`

若此音訊流僅支援單聲道（\ *monophony*\ ）則回傳 ``true``\ ；若支援兩個以上聲道（\ *polyphony*\ ）則回傳 ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
