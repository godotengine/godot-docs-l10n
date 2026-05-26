:github_url: hide

.. _class_AudioStreamOggVorbis:

AudioStreamOggVorbis
====================

**Успадковує:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Клас, що представляє аудіопотік Ogg Vorbis.

.. rst-class:: classref-introduction-group

Опис
--------

The AudioStreamOggVorbis class is a specialized :ref:`AudioStream<class_AudioStream>` for handling Ogg Vorbis file formats. It offers functionality for loading and playing back Ogg Vorbis files, as well as managing looping and other playback properties. More info can be found in :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>`.

This class is part of the audio stream system, which also supports WAV files through the :ref:`AudioStreamWAV<class_AudioStreamWAV>` class, and MP3 files through the :ref:`AudioStreamMP3<class_AudioStreamMP3>` class.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові потоки <../tutorials/audio/audio_streams>`

- :doc:`Завантаження та збереження файлів під час виконання <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Описи властивостей
------------------------------------

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

Час у секундах, коли потік починається після зациклення.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_packet_sequence:

.. rst-class:: classref-property

:ref:`OggPacketSequence<class_OggPacketSequence>` **packet_sequence** :ref:`🔗<class_AudioStreamOggVorbis_property_packet_sequence>`

.. rst-class:: classref-property-setget

- |void| **set_packet_sequence**\ (\ value\: :ref:`OggPacketSequence<class_OggPacketSequence>`\ )
- :ref:`OggPacketSequence<class_OggPacketSequence>` **get_packet_sequence**\ (\ )

Містить необроблені дані Ogg для цього потоку.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_property_tags:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **tags** = ``{}`` :ref:`🔗<class_AudioStreamOggVorbis_property_tags>`

.. rst-class:: classref-property-setget

- |void| **set_tags**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_tags**\ (\ )

Містить визначені користувачем теги, якщо вони знайдені в даних Ogg Vorbis.

Зазвичай використовуються такі теги: ``назва``, ``виконавець``, ``альбом``, ``tracknumber``, and ``date`` (``date`` does not have a standard date format).

\ **Примітка:** Немає *гарантованої* присутності тегу в кожному файлі, тому обов’язково враховуйте, що ключі не завжди існують.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AudioStreamOggVorbis_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_AudioStreamOggVorbis_method_load_from_buffer>`

Створює новий екземпляр **AudioStreamOggVorbis** із заданого буфера. Буфер має містити дані Ogg Vorbis.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamOggVorbis_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_AudioStreamOggVorbis_method_load_from_file>`

Створює новий екземпляр **AudioStreamOggVorbis** із указаного шляху до файлу. Файл має бути у форматі Ogg Vorbis.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
