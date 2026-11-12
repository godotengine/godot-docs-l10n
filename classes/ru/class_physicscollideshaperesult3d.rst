:github_url: hide

.. _class_PhysicsCollideShapeResult3D:

PhysicsCollideShapeResult3D
===========================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the collision points of a shape collision query.

.. rst-class:: classref-introduction-group

Описание
----------------

This class contains the contact points computed by :ref:`PhysicsDirectSpaceState3D.collide_shape_into()<class_PhysicsDirectSpaceState3D_method_collide_shape_into>`.

Each collision is represented as a pair of points: one on the query shape and one on the colliding shape.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_collisions<class_PhysicsCollideShapeResult3D_property_max_collisions>` | ``32`` |
   +-----------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_PhysicsCollideShapeResult3D_method_get_collision_count>`\ (\ ) |const|                                                            |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_point_on_colliding_shape<class_PhysicsCollideShapeResult3D_method_get_point_on_colliding_shape>`\ (\ collision_index\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_point_on_queried_shape<class_PhysicsCollideShapeResult3D_method_get_point_on_queried_shape>`\ (\ collision_index\: :ref:`int<class_int>`\ ) |const|     |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PhysicsCollideShapeResult3D_property_max_collisions:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_collisions** = ``32`` :ref:`🔗<class_PhysicsCollideShapeResult3D_property_max_collisions>`

.. rst-class:: classref-property-setget

- |void| **set_max_collisions**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_collisions**\ (\ )

The maximum number of collisions this object can store.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PhysicsCollideShapeResult3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_PhysicsCollideShapeResult3D_method_get_collision_count>`

Returns the number of point pairs detected by the query.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsCollideShapeResult3D_method_get_point_on_colliding_shape:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_on_colliding_shape**\ (\ collision_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsCollideShapeResult3D_method_get_point_on_colliding_shape>`

Returns the collision point on the colliding shape for the collision at the given index.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsCollideShapeResult3D_method_get_point_on_queried_shape:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_on_queried_shape**\ (\ collision_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsCollideShapeResult3D_method_get_point_on_queried_shape>`

Returns the collision point on the query shape for the collision at the given index.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
