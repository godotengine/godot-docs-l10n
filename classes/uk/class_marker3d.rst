:github_url: hide

.. _class_Marker3D:

Marker3D
========

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Генетична 3D позиція підказка для редагування.

.. rst-class:: classref-introduction-group

Опис
--------

Generic 3D position hint for editing. This is like a plain :ref:`Node3D<class_Node3D>`, but it displays as a cross in the 3D editor.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`gizmo_extents<class_Marker3D_property_gizmo_extents>` | ``0.25`` |
   +---------------------------+-------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Marker3D_property_gizmo_extents:

.. rst-class:: classref-property

:ref:`float<class_float>` **gizmo_extents** = ``0.25`` :ref:`🔗<class_Marker3D_property_gizmo_extents>`

.. rst-class:: classref-property-setget

- |void| **set_gizmo_extents**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gizmo_extents**\ (\ )

Розмір хреста гизмо, що з'являється в редакторі.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
