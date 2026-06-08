:github_url: hide

.. _class_VisualShaderNodeFloatParameter:

VisualShaderNodeFloatParameter
==============================

**Успадковує:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Текст скальара float, який використовується в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Перекладено як ``uniform float`` мовою шейдерів.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`default_value<class_VisualShaderNodeFloatParameter_property_default_value>`                 | ``0.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`default_value_enabled<class_VisualShaderNodeFloatParameter_property_default_value_enabled>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` | :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>`                                   | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`max<class_VisualShaderNodeFloatParameter_property_max>`                                     | ``1.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`min<class_VisualShaderNodeFloatParameter_property_min>`                                     | ``0.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`step<class_VisualShaderNodeFloatParameter_property_step>`                                   | ``0.1``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeFloatParameter_Hint:

.. rst-class:: classref-enumeration

enum **Hint**: :ref:`🔗<enum_VisualShaderNodeFloatParameter_Hint>`

.. _class_VisualShaderNodeFloatParameter_constant_HINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_NONE** = ``0``

Підказка не використана.

.. _class_VisualShaderNodeFloatParameter_constant_HINT_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_RANGE** = ``1``

Підказка діапазону для скалярного значення, яка обмежує можливі вхідні значення між :ref:`min<class_VisualShaderNodeFloatParameter_property_min>` та :ref:`max<class_VisualShaderNodeFloatParameter_property_max>`. У коді шейдера перетворюється на ``hint_range(min, max)``.

.. _class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_RANGE_STEP** = ``2``

Підказка діапазону для скалярного значення з кроком, який обмежує можливі вхідні значення між :ref:`min<class_VisualShaderNodeFloatParameter_property_min>` та :ref:`max<class_VisualShaderNodeFloatParameter_property_max>`, з кроком (приростом) :ref:`step<class_VisualShaderNodeFloatParameter_property_step>`). Перетворюється на ``hint_range(min, max, step)`` у коді шейдера.

.. _class_VisualShaderNodeFloatParameter_constant_HINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_MAX** = ``3``

Представляємо розмір :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeFloatParameter_property_default_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **default_value** = ``0.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_default_value**\ (\ )

Значення за замовчуванням, яке буде призначено в межах шейдера.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

Дозволяє використовувати :ref:`default_value<class_VisualShaderNodeFloatParameter_property_default_value>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_hint:

.. rst-class:: classref-property

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **hint** = ``0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_hint>`

.. rst-class:: classref-property-setget

- |void| **set_hint**\ (\ value\: :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>`\ )
- :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **get_hint**\ (\ )

Підказка, що наноситься на форму, яка контролює значення, які можна приймати при встановленні через Інспектор.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **max** = ``1.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max**\ (\ )

Мінімальне значення для підказок діапазону. Використовується, якщо :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` встановлюється на :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>` або :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **min** = ``0.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min**\ (\ )

Максимальне значення для підказок діапазону. Використовується, якщо :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` встановлюється на :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>` або :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** = ``0.1`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_step**\ (\ )

Крок (збільшення) значення для підказки діапазону з кроком. Використовується, якщо :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` встановлюється до :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
