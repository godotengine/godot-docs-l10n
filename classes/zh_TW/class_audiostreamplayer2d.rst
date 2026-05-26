:github_url: hide

.. meta::
	:keywords: sound, sfx

.. _class_AudioStreamPlayer2D:

AudioStreamPlayer2D
===================

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

在 2D 空間播放具位置感的音訊。

.. rst-class:: classref-introduction-group

說明
----

播放隨與接收者距離衰減的音訊。

預設情況下，聲音自螢幕中心傳來。可在場景中加入 :ref:`AudioListener2D<class_AudioListener2D>` 並呼叫 :ref:`AudioListener2D.make_current()<class_AudioListener2D_method_make_current>` 來變更此位置。

若需非定位播放，請參考 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`\ 。

\ **注意：** 隱藏 **AudioStreamPlayer2D** 節點不會停止其音訊輸出。若要暫時關閉輸出，請將 :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>` 設為如 ``-100`` 的極低值（人耳聽不見）。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊流 <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_AudioStreamPlayer2D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_signal_finished>`

當音訊停止播放時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioStreamPlayer2D_property_area_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **area_mask** = ``0`` :ref:`🔗<class_AudioStreamPlayer2D_property_area_mask>`

.. rst-class:: classref-property-setget

- |void| **set_area_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_area_mask**\ (\ )

決定哪些 :ref:`Area2D<class_Area2D>` 分層會影響混響及匯流排效果。可利用區域將 :ref:`AudioStream<class_AudioStream>` 重新導向至特定匯流排，例如建立「水域」區域，使水中播放的聲音經過專用匯流排處理，聽起來像在水下。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation**\ (\ )

以此值為指數，使音量隨距離衰減。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer2D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

若為 ``true``\ ，加入場景樹時即開始播放音訊。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer2D_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

此音訊所屬匯流排。

\ **注意：** 設定時不會檢查名稱是否存在，因為匯流排佈局可能稍後才載入。若運行時無法解析名稱，將退回至 ``"Master"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``2000.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

音訊仍可聽見的最遠距離。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer2D_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

此節點同時可播放的最大音效數。超過後播放新音效會截斷最舊的音效。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_panning_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **panning_strength** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_panning_strength>`

.. rst-class:: classref-property-setget

- |void| **set_panning_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_panning_strength**\ (\ )

將本節點的聲像強度設為基準 :ref:`ProjectSettings.audio/general/2d_panning_strength<class_ProjectSettings_property_audio/general/2d_panning_strength>` 乘以此係數。值越大，左右聲像移動越顯著。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

音訊的音高與節奏倍率，相對於其取樣率。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer2D_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**實驗性：** 此屬性可能在未來版本中變更或移除。

串流播放器的播放型態。若設定為非預設值，將強制使用該型態。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer2D_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

若為 ``true``\ ，音訊正在播放或已排入播放佇列（見 :ref:`play()<class_AudioStreamPlayer2D_method_play>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer2D_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

要播放的 :ref:`AudioStream<class_AudioStream>` 物件。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer2D_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

若為 ``true`` 則播放暫停，將 :ref:`stream_paused<class_AudioStreamPlayer2D_property_stream_paused>` 設為 ``false`` 可恢復。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

衰減前的基礎音量，單位為分貝。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer2D_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

衰減前的基礎音量，以線性值表示。

\ **注意：**\ 此成員為方便起見會同步修改 :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>`\ 。傳回值與對 :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>` 執行 :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` 的結果相同。設定此成員等同於把 :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>` 設為執行 :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` 後的結果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioStreamPlayer2D_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_get_playback_position>`

回傳在 :ref:`AudioStream<class_AudioStream>` 中的位置。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_get_stream_playback>`

回傳與此 **AudioStreamPlayer2D** 相關聯的 :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` 物件。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_has_stream_playback>`

回傳此 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 是否能取得 :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` 物件。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_play>`

將音訊排入佇列，於下個物理影格自 ``from_position``\ （秒）開始播放。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_seek>`

設定音訊開始播放的位置（秒）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_stop>`

停止音訊。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
