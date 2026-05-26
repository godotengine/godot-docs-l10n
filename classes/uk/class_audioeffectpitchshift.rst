:github_url: hide

.. _class_AudioEffectPitchShift:

AudioEffectPitchShift
=====================

**Успадковує:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a pitch-shifting audio effect to an audio bus.

Raises or lowers the pitch of the input audio.

.. rst-class:: classref-introduction-group

Опис
--------

Allows modulation of pitch without modifying speed. All frequencies can be raised or lowered with minimal effect on transients.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові шини <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Переліки
----------------

.. _enum_AudioEffectPitchShift_FFTSize:

.. rst-class:: classref-enumeration

enum **FFTSize**: :ref:`🔗<enum_AudioEffectPitchShift_FFTSize>`

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_256** = ``0``

Використовуйте буфер із 256 вибірок для швидкого перетворення Фур’є. Найнижча затримка, але найменш стабільна з часом.

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_512** = ``1``

Використовуйте буфер із 512 вибірок для швидкого перетворення Фур’є. Низька затримка, але менш стабільна з часом.

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_1024** = ``2``

Використовуйте буфер із 1024 вибірок для швидкого перетворення Фур’є. Це компроміс між затримкою та стабільністю в часі.

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_2048** = ``3``

Використовуйте буфер із 2048 вибірок для швидкого перетворення Фур’є. Висока затримка, але стабільна з часом.

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_4096:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_4096** = ``4``

Використовуйте буфер із 4096 вибірок для швидкого перетворення Фур’є. Найвища затримка, але найбільш стабільна з часом.

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_MAX** = ``5``

Представляє розмір переліку :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

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

Коефіцієнт передискретизації для використання. Вищі значення призводять до кращої якості, але є більш вимогливими до ЦП і можуть спричинити потріскування звуку, якщо ЦП не встигає.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPitchShift_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioEffectPitchShift_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

The pitch scale to use. ``1.0`` is the default pitch and plays sounds unaffected. :ref:`pitch_scale<class_AudioEffectPitchShift_property_pitch_scale>` can range from 0 (infinitely low pitch, inaudible) to 16 (16 times higher than the initial pitch).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
