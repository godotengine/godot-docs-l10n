:github_url: hide

.. _class_AudioStreamPlaylist:

AudioStreamPlaylist
===================

**Наследует:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`AudioStream<class_AudioStream>`, который включает в себя подпотоки и воспроизводит их как плейлист.

.. rst-class:: classref-introduction-group

Описание
----------------

Аудиопоток, позволяющий воспроизводить подпотоки последовательно. Потоки можно добавлять в плейлист с помощью :ref:`set_list_stream()<class_AudioStreamPlaylist_method_set_list_stream>` и перемешивать с помощью :ref:`shuffle<class_AudioStreamPlaylist_property_shuffle>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиопотоки <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Константы
------------------

.. _class_AudioStreamPlaylist_constant_MAX_STREAMS:

.. rst-class:: classref-constant

**MAX_STREAMS** = ``64`` :ref:`🔗<class_AudioStreamPlaylist_constant_MAX_STREAMS>`

Максимальное количество потоков, поддерживаемых в плейлисте.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioStreamPlaylist_property_fade_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **fade_time** = ``0.3`` :ref:`🔗<class_AudioStreamPlaylist_property_fade_time>`

.. rst-class:: classref-property-setget

- |void| **set_fade_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fade_time**\ (\ )

Время затухания, используемое при завершении потока, при переходе к следующему. Ожидается, что потоки будут иметь дополнительный бит аудио после окончания, чтобы помочь с затуханием.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_AudioStreamPlaylist_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Если ``true``, плейлист будет зациклен, в противном случае плейлист закончится по завершении последнего потока.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_shuffle:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shuffle** = ``false`` :ref:`🔗<class_AudioStreamPlaylist_property_shuffle>`

.. rst-class:: classref-property-setget

- |void| **set_shuffle**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_shuffle**\ (\ )

Если ``true``, плейлист будет перемешиваться каждый раз при начале воспроизведения и при каждом его зацикливании.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_property_stream_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stream_count** = ``0`` :ref:`🔗<class_AudioStreamPlaylist_property_stream_count>`

.. rst-class:: classref-property-setget

- |void| **set_stream_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stream_count**\ (\ )

Количество потоков в плейлисте.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioStreamPlaylist_method_get_bpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bpm**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlaylist_method_get_bpm>`

Возвращает BPM плейлиста, который может меняться в зависимости от воспроизводимого клипа.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_method_get_list_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_list_stream**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamPlaylist_method_get_list_stream>`

Возвращает поток в позиции воспроизведения index.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaylist_method_set_list_stream:

.. rst-class:: classref-method

|void| **set_list_stream**\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamPlaylist_method_set_list_stream>`

Устанавливает поток в индексе позиции воспроизведения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
