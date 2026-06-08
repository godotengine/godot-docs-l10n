:github_url: hide

.. _class_AudioEffectFilter:

AudioEffectFilter
=================

**Наследует:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`, :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`, :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`, :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>`, :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>`, :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`

Базовый класс для фильтров. Используйте эффекты, наследующие этот класс, вместо прямого использования его.

.. rst-class:: classref-introduction-group

Описание
----------------

Фильтр управляет усилением частот, используя :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` в качестве порогового значения частоты. Фильтры могут помочь обеспечить пространство для каждого звука и создать интересные эффекты.

Существуют различные типы фильтров, наследующих этот класс:

Полочные фильтры: :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` и :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`\ 

Полосовые и режекторные фильтры: :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>` и :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`\ 

Фильтры нижних/верхних частот: :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>` и :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`

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

Срез на уровне 6 дБ на октаву. Одна октава — это удвоенная частота выше :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` или половина частоты ниже :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_12DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_12DB** = ``1``

Срез на уровне 12 дБ на октаву. Одна октава — это удвоенная частота выше :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` или половина частоты ниже :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_18DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_18DB** = ``2``

Срез на уровне 18 дБ на октаву. Одна октава — это удвоенная частота выше :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` или половина частоты ниже :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_24DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_24DB** = ``3``

Срез на уровне 24 дБ на октаву. Одна октава — это удвоенная частота выше :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` или половина частоты ниже :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

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

Частотный порог фильтра, в Гц. Значение может варьироваться от 1 до 20500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_db:

.. rst-class:: classref-property

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **db** = ``0`` :ref:`🔗<class_AudioEffectFilter_property_db>`

.. rst-class:: classref-property-setget

- |void| **set_db**\ (\ value\: :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>`\ )
- :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **get_db**\ (\ )

Крутизна кривой среза в дБ на октаву (удвоенная частота выше :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` или половина частоты ниже :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`), также известная как «порядок» фильтра. Более высокие порядки имеют более агрессивный срез.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **gain** = ``1.0`` :ref:`🔗<class_AudioEffectFilter_property_gain>`

.. rst-class:: classref-property-setget

- |void| **set_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gain**\ (\ )

Усиление частот, на которые воздействует фильтр. Это свойство доступно только для :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` и :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`. Значение может варьироваться от 0 до 4.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_resonance:

.. rst-class:: classref-property

:ref:`float<class_float>` **resonance** = ``0.5`` :ref:`🔗<class_AudioEffectFilter_property_resonance>`

.. rst-class:: classref-property-setget

- |void| **set_resonance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_resonance**\ (\ )

Усиление на частоте, близкой к :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, или непосредственно рядом с ней. Значение может варьироваться от 0 до 1.

Точное поведение зависит от выбранного типа фильтра:

- Для полочных фильтров: усиливает или маскирует порядок, увеличивая частоты непосредственно рядом с частотой :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` и уменьшая частоты на противоположной стороне.

- Для полосовых и режекторных фильтров: расширяет или сужает фильтр на частоте, близкой к :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

- Для фильтров нижних/верхних частот: увеличивает или уменьшает частоты на частоте, близкой к :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
