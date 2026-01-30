:github_url: hide

.. _class_AudioStreamRandomizer:

AudioStreamRandomizer
=====================

**繼承：** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

以音高與音量偏移封裝一個音訊流池。

.. rst-class:: classref-introduction-group

說明
----

依播放模式，從池中隨機選擇 AudioStream，並在播放時施加隨機音高與音量偏移。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` | :ref:`playback_mode<class_AudioStreamRandomizer_property_playback_mode>`                     | ``0``   |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_pitch<class_AudioStreamRandomizer_property_random_pitch>`                       | ``1.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_pitch_semitones<class_AudioStreamRandomizer_property_random_pitch_semitones>`   | ``0.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_volume_offset_db<class_AudioStreamRandomizer_property_random_volume_offset_db>` | ``0.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                                        | :ref:`streams_count<class_AudioStreamRandomizer_property_streams_count>`                     | ``0``   |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`add_stream<class_AudioStreamRandomizer_method_add_stream>`\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`, weight\: :ref:`float<class_float>` = 1.0\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`get_stream<class_AudioStreamRandomizer_method_get_stream>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_stream_probability_weight<class_AudioStreamRandomizer_method_get_stream_probability_weight>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                             |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_stream<class_AudioStreamRandomizer_method_move_stream>`\ (\ index_from\: :ref:`int<class_int>`, index_to\: :ref:`int<class_int>`\ )                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`remove_stream<class_AudioStreamRandomizer_method_remove_stream>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_stream<class_AudioStreamRandomizer_method_set_stream>`\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ )                                           |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_stream_probability_weight<class_AudioStreamRandomizer_method_set_stream_probability_weight>`\ (\ index\: :ref:`int<class_int>`, weight\: :ref:`float<class_float>`\ )                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_AudioStreamRandomizer_PlaybackMode:

.. rst-class:: classref-enumeration

enum **PlaybackMode**: :ref:`🔗<enum_AudioStreamRandomizer_PlaybackMode>`

.. _class_AudioStreamRandomizer_constant_PLAYBACK_RANDOM_NO_REPEATS:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_RANDOM_NO_REPEATS** = ``0``

依各流的權重隨機選擇，但盡量避免連續兩次播放同一條流。若池中僅有一條聲音，則必然重複播放。

.. _class_AudioStreamRandomizer_constant_PLAYBACK_RANDOM:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_RANDOM** = ``1``

依各流的權重隨機選擇流。若池中僅有一條聲音，則必然重複播放同一聲音。

.. _class_AudioStreamRandomizer_constant_PLAYBACK_SEQUENTIAL:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_SEQUENTIAL** = ``2``

依流池中的順序播放。若池中只剩一條聲音，則始終播放同一聲音。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioStreamRandomizer_property_playback_mode:

.. rst-class:: classref-property

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **playback_mode** = ``0`` :ref:`🔗<class_AudioStreamRandomizer_property_playback_mode>`

.. rst-class:: classref-property-setget

- |void| **set_playback_mode**\ (\ value\: :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>`\ )
- :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **get_playback_mode**\ (\ )

控制 AudioStreamRandomizer 決定下一條要播放的 AudioStream 的方式。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_pitch:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_pitch** = ``1.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_pitch>`

.. rst-class:: classref-property-setget

- |void| **set_random_pitch**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_pitch**\ (\ )

The largest possible frequency multiplier of the random pitch variation. Pitch will be randomly chosen within a range of ``1.0 / random_pitch`` and ``random_pitch``. A value of ``1.0`` means no variation. A value of ``2.0`` means pitch will be randomized between double and half.

\ **Note:** Setting this property also sets :ref:`random_pitch_semitones<class_AudioStreamRandomizer_property_random_pitch_semitones>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_pitch_semitones:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_pitch_semitones** = ``0.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_pitch_semitones>`

.. rst-class:: classref-property-setget

- |void| **set_random_pitch_semitones**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_pitch_semitones**\ (\ )

The largest possible distance, in semitones, of the random pitch variation. A value of ``0.0`` means no variation.

\ **Note:** Setting this property also sets :ref:`random_pitch<class_AudioStreamRandomizer_property_random_pitch>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_volume_offset_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_volume_offset_db** = ``0.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_volume_offset_db>`

.. rst-class:: classref-property-setget

- |void| **set_random_volume_offset_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_volume_offset_db**\ (\ )

The intensity of random volume variation. Volume will be increased or decreased by a random value up to ``random_volume_offset_db``. A value of ``0.0`` means no variation. A value of ``3.0`` means volume will be randomized between ``-3.0 dB`` and ``+3.0 dB``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_streams_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **streams_count** = ``0`` :ref:`🔗<class_AudioStreamRandomizer_property_streams_count>`

.. rst-class:: classref-property-setget

- |void| **set_streams_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_streams_count**\ (\ )

流池中的音訊流數量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioStreamRandomizer_method_add_stream:

.. rst-class:: classref-method

|void| **add_stream**\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`, weight\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_AudioStreamRandomizer_method_add_stream>`

在指定索引插入一條音訊流；若索引小於零，則插入至池末端。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_get_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamRandomizer_method_get_stream>`

返回指定索引處的音訊流。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_get_stream_probability_weight:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_stream_probability_weight**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamRandomizer_method_get_stream_probability_weight>`

返回指定索引處音訊流的機率權重。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_move_stream:

.. rst-class:: classref-method

|void| **move_stream**\ (\ index_from\: :ref:`int<class_int>`, index_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_move_stream>`

將音訊流從一個索引移動到另一個索引。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_remove_stream:

.. rst-class:: classref-method

|void| **remove_stream**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_remove_stream>`

移除指定索引處的音訊流。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_set_stream:

.. rst-class:: classref-method

|void| **set_stream**\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_set_stream>`

設定指定索引處的 AudioStream。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_set_stream_probability_weight:

.. rst-class:: classref-method

|void| **set_stream_probability_weight**\ (\ index\: :ref:`int<class_int>`, weight\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_set_stream_probability_weight>`

設定指定索引處音訊流的機率權重。值越高，隨機播放模式就越容易選到此流。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
