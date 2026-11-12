:github_url: hide

.. _class_Marker2D:

Marker2D
========

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Общая подсказка по положению 2D для редактирования.

.. rst-class:: classref-introduction-group

Описание
----------------

Generic 2D position hint for editing. This is like a plain :ref:`Node2D<class_Node2D>`, but it displays as a cross in the 2D editor.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`gizmo_extents<class_Marker2D_property_gizmo_extents>` | ``10.0`` |
   +---------------------------+-------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Marker2D_property_gizmo_extents:

.. rst-class:: classref-property

:ref:`float<class_float>` **gizmo_extents** = ``10.0`` :ref:`🔗<class_Marker2D_property_gizmo_extents>`

.. rst-class:: classref-property-setget

- |void| **set_gizmo_extents**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gizmo_extents**\ (\ )

Размер крестика гизмо, который отображается в редакторе.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
