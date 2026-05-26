:github_url: hide

.. _class_AudioEffectChorus:

AudioEffectChorus
=================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a chorus audio effect to an audio bus.

Gives the impression of multiple audio sources.

.. rst-class:: classref-introduction-group

說明
----

A "chorus" effect creates multiple copies of the original audio (called "voices") with variations in pitch, and layers on top of the original, giving the impression that the sound comes from multiple sources. This creates spectral and spatial movement.

Each voice is played a short period of time after the original audio, controlled by ``delay``. An internal low-frequency oscillator (LFO) controls their pitch, and ``depth`` controls the LFO's maximum amount.

In the real world, this kind of effect is found in pianos, choirs, and instrument ensembles.

This effect can also be used to widen mono audio and make digital sounds have a more natural or analog quality.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_AudioEffectChorus_property_dry:

.. rst-class:: classref-property

:ref:`float<class_float>` **dry** = ``1.0`` :ref:`🔗<class_AudioEffectChorus_property_dry>`

.. rst-class:: classref-property-setget

- |void| **set_dry**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dry**\ (\ )

The volume ratio of the original audio. Value can range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/cutoff_hz** = ``8000.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The frequency threshold of the voice's low-pass filter in Hz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/delay_ms** = ``15.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The delay of the voice in milliseconds, compared to the original audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/depth_ms** = ``2.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The depth of the voice's low-frequency oscillator in milliseconds.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/level_db** = ``0.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The gain of the voice in dB.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/pan** = ``-0.5`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The pan position of the voice.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/1/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/1/rate_hz** = ``0.8`` :ref:`🔗<class_AudioEffectChorus_property_voice/1/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The rate of the voice's low-frequency oscillator in Hz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/cutoff_hz** = ``8000.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The frequency threshold of the voice's low-pass filter in Hz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/delay_ms** = ``20.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The delay of the voice in milliseconds, compared to the original audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/depth_ms** = ``3.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The depth of the voice's low-frequency oscillator in milliseconds.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/level_db** = ``0.0`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The gain of the voice in dB.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/pan** = ``0.5`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The pan position of the voice.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/2/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/2/rate_hz** = ``1.2`` :ref:`🔗<class_AudioEffectChorus_property_voice/2/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The rate of the voice's low-frequency oscillator in Hz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/cutoff_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/3/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The frequency threshold of the voice's low-pass filter in Hz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/delay_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/3/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The delay of the voice in milliseconds, compared to the original audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/depth_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/3/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The depth of the voice's low-frequency oscillator in milliseconds.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/level_db** :ref:`🔗<class_AudioEffectChorus_property_voice/3/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The gain of the voice in dB.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/pan** :ref:`🔗<class_AudioEffectChorus_property_voice/3/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The pan position of the voice.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/3/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/3/rate_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/3/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The rate of the voice's low-frequency oscillator in Hz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/cutoff_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/4/cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The frequency threshold of the voice's low-pass filter in Hz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/delay_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/4/delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The delay of the voice in milliseconds, compared to the original audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/depth_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/depth_ms** :ref:`🔗<class_AudioEffectChorus_property_voice/4/depth_ms>`

.. rst-class:: classref-property-setget

- |void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The depth of the voice's low-frequency oscillator in milliseconds.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/level_db** :ref:`🔗<class_AudioEffectChorus_property_voice/4/level_db>`

.. rst-class:: classref-property-setget

- |void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The gain of the voice in dB.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/pan** :ref:`🔗<class_AudioEffectChorus_property_voice/4/pan>`

.. rst-class:: classref-property-setget

- |void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The pan position of the voice.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice/4/rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **voice/4/rate_hz** :ref:`🔗<class_AudioEffectChorus_property_voice/4/rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const|

The rate of the voice's low-frequency oscillator in Hz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_voice_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **voice_count** = ``2`` :ref:`🔗<class_AudioEffectChorus_property_voice_count>`

.. rst-class:: classref-property-setget

- |void| **set_voice_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_voice_count**\ (\ )

The number of voices in the effect. Value can range from 1 to 4.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_property_wet:

.. rst-class:: classref-property

:ref:`float<class_float>` **wet** = ``0.5`` :ref:`🔗<class_AudioEffectChorus_property_wet>`

.. rst-class:: classref-property-setget

- |void| **set_wet**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wet**\ (\ )

The volume ratio of all voices. Value can range from 0 to 1.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioEffectChorus_method_get_voice_cutoff_hz:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_cutoff_hz>`

Returns the frequency threshold of a given ``voice_idx``'s low-pass filter in Hz. Frequencies above this value are removed from the voice.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_delay_ms:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_delay_ms>`

Returns the delay of a given ``voice_idx`` in milliseconds, compared to the original audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_depth_ms:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_depth_ms>`

Returns the depth of a given ``voice_idx``'s low-frequency oscillator in milliseconds.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_level_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_level_db>`

Returns the gain of a given ``voice_idx`` in dB.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_pan:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_pan>`

Returns the pan position of a given ``voice_idx``. Negative values mean the left channel, positive mean the right.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_get_voice_rate_hz:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectChorus_method_get_voice_rate_hz>`

Returns the rate of a given ``voice_idx``'s low-frequency oscillator in Hz.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_cutoff_hz:

.. rst-class:: classref-method

|void| **set_voice_cutoff_hz**\ (\ voice_idx\: :ref:`int<class_int>`, cutoff_hz\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_cutoff_hz>`

Sets the frequency threshold of a given ``voice_idx``'s low-pass filter in Hz. Frequencies above ``cutoff_hz`` are removed from ``voice_idx``. Value can range from 1 to 20500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_delay_ms:

.. rst-class:: classref-method

|void| **set_voice_delay_ms**\ (\ voice_idx\: :ref:`int<class_int>`, delay_ms\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_delay_ms>`

Sets the delay of a given ``voice_idx`` in milliseconds, compared to the original audio. Value can range from 0 to 50.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_depth_ms:

.. rst-class:: classref-method

|void| **set_voice_depth_ms**\ (\ voice_idx\: :ref:`int<class_int>`, depth_ms\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_depth_ms>`

Sets the depth of a given ``voice_idx``'s low-frequency oscillator in milliseconds. Value can range from 0 to 20.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_level_db:

.. rst-class:: classref-method

|void| **set_voice_level_db**\ (\ voice_idx\: :ref:`int<class_int>`, level_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_level_db>`

Sets the gain of a given ``voice_idx`` in dB. Value can range from -60 to 24.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_pan:

.. rst-class:: classref-method

|void| **set_voice_pan**\ (\ voice_idx\: :ref:`int<class_int>`, pan\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_pan>`

Sets the pan position of a given ``voice_idx``. Negative values pan the sound to the left, positive pan to the right. Value can range from -1 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectChorus_method_set_voice_rate_hz:

.. rst-class:: classref-method

|void| **set_voice_rate_hz**\ (\ voice_idx\: :ref:`int<class_int>`, rate_hz\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectChorus_method_set_voice_rate_hz>`

Sets the rate of a given ``voice_idx``'s low-frequency oscillator in Hz. Value can range from 0.1 to 20.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
