:github_url: hide

.. _class_PhysicsCastMotionResult2D:

PhysicsCastMotionResult2D
=========================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the result of a shape motion cast query.

.. rst-class:: classref-introduction-group

Описание
----------------

This class contains the safe and unsafe fractions computed by :ref:`PhysicsDirectSpaceState2D.cast_motion_into()<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`safe_fraction<class_PhysicsCastMotionResult2D_property_safe_fraction>`     | ``1.0`` |
   +---------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`unsafe_fraction<class_PhysicsCastMotionResult2D_property_unsafe_fraction>` | ``1.0`` |
   +---------------------------+----------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PhysicsCastMotionResult2D_property_safe_fraction:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_fraction** = ``1.0`` :ref:`🔗<class_PhysicsCastMotionResult2D_property_safe_fraction>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_safe_fraction**\ (\ )

The maximum fraction of the motion that can be made without a collision.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsCastMotionResult2D_property_unsafe_fraction:

.. rst-class:: classref-property

:ref:`float<class_float>` **unsafe_fraction** = ``1.0`` :ref:`🔗<class_PhysicsCastMotionResult2D_property_unsafe_fraction>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_unsafe_fraction**\ (\ )

The minimum fraction of the distance that must be moved for a collision.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
