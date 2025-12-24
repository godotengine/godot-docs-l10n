:github_url: hide

.. _class_ResourceImporterOggVorbis:

ResourceImporterOggVorbis
=========================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯入 Ogg Vorbis 音訊檔案以供播放。

.. rst-class:: classref-introduction-group

說明
----

Ogg Vorbis 為有損音訊格式，在相同位元率下相較於 :ref:`ResourceImporterMP3<class_ResourceImporterMP3>` 可提供更佳音質。

大多數情況下建議使用 Ogg Vorbis 而非 MP3。若僅有 MP3 音源且無更高品質來源，則應直接使用 MP3 以避免再次經過有損壓縮。

Ogg Vorbis 解碼所需的 CPU 資源多於 :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`\ 。若需同時播放大量聲音，特別是在低階裝置上，建議對那些聲音改用 WAV。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯入音訊樣本 <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`bar_beats<class_ResourceImporterOggVorbis_property_bar_beats>`     | ``4``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>`   | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bpm<class_ResourceImporterOggVorbis_property_bpm>`                 | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_ResourceImporterOggVorbis_property_loop>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_buffer<class_ResourceImporterOggVorbis_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_file<class_ResourceImporterOggVorbis_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                              |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ResourceImporterOggVorbis_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_ResourceImporterOggVorbis_property_bar_beats>`

音軌中每一拍所包含的小節數。僅對欲使用互動式音樂功能的樂曲有意義，與音效無關。

\ **進階匯入設定** 對話方塊提供了更方便的 :ref:`bar_beats<class_ResourceImporterOggVorbis_property_bar_beats>` 編輯器，可讓你在不重新匯入音訊的情況下預覽變更。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_beat_count>`

音軌的拍數。僅對欲使用互動式音樂功能的樂曲有意義，與音效無關。

\ **進階匯入設定** 對話方塊提供了更方便的 :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>` 編輯器，可讓你在不重新匯入音訊的情況下預覽變更。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_bpm>`

音軌的每分鐘拍數（BPM），應與創作此曲時使用的 BPM 相同。僅對欲使用互動式音樂功能的樂曲有意義，與音效無關。

\ **進階匯入設定** 對話方塊提供了更方便的 :ref:`bpm<class_ResourceImporterOggVorbis_property_bpm>` 編輯器，可讓你在不重新匯入音訊的情況下預覽變更。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_ResourceImporterOggVorbis_property_loop>`

啟用後，音訊播放至結尾時會自動從開頭重新開始播放。

\ **注意：** 在 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 中，對於循環播放的音訊，播放到檔案末端時不會觸發 :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` 訊號，因為音訊會持續播放。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_loop_offset>`

決定當播放到結尾後，音訊從何處開始迴圈。可僅重複音訊檔案的某一段，對部分環境音效或音樂十分實用。此值以秒為單位，從音訊開頭算起；\ ``0.0`` 代表整個檔案皆迴圈。

僅當 :ref:`loop<class_ResourceImporterOggVorbis_property_loop>` 為 ``true`` 時生效。

\ **進階匯入設定** 對話方塊提供了更方便的 :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` 編輯器，可讓你在不重新匯入音訊的情況下預覽變更。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ResourceImporterOggVorbis_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_ResourceImporterOggVorbis_method_load_from_buffer>`

**已棄用：** Use :ref:`AudioStreamOggVorbis.load_from_buffer()<class_AudioStreamOggVorbis_method_load_from_buffer>` instead.

從指定的緩衝區建立新的 :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` 實例。緩衝區必須包含 Ogg Vorbis 資料。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceImporterOggVorbis_method_load_from_file>`

**已棄用：** Use :ref:`AudioStreamOggVorbis.load_from_file()<class_AudioStreamOggVorbis_method_load_from_file>` instead.

從指定的檔案路徑建立新的 :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` 實例。該檔案必須為 Ogg Vorbis 格式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
