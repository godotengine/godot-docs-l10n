:github_url: hide

.. _class_TubeTrailMesh:

TubeTrailMesh
=============

**Успадковує:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляє собою пряму трубчасту :ref:`PrimitiveMesh<class_PrimitiveMesh>` зі змінною шириною.

.. rst-class:: classref-introduction-group

Опис
--------

**TubeTrailMesh** являє собою пряму сітку у формі трубки зі змінною шириною. Трубка складається з кількох циліндричних секцій, кожна з яких має однакову :ref:`section_length<class_TubeTrailMesh_property_section_length>` та кількість :ref:`section_rings<class_TubeTrailMesh_property_section_rings>`. :ref:`curve<class_TubeTrailMesh_property_curve>` вибірково виконується вздовж усієї довжини трубки, тобто крива визначає радіус трубки вздовж її довжини.

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

   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_bottom<class_TubeTrailMesh_property_cap_bottom>`         | ``true`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_top<class_TubeTrailMesh_property_cap_top>`               | ``true`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`Curve<class_Curve>` | :ref:`curve<class_TubeTrailMesh_property_curve>`                   |          |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`radial_steps<class_TubeTrailMesh_property_radial_steps>`     | ``8``    |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius<class_TubeTrailMesh_property_radius>`                 | ``0.5``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`section_length<class_TubeTrailMesh_property_section_length>` | ``0.2``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`section_rings<class_TubeTrailMesh_property_section_rings>`   | ``3``    |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`sections<class_TubeTrailMesh_property_sections>`             | ``5``    |
   +---------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_TubeTrailMesh_property_cap_bottom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_bottom** = ``true`` :ref:`🔗<class_TubeTrailMesh_property_cap_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_cap_bottom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_bottom**\ (\ )

Якщо ``true``, генерує ковпачок внизу труби. Це може бути встановлено до ``false`` для прискорення генерації і рендерингу, коли ковпачок ніколи не бачиться камерою.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_cap_top:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_top** = ``true`` :ref:`🔗<class_TubeTrailMesh_property_cap_top>`

.. rst-class:: classref-property-setget

- |void| **set_cap_top**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_top**\ (\ )

Якщо ``true``, генерує ковпачок у верхній частині труби. Це може бути встановлено до ``false`` для прискорення генерації і рендерингу, коли ковпачок ніколи не бачиться камерою.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_TubeTrailMesh_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

Визначає радіус труби по її довжині. Радіус певного перетинного кільця отримується шляхом множення базової лінії :ref:`radius<class_TubeTrailMesh_property_radius>` на значення цієї кривої на даній відстані. Для значень, менших за ``0``, грані будуть інвертовані. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_radial_steps:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_steps** = ``8`` :ref:`🔗<class_TubeTrailMesh_property_radial_steps>`

.. rst-class:: classref-property-setget

- |void| **set_radial_steps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_steps**\ (\ )

Кількість сторін на трубі. Наприклад, значення ``5`` означає, що трубка буде петагональною. Більш детальна трубка за вартістю виконання.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_TubeTrailMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Базовий радіус труби. радіус певного розділу виходить шляхом розмноження цього радіусу за значенням :ref:`curve<class_TubeTrailMesh_property_curve>` на даній відстані.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_section_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **section_length** = ``0.2`` :ref:`🔗<class_TubeTrailMesh_property_section_length>`

.. rst-class:: classref-property-setget

- |void| **set_section_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_section_length**\ (\ )

Довжина секції труби.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_section_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **section_rings** = ``3`` :ref:`🔗<class_TubeTrailMesh_property_section_rings>`

.. rst-class:: classref-property-setget

- |void| **set_section_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_section_rings**\ (\ )

Кількість кілець в секції. ``пам'ятна крива`` пробирається на кожному кільці, щоб визначити її радіус. Більш детальна трубка за вартістю виконання.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **sections** = ``5`` :ref:`🔗<class_TubeTrailMesh_property_sections>`

.. rst-class:: classref-property-setget

- |void| **set_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sections**\ (\ )

Загальна кількість секцій на трубі.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
