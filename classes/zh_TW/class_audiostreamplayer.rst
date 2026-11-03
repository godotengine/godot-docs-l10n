:github_url: hide

.. meta::
	:keywords: sound, music, song

.. _class_AudioStreamPlayer:

AudioStreamPlayer
=================

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於音訊播放的節點。

.. rst-class:: classref-introduction-group

說明
----

**AudioStreamPlayer** 節點可播放非定位的音訊，適合用於 UI、選單或背景音樂。

使用時請先將 :ref:`stream<class_AudioStreamPlayer_property_stream>` 設為有效的 :ref:`AudioStream<class_AudioStream>` 資源。本節點也支援同時播放多段音訊，詳見 :ref:`max_polyphony<class_AudioStreamPlayer_property_max_polyphony>`\ 。

若需在特定位置播放，請改用 :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` 或 :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊流 <../tutorials/audio/audio_streams>`

- `2D Dodge The Creeps 範例 <https://godotengine.org/asset-library/asset/2712>`__

- `音訊裝置切換範例 <https://godotengine.org/asset-library/asset/2758>`__

- `音訊產生器範例 <https://godotengine.org/asset-library/asset/2759>`__

- `音訊麥克風錄音示範 <https://godotengine.org/asset-library/asset/2760>`__

- `音訊頻譜視覺化範例 <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_AudioStreamPlayer_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_signal_finished>`

當音效自然播放完畢且未被打斷時發出。呼叫 :ref:`stop()<class_AudioStreamPlayer_method_stop>` 或離開場景樹時不會觸發。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_AudioStreamPlayer_MixTarget:

.. rst-class:: classref-enumeration

enum **MixTarget**: :ref:`🔗<enum_AudioStreamPlayer_MixTarget>`

.. _class_AudioStreamPlayer_constant_MIX_TARGET_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_STEREO** = ``0``

音訊僅會在第一個聲道播放（預設值）。

.. _class_AudioStreamPlayer_constant_MIX_TARGET_SURROUND:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_SURROUND** = ``1``

音訊將在所有環繞聲聲道播放。

.. _class_AudioStreamPlayer_constant_MIX_TARGET_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_CENTER** = ``2``

音訊將在第二個聲道（通常為中央聲道）播放。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioStreamPlayer_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

若為 ``true``\ ，該節點進入場景樹時會自動呼叫 :ref:`play()<class_AudioStreamPlayer_method_play>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

目標匯流排名稱。此節點的所有音效將於該匯流排播放。

\ **注意：** 執行時若找不到同名匯流排，將退回至 ``"Master"``\ 。另見 :ref:`AudioServer.get_bus_name()<class_AudioServer_method_get_bus_name>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

此節點可同時播放的最大音效數量。達上限後再次呼叫 :ref:`play()<class_AudioStreamPlayer_method_play>` 會截斷最早播放的音效。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_mix_target:

.. rst-class:: classref-property

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **mix_target** = ``0`` :ref:`🔗<class_AudioStreamPlayer_property_mix_target>`

.. rst-class:: classref-property-setget

- |void| **set_mix_target**\ (\ value\: :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>`\ )
- :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **get_mix_target**\ (\ )

混音目標聲道。若僅偵測到兩個或更少揚聲器時無效（參見 :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

音訊的音高與節奏倍率，相對於 :ref:`stream<class_AudioStreamPlayer_property_stream>` 的取樣率。\ ``2.0`` 代表音高變兩倍，\ ``0.5`` 則為一半。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**實驗性：** 此屬性可能在未來版本中變更或移除。

串流播放器的播放型態。若設定為非預設值，將強制使用該型態。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

若為 ``true``\ ，此節點正在播放音效。設定此屬性與呼叫 :ref:`play()<class_AudioStreamPlayer_method_play>` 或 :ref:`stop()<class_AudioStreamPlayer_method_stop>` 效果相同。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

要播放的 :ref:`AudioStream<class_AudioStream>` 資源。設定時會停止目前所有正在播放的音效。若留空，此 **AudioStreamPlayer** 將無法運作。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

若為 ``true``\ ，音效將暫停。將 :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` 設為 ``false`` 可恢復播放。

\ **注意：** 離開／進入場景樹或節點被暫停（見 :ref:`Node.process_mode<class_Node_property_process_mode>`\ ）時，此屬性會自動變更。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

音量（dB），為 :ref:`stream<class_AudioStreamPlayer_property_stream>` 音量的偏移量。

\ **注意：** 若需在分貝與線效能量間轉換，可使用 :ref:`volume_linear<class_AudioStreamPlayer_property_volume_linear>`\ ，或 :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` / :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

音量（線性值）。

\ **注意：** 此屬性便於操作，會同步修改 :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>`\ 。回傳值等同於對 :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>` 執行 :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` 的結果；設定此屬性亦等同於將 :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>` 設為對應值的 :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` 結果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioStreamPlayer_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_get_playback_position>`

回傳最近一次播放音效在 :ref:`AudioStream<class_AudioStream>` 中的位置（秒）。若目前無任何音效播放則回傳 ``0.0``\ 。

\ **注意：** 由於 :ref:`AudioServer<class_AudioServer>` 並非每個處理影格都進行混音，該位置不一定精確。若需更精準，請將 :ref:`AudioServer.get_time_since_last_mix()<class_AudioServer_method_get_time_since_last_mix>` 加到回傳值上。

\ **注意：** 若 :ref:`stream<class_AudioStreamPlayer_property_stream>` 為 :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`\ （可能同時播放多段片段），本方法恒回傳 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_get_stream_playback>`

回傳此節點最新產生的 :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`\ （通常由 :ref:`play()<class_AudioStreamPlayer_method_play>` 建立）。若無音效播放則回傳空播放實例。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_has_stream_playback>`

若有任何音效處於活動狀態則回傳 ``true``\ ，即使 :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` 為 ``true``\ 。另見 :ref:`playing<class_AudioStreamPlayer_property_playing>` 與 :ref:`get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer_method_play>`

從開頭或指定的 ``from_position``\ （秒）開始播放音效。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer_method_seek>`

將所有正在播放的音效重新定位至 ``to_position``\ （秒）並繼續播放；若無音效播放則不動作。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_stop>`

停止此節點的所有音效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
