:github_url: hide

.. _class_AudioStreamSynchronized:

AudioStreamSynchronized
=======================

**Наследует:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Поток, который может быть дополнен подпотоками, которые будут воспроизводиться синхронно.

.. rst-class:: classref-introduction-group

Описание
----------------

Это поток, который может быть оснащен подпотоками, которые будут воспроизводиться синхронно. Потоки начинаются в одно и то же время при нажатии кнопки воспроизведения и заканчиваются, когда заканчивается последний из них. Если один из подпотоков зацикливается, воспроизведение продолжается.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиопотоки <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`stream_count<class_AudioStreamSynchronized_property_stream_count>` | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методы
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

Константы
------------------

.. _class_AudioStreamSynchronized_constant_MAX_STREAMS:

.. rst-class:: classref-constant

**MAX_STREAMS** = ``32`` :ref:`🔗<class_AudioStreamSynchronized_constant_MAX_STREAMS>`

Максимальное количество потоков, которые можно синхронизировать.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioStreamSynchronized_property_stream_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stream_count** = ``0`` :ref:`🔗<class_AudioStreamSynchronized_property_stream_count>`

.. rst-class:: classref-property-setget

- |void| **set_stream_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stream_count**\ (\ )

Установите общее количество потоков, которые будут воспроизводиться синхронно.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioStreamSynchronized_method_get_sync_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_sync_stream**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamSynchronized_method_get_sync_stream>`

Получить один из синхронизированных потоков по индексу.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_get_sync_stream_volume:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_sync_stream_volume**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamSynchronized_method_get_sync_stream_volume>`

Получить громкость одного из синхронизированных потоков по индексу.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_set_sync_stream:

.. rst-class:: classref-method

|void| **set_sync_stream**\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamSynchronized_method_set_sync_stream>`

Установите один из синхронизированных потоков по индексу.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_set_sync_stream_volume:

.. rst-class:: classref-method

|void| **set_sync_stream_volume**\ (\ stream_index\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamSynchronized_method_set_sync_stream_volume>`

Установите громкость одного из синхронизированных потоков по индексу.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
