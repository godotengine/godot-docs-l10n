:github_url: hide

.. _class_PhysicsRayQueryParameters2D:

PhysicsRayQueryParameters2D
===========================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Предоставляет параметры для :ref:`PhysicsDirectSpaceState2D.intersect_ray()<class_PhysicsDirectSpaceState2D_method_intersect_ray>`.

.. rst-class:: classref-introduction-group

Описание
----------------

By changing various properties of this object, such as the ray position, you can configure the parameters for :ref:`PhysicsDirectSpaceState2D.intersect_ray()<class_PhysicsDirectSpaceState2D_method_intersect_ray>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsRayQueryParameters2D_property_collide_with_areas>`   | ``false``         |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsRayQueryParameters2D_property_collide_with_bodies>` | ``true``          |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsRayQueryParameters2D_property_collision_mask>`           | ``4294967295``    |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsRayQueryParameters2D_property_exclude>`                         | ``[]``            |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`from<class_PhysicsRayQueryParameters2D_property_from>`                               | ``Vector2(0, 0)`` |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                            | :ref:`hit_from_inside<class_PhysicsRayQueryParameters2D_property_hit_from_inside>`         | ``false``         |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`to<class_PhysicsRayQueryParameters2D_property_to>`                                   | ``Vector2(0, 0)`` |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>` | :ref:`create<class_PhysicsRayQueryParameters2D_method_create>`\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`, collision_mask\: :ref:`int<class_int>` = 4294967295, exclude\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] = []\ ) |static| |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PhysicsRayQueryParameters2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Если ``true``, запрос будет учитывать :ref:`Area2D<class_Area2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Если ``true``, запрос будет учитывать :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Слои физики, которые запрос обнаружит (как битовую маску). По умолчанию обнаруживаются все слои столкновений. Для получения дополнительной информации см. `Слои и маски столкновений <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документации.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

Список :ref:`RID<class_RID>` объектов, которые будут исключены из столкновений. Используйте :ref:`CollisionObject2D.get_rid()<class_CollisionObject2D_method_get_rid>`, чтобы получить :ref:`RID<class_RID>`, связанный с узлом, производным от :ref:`CollisionObject2D<class_CollisionObject2D>`.

\ **Примечание:** Возвращаемый массив копируется, и любые изменения в нем не обновят исходное значение свойства. Чтобы обновить значение, вам нужно изменить возвращаемый массив, а затем снова назначить его свойству.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_from:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **from** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_from>`

.. rst-class:: classref-property-setget

- |void| **set_from**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_from**\ (\ )

Начальная точка запрашиваемого луча в глобальных координатах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

Если ``true``, запрос обнаружит попадание при запуске внутри фигур. В этом случае нормаль столкновения будет ``Vector2(0, 0)``. Не влияет на вогнутые полигоны фигур.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_to:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **to** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_to>`

.. rst-class:: classref-property-setget

- |void| **set_to**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_to**\ (\ )

Конечная точка запрашиваемого луча в глобальных координатах.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PhysicsRayQueryParameters2D_method_create:

.. rst-class:: classref-method

:ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>` **create**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`, collision_mask\: :ref:`int<class_int>` = 4294967295, exclude\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] = []\ ) |static| :ref:`🔗<class_PhysicsRayQueryParameters2D_method_create>`

Возвращает новый, предварительно настроенный объект **PhysicsRayQueryParameters2D**. Используйте его для быстрого создания параметров запроса с использованием наиболее распространенных опций.

::

    var query = PhysicsRayQueryParameters2D.create(global_position, global_position + Vector2(0, 100))
    var collision = get_world_2d().direct_space_state.intersect_ray(query)

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
