:github_url: hide

.. _class_Path2D:

Path2D
======

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Содержит путь :ref:`Curve2D<class_Curve2D>` для следования узлов :ref:`PathFollow2D<class_PathFollow2D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Может иметь :ref:`PathFollow2D<class_PathFollow2D>` дочерних узлов, перемещающихся вдоль :ref:`Curve2D<class_Curve2D>`. См. :ref:`PathFollow2D<class_PathFollow2D>` для получения дополнительной информации об использовании.

\ **Примечание:** Путь рассматривается как относительный к перемещенным узлам (дочерним элементам :ref:`PathFollow2D<class_PathFollow2D>`). Таким образом, кривая обычно должна начинаться с нулевого вектора (\ ``(0, 0)``).

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------+
   | :ref:`Curve2D<class_Curve2D>` | :ref:`curve<class_Path2D_property_curve>` |
   +-------------------------------+-------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Path2D_property_curve:

.. rst-class:: classref-property

:ref:`Curve2D<class_Curve2D>` **curve** :ref:`🔗<class_Path2D_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve2D<class_Curve2D>`\ )
- :ref:`Curve2D<class_Curve2D>` **get_curve**\ (\ )

:ref:`Curve2D<class_Curve2D>`, описывающая путь.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
