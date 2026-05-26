:github_url: hide

.. _class_AudioStreamMP3:

AudioStreamMP3
==============

**Наследует:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

MP3 audio stream драйвер.

.. rst-class:: classref-introduction-group

Описание
----------------

MP3 audio stream driver. See :ref:`data<class_AudioStreamMP3_property_data>` if you want to load an MP3 file at run-time. More info can be found in :ref:`ResourceImporterMP3<class_ResourceImporterMP3>`.

\ **Note:** This class can optionally support legacy MP1 and MP2 formats, provided that the engine is compiled with the ``minimp3_extra_formats=yes`` SCons option. These extra formats are not enabled by default.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиопотоки <../tutorials/audio/audio_streams>`

- :doc:`Загрузка и сохранение файла времени выполнения <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
------------

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

Описания свойств
--------------------------------

.. _class_AudioStreamMP3_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_AudioStreamMP3_property_bar_beats>`

.. rst-class:: classref-property-setget

- |void| **set_bar_beats**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bar_beats**\ (\ )

The number of beats within a single bar in the audio track.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_AudioStreamMP3_property_beat_count>`

.. rst-class:: classref-property-setget

- |void| **set_beat_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_beat_count**\ (\ )

The length of the audio track, in beats. The actual duration of the audio file might be longer than what is indicated by this property. It defines the end of the audio for looping, :ref:`AudioStreamPlaylist<class_AudioStreamPlaylist>`, and :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0.0`` :ref:`🔗<class_AudioStreamMP3_property_bpm>`

.. rst-class:: classref-property-setget

- |void| **set_bpm**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bpm**\ (\ )

The tempo of the audio track, measured in beats per minute.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data** = ``PackedByteArray()`` :ref:`🔗<class_AudioStreamMP3_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data**\ (\ )

Содержит аудиоданные в байтах.

Вы можете загрузить файл без необходимости его предварительного импорта, используя фрагмент кода ниже. Имейте в виду, что этот фрагмент загружает весь файл в память и может быть неидеальным для огромных файлов (сотни мегабайт и более).


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

If ``true``, the stream will play again from the specified :ref:`loop_offset<class_AudioStreamMP3_property_loop_offset>` once it reaches the end of the audio track, or once it reaches the end of the last beat according to the amount specified in :ref:`beat_count<class_AudioStreamMP3_property_beat_count>`. Useful for ambient sounds and background music.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0.0`` :ref:`🔗<class_AudioStreamMP3_property_loop_offset>`

.. rst-class:: classref-property-setget

- |void| **set_loop_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_loop_offset**\ (\ )

Время в секундах, через которое начинается трансляция после зацикливания.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioStreamMP3_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamMP3<class_AudioStreamMP3>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_AudioStreamMP3_method_load_from_buffer>`

Создает новый экземпляр **AudioStreamMP3** из указанного буфера. Буфер должен содержать данные MP3.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamMP3_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamMP3<class_AudioStreamMP3>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_AudioStreamMP3_method_load_from_file>`

Создает новый экземпляр **AudioStreamMP3** из указанного пути к файлу. Файл должен быть в формате MP3.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
