:github_url: hide

.. _class_OpenXRHapticVibration:

OpenXRHapticVibration
=====================

**Успадковує:** :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вібраційний тактильний зворотний зв'язок.

.. rst-class:: classref-introduction-group

Опис
--------

Цей ресурс тактильного зворотного зв’язку дає змогу визначити імпульс тактильного зворотного зв’язку на основі вібрації, який можна запустити за допомогою дій у карті дій OpenXR.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`amplitude<class_OpenXRHapticVibration_property_amplitude>` | ``1.0`` |
   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`duration<class_OpenXRHapticVibration_property_duration>`   | ``-1``  |
   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`frequency<class_OpenXRHapticVibration_property_frequency>` | ``0.0`` |
   +---------------------------+------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OpenXRHapticVibration_property_amplitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **amplitude** = ``1.0`` :ref:`🔗<class_OpenXRHapticVibration_property_amplitude>`

.. rst-class:: classref-property-setget

- |void| **set_amplitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amplitude**\ (\ )

Амплітуда імпульсу між ``0,0`` і ``1,0``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHapticVibration_property_duration:

.. rst-class:: classref-property

:ref:`int<class_int>` **duration** = ``-1`` :ref:`🔗<class_OpenXRHapticVibration_property_duration>`

.. rst-class:: classref-property-setget

- |void| **set_duration**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_duration**\ (\ )

Тривалість імпульсу в наносекундах. Використовуйте ``-1`` для імпульсу мінімальної тривалості для поточного часу виконання XR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHapticVibration_property_frequency:

.. rst-class:: classref-property

:ref:`float<class_float>` **frequency** = ``0.0`` :ref:`🔗<class_OpenXRHapticVibration_property_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_frequency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frequency**\ (\ )

Частота імпульсу в Гц. ``0.0`` дозволить середовищу виконання XR вибрати оптимальну частоту для використовуваного пристрою.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
