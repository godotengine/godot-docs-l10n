:github_url: hide

.. _class_AudioStreamOggVorbis:

AudioStreamOggVorbis
====================

**Наследует:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Класс, представляющий аудиопоток Ogg Vorbis.

.. rst-class:: classref-introduction-group

Описание
----------------

The AudioStreamOggVorbis class is a specialized :ref:`AudioStream<class_AudioStream>` for handling Ogg Vorbis file formats. It offers functionality for loading and playing back Ogg Vorbis files, as well as managing looping and other playback properties. More info can be found in :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>`.

This class is part of the audio stream system, which also supports WAV files through the :ref:`AudioStreamWAV<class_AudioStreamWAV>` class, and MP3 files through the :ref:`AudioStreamMP3<class_AudioStreamMP3>` class.

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

   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`bar_beats<class_AudioStreamOggVorbis_property_bar_beats>`             | ``4``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`beat_count<class_AudioStreamOggVorbis_property_beat_count>`           | ``0``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`bpm<class_AudioStreamOggVorbis_property_bpm>`                         | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`loop<class_AudioStreamOggVorbis_property_loop>`                       | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`loop_offset<class_AudioStreamOggVorbis_property_loop_offset>`         | ``0.0``   |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`OggPacketSequence<class_OggPacketSequence>` | :ref:`packet_sequence<class_AudioStreamOggVorbis_property_packet_sequence>` |           |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`tags<class_AudioStreamOggVorbis_property_tags>`                       | ``{}``    |
   +---------------------------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_buffer<class_AudioStreamOggVorbis_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_file<class_AudioStreamOggVorbis_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioStreamOggVorbis_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_AudioStreamOggVorbis_property_bar_beats>`

.. rst-class:: classref-property-setget

- |void| **set_bar_beats**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bar_beats**\ (\ )

The number of beats within a single bar in the audio track.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_AudioStreamOggVorbis_property_beat_count>`

.. rst-class:: classref-property-setget

- |void| **set_beat_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_beat_count**\ (\ )

The length of the audio track, in beats. The actual duration of the audio file might be longer than what is indicated by this property. It defines the end of the audio for looping, :ref:`AudioStreamPlaylist<class_AudioStreamPlaylist>`, and :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0.0`` :ref:`🔗<class_AudioStreamOggVorbis_property_bpm>`

.. rst-class:: classref-property-setget

- |void| **set_bpm**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bpm**\ (\ )

The tempo of the audio track, measured in beats per minute.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_AudioStreamOggVorbis_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

If ``true``, the stream will play again from the specified :ref:`loop_offset<class_AudioStreamOggVorbis_property_loop_offset>` once it reaches the end of the audio track, or once it reaches the end of the last beat according to the amount specified in :ref:`beat_count<class_AudioStreamOggVorbis_property_beat_count>`. Useful for ambient sounds and background music.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0.0`` :ref:`🔗<class_AudioStreamOggVorbis_property_loop_offset>`

.. rst-class:: classref-property-setget

- |void| **set_loop_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_loop_offset**\ (\ )

Время в секундах, через которое начинается трансляция после зацикливания.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_packet_sequence:

.. rst-class:: classref-property

:ref:`OggPacketSequence<class_OggPacketSequence>` **packet_sequence** :ref:`🔗<class_AudioStreamOggVorbis_property_packet_sequence>`

.. rst-class:: classref-property-setget

- |void| **set_packet_sequence**\ (\ value\: :ref:`OggPacketSequence<class_OggPacketSequence>`\ )
- :ref:`OggPacketSequence<class_OggPacketSequence>` **get_packet_sequence**\ (\ )

Содержит необработанные данные Ogg для этого потока.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_tags:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **tags** = ``{}`` :ref:`🔗<class_AudioStreamOggVorbis_property_tags>`

.. rst-class:: classref-property-setget

- |void| **set_tags**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_tags**\ (\ )

Содержит пользовательские теги, если они найдены в данных Ogg Vorbis.

Обычно используемые теги включают ``title``, ``artist``, ``album``, ``tracknumber`` и ``date``, (``date`` не имеет стандартного формата даты).

\ **Примечание:** Не все теги *гарантированно* присутствует в каждом файле, поэтому обязательно учитывайте ключи, которые не всегда существуют.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioStreamOggVorbis_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_AudioStreamOggVorbis_method_load_from_buffer>`

Создает новый экземпляр **AudioStreamOggVorbis** из указанного буфера. Буфер должен содержать данные Ogg Vorbis.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_AudioStreamOggVorbis_method_load_from_file>`

Создает новый экземпляр **AudioStreamOggVorbis** из указанного пути к файлу. Файл должен быть в формате Ogg Vorbis.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
