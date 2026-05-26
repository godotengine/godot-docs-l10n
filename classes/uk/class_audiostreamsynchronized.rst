:github_url: hide

.. _class_AudioStreamSynchronized:

AudioStreamSynchronized
=======================

**Успадковує:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Потік, який можна оснастити допотоками, які відтворюватимуться синхронно.

.. rst-class:: classref-introduction-group

Опис
--------

Це потік, який можна оснастити допотоками, які відтворюватимуться синхронно. Потоки починаються точно в той самий час, коли натиснуто кнопку відтворення, і закінчуються, коли закінчується остання з них. Якщо один із підпотоків зациклюється, відтворення продовжиться.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові потоки <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`stream_count<class_AudioStreamSynchronized_property_stream_count>` | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`get_sync_stream<class_AudioStreamSynchronized_method_get_sync_stream>`\ (\ stream_index\: :ref:`int<class_int>`\ ) |const|                                               |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_sync_stream_volume<class_AudioStreamSynchronized_method_get_sync_stream_volume>`\ (\ stream_index\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_sync_stream<class_AudioStreamSynchronized_method_set_sync_stream>`\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_sync_stream_volume<class_AudioStreamSynchronized_method_set_sync_stream_volume>`\ (\ stream_index\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ )  |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_AudioStreamSynchronized_constant_MAX_STREAMS:

.. rst-class:: classref-constant

**MAX_STREAMS** = ``32`` :ref:`🔗<class_AudioStreamSynchronized_constant_MAX_STREAMS>`

Максимальна кількість потоків, які можна синхронізувати.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioStreamSynchronized_property_stream_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stream_count** = ``0`` :ref:`🔗<class_AudioStreamSynchronized_property_stream_count>`

.. rst-class:: classref-property-setget

- |void| **set_stream_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stream_count**\ (\ )

Встановіть загальну кількість потоків, які відтворюватимуться синхронізовано.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AudioStreamSynchronized_method_get_sync_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_sync_stream**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamSynchronized_method_get_sync_stream>`

Отримайте один із синхронізованих потоків за індексом.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_get_sync_stream_volume:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_sync_stream_volume**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamSynchronized_method_get_sync_stream_volume>`

Отримайте гучність одного із синхронізованих потоків за індексом.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_set_sync_stream:

.. rst-class:: classref-method

|void| **set_sync_stream**\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamSynchronized_method_set_sync_stream>`

Встановіть один із синхронізованих потоків за індексом.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_set_sync_stream_volume:

.. rst-class:: classref-method

|void| **set_sync_stream_volume**\ (\ stream_index\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamSynchronized_method_set_sync_stream_volume>`

Встановіть гучність одного із синхронізованих потоків за індексом.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
