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

音軌中每一拍所包含的小節數。僅對欲使用互動式音樂功能的樂曲有意義，與音效無關。

\ **進階匯入設定** 對話方塊提供了更方便的 :ref:`bar_beats<class_ResourceImporterMP3_property_bar_beats>` 編輯器，可讓你在不重新匯入音訊的情況下預覽變更。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_beat_count>`

音軌的拍數。僅對欲使用互動式音樂功能的樂曲有意義，與音效無關。

\ **進階匯入設定** 對話方塊提供了更方便的 :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>` 編輯器，可讓你在不重新匯入音訊的情況下預覽變更。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_bpm>`

音軌的每分鐘拍數（BPM），應與創作此曲時使用的 BPM 相同。僅對欲使用互動式音樂功能的樂曲有意義，與音效無關。

\ **進階匯入設定** 對話方塊提供了更方便的 :ref:`bpm<class_ResourceImporterMP3_property_bpm>` 編輯器，可讓你在不重新匯入音訊的情況下預覽變更。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_ResourceImporterMP3_property_loop>`

啟用後，音訊播放至結尾時會自動從開頭重新開始播放。

\ **注意：** 在 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 中，對於循環播放的音訊，播放到檔案末端時不會觸發 :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` 訊號，因為音訊會持續播放。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_loop_offset>`

決定當播放到結尾後，音訊從何處開始迴圈。可僅重複音訊檔案的某一段，對部分環境音效或音樂十分實用。此值以秒為單位，從音訊開頭算起；\ ``0.0`` 代表整個檔案皆迴圈。

僅當 :ref:`loop<class_ResourceImporterMP3_property_loop>` 為 ``true`` 時生效。

\ **進階匯入設定** 對話方塊提供了更方便的 :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` 編輯器，可讓你在不重新匯入音訊的情況下預覽變更。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
