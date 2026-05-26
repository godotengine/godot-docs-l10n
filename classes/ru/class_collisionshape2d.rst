:github_url: hide

.. _class_CollisionShape2D:

CollisionShape2D
================

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, который предоставляет :ref:`Shape2D<class_Shape2D>` родительскому :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел, который передает объект :ref:`Shape2D<class_Shape2D>` родительскому объекту :ref:`CollisionObject2D<class_CollisionObject2D>` и позволяет его редактировать. Это может придать объекту :ref:`Area2D<class_Area2D>` форму обнаружения или превратить объект :ref:`PhysicsBody2D<class_PhysicsBody2D>` в твердый объект.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Введение в физику <../tutorials/physics/physics_introduction>`

- `2D Dodge The Creeps Демо <https://godotengine.org/asset-library/asset/2712>`__

- `Демоверсия 2D-понга <https://godotengine.org/asset-library/asset/2728>`__

- `2D Kinematic Character Дэмо <https://godotengine.org/asset-library/asset/2719>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_color<class_CollisionShape2D_property_debug_color>`                                 | ``Color(0, 0, 0, 0)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`disabled<class_CollisionShape2D_property_disabled>`                                       | ``false``             |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`one_way_collision<class_CollisionShape2D_property_one_way_collision>`                     | ``false``             |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`one_way_collision_direction<class_CollisionShape2D_property_one_way_collision_direction>` | ``Vector2(0, 1)``     |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`one_way_collision_margin<class_CollisionShape2D_property_one_way_collision_margin>`       | ``1.0``               |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Shape2D<class_Shape2D>` | :ref:`shape<class_CollisionShape2D_property_shape>`                                             |                       |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CollisionShape2D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionShape2D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

Цвет формы столкновения, отображаемый в редакторе или в запущенном проекте, если **Отладка > Видимые формы столкновения** отмечены в верхней части редактора.

\ **Примечание:** Значение по умолчанию — :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`. Значение ``Color(0, 0, 0, 0)``, задокументированное здесь, является заполнителем, а не фактическим цветом отладки по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionShape2D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Отключенная форма столкновения не имеет эффекта в мире. Это свойство должно быть изменено с помощью :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_one_way_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_way_collision** = ``false`` :ref:`🔗<class_CollisionShape2D_property_one_way_collision>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_way_collision_enabled**\ (\ )

Sets whether this collision shape should only detect collision on one side (top or bottom).

\ **Note:** This property has no effect if this **CollisionShape2D** is a child of an :ref:`Area2D<class_Area2D>` node.

\ **Note:** The one way collision direction can be configured by setting :ref:`one_way_collision_direction<class_CollisionShape2D_property_one_way_collision_direction>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_one_way_collision_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **one_way_collision_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_CollisionShape2D_property_one_way_collision_direction>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_one_way_collision_direction**\ (\ )

The direction used for one-way collision.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_one_way_collision_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **one_way_collision_margin** = ``1.0`` :ref:`🔗<class_CollisionShape2D_property_one_way_collision_margin>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_one_way_collision_margin**\ (\ )

Поле, используемое для одностороннего столкновения (в пикселях). Более высокие значения сделают форму толще и лучше подходят для коллайдеров, которые входят в форму с высокой скоростью.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_CollisionShape2D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

Фактическая форма, принадлежащая этой форме столкновения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
