:github_url: hide

.. _class_AudioEffectDistortion:

AudioEffectDistortion
=====================

**Наследует:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Добавляет эффект искажения звука к аудиошине.

Переназначает аудиосэмплы с помощью нелинейной функции для получения искаженного звука.

.. rst-class:: classref-introduction-group

Описание
----------------

Эффект «искажения» изменяет форму волны с помощью нелинейной математической функции (см. доступные в :ref:`Mode<enum_AudioEffectDistortion_Mode>`), основанной на амплитуде сэмплов формы волны.

\ **Примечание:** В нелинейной функции амплитуда входного сэмпла со значением *x* будет либо увеличена, либо уменьшена до значения *y* в зависимости от значения функции в *x*, поэтому даже при одном и том же :ref:`drive<class_AudioEffectDistortion_property_drive>` выходной звук будет меняться в зависимости от громкости входного сигнала. Чтобы изменить громкость, сохраняя при этом форму выходной волны, используйте :ref:`post_gain<class_AudioEffectDistortion_property_post_gain>`.

В этом эффекте каждый тип представляет собой различную нелинейную функцию. Доступны следующие типы: clip, atan, lofi (bitcrush), overdrive и waveshape. Каждый доступный здесь тип искажения симметричен: отрицательные значения амплитуды изменяются так же, как и положительные.

Хотя искажение всегда изменяет частотный состав, обычно за счет введения высоких гармоник, различные типы искажения предлагают широкий диапазон качества звука; от «мягкого» и «теплого» до «хрустящего» и «резкого».

В играх это может помочь очень эффективно имитировать звук, исходящий от какого-либо насыщенного устройства или динамика. Это также может помочь выделить звук в миксе, добавив более высокие частоты и увеличив громкость.

\ **Примечание:** Хотя обычно это незаметно, включенный эффект искажения все равно меняет звук, даже если :ref:`drive<class_AudioEffectDistortion_property_drive>` установлено на 0. Это не ошибка. Если такое поведение нежелательно, рассмотрите возможность отключения эффекта с помощью :ref:`AudioServer.set_bus_effect_enabled()<class_AudioServer_method_set_bus_effect_enabled>`.

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

   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`drive<class_AudioEffectDistortion_property_drive>`           | ``0.0``     |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`keep_hf_hz<class_AudioEffectDistortion_property_keep_hf_hz>` | ``16000.0`` |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`Mode<enum_AudioEffectDistortion_Mode>` | :ref:`mode<class_AudioEffectDistortion_property_mode>`             | ``0``       |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`post_gain<class_AudioEffectDistortion_property_post_gain>`   | ``0.0``     |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`pre_gain<class_AudioEffectDistortion_property_pre_gain>`     | ``0.0``     |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_AudioEffectDistortion_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_AudioEffectDistortion_Mode>`

.. _class_AudioEffectDistortion_constant_MODE_CLIP:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_CLIP** = ``0``

Резко выравнивает форму волны на уровне 0 дБ. :ref:`drive<class_AudioEffectDistortion_property_drive>` экспоненциально увеличивает амплитуду сэмплов. Этот режим работает как жесткий клиппер, если :ref:`drive<class_AudioEffectDistortion_property_drive>` установлено на 0, и является единственным режимом, который обрезает аудиосигналы на уровне 0 дБ.

.. _class_AudioEffectDistortion_constant_MODE_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_ATAN** = ``1``

Плавно выравнивает форму волны, следуя кривой арктангенса. Громкость звука уменьшается, а затем пики выравниваются до ``PI * 4.0`` (линейное значение), если они были нормализованы заранее.

.. _class_AudioEffectDistortion_constant_MODE_LOFI:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_LOFI** = ``2``

Уменьшает битовую глубину звука для получения аудиосигнала с низким разрешением, переходя от 16-битного к 2-битному. Может использоваться для эмуляции звучания ранних цифровых аудиоустройств.

.. _class_AudioEffectDistortion_constant_MODE_OVERDRIVE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_OVERDRIVE** = ``3``

Имитирует тёплые искажения, создаваемые полевым транзистором, который обычно используется в твердотельных усилителях для музыкальных инструментов. :ref:`drive<class_AudioEffectDistortion_property_drive>` не оказывает никакого эффекта в этом режиме.

.. _class_AudioEffectDistortion_constant_MODE_WAVESHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_WAVESHAPE** = ``4``

Сглаживает форму волны до тех пор, пока не достигнет резкого пика при ``drive = 1``, следуя общей абсолютной сигмоидной функции.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioEffectDistortion_property_drive:

.. rst-class:: classref-property

:ref:`float<class_float>` **drive** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_drive>`

.. rst-class:: classref-property-setget

- |void| **set_drive**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drive**\ (\ )

Интенсивность искажений. Регулирует степень влияния кривой искажений на входной аудиосигнал, переходя от линейной функции к нелинейной. Значение может варьироваться от 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_keep_hf_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **keep_hf_hz** = ``16000.0`` :ref:`🔗<class_AudioEffectDistortion_property_keep_hf_hz>`

.. rst-class:: classref-property-setget

- |void| **set_keep_hf_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_keep_hf_hz**\ (\ )

Фильтр высоких частот, в Гц. Частоты выше этого значения не будут подвержены искажением. Значение может варьироваться от 1 до 20000.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **mode** = ``0`` :ref:`🔗<class_AudioEffectDistortion_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_AudioEffectDistortion_Mode>`\ )
- :ref:`Mode<enum_AudioEffectDistortion_Mode>` **get_mode**\ (\ )

Тип искажения. Изменяет нелинейную функцию, используемую для искажения формы сигнала. См. :ref:`Mode<enum_AudioEffectDistortion_Mode>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_post_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **post_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_post_gain>`

.. rst-class:: classref-property-setget

- |void| **set_post_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_post_gain**\ (\ )

Усиление после эффекта, в дБ. Значение может варьироваться от -80 до 24.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_pre_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **pre_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_pre_gain>`

.. rst-class:: classref-property-setget

- |void| **set_pre_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_gain**\ (\ )

Усиление до наступления эффекта, в дБ. Значение может варьироваться от -60 до 60.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
