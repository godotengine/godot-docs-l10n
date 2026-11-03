:github_url: hide

.. _class_ResourceImporterMP3:

ResourceImporterMP3
===================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯入 MP3 音訊檔案以供播放。

.. rst-class:: classref-introduction-group

說明
----

MP3 是一種有損音訊格式，在相同位元率下音質不如 :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>`\ 。

大多數情況下建議使用 Ogg Vorbis；不過若只有 MP3 音源且沒有更高品質版本，直接使用該 MP3 可避免兩次有損壓縮。

解碼 MP3 所需的 CPU 時間比 :ref:`ResourceImporterWAV<class_ResourceImporterWAV>` 多。若需同時播放大量音效，特別是在低階裝置上，建議改用 WAV。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯入音訊樣本 <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`bar_beats<class_ResourceImporterMP3_property_bar_beats>`     | ``4``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>`   | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bpm<class_ResourceImporterMP3_property_bpm>`                 | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_ResourceImporterMP3_property_loop>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ResourceImporterMP3_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_ResourceImporterMP3_property_bar_beats>`

音訊軌道中，單個小節（bar）內包含的節拍（beat）數量。這個設定僅對希望使用互動音樂（interactive music）功能的音樂有效，而不適用於音效。

在 **進階匯入設定（Advanced Import Settings）** 對話框中，為 :ref:`bar_beats<class_ResourceImporterMP3_property_bar_beats>` 提供了一個更方便的編輯器。因為它可以讓你在預覽更改效果的同時，免去反復重新匯入音訊的麻煩。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_beat_count>`

音訊軌道的總長度（以節拍數為單位）。音訊檔案的實際播放時長可能會比這個屬性所指示的時長要長。該設定僅對希望使用互動音樂（interactive music）功能的音樂有效，而不適用於音效。

在 **進階匯入設定（Advanced Import Settings）** 對話框中，為 :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>` 提供了一個更方便的編輯器。因為它可以讓你在預覽更改效果的同時，免去反復重新匯入音訊的麻煩。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_bpm>`

音訊軌道的 tempo（節奏速度），以每分鐘的節拍數（BPM）為單位進行衡量。這裡填寫的數值應該與創作這首曲子時使用的 BPM 保持一致。這個設定僅對希望使用互動音樂（interactive music）功能的音樂有效，而不適用於音效。

在 **進階匯入設定（Advanced Import Settings）** 對話框中，為 :ref:`bpm<class_ResourceImporterMP3_property_bpm>` 提供了一個更方便的編輯器。因為它可以讓你在預覽更改效果的同時，免去反復重新匯入音訊的麻煩。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_ResourceImporterMP3_property_loop>`

如果啟用，當音訊播放結束（無論是播放到了音訊檔案的末尾，還是根據 :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>` 中指定的數量播放到了最後一個節拍的末尾）後，音訊將會從開頭或者從 :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` 指定的位置重新開始播放。

\ **注意：** 在 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 中，對於開啟了循環的音訊，當它播放到音訊檔案末尾時，不會觸發 :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>`\ （播放完成）訊號，因為音訊會一直無限循環播放下去。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_loop_offset>`

決定當播放到結尾後，音訊從何處開始迴圈。可僅重複音訊檔案的某一段，對部分環境音效或音樂十分實用。此值以秒為單位，從音訊開頭算起；\ ``0.0`` 代表整個檔案皆迴圈。

僅當 :ref:`loop<class_ResourceImporterMP3_property_loop>` 為 ``true`` 時生效。

\ **進階匯入設定** 對話框提供了更方便的 :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` 編輯器，可讓你在不重新匯入音訊的情況下預覽變更。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
