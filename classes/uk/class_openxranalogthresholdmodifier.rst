:github_url: hide

.. _class_OpenXRAnalogThresholdModifier:

OpenXRAnalogThresholdModifier
=============================

**Успадковує:** :ref:`OpenXRActionBindingModifier<class_OpenXRActionBindingModifier>` **<** :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Модифікатор зв’язування аналогового порогу може змінити вхід з плаваючою речовиною на логічний вхід із заданими пороговими значеннями.

.. rst-class:: classref-introduction-group

Опис
--------

Модифікатор зв’язування аналогового порогу може змінити вхід з плаваючою речовиною на логічний вхід із заданими пороговими значеннями.

див `XR_VALVE_analog_threshold <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_VALVE_analog_threshold>`__ для більш детальної інформації.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`off_haptic<class_OpenXRAnalogThresholdModifier_property_off_haptic>`       |         |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                       | :ref:`off_threshold<class_OpenXRAnalogThresholdModifier_property_off_threshold>` | ``0.4`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`on_haptic<class_OpenXRAnalogThresholdModifier_property_on_haptic>`         |         |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                       | :ref:`on_threshold<class_OpenXRAnalogThresholdModifier_property_on_threshold>`   | ``0.6`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OpenXRAnalogThresholdModifier_property_off_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **off_haptic** :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_off_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_off_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_off_haptic**\ (\ )

Тактильний імпульс, який випромінює, коли користувач відпускає введення.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_off_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **off_threshold** = ``0.4`` :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_off_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_off_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_off_threshold**\ (\ )

Коли наше вхідне значення падає нижче цього значення, наш вихідний код стає ``хибним``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_on_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **on_haptic** :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_on_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_on_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_on_haptic**\ (\ )

Тактильний імпульс, який випромінює, коли користувач натискає кнопку введення.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAnalogThresholdModifier_property_on_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **on_threshold** = ``0.6`` :ref:`🔗<class_OpenXRAnalogThresholdModifier_property_on_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_on_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_on_threshold**\ (\ )

Коли наше вхідне значення дорівнює або перевищує це значення, наш вихідний код стає ``true``. Він залишається ``true``, доки не стане меншим за значення :ref:`off_threshold<class_OpenXRAnalogThresholdModifier_property_off_threshold>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
