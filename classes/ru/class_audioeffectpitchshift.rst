:github_url: hide

.. _class_AudioEffectPitchShift:

AudioEffectPitchShift
=====================

**Наследует:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a pitch-shifting audio effect to an audio bus.

Raises or lowers the pitch of the input audio.

.. rst-class:: classref-introduction-group

Описание
----------------

Allows modulation of pitch without modifying speed. All frequencies can be raised or lowered with minimal effect on transients.

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

   +----------------------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` | :ref:`fft_size<class_AudioEffectPitchShift_property_fft_size>`         | ``3``   |
   +----------------------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                              | :ref:`oversampling<class_AudioEffectPitchShift_property_oversampling>` | ``4``   |
   +----------------------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                          | :ref:`pitch_scale<class_AudioEffectPitchShift_property_pitch_scale>`   | ``1.0`` |
   +----------------------------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_AudioEffectPitchShift_FFTSize:

.. rst-class:: classref-enumeration

enum **FFTSize**: :ref:`🔗<enum_AudioEffectPitchShift_FFTSize>`

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_256** = ``0``

Используйте буфер из 256 выборок для быстрого преобразования Фурье. Самая низкая задержка, но наименее стабильная во времени.

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_512** = ``1``

Используйте буфер из 512 выборок для быстрого преобразования Фурье. Низкая задержка, но менее стабильная с течением времени.

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_1024** = ``2``

Используйте буфер из 1024 выборок для быстрого преобразования Фурье. Это компромисс между задержкой и стабильностью во времени.

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_2048** = ``3``

Используйте буфер из 2048 выборок для быстрого преобразования Фурье. Высокая задержка, но стабильная во времени.

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_4096:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_4096** = ``4``

Используйте буфер из 4096 выборок для быстрого преобразования Фурье. Самая высокая задержка, но самая стабильная во времени.

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_MAX** = ``5``

Представляет размер перечисления :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioEffectPitchShift_property_fft_size:

.. rst-class:: classref-property

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **fft_size** = ``3`` :ref:`🔗<class_AudioEffectPitchShift_property_fft_size>`

.. rst-class:: classref-property-setget

- |void| **set_fft_size**\ (\ value\: :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>`\ )
- :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **get_fft_size**\ (\ )

The size of the `Fast Fourier transform <https://en.wikipedia.org/wiki/Fast_Fourier_transform>`__ buffer. Higher values smooth out the effect over time, but have greater latency. The effects of this higher latency are especially noticeable on audio signals that have sudden amplitude changes.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPitchShift_property_oversampling:

.. rst-class:: classref-property

:ref:`int<class_int>` **oversampling** = ``4`` :ref:`🔗<class_AudioEffectPitchShift_property_oversampling>`

.. rst-class:: classref-property-setget

- |void| **set_oversampling**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_oversampling**\ (\ )

Коэффициент передискретизации (oversampling), который следует использовать. Более высокие значения обеспечивают лучшее качество, но более требовательны к ЦП и могут вызвать потрескивание звука, если ЦП не справляется.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPitchShift_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioEffectPitchShift_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

The pitch scale to use. ``1.0`` is the default pitch and plays sounds unaffected. :ref:`pitch_scale<class_AudioEffectPitchShift_property_pitch_scale>` can range from 0 (infinitely low pitch, inaudible) to 16 (16 times higher than the initial pitch).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
