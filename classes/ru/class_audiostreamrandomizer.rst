:github_url: hide

.. _class_AudioStreamRandomizer:

AudioStreamRandomizer
=====================

**Наследует:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Объединяет пул аудиопотоков с изменением высоты тона и громкости.

.. rst-class:: classref-introduction-group

Описание
----------------

Выбирает случайный аудиопоток из пула в зависимости от режима воспроизведения и применяет случайное смещение высоты тона и громкости во время воспроизведения.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиопотоки <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` | :ref:`playback_mode<class_AudioStreamRandomizer_property_playback_mode>`                     | ``0``   |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_pitch<class_AudioStreamRandomizer_property_random_pitch>`                       | ``1.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_pitch_semitones<class_AudioStreamRandomizer_property_random_pitch_semitones>`   | ``0.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_volume_offset_db<class_AudioStreamRandomizer_property_random_volume_offset_db>` | ``0.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`AudioStream<class_AudioStream>`                        | :ref:`stream_{index}/stream<class_AudioStreamRandomizer_property_stream_{index}/stream>`     |         |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`stream_{index}/weight<class_AudioStreamRandomizer_property_stream_{index}/weight>`     | ``1.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                                        | :ref:`streams_count<class_AudioStreamRandomizer_property_streams_count>`                     | ``0``   |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`add_stream<class_AudioStreamRandomizer_method_add_stream>`\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`, weight\: :ref:`float<class_float>` = 1.0\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`get_stream<class_AudioStreamRandomizer_method_get_stream>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_stream_probability_weight<class_AudioStreamRandomizer_method_get_stream_probability_weight>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                             |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_stream<class_AudioStreamRandomizer_method_move_stream>`\ (\ index_from\: :ref:`int<class_int>`, index_to\: :ref:`int<class_int>`\ )                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`remove_stream<class_AudioStreamRandomizer_method_remove_stream>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_stream<class_AudioStreamRandomizer_method_set_stream>`\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ )                                           |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_stream_probability_weight<class_AudioStreamRandomizer_method_set_stream_probability_weight>`\ (\ index\: :ref:`int<class_int>`, weight\: :ref:`float<class_float>`\ )                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_AudioStreamRandomizer_PlaybackMode:

.. rst-class:: classref-enumeration

enum **PlaybackMode**: :ref:`🔗<enum_AudioStreamRandomizer_PlaybackMode>`

.. _class_AudioStreamRandomizer_constant_PLAYBACK_RANDOM_NO_REPEATS:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_RANDOM_NO_REPEATS** = ``0``

Выбирайте поток случайным образом в соответствии с весами вероятности, выбранными для каждого потока, но избегайте воспроизведения одного и того же потока дважды подряд, когда это возможно. Если в пуле присутствует только 1 звук, всегда будет воспроизводиться один и тот же звук, что фактически позволяет происходить повторам.

.. _class_AudioStreamRandomizer_constant_PLAYBACK_RANDOM:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_RANDOM** = ``1``

Выберите поток случайным образом в соответствии с весами вероятности, выбранными для каждого потока. Если в пуле присутствует только 1 звук, всегда будет воспроизводиться один и тот же звук.

.. _class_AudioStreamRandomizer_constant_PLAYBACK_SEQUENTIAL:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_SEQUENTIAL** = ``2``

Воспроизведение потоков в том порядке, в котором они появляются в пуле потоков. Если в пуле присутствует только 1 звук, всегда будет воспроизводиться один и тот же звук.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioStreamRandomizer_property_playback_mode:

.. rst-class:: classref-property

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **playback_mode** = ``0`` :ref:`🔗<class_AudioStreamRandomizer_property_playback_mode>`

.. rst-class:: classref-property-setget

