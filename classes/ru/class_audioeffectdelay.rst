:github_url: hide

.. _class_AudioEffectDelay:

AudioEffectDelay
================

**Наследует:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a delay audio effect to an audio bus.

Emulates an echo by playing the input audio back after a period of time.

.. rst-class:: classref-introduction-group

Описание
----------------

A "delay" effect plays the input audio signal back after a period of time. Each repetition is called a "delay tap" or simply "tap". Delay taps may be played back multiple times to create the sound of a repeating, decaying echo. Delay effects range from a subtle echo to a pronounced blending of previous sounds with new sounds.

See also :ref:`AudioEffectReverb<class_AudioEffectReverb>` for a blurry, continuous echo.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиошины <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`dry<class_AudioEffectDelay_property_dry>`                             | ``1.0``     |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`bool<class_bool>`   | :ref:`feedback_active<class_AudioEffectDelay_property_feedback_active>`     | ``false``   |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`feedback_delay_ms<class_AudioEffectDelay_property_feedback_delay_ms>` | ``340.0``   |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`feedback_level_db<class_AudioEffectDelay_property_feedback_level_db>` | ``-6.0``    |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`feedback_lowpass<class_AudioEffectDelay_property_feedback_lowpass>`   | ``16000.0`` |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`bool<class_bool>`   | :ref:`tap1_active<class_AudioEffectDelay_property_tap1_active>`             | ``true``    |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap1_delay_ms<class_AudioEffectDelay_property_tap1_delay_ms>`         | ``250.0``   |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap1_level_db<class_AudioEffectDelay_property_tap1_level_db>`         | ``-6.0``    |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap1_pan<class_AudioEffectDelay_property_tap1_pan>`                   | ``0.2``     |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`bool<class_bool>`   | :ref:`tap2_active<class_AudioEffectDelay_property_tap2_active>`             | ``true``    |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap2_delay_ms<class_AudioEffectDelay_property_tap2_delay_ms>`         | ``500.0``   |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap2_level_db<class_AudioEffectDelay_property_tap2_level_db>`         | ``-12.0``   |
   +---------------------------+-----------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>` | :ref:`tap2_pan<class_AudioEffectDelay_property_tap2_pan>`                   | ``-0.4``    |
   +---------------------------+-----------------------------------------------------------------------------+-------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioEffectDelay_property_dry:

.. rst-class:: classref-property

:ref:`float<class_float>` **dry** = ``1.0`` :ref:`🔗<class_AudioEffectDelay_property_dry>`

.. rst-class:: classref-property-setget

- |void| **set_dry**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dry**\ (\ )

The volume ratio of the original audio. Value can range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **feedback_active** = ``false`` :ref:`🔗<class_AudioEffectDelay_property_feedback_active>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_feedback_active**\ (\ )

If ``true``, feedback is enabled, repeating taps after they are played.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback_delay_ms** = ``340.0`` :ref:`🔗<class_AudioEffectDelay_property_feedback_delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_delay_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback_delay_ms**\ (\ )

Feedback delay time in milliseconds. Value can range from 0 to 1500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback_level_db** = ``-6.0`` :ref:`🔗<class_AudioEffectDelay_property_feedback_level_db>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_level_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback_level_db**\ (\ )

Gain for feedback, in dB. Value can range from -60 to 0.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_lowpass:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback_lowpass** = ``16000.0`` :ref:`🔗<class_AudioEffectDelay_property_feedback_lowpass>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_lowpass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback_lowpass**\ (\ )

Low-pass filter for feedback, in Hz. Frequencies above this value are filtered out. Value can range from 1 to 16000.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tap1_active** = ``true`` :ref:`🔗<class_AudioEffectDelay_property_tap1_active>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tap1_active**\ (\ )

Если ``true``, первое касание будет включено.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap1_delay_ms** = ``250.0`` :ref:`🔗<class_AudioEffectDelay_property_tap1_delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_delay_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap1_delay_ms**\ (\ )

First tap delay time in milliseconds, compared to the original audio. Value can range from 0 to 1500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap1_level_db** = ``-6.0`` :ref:`🔗<class_AudioEffectDelay_property_tap1_level_db>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_level_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap1_level_db**\ (\ )

Gain for the first tap, in dB. Value can range from -60 to 0.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap1_pan** = ``0.2`` :ref:`🔗<class_AudioEffectDelay_property_tap1_pan>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_pan**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap1_pan**\ (\ )

Pan position for the first tap. Negative values pan the sound to the left, positive pan to the right. Value can range from -1 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tap2_active** = ``true`` :ref:`🔗<class_AudioEffectDelay_property_tap2_active>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tap2_active**\ (\ )

Если ``true``, второе нажатие будет включено.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap2_delay_ms** = ``500.0`` :ref:`🔗<class_AudioEffectDelay_property_tap2_delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_delay_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap2_delay_ms**\ (\ )

Second tap delay time in milliseconds, compared to the original audio. Value can range from 0 to 1500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap2_level_db** = ``-12.0`` :ref:`🔗<class_AudioEffectDelay_property_tap2_level_db>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_level_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap2_level_db**\ (\ )

Gain for the second tap, in dB. Value can range from -60 to 0.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap2_pan** = ``-0.4`` :ref:`🔗<class_AudioEffectDelay_property_tap2_pan>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_pan**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap2_pan**\ (\ )

Pan position for the second tap. Negative values pan the sound to the left, positive pan to the right. Value can range from -1 to 1.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
