:github_url: hide

.. _class_AudioEffectChorus:

AudioEffectChorus
=================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

添加合唱音频效果。

.. rst-class:: classref-introduction-group

描述
----

添加一个合唱音频效果。该效果复制音频源，并应用声音滤波器进行操作。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

属性
----

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

方法
----

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

属性说明
--------

.. _class_AudioEffectChorus_property_dry:

.. rst-class:: classref-property

:ref:`float<class_float>` **dry** = ``1.0`` :ref:`🔗<class_AudioEffectChorus_property_dry>`

.. rst-class:: classref-property-setget

- |void| **set_dry**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dry**\ (\ )

效果的原始信号。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/cutoff_hz** = ``8000.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的截止频率。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/delay_ms** = ``15.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的信号延迟。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/depth_ms** = ``2.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音过滤器的深度。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/level_db** = ``0.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的音量。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/pan** = ``-0.5`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的声像级别。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/rate_hz** = ``0.8`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音过滤比率。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/cutoff_hz** = ``8000.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的截止频率。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/delay_ms** = ``20.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的信号延迟。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/depth_ms** = ``3.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音过滤器的深度。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/level_db** = ``0.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的音量。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/pan** = ``0.5`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的声像级别。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/rate_hz** = ``1.2`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音过滤比率。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/cutoff_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/3/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的截止频率。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/delay_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/3/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的信号延迟。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/depth_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/3/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音过滤器的深度。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/level_db** :ref:`🔗<class_AudioEffectChorus_property_voice/3/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的音量。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/pan** :ref:`🔗<class_AudioEffectChorus_property_voice/3/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的声像级别。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/rate_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/3/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音过滤比率。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/cutoff_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/4/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的截止频率。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/delay_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/4/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的信号延迟。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/depth_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/4/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音过滤器的深度。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/level_db** :ref:`🔗<class_AudioEffectChorus_property_voice/4/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的音量。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/pan** :ref:`🔗<class_AudioEffectChorus_property_voice/4/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音的声像级别。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/rate_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/4/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

声音过滤比率。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **voice_count** = ``2`` :ref:`🔗<class_AudioEffectChorus_property_voice_count>`

.. rst-class:: classref-property-setget

- |void| **set_voice_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_voice_count**\ (\ )

该效果中的声音数量。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_wet:

.. rst-class:: classref-property

:ref:`float<class_float>` **wet** = ``0.5`` :ref:`🔗<class_AudioEffectChorus_property_wet>`

.. rst-class:: classref-property-setget

- |void| **set_wet**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wet**\ (\ )

效果的处理信号。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioEffectChorus_method_get_voice_cutoff_hz:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_cutoff_hz>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_delay_ms:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_delay_ms>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_depth_ms:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_depth_ms>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_level_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_level_db>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_pan:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_pan>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_rate_hz:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_rate_hz>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_cutoff_hz:

.. rst-class:: classref-method

|void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_cutoff_hz>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_delay_ms:

.. rst-class:: classref-method

|void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_delay_ms>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_depth_ms:

.. rst-class:: classref-method

|void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_depth_ms>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_level_db:

.. rst-class:: classref-method

|void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_level_db>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_pan:

.. rst-class:: classref-method

|void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_pan>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_rate_hz:

.. rst-class:: classref-method

|void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_rate_hz>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