- |void| **set_playback_mode**\ (\ value\: :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>`\ )
- :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **get_playback_mode**\ (\ )

Управляет тем, как AudioStream Randomizer выбирает, какой AudioStream воспроизводить следующим.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_pitch:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_pitch** = ``1.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_pitch>`

.. rst-class:: classref-property-setget

- |void| **set_random_pitch**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_pitch**\ (\ )

Максимально возможный множитель частоты случайного изменения высоты тона. Высота тона будет выбрана случайным образом в диапазоне от ``1.0 / random_pitch`` до ``random_pitch``. Значение ``1.0`` означает отсутствие изменения высоты тона. Значение ``2.0`` означает, что высота тона будет случайной, удвоенной или половинной.

\ **Примечание:** Установка этого свойства также устанавливает :ref:`random_pitch_semitones<class_AudioStreamRandomizer_property_random_pitch_semitones>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_pitch_semitones:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_pitch_semitones** = ``0.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_pitch_semitones>`

.. rst-class:: classref-property-setget

- |void| **set_random_pitch_semitones**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_pitch_semitones**\ (\ )

Максимально возможное расстояние в полутонах для случайного изменения высоты тона. Значение ``0.0`` означает отсутствие изменения.

\ **Примечание:** Установка этого свойства также устанавливает :ref:`random_pitch<class_AudioStreamRandomizer_property_random_pitch>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_volume_offset_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_volume_offset_db** = ``0.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_volume_offset_db>`

.. rst-class:: classref-property-setget

- |void| **set_random_volume_offset_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_volume_offset_db**\ (\ )

Интенсивность случайных колебаний громкости. Громкость будет увеличиваться или уменьшаться на случайное значение до ``random_volume_offset_db``. Значение ``0.0`` означает отсутствие колебаний. Значение ``3.0`` означает, что громкость будет случайным образом изменяться в диапазоне от ``-3.0 dB`` до ``+3.0 dB``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_stream_{index}/stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream_{index}/stream** :ref:`🔗<class_AudioStreamRandomizer_property_stream_{index}/stream>`

The :ref:`AudioStream<class_AudioStream>` at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. streams_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_stream_{index}/weight:

.. rst-class:: classref-property

:ref:`float<class_float>` **stream_{index}/weight** = ``1.0`` :ref:`🔗<class_AudioStreamRandomizer_property_stream_{index}/weight>`

The probability weight of the :ref:`AudioStream<class_AudioStream>` at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. streams_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_streams_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **streams_count** = ``0`` :ref:`🔗<class_AudioStreamRandomizer_property_streams_count>`

.. rst-class:: classref-property-setget

- |void| **set_streams_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_streams_count**\ (\ )

Количество потоков в пуле потоков.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioStreamRandomizer_method_add_stream:

.. rst-class:: classref-method

|void| **add_stream**\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`, weight\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_AudioStreamRandomizer_method_add_stream>`

Вставить поток по указанному индексу. Если индекс меньше нуля, вставка происходит в конец базового пула.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_get_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamRandomizer_method_get_stream>`

Возвращает поток по указанному индексу.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_get_stream_probability_weight:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_stream_probability_weight**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamRandomizer_method_get_stream_probability_weight>`

Возвращает вес вероятности, связанный с потоком по указанному индексу.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_move_stream:

.. rst-class:: classref-method

|void| **move_stream**\ (\ index_from\: :ref:`int<class_int>`, index_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_move_stream>`

Переместить поток из одного индекса в другой.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_remove_stream:

.. rst-class:: classref-method

|void| **remove_stream**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_remove_stream>`

Удалить поток по указанному индексу.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_set_stream:

.. rst-class:: classref-method

|void| **set_stream**\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_set_stream>`

Установите AudioStream по указанному индексу.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_set_stream_probability_weight:

.. rst-class:: classref-method

|void| **set_stream_probability_weight**\ (\ index\: :ref:`int<class_int>`, weight\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_set_stream_probability_weight>`

Установить вес вероятности потока по указанному индексу. Чем выше это значение, тем больше вероятность, что рандомизатор выберет этот поток во время случайных режимов воспроизведения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
