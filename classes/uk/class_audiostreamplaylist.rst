:github_url: hide

.. _class_AudioStreamPlaylist:

AudioStreamPlaylist
===================

**Успадковує:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`AudioStream<class_AudioStream>`, який включає підпотоки та відтворює їх як список відтворення.

.. rst-class:: classref-introduction-group

Опис
--------

An audio stream that can play back sub-streams in sequence. Streams can be added to the Playlist with :ref:`set_list_stream()<class_AudioStreamPlaylist_method_set_list_stream>`, and shuffled with :ref:`shuffle<class_AudioStreamPlaylist_property_shuffle>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові потоки <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`fade_time<class_AudioStreamPlaylist_property_fade_time>`       | ``0.3``   |
   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_AudioStreamPlaylist_property_loop>`                 | ``true``  |
   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`shuffle<class_AudioStreamPlaylist_property_shuffle>`           | ``false`` |
   +---------------------------+----------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`stream_count<class_AudioStreamPlaylist_property_stream_count>` | ``0``     |
   +---------------------------+----------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_bpm<class_AudioStreamPlaylist_method_get_bpm>`\ (\ ) |const|                                                                                                     |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`get_list_stream<class_AudioStreamPlaylist_method_get_list_stream>`\ (\ stream_index\: :ref:`int<class_int>`\ ) |const|                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_list_stream<class_AudioStreamPlaylist_method_set_list_stream>`\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_AudioStreamPlaylist_constant_MAX_STREAMS:

.. rst-class:: classref-constant

**MAX_STREAMS** = ``64`` :ref:`🔗<class_AudioStreamPlaylist_constant_MAX_STREAMS>`

Максимальна кількість потоків, підтримуваних у списку відтворення.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioStreamPlaylist_property_fade_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fade_time** = ``0.3`` :ref:`🔗<class_AudioStreamPlaylist_property_fade_time>`

.. rst-class:: classref-property-setget

- |void| **set_fade_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fade_time**\ (\ )

Час затухання, який використовується, коли потік закінчується, під час переходу до наступного. Очікується, що потоки матимуть додатковий біт звуку після закінчення, щоб допомогти з затуханнями.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_AudioStreamPlaylist_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Якщо ``true``, плейлист буде петля, інакше плейлист закінчиться при закінченні останнього потоку.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_shuffle:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shuffle** = ``false`` :ref:`🔗<class_AudioStreamPlaylist_property_shuffle>`

.. rst-class:: classref-property-setget

- |void| **set_shuffle**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_shuffle**\ (\ )

Якщо ``true``, плейлист буде подрібнити кожен раз відтворюватись, і кожен раз його петлі.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_stream_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stream_count** = ``0`` :ref:`🔗<class_AudioStreamPlaylist_property_stream_count>`

.. rst-class:: classref-property-setget

- |void| **set_stream_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stream_count**\ (\ )

Кількість потоків у списку відтворення.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AudioStreamPlaylist_method_get_bpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bpm**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlaylist_method_get_bpm>`

Повертає BPM списку відтворення, який може змінюватися залежно від кліпу, що відтворюється.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_method_get_list_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_list_stream**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamPlaylist_method_get_list_stream>`

Повертає потік за індексом позиції відтворення.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_method_set_list_stream:

.. rst-class:: classref-method

|void| **set_list_stream**\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamPlaylist_method_set_list_stream>`

Встановлює потік на індекс позиції відтворення.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
