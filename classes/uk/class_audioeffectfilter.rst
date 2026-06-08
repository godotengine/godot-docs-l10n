:github_url: hide

.. _class_AudioEffectFilter:

AudioEffectFilter
=================

**Успадковує:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`, :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`, :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`, :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>`, :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>`, :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`

Базовий клас для фільтрів. Використовуйте ефекти, які успадковують цей клас, замість того, щоб застосовувати його безпосередньо.

.. rst-class:: classref-introduction-group

Опис
--------

«Фільтр» регулює рівень сигналів на певних частотах, використовуючи :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` як частотний поріг. Фільтри допомагають виділити кожен звук та створювати цікаві ефекти.

Існують різні типи фільтрів, що успадковують цей клас:

Полічні фільтри: :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` та :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`\ 

Смугові та режекторні фільтри: :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>` та :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`\ 

Низькочастотні/високочастотні фільтри: :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>` та :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові шини <../tutorials/audio/audio_buses>`

- :doc:`Аудіоефекти <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Переліки
----------------

.. _enum_AudioEffectFilter_FilterDB:

.. rst-class:: classref-enumeration

enum **FilterDB**: :ref:`🔗<enum_AudioEffectFilter_FilterDB>`

.. _class_AudioEffectFilter_constant_FILTER_6DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_6DB** = ``0``

Зріз на 6 дБ на октаву. Одна октава — це частота, що вдвічі перевищує :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, або частота, що вдвічі нижча за :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_12DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_12DB** = ``1``

Зріз на рівні 12 дБ на октаву. Одна октава — це частота, що вдвічі перевищує :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, або частота, що вдвічі нижча за :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_18DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_18DB** = ``2``

Зріз на рівні 18 дБ на октаву. Одна октава — це частота, що вдвічі перевищує :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, або частота, що вдвічі нижча за :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_24DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_24DB** = ``3``

Зріз на рівні 24 дБ на октаву. Одна октава — це частота, що вдвічі перевищує :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, або частота, що вдвічі нижча за :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioEffectFilter_property_cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **cutoff_hz** = ``2000.0`` :ref:`🔗<class_AudioEffectFilter_property_cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_cutoff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cutoff**\ (\ )

Частотний поріг фільтра, в Гц. Значення може становити від 1 до 20500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_db:

.. rst-class:: classref-property

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **db** = ``0`` :ref:`🔗<class_AudioEffectFilter_property_db>`

.. rst-class:: classref-property-setget

- |void| **set_db**\ (\ value\: :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>`\ )
- :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **get_db**\ (\ )

Крутизна кривої відсічення в дБ на октаву (при частоті, що вдвічі перевищує :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, або при частоті, що вдвічі нижча за :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`), також відома як «порядок» фільтра. Фільтри вищого порядку мають більш різке відсічення.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **gain** = ``1.0`` :ref:`🔗<class_AudioEffectFilter_property_gain>`

.. rst-class:: classref-property-setget

- |void| **set_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gain**\ (\ )

Коефіцієнт підсилення частот, на які впливає фільтр. Ця властивість доступна лише для :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` та :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`. Значення може становити від 0 до 4.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_resonance:

.. rst-class:: classref-property

:ref:`float<class_float>` **resonance** = ``0.5`` :ref:`🔗<class_AudioEffectFilter_property_resonance>`

.. rst-class:: classref-property-setget

- |void| **set_resonance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_resonance**\ (\ )

Коефіцієнт підсилення на частоті :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` або безпосередньо поруч із нею. Значення може коливатися в діапазоні від 0 до 1.

Його точна поведінка залежить від обраного типу фільтра:

- Для фільтрів типу «полиця» він підкреслює або маскує частоту, підвищуючи частоти безпосередньо поруч із частотою :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` та знижуючи частоти на протилежному боці.

- Для смугових та режекторних фільтрів він розширює або звужує фільтр на частотному порозі :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

- Для фільтрів низьких/високих частот він збільшує або зменшує частоти на частотному порозі :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
