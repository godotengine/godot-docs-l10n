:github_url: hide

.. _class_VideoStreamPlayback:

VideoStreamPlayback
===================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`VideoStream<class_VideoStream>` 使用的內部類，用於管理其在 :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` 中的播放狀態。

.. rst-class:: classref-introduction-group

說明
----

該類旨在被具有 :ref:`VideoStream<class_VideoStream>` 自訂實作的影片解碼器擴充所覆蓋。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`_get_channels<class_VideoStreamPlayback_private_method__get_channels>`\ (\ ) |virtual| |const|                                                                                                                            |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`_get_length<class_VideoStreamPlayback_private_method__get_length>`\ (\ ) |virtual| |const|                                                                                                                                |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`_get_mix_rate<class_VideoStreamPlayback_private_method__get_mix_rate>`\ (\ ) |virtual| |const|                                                                                                                            |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`_get_playback_position<class_VideoStreamPlayback_private_method__get_playback_position>`\ (\ ) |virtual| |const|                                                                                                          |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_get_texture<class_VideoStreamPlayback_private_method__get_texture>`\ (\ ) |virtual| |const|                                                                                                                              |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_is_paused<class_VideoStreamPlayback_private_method__is_paused>`\ (\ ) |virtual| |const|                                                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_is_playing<class_VideoStreamPlayback_private_method__is_playing>`\ (\ ) |virtual| |const|                                                                                                                                |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_play<class_VideoStreamPlayback_private_method__play>`\ (\ ) |virtual|                                                                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_seek<class_VideoStreamPlayback_private_method__seek>`\ (\ time\: :ref:`float<class_float>`\ ) |virtual|                                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_set_audio_track<class_VideoStreamPlayback_private_method__set_audio_track>`\ (\ idx\: :ref:`int<class_int>`\ ) |virtual|                                                                                                 |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_set_paused<class_VideoStreamPlayback_private_method__set_paused>`\ (\ paused\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                      |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_stop<class_VideoStreamPlayback_private_method__stop>`\ (\ ) |virtual|                                                                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_update<class_VideoStreamPlayback_private_method__update>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |required|                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`mix_audio<class_VideoStreamPlayback_method_mix_audio>`\ (\ num_frames\: :ref:`int<class_int>`, buffer\: :ref:`PackedFloat32Array<class_PackedFloat32Array>` = PackedFloat32Array(), offset\: :ref:`int<class_int>` = 0\ ) |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VideoStreamPlayback_private_method__get_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_channels**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_channels>`

返回音訊通道的數量。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_length**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_length>`

影片時長已知時返回影片時長，未知時返回 0。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_mix_rate:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_mix_rate**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_mix_rate>`

返回用於混音的音訊取樣速率。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_playback_position**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_playback_position>`

返回目前播放時間戳記。取得 :ref:`VideoStreamPlayer.stream_position<class_VideoStreamPlayer_property_stream_position>` 時會被調用。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_texture**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_texture>`

分配一個 :ref:`Texture2D<class_Texture2D>`\ ，解碼得到的影片影格會在其中繪製。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__is_paused:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_paused**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__is_paused>`

返回暫停狀態，由 :ref:`_set_paused()<class_VideoStreamPlayback_private_method__set_paused>` 設定。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_playing**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__is_playing>`

返回由呼叫 :ref:`_play()<class_VideoStreamPlayback_private_method__play>` 和 :ref:`_stop()<class_VideoStreamPlayback_private_method__stop>` 決定的播放狀態。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__play:

.. rst-class:: classref-method

|void| **_play**\ (\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__play>`

:ref:`VideoStreamPlayer.autoplay<class_VideoStreamPlayer_property_autoplay>` 或 :ref:`VideoStreamPlayer.play()<class_VideoStreamPlayer_method_play>` 時會被呼叫。請注意，手動播放在這個方法被呼叫前也可能多次呼叫 :ref:`_stop()<class_VideoStreamPlayback_private_method__stop>`\ 。開始播放後 :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` 就應該回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__seek:

.. rst-class:: classref-method

|void| **_seek**\ (\ time\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__seek>`

檢索至第 ``time`` 秒。設定 :ref:`VideoStreamPlayer.stream_position<class_VideoStreamPlayer_property_stream_position>` 時會被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__set_audio_track:

.. rst-class:: classref-method

|void| **_set_audio_track**\ (\ idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__set_audio_track>`

選擇 ``idx`` 音軌。播放開始時，或者設定 :ref:`VideoStreamPlayer.audio_track<class_VideoStreamPlayer_property_audio_track>` 時會被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__set_paused:

.. rst-class:: classref-method

|void| **_set_paused**\ (\ paused\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__set_paused>`

設定影片播放的暫停狀態。\ :ref:`_is_paused()<class_VideoStreamPlayback_private_method__is_paused>` 必須返回 ``paused``\ 。設定 :ref:`VideoStreamPlayer.paused<class_VideoStreamPlayer_property_paused>` 時會被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__stop:

.. rst-class:: classref-method

|void| **_stop**\ (\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__stop>`

停止播放。可能在 :ref:`_play()<class_VideoStreamPlayback_private_method__play>` 多次呼叫，也可能與 :ref:`VideoStreamPlayer.stop()<class_VideoStreamPlayer_method_stop>` 對應。停止後 :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` 應回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__update:

.. rst-class:: classref-method

|void| **_update**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_VideoStreamPlayback_private_method__update>`

將影片播放推進 ``delta`` 秒。只要 :ref:`_is_paused()<class_VideoStreamPlayback_private_method__is_paused>` 和 :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` 回傳 ``true``\ ，就會為每一影格呼叫。

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_method_mix_audio:

.. rst-class:: classref-method

:ref:`int<class_int>` **mix_audio**\ (\ num_frames\: :ref:`int<class_int>`, buffer\: :ref:`PackedFloat32Array<class_PackedFloat32Array>` = PackedFloat32Array(), offset\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_VideoStreamPlayback_method_mix_audio>`

從陣列中的索引 ``offset`` 開始，從 ``buffer`` 渲染 ``num_frames`` 個音訊影格（每影格 :ref:`_get_channels()<class_VideoStreamPlayback_private_method__get_channels>` 個浮點數）。返回渲染的音訊影格數，如果出錯則返回 -1。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
