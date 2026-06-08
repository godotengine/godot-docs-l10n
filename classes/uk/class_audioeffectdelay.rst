:github_url: hide

.. _class_AudioEffectDelay:

AudioEffectDelay
================

**Успадковує:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Додає аудіоефект затримки до аудіошини.

Імітує відлуння, відтворюючи вхідний аудіосигнал через певний проміжок часу.

.. rst-class:: classref-introduction-group

Опис
--------

Ефект «затримки» відтворює вхідний аудіосигнал через певний проміжок часу. Кожне повторення називається «відгалуженням затримки» або просто «відгалуженням». Відгалуження затримки можуть відтворюватися кілька разів, створюючи звук повторюваного відлуння, що затихає. Ефекти затримки варіюються від ледь помітного відлуння до вираженого змішування попередніх звуків із новими.

Див. також :ref:`AudioEffectReverb<class_AudioEffectReverb>` для отримання розмитого, безперервного відлуння.

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

Описи властивостей
------------------------------------

.. _class_AudioEffectDelay_property_dry:

.. rst-class:: classref-property

:ref:`float<class_float>` **dry** = ``1.0`` :ref:`🔗<class_AudioEffectDelay_property_dry>`

.. rst-class:: classref-property-setget

- |void| **set_dry**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dry**\ (\ )

Коефіцієнт гучності вихідного аудіо. Значення може коливатися в діапазоні від 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **feedback_active** = ``false`` :ref:`🔗<class_AudioEffectDelay_property_feedback_active>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_feedback_active**\ (\ )

Якщо ``true``, увімкнено відгук: звуки відтворюються повторно після їхнього відтворення.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback_delay_ms** = ``340.0`` :ref:`🔗<class_AudioEffectDelay_property_feedback_delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_delay_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback_delay_ms**\ (\ )

Час затримки зворотного зв'язку в мілісекундах. Значення може становити від 0 до 1500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback_level_db** = ``-6.0`` :ref:`🔗<class_AudioEffectDelay_property_feedback_level_db>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_level_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback_level_db**\ (\ )

Коефіцієнт підсилення зворотного зв'язку, в дБ. Значення може коливатися в діапазоні від -60 до 0.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_feedback_lowpass:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback_lowpass** = ``16000.0`` :ref:`🔗<class_AudioEffectDelay_property_feedback_lowpass>`

.. rst-class:: classref-property-setget

- |void| **set_feedback_lowpass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback_lowpass**\ (\ )

Фільтр нижніх частот для зворотного зв'язку, в Гц. Частоти, що перевищують це значення, відфільтровуються. Значення може становити від 1 до 16000.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tap1_active** = ``true`` :ref:`🔗<class_AudioEffectDelay_property_tap1_active>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tap1_active**\ (\ )

Якщо ``true``, перший дотик буде ввімкнено.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap1_delay_ms** = ``250.0`` :ref:`🔗<class_AudioEffectDelay_property_tap1_delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_delay_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap1_delay_ms**\ (\ )

Час затримки першого натискання в мілісекундах порівняно з оригінальним аудіо. Значення може становити від 0 до 1500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap1_level_db** = ``-6.0`` :ref:`🔗<class_AudioEffectDelay_property_tap1_level_db>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_level_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap1_level_db**\ (\ )

Коефіцієнт підсилення для першого відгалуження, в дБ. Значення може коливатися в діапазоні від -60 до 0.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap1_pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap1_pan** = ``0.2`` :ref:`🔗<class_AudioEffectDelay_property_tap1_pan>`

.. rst-class:: classref-property-setget

- |void| **set_tap1_pan**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap1_pan**\ (\ )

Параметр панорамування для першого натискання. Негативні значення зміщують звук вліво, позитивні — вправо. Значення може бути в діапазоні від -1 до 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tap2_active** = ``true`` :ref:`🔗<class_AudioEffectDelay_property_tap2_active>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tap2_active**\ (\ )

Якщо ``true``, другий кран буде ввімкнено.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_delay_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap2_delay_ms** = ``500.0`` :ref:`🔗<class_AudioEffectDelay_property_tap2_delay_ms>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_delay_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap2_delay_ms**\ (\ )

Час затримки другого натискання в мілісекундах порівняно з оригінальним аудіо. Значення може становити від 0 до 1500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_level_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap2_level_db** = ``-12.0`` :ref:`🔗<class_AudioEffectDelay_property_tap2_level_db>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_level_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap2_level_db**\ (\ )

Коефіцієнт підсилення для другого відгалуження, у дБ. Значення може коливатися в діапазоні від -60 до 0.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDelay_property_tap2_pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap2_pan** = ``-0.4`` :ref:`🔗<class_AudioEffectDelay_property_tap2_pan>`

.. rst-class:: classref-property-setget

- |void| **set_tap2_pan**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap2_pan**\ (\ )

Параметр панорамування для другого натискання. Негативні значення зміщують звук вліво, позитивні — вправо. Значення може коливатися в діапазоні від -1 до 1.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
