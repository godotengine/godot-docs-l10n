:github_url: hide

.. _class_AudioEffectChorus:

AudioEffectChorus
=================

**Наследует:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Добавляет эффект хоруса к аудиошине.

Создает впечатление наличия нескольких источников звука.

.. rst-class:: classref-introduction-group

Описание
----------------

Эффект «хорус» создает множество копий исходного аудио (называемых «голосами») с вариациями высоты тона, накладывая их друг на друга, создавая впечатление, что звук исходит из нескольких источников. Это создает спектральное и пространственное движение.

Каждый голос воспроизводится через короткий промежуток времени после исходного аудио, управляемый ``delay``. Внутренний низкочастотный осциллятор (LFO) управляет их высотой тона, а ``depth`` управляет максимальным значением LFO.

В реальном мире подобный эффект встречается в фортепиано, хорах и инструментальных ансамблях.

Этот эффект также может использоваться для расширения монофонического звука и придания цифровым звукам более естественного или аналогового качества.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиошины <../tutorials/audio/audio_buses>`

- :doc:`Звуковые эффекты <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`dry<class_AudioEffectChorus_property_dry>`                             | ``1.0``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/cutoff_hz<class_AudioEffectChorus_property_voice/1/cutoff_hz>` | ``8000.0`` |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/delay_ms<class_AudioEffectChorus_property_voice/1/delay_ms>`   | ``15.0``   |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/depth_ms<class_AudioEffectChorus_property_voice/1/depth_ms>`   | ``2.0``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/level_db<class_AudioEffectChorus_property_voice/1/level_db>`   | ``0.0``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/pan<class_AudioEffectChorus_property_voice/1/pan>`             | ``-0.5``   |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/1/rate_hz<class_AudioEffectChorus_property_voice/1/rate_hz>`     | ``0.8``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/cutoff_hz<class_AudioEffectChorus_property_voice/2/cutoff_hz>` | ``8000.0`` |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/delay_ms<class_AudioEffectChorus_property_voice/2/delay_ms>`   | ``20.0``   |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/depth_ms<class_AudioEffectChorus_property_voice/2/depth_ms>`   | ``3.0``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/level_db<class_AudioEffectChorus_property_voice/2/level_db>`   | ``0.0``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/pan<class_AudioEffectChorus_property_voice/2/pan>`             | ``0.5``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/2/rate_hz<class_AudioEffectChorus_property_voice/2/rate_hz>`     | ``1.2``    |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/cutoff_hz<class_AudioEffectChorus_property_voice/3/cutoff_hz>` |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/delay_ms<class_AudioEffectChorus_property_voice/3/delay_ms>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/depth_ms<class_AudioEffectChorus_property_voice/3/depth_ms>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/level_db<class_AudioEffectChorus_property_voice/3/level_db>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/pan<class_AudioEffectChorus_property_voice/3/pan>`             |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/3/rate_hz<class_AudioEffectChorus_property_voice/3/rate_hz>`     |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/cutoff_hz<class_AudioEffectChorus_property_voice/4/cutoff_hz>` |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/delay_ms<class_AudioEffectChorus_property_voice/4/delay_ms>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/depth_ms<class_AudioEffectChorus_property_voice/4/depth_ms>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/level_db<class_AudioEffectChorus_property_voice/4/level_db>`   |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/pan<class_AudioEffectChorus_property_voice/4/pan>`             |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`voice/4/rate_hz<class_AudioEffectChorus_property_voice/4/rate_hz>`     |            |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`     | :ref:`voice_count<class_AudioEffectChorus_property_voice_count>`             | ``2``      |
   +---------------------------+------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`wet<class_AudioEffectChorus_property_wet>`                             | ``0.5``    |
   +---------------------------+------------------------------------------------------------------------------+------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_cutoff_hz<class_AudioEffectChorus_method_get_voice_cutoff_hz>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_delay_ms<class_AudioEffectChorus_method_get_voice_delay_ms>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_depth_ms<class_AudioEffectChorus_method_get_voice_depth_ms>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_level_db<class_AudioEffectChorus_method_get_voice_level_db>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_pan<class_AudioEffectChorus_method_get_voice_pan>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                            |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_voice_rate_hz<class_AudioEffectChorus_method_get_voice_rate_hz>`\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_cutoff_hz<class_AudioEffectChorus_method_set_voice_cutoff_hz>`\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_delay_ms<class_AudioEffectChorus_method_set_voice_delay_ms>`\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_depth_ms<class_AudioEffectChorus_method_set_voice_depth_ms>`\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_level_db<class_AudioEffectChorus_method_set_voice_level_db>`\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_pan<class_AudioEffectChorus_method_set_voice_pan>`\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )                   |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_voice_rate_hz<class_AudioEffectChorus_method_set_voice_rate_hz>`\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )       |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioEffectChorus_property_dry:

.. rst-class:: classref-property

:ref:`float<class_float>` **dry** = ``1.0`` :ref:`🔗<class_AudioEffectChorus_property_dry>`

.. rst-class:: classref-property-setget

- |void| **set_dry**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dry**\ (\ )

