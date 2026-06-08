:github_url: hide

.. _class_AudioEffectDistortion:

AudioEffectDistortion
=====================

**Успадковує:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Додає аудіоефект спотворення до аудіошини.

Перерозподіляє аудіосегменти за допомогою нелінійної функції для отримання спотвореного звуку.

.. rst-class:: classref-introduction-group

Опис
--------

Ефект «дисторшн» змінює форму сигналу за допомогою нелінійної математичної функції (доступні варіанти див. у :ref:`Mode<enum_AudioEffectDistortion_Mode>`), виходячи з амплітуди окремих точок сигналу.

\ **Примітка:** У нелінійній функції амплітуда вхідного семпла зі значенням *x* буде збільшена або зменшена до значення *y* на основі значення функції в точці *x*, тому навіть при однаковому значенні :ref:`drive<class_AudioEffectDistortion_property_drive>` вихідний звук буде змінюватися залежно від гучності вхідного сигналу. Щоб змінити гучність, зберігаючи вихідну форму сигналу, використовуйте :ref:`post_gain<class_AudioEffectDistortion_property_post_gain>`.

У цьому ефекті кожен тип є окремою нелінійною функцією. Доступні такі типи: clip, atan, lofi (bitcrush), overdrive та waveshape. Усі типи спотворення, доступні тут, є симетричними: на від’ємні значення амплітуди впливають так само, як і на додатні.

Хоча спотворення завжди змінює частотний склад, зазвичай додаючи високі гармоніки, різні типи спотворення пропонують широкий діапазон звукових якостей: від «м'якого» і «теплого» до «хрусткого» і «різкого».

У іграх це може допомогти дуже ефективно імітувати звук, що виходить з якогось перевантаженого пристрою або динаміка. Це також може допомогти аудіо виділитися в міксі, додаючи вищі частоти та збільшуючи гучність.

\ **Примітка:** Хоча зазвичай це непомітно, увімкнений ефект спотворення все одно змінює звук, навіть якщо :ref:`drive<class_AudioEffectDistortion_property_drive>` встановлено на 0. Це не є помилкою. Якщо така поведінка є небажаною, розгляньте можливість вимкнення ефекту за допомогою :ref:`AudioServer.set_bus_effect_enabled()<class_AudioServer_method_set_bus_effect_enabled>`.

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

Переліки
----------------

.. _enum_AudioEffectDistortion_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_AudioEffectDistortion_Mode>`

.. _class_AudioEffectDistortion_constant_MODE_CLIP:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_CLIP** = ``0``

Різко згладжує форму сигналу на рівні 0 дБ. Параметр :ref:`drive<class_AudioEffectDistortion_property_drive>` експоненціально збільшує амплітуду семплів. Цей режим працює як жорсткий кліпер, якщо значення :ref:`drive<class_AudioEffectDistortion_property_drive>` встановлено на 0, і є єдиним режимом, який обрізає аудіосигнали на рівні 0 дБ.

.. _class_AudioEffectDistortion_constant_MODE_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_ATAN** = ``1``

Плавно вирівнює форму сигналу, слідуючи кривій арктангенса. Гучність звуку зменшується, а потім піки вирівнюються до значення ``PI * 4.0`` (лінійне значення), якщо сигнал було попередньо нормалізовано.

.. _class_AudioEffectDistortion_constant_MODE_LOFI:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_LOFI** = ``2``

Зменшує розрядність аудіосигналу для отримання аудіосигналу з низькою роздільною здатністю — з 16 біт до 2 біт. Може використовуватися для імітації звучання ранніх цифрових аудіопристроїв.

.. _class_AudioEffectDistortion_constant_MODE_OVERDRIVE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_OVERDRIVE** = ``3``

Імітує тепле спотворення, що створюється польовим транзистором, який зазвичай використовується в підсилювачах для музичних інструментів на транзисторах. У цьому режимі параметр :ref:`drive<class_AudioEffectDistortion_property_drive>` не впливає на звучання.

.. _class_AudioEffectDistortion_constant_MODE_WAVESHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_WAVESHAPE** = ``4``

Плавно згладжує форму сигналу, доки він не досягне різкого піку при ``drive = 1``, слідуючи загальній абсолютній сигмоїдній функції.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioEffectDistortion_property_drive:

.. rst-class:: classref-property

:ref:`float<class_float>` **drive** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_drive>`

.. rst-class:: classref-property-setget

- |void| **set_drive**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drive**\ (\ )

Інтенсивність спотворення. Регулює ступінь впливу кривої спотворення на вхідний аудіосигнал шляхом переходу від лінійної функції до нелінійної. Значення може коливатися в діапазоні від 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_keep_hf_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **keep_hf_hz** = ``16000.0`` :ref:`🔗<class_AudioEffectDistortion_property_keep_hf_hz>`

.. rst-class:: classref-property-setget

- |void| **set_keep_hf_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_keep_hf_hz**\ (\ )

Фільтр високих частот, Гц. На частоти, вищі за це значення, спотворення не впливатимуть. Значення може коливатися від 1 до 20000.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **mode** = ``0`` :ref:`🔗<class_AudioEffectDistortion_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_AudioEffectDistortion_Mode>`\ )
- :ref:`Mode<enum_AudioEffectDistortion_Mode>` **get_mode**\ (\ )

Тип спотворення. Змінює нелінійну функцію, яка використовується для спотворення форми сигналу. Див. :ref:`Mode<enum_AudioEffectDistortion_Mode>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_post_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **post_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_post_gain>`

.. rst-class:: classref-property-setget

- |void| **set_post_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_post_gain**\ (\ )

Коефіцієнт підсилення після ефекту, в дБ. Значення може коливатися в діапазоні від -80 до 24.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_pre_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **pre_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_pre_gain>`

.. rst-class:: classref-property-setget

- |void| **set_pre_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_gain**\ (\ )

Коефіцієнт підсилення до застосування ефекту, у дБ. Значення може коливатися в діапазоні від -60 до 60.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
