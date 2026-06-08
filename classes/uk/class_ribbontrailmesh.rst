:github_url: hide

.. _class_RibbonTrailMesh:

RibbonTrailMesh
===============

**Успадковує:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляє пряму стрічкову форму :ref:`PrimitiveMesh<class_PrimitiveMesh>` зі змінною шириною.

.. rst-class:: classref-introduction-group

Опис
--------

**RibbonTrailMesh** являє собою пряму стрічкоподібну сітку зі змінною шириною. Стрічка складається з кількох плоских або хрестоподібних секцій, кожна з яких має однакову :ref:`section_length<class_RibbonTrailMesh_property_section_length>` та кількість :ref:`section_segments<class_RibbonTrailMesh_property_section_segments>`. :ref:`section_section<class_RibbonTrailMesh_property_section_section>` вибірково виконується вздовж усієї довжини стрічки, тобто крива визначає розмір стрічки вздовж її довжини.

Ця примітивна сітка зазвичай використовується для траєкторій частинок.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`3Д Стежки частинок <../tutorials/3d/particles/trails>`

- :doc:`Системи частинок (3D) <../tutorials/3d/particles/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`Curve<class_Curve>`                | :ref:`curve<class_RibbonTrailMesh_property_curve>`                       |         |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                | :ref:`section_length<class_RibbonTrailMesh_property_section_length>`     | ``0.2`` |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                    | :ref:`section_segments<class_RibbonTrailMesh_property_section_segments>` | ``3``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                    | :ref:`sections<class_RibbonTrailMesh_property_sections>`                 | ``5``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`Shape<enum_RibbonTrailMesh_Shape>` | :ref:`shape<class_RibbonTrailMesh_property_shape>`                       | ``1``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                | :ref:`size<class_RibbonTrailMesh_property_size>`                         | ``1.0`` |
   +------------------------------------------+--------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_RibbonTrailMesh_Shape:

.. rst-class:: classref-enumeration

enum **Shape**: :ref:`🔗<enum_RibbonTrailMesh_Shape>`

.. _class_RibbonTrailMesh_constant_SHAPE_FLAT:

.. rst-class:: classref-enumeration-constant

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **SHAPE_FLAT** = ``0``

Подарує сіточку одну плоску обличчя.

.. _class_RibbonTrailMesh_constant_SHAPE_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **SHAPE_CROSS** = ``1``

Подарує сіточку двома перпендикулярними плоскими гранями, роблячи поперечну форму.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RibbonTrailMesh_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_RibbonTrailMesh_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

Визначає розмір стрічки вздовж її довжини. Розмір певного сегмента перерізу отримується шляхом множення базової лінії :ref:`size<class_RibbonTrailMesh_property_size>` на значення цієї кривої на заданій відстані. Для значень, менших за ``0``, грані будуть інвертовані. Повинна бути одинична :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_section_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **section_length** = ``0.2`` :ref:`🔗<class_RibbonTrailMesh_property_section_length>`

.. rst-class:: classref-property-setget

- |void| **set_section_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_section_length**\ (\ )

Довжина секції стрічки.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_section_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **section_segments** = ``3`` :ref:`🔗<class_RibbonTrailMesh_property_section_segments>`

.. rst-class:: classref-property-setget

- |void| **set_section_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_section_segments**\ (\ )

Кількість сегментів в секції. Вигнута :ref:`curve<class_RibbonTrailMesh_property_curve>` на кожному сегменті для визначення його розміру. Більш детальна стрічка за вартістю виконання.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **sections** = ``5`` :ref:`🔗<class_RibbonTrailMesh_property_sections>`

.. rst-class:: classref-property-setget

- |void| **set_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sections**\ (\ )

Загальна кількість секцій на стрічку.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_shape:

.. rst-class:: classref-property

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **shape** = ``1`` :ref:`🔗<class_RibbonTrailMesh_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape<enum_RibbonTrailMesh_Shape>`\ )
- :ref:`Shape<enum_RibbonTrailMesh_Shape>` **get_shape**\ (\ )

Визначає форму стрічки.

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **size** = ``1.0`` :ref:`🔗<class_RibbonTrailMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size**\ (\ )

Базовий розмір стрічки. Розмір певного сегмента секція виходить шляхом розмноження цього розміру за значенням :ref:`curve<class_RibbonTrailMesh_property_curve>` на даній відстані.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
