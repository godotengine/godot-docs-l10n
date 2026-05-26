:github_url: hide

.. _class_AudioEffectFilter:

AudioEffectFilter
=================

**Наследует:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`, :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`, :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`, :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>`, :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>`, :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`

Base class for filters. Use effects that inherit this class instead of using it directly.

.. rst-class:: classref-introduction-group

Описание
----------------

A "filter" controls the gain of frequencies, using :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` as a frequency threshold. Filters can help to give room for each sound, and create interesting effects.

There are different types of filter that inherit this class:

Shelf filters: :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` and :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`\ 

Band-pass and notch filters: :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`, and :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`\ 

Low/high-pass filters: :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>` and :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`

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

   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` | ``2000.0`` |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` | :ref:`db<class_AudioEffectFilter_property_db>`               | ``0``      |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`gain<class_AudioEffectFilter_property_gain>`           | ``1.0``    |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`resonance<class_AudioEffectFilter_property_resonance>` | ``0.5``    |
   +--------------------------------------------------+--------------------------------------------------------------+------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_AudioEffectFilter_FilterDB:

.. rst-class:: classref-enumeration

enum **FilterDB**: :ref:`🔗<enum_AudioEffectFilter_FilterDB>`

.. _class_AudioEffectFilter_constant_FILTER_6DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_6DB** = ``0``

Cutting off at 6 dB per octave. One octave is twice the frequency above :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, or half the frequency below :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_12DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_12DB** = ``1``

Cutting off at 12 dB per octave. One octave is twice the frequency above :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, or half the frequency below :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_18DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_18DB** = ``2``

Cutting off at 18 dB per octave. One octave is twice the frequency above :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, or half the frequency below :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_24DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_24DB** = ``3``

Cutting off at 24 dB per octave. One octave is twice the frequency above :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, or half the frequency below :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioEffectFilter_property_cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **cutoff_hz** = ``2000.0`` :ref:`🔗<class_AudioEffectFilter_property_cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_cutoff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cutoff**\ (\ )

Frequency threshold for the filter, in Hz. Value can range from 1 to 20500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_db:

.. rst-class:: classref-property

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **db** = ``0`` :ref:`🔗<class_AudioEffectFilter_property_db>`

.. rst-class:: classref-property-setget

- |void| **set_db**\ (\ value\: :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>`\ )
- :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **get_db**\ (\ )

Steepness of the cutoff curve in dB per octave (twice the frequency above :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, or half the frequency below :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`), also known as the "order" of the filter. Higher orders have a more aggressive cutoff.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **gain** = ``1.0`` :ref:`🔗<class_AudioEffectFilter_property_gain>`

.. rst-class:: classref-property-setget

- |void| **set_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gain**\ (\ )

Gain of the frequencies affected by the filter. This property is only available for :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` and :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`. Value can range from 0 to 4.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_resonance:

.. rst-class:: classref-property

:ref:`float<class_float>` **resonance** = ``0.5`` :ref:`🔗<class_AudioEffectFilter_property_resonance>`

.. rst-class:: classref-property-setget

- |void| **set_resonance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_resonance**\ (\ )

Gain at or directly next to the :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` frequency threshold. Value can range from 0 to 1.

Its exact behavior depends on the selected filter type:

- For shelf filters, it accentuates or masks the order by increasing frequencies right next to the :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` frequency and decreasing frequencies on the opposite side.

- For the band-pass and notch filters, it widens or narrows the filter at the :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` frequency threshold.

- For low/high-pass filters, it increases or decreases frequencies at the :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` frequency threshold.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
