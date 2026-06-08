:github_url: hide

.. _class_OpenXRCompositionLayerEquirect:

OpenXRCompositionLayerEquirect
==============================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Шар композиції OpenXR, що подається в якості внутрішнього зрізу сфери.

.. rst-class:: classref-introduction-group

Опис
--------

Шар композиції OpenXR, що дозволяє надати :ref:`SubViewport<class_SubViewport>` на внутрішньому зрізі сфери.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`central_horizontal_angle<class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle>` | ``1.5707964`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`fallback_segments<class_OpenXRCompositionLayerEquirect_property_fallback_segments>`               | ``10``        |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`lower_vertical_angle<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`         | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`radius<class_OpenXRCompositionLayerEquirect_property_radius>`                                     | ``1.0``       |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`upper_vertical_angle<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`         | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **central_horizontal_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle>`

.. rst-class:: classref-property-setget

- |void| **set_central_horizontal_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_central_horizontal_angle**\ (\ )

Центральний горизонтальний кут сфери. Використовується для встановлення ширини.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_fallback_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_segments** = ``10`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_fallback_segments>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_segments**\ (\ )

Кількість сегментів для використання в сітчастій сітці.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_vertical_angle** = ``0.7853982`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`

.. rst-class:: classref-property-setget

- |void| **set_lower_vertical_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_vertical_angle**\ (\ )

Нижній вертикальний кут сфери. Використовується (разом з :ref:`upper_vertical_angle<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`) для встановлення висоти.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Радіус сфери.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **upper_vertical_angle** = ``0.7853982`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`

.. rst-class:: classref-property-setget

- |void| **set_upper_vertical_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_upper_vertical_angle**\ (\ )

Верхній вертикальний кут сфери. Використовується (разом з :ref:`lower_vertical_angle<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`) для встановлення висоти.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