Коэффициент громкости исходного аудио. Значение может варьироваться от 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/cutoff_hz** = ``8000.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Пороговая частота низкочастотного фильтра голоса в Гц.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/delay_ms** = ``15.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Задержка голоса в миллисекундах по сравнению с исходным аудиофайлом.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/depth_ms** = ``2.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Глубина низкочастотного осциллятора голоса в миллисекундах.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/level_db** = ``0.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Усиление голоса в дБ.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/pan** = ``-0.5`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Позиция панорамирования голоса.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/rate_hz** = ``0.8`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Частота низкочастотного генератора голоса в Гц.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/cutoff_hz** = ``8000.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Пороговая частота низкочастотного фильтра голоса в Гц.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/delay_ms** = ``20.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Задержка голоса в миллисекундах по сравнению с исходным аудиофайлом.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/depth_ms** = ``3.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Глубина низкочастотного осциллятора голоса в миллисекундах.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/level_db** = ``0.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Усиление голоса в дБ.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/pan** = ``0.5`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Позиция панорамирования голоса.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/rate_hz** = ``1.2`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Частота низкочастотного генератора голоса в Гц.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/cutoff_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/3/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Пороговая частота низкочастотного фильтра голоса в Гц.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/delay_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/3/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Задержка голоса в миллисекундах по сравнению с исходным аудиофайлом.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/depth_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/3/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Глубина низкочастотного осциллятора голоса в миллисекундах.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/level_db** :ref:`🔗<class_AudioEffectChorus_property_voice/3/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Усиление голоса в дБ.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/pan** :ref:`🔗<class_AudioEffectChorus_property_voice/3/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Позиция панорамирования голоса.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/rate_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/3/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Частота низкочастотного генератора голоса в Гц.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/cutoff_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/4/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Пороговая частота низкочастотного фильтра голоса в Гц.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/delay_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/4/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Задержка голоса в миллисекундах по сравнению с исходным аудиофайлом.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/depth_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/4/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Глубина низкочастотного осциллятора голоса в миллисекундах.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/level_db** :ref:`🔗<class_AudioEffectChorus_property_voice/4/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Усиление голоса в дБ.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/pan** :ref:`🔗<class_AudioEffectChorus_property_voice/4/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Позиция панорамирования голоса.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/rate_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/4/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

Частота низкочастотного генератора голоса в Гц.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **voice_count** = ``2`` :ref:`🔗<class_AudioEffectChorus_property_voice_count>`

.. rst-class:: classref-property-setget

- |void| **set_voice_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_voice_count**\ (\ )

Количество голосов в эффекте. Значение может варьироваться от 1 до 4.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_wet:

.. rst-class:: classref-property

:ref:`float<class_float>` **wet** = ``0.5`` :ref:`🔗<class_AudioEffectChorus_property_wet>`

.. rst-class:: classref-property-setget

- |void| **set_wet**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wet**\ (\ )

Соотношение громкости всех голосов. Значение может варьироваться от 0 до 1.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioEffectChorus_method_get_voice_cutoff_hz:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_cutoff_hz>`

Возвращает пороговое значение частоты низкочастотного фильтра для заданного параметра ``voice_idx`` в Гц. Частоты выше этого значения удаляются из голоса.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_delay_ms:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_delay_ms>`

Возвращает задержку заданного параметра ``voice_idx`` в миллисекундах по сравнению с исходным аудиосигналом.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_depth_ms:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_depth_ms>`

Возвращает глубину низкочастотного осциллятора заданного параметра ``voice_idx`` в миллисекундах.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_level_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_level_db>`

Возвращает коэффициент усиления заданного параметра ``voice_idx`` в дБ.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_pan:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_pan>`

Возвращает положение панорамирования для заданного ``voice_idx``. Отрицательные значения означают левый канал, положительные — правый.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_rate_hz:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_rate_hz>`

Возвращает частоту низкочастотного осциллятора заданного параметра ``voice_idx`` в Гц.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_cutoff_hz:

.. rst-class:: classref-method

|void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_cutoff_hz>`

Устанавливает пороговое значение частоты низкочастотного фильтра для заданного параметра ``voice_idx`` в Гц. Частоты выше ``cutoff_hz`` удаляются из ``voice_idx``. Значение может варьироваться от 1 до 20500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_delay_ms:

.. rst-class:: classref-method

|void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_delay_ms>`

Устанавливает задержку заданного параметра ``voice_idx`` в миллисекундах по сравнению с исходным аудио. Значение может варьироваться от 0 до 50.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_depth_ms:

.. rst-class:: classref-method

|void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_depth_ms>`

Задает глубину низкочастотного осциллятора заданного ``void_idx`` в миллисекундах. Значение может варьироваться от 0 до 20.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_level_db:

.. rst-class:: classref-method

|void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_level_db>`

Устанавливает коэффициент усиления заданного параметра ``voice_idx`` в дБ. Значение может варьироваться от -60 до 24.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_pan:

.. rst-class:: classref-method

|void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_pan>`

Задает положение панорамирования для заданного параметра ``voice_idx``. Отрицательные значения панорамируют звук влево, положительные — вправо. Значение может принимать значения от -1 до 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_rate_hz:

.. rst-class:: classref-method

|void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_rate_hz>`

Задает частоту низкочастотного осциллятора заданного ``void_idx`` в Гц. Значение может варьироваться от 0,1 до 20.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
