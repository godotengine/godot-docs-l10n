:github_url: hide

.. _class_PhysicsTestMotionParameters2D:

PhysicsTestMotionParameters2D
=============================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Предоставляет параметры для :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>`.

.. rst-class:: classref-introduction-group

Описание
----------------

By changing various properties of this object, such as the motion, you can configure the parameters for :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_separation_ray<class_PhysicsTestMotionParameters2D_property_collide_separation_ray>` | ``false``                         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude_bodies<class_PhysicsTestMotionParameters2D_property_exclude_bodies>`                 | ``[]``                            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] | :ref:`exclude_objects<class_PhysicsTestMotionParameters2D_property_exclude_objects>`               | ``[]``                            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>`              | :ref:`from<class_PhysicsTestMotionParameters2D_property_from>`                                     | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`                          | :ref:`margin<class_PhysicsTestMotionParameters2D_property_margin>`                                 | ``0.08``                          |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`motion<class_PhysicsTestMotionParameters2D_property_motion>`                                 | ``Vector2(0, 0)``                 |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`recovery_as_collision<class_PhysicsTestMotionParameters2D_property_recovery_as_collision>`   | ``false``                         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PhysicsTestMotionParameters2D_property_collide_separation_ray:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_separation_ray** = ``false`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_collide_separation_ray>`

.. rst-class:: classref-property-setget

- |void| **set_collide_separation_ray_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_separation_ray_enabled**\ (\ )

Если установлено значение ``true``, формы типа :ref:`PhysicsServer2D.SHAPE_SEPARATION_RAY<class_PhysicsServer2D_constant_SHAPE_SEPARATION_RAY>` используются для обнаружения столкновений и могут остановить движение. Может быть полезно при привязке к земле.

Если установлено значение ``false``, формы типа :ref:`PhysicsServer2D.SHAPE_SEPARATION_RAY<class_PhysicsServer2D_constant_SHAPE_SEPARATION_RAY>` используются только для разделения при перекрытии с другими телами. Это основное применение форм лучей разделения.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_exclude_bodies:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude_bodies** = ``[]`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_exclude_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_bodies**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude_bodies**\ (\ )

Необязательный массив тела :ref:`RID<class_RID>` для исключения из столкновения. Используйте :ref:`CollisionObject2D.get_rid()<class_CollisionObject2D_method_get_rid>`, чтобы получить :ref:`RID<class_RID>`, связанный с узлом, производным от :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_exclude_objects:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **exclude_objects** = ``[]`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_exclude_objects>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_objects**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_exclude_objects**\ (\ )

Необязательный массив уникальных идентификаторов экземпляров объектов для исключения из коллизии. См. :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_from:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **from** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_from>`

.. rst-class:: classref-property-setget

- |void| **set_from**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_from**\ (\ )

Преобразование в глобальном пространстве, где должно начаться движение. Обычно устанавливается на :ref:`Node2D.global_transform<class_Node2D_property_global_transform>` для преобразования текущего тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.08`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Увеличивает размер фигур, участвующих в обнаружении столкновений.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_motion:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_motion>`

.. rst-class:: classref-property-setget

- |void| **set_motion**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion**\ (\ )

Вектор движения для определения длины и направления проверяемого движения.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_recovery_as_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recovery_as_collision** = ``false`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_recovery_as_collision>`

.. rst-class:: classref-property-setget

- |void| **set_recovery_as_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recovery_as_collision_enabled**\ (\ )

Если установлено значение ``true``, любое отклонение от фазы восстановления сообщается как столкновение; это используется, например, :ref:`CharacterBody2D<class_CharacterBody2D>` для улучшения обнаружения пола во время привязки к полу.

Если установлено значение ``false``, сообщаются только столкновения, возникающие в результате движения, что обычно является желаемым поведением.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
