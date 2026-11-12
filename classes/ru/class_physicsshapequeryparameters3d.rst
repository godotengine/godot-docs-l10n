:github_url: hide

.. _class_PhysicsShapeQueryParameters3D:

PhysicsShapeQueryParameters3D
=============================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Предоставляет параметры для методов :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

By changing various properties of this object, such as the shape, you can configure the parameters for :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`'s methods.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsShapeQueryParameters3D_property_collide_with_areas>`   | ``false``                                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsShapeQueryParameters3D_property_collide_with_bodies>` | ``true``                                            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsShapeQueryParameters3D_property_collision_mask>`           | ``4294967295``                                      |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsShapeQueryParameters3D_property_exclude>`                         | ``[]``                                              |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`margin<class_PhysicsShapeQueryParameters3D_property_margin>`                           | ``0.0``                                             |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                      | :ref:`motion<class_PhysicsShapeQueryParameters3D_property_motion>`                           | ``Vector3(0, 0, 0)``                                |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Resource<class_Resource>`                    | :ref:`shape<class_PhysicsShapeQueryParameters3D_property_shape>`                             |                                                     |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`RID<class_RID>`                              | :ref:`shape_rid<class_PhysicsShapeQueryParameters3D_property_shape_rid>`                     | ``RID()``                                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`              | :ref:`transform<class_PhysicsShapeQueryParameters3D_property_transform>`                     | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PhysicsShapeQueryParameters3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Если ``true``, запрос будет учитывать :ref:`Area3D<class_Area3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Если ``true``, запрос будет учитывать :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Слои физики, которые запрос обнаружит (как битовую маску). По умолчанию обнаруживаются все слои столкновений. Для получения дополнительной информации см. `Слои и маски столкновений <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документации.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

Список :ref:`RID<class_RID>` объектов, которые будут исключены из столкновений. Используйте :ref:`CollisionObject3D.get_rid()<class_CollisionObject3D_method_get_rid>`, чтобы получить :ref:`RID<class_RID>`, связанный с узлом, производным от :ref:`CollisionObject3D<class_CollisionObject3D>`.

\ **Примечание:** Возвращаемый массив копируется, и любые изменения в нем не обновят исходное значение свойства. Чтобы обновить значение, вам нужно изменить возвращаемый массив, а затем снова назначить его свойству.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Граница столкновения для формы.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_motion:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **motion** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_motion>`

.. rst-class:: classref-property-setget

- |void| **set_motion**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_motion**\ (\ )

Движение запрашиваемой формы.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_shape:

.. rst-class:: classref-property

:ref:`Resource<class_Resource>` **shape** :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Resource<class_Resource>`\ )
- :ref:`Resource<class_Resource>` **get_shape**\ (\ )

:ref:`Shape3D<class_Shape3D>`, который будет использоваться для запросов на столкновение/пересечение. Он хранит фактическую ссылку, которая позволяет избежать освобождения формы при использовании для запросов, поэтому всегда предпочитайте использовать его вместо :ref:`shape_rid<class_PhysicsShapeQueryParameters3D_property_shape_rid>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_shape_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **shape_rid** = ``RID()`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_shape_rid>`

.. rst-class:: classref-property-setget

- |void| **set_shape_rid**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_shape_rid**\ (\ )

Идентификатор :ref:`RID<class_RID>` запрашиваемой фигуры, который будет использоваться для запросов на столкновения/пересечения. Используйте его вместо :ref:`shape<class_PhysicsShapeQueryParameters3D_property_shape>`, если хотите оптимизировать производительность с помощью API серверов:


.. tabs::

 .. code-tab:: gdscript

    var shape_rid = PhysicsServer3D.sphere_shape_create()
    var radius = 2.0
    PhysicsServer3D.shape_set_data(shape_rid, radius)

    var params = PhysicsShapeQueryParameters3D.new()
    params.shape_rid = shape_rid

    # Выполняйте физические запросы здесь...

    # После завершения выполнения физических запросов освободите форму.
    PhysicsServer3D.free_rid(shape_rid)

 .. code-tab:: csharp

    RID shapeRid = PhysicsServer3D.SphereShapeCreate();
    float radius = 2.0f;
    PhysicsServer3D.ShapeSetData(shapeRid, radius);

    var params = new PhysicsShapeQueryParameters3D();
    params.ShapeRid = shapeRid;

    // Выполняйте физические запросы здесь...

    // После завершения выполнения физических запросов освободите форму.
    PhysicsServer3D.FreeRid(shapeRid);



.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters3D_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicsShapeQueryParameters3D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

Матрица преобразования запрашиваемой формы.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
