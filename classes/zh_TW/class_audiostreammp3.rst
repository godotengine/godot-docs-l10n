:github_url: hide

.. _class_AudioStreamMP3:

AudioStreamMP3
==============

**繼承：** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

MP3 音訊串流驅動程式。

.. rst-class:: classref-introduction-group

說明
----

MP3 音訊串流驅動程式。如果想在執行時載入 MP3 檔案，請參考 :ref:`data<class_AudioStreamMP3_property_data>`\ 。

\ **注意：** 只要在編譯引擎時加入 ``minimp3_extra_formats=yes`` 這個 SCons 參數，本類別便能選擇性地支援舊式的 MP1 及 MP2 格式；這些額外格式預設為停用。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`bar_beats<class_AudioStreamMP3_property_bar_beats>`     | ``4``                 |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`beat_count<class_AudioStreamMP3_property_beat_count>`   | ``0``                 |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                     | :ref:`bpm<class_AudioStreamMP3_property_bpm>`                 | ``0.0``               |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`data<class_AudioStreamMP3_property_data>`               | ``PackedByteArray()`` |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`loop<class_AudioStreamMP3_property_loop>`               | ``false``             |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                     | :ref:`loop_offset<class_AudioStreamMP3_property_loop_offset>` | ``0.0``               |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamMP3<class_AudioStreamMP3>` | :ref:`load_from_buffer<class_AudioStreamMP3_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| |
   +---------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamMP3<class_AudioStreamMP3>` | :ref:`load_from_file<class_AudioStreamMP3_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                              |
   +---------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioStreamMP3_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_AudioStreamMP3_property_bar_beats>`

.. rst-class:: classref-property-setget

- |void| **set_bar_beats**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bar_beats**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_AudioStreamMP3_property_beat_count>`

.. rst-class:: classref-property-setget

- |void| **set_beat_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_beat_count**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0.0`` :ref:`🔗<class_AudioStreamMP3_property_bpm>`

.. rst-class:: classref-property-setget

- |void| **set_bpm**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bpm**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data** = ``PackedByteArray()`` :ref:`🔗<class_AudioStreamMP3_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data**\ (\ )

包含以位元組為單位的音訊資料。

你可以使用下列程式碼片段在執行時載入檔案，而無須事先匯入。請注意，此程式碼會將整個檔案一次載入至記憶體，對於超大檔案（數百 MB 以上）並不合適。


.. tabs::

 .. code-tab:: gdscript

    func load_mp3(path):
        var file = FileAccess.open(path, FileAccess.READ)
        var sound = AudioStreamMP3.new()
        sound.data = file.get_buffer(file.get_length())
        return sound

 .. code-tab:: csharp

    public AudioStreamMP3 LoadMP3(string path)
    {
        using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
        var sound = new AudioStreamMP3();
        sound.Data = file.GetBuffer(file.GetLength());
        return sound;
    }



**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_AudioStreamMP3_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

若為 ``true``\ ，當串流播放到結尾時會自動迴圈。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0.0`` :ref:`🔗<class_AudioStreamMP3_property_loop_offset>`

.. rst-class:: classref-property-setget

- |void| **set_loop_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_loop_offset**\ (\ )

迴圈後串流重新開始的時間（秒）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioStreamMP3_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamMP3<class_AudioStreamMP3>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_AudioStreamMP3_method_load_from_buffer>`

從給定的緩衝區建立新的 **AudioStreamMP3** 實例。該緩衝區必須包含 MP3 資料。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamMP3<class_AudioStreamMP3>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_AudioStreamMP3_method_load_from_file>`

從給定的檔案路徑建立新的 **AudioStreamMP3** 實例。該檔案必須為 MP3 格式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
