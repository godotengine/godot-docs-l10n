:github_url: hide

.. _class_Joint3D:

Joint3D
=======

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`ConeTwistJoint3D<class_ConeTwistJoint3D>`, :ref:`Generic6DOFJoint3D<class_Generic6DOFJoint3D>`, :ref:`HingeJoint3D<class_HingeJoint3D>`, :ref:`PinJoint3D<class_PinJoint3D>`, :ref:`SliderJoint3D<class_SliderJoint3D>`

Абстрактный базовый класс для всех трехмерных физических суставов.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстрактный базовый класс для всех суставов в 3D-физике. 3D-суставы связывают вместе два физических тела (:ref:`node_a<class_Joint3D_property_node_a>` и :ref:`node_b<class_Joint3D_property_node_b>`) и применяют ограничение. Если определено только одно тело, оно прикрепляется к фиксированному :ref:`StaticBody3D<class_StaticBody3D>` без форм столкновений.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `3D Truck Town Демо <https://godotengine.org/asset-library/asset/2752>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`exclude_nodes_from_collision<class_Joint3D_property_exclude_nodes_from_collision>` | ``true``         |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_a<class_Joint3D_property_node_a>`                                             | ``NodePath("")`` |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_b<class_Joint3D_property_node_b>`                                             | ``NodePath("")`` |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`solver_priority<class_Joint3D_property_solver_priority>`                           | ``1``            |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_rid<class_Joint3D_method_get_rid>`\ (\ ) |const| |
   +-----------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Joint3D_property_exclude_nodes_from_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_nodes_from_collision** = ``true`` :ref:`🔗<class_Joint3D_property_exclude_nodes_from_collision>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_nodes_from_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_nodes_from_collision**\ (\ )

Если ``true``, два связанных вместе тела не сталкиваются друг с другом.

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_node_a:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_a** = ``NodePath("")`` :ref:`🔗<class_Joint3D_property_node_a>`

.. rst-class:: classref-property-setget

- |void| **set_node_a**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_a**\ (\ )

Путь к первому узлу (A), прикрепленному к сочленению. Узел должен наследовать :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Если оставить пустым и задать :ref:`node_b<class_Joint3D_property_node_b>`, тело будет прикреплено к фиксированному :ref:`StaticBody3D<class_StaticBody3D>` без форм столкновений.

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_node_b:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_b** = ``NodePath("")`` :ref:`🔗<class_Joint3D_property_node_b>`

.. rst-class:: classref-property-setget

- |void| **set_node_b**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_b**\ (\ )

Путь ко второму узлу (B), прикрепленному к сочленению. Узел должен наследовать :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Если оставить пустым и задать :ref:`node_a<class_Joint3D_property_node_a>`, тело будет прикреплено к фиксированному :ref:`StaticBody3D<class_StaticBody3D>` без форм столкновений.

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_solver_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **solver_priority** = ``1`` :ref:`🔗<class_Joint3D_property_solver_priority>`

.. rst-class:: classref-property-setget

- |void| **set_solver_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_solver_priority**\ (\ )

The priority used to define which solver is executed first for multiple joints. The lower the value, the higher the priority.

\ **Note:** Only supported when using GodotPhysics3D. This property is ignored when using Jolt Physics.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Joint3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Joint3D_method_get_rid>`

Возвращает внутренний :ref:`RID<class_RID>` сочленения из :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
