:github_url: hide

.. _class_PhysicsRayQueryParameters2D:

PhysicsRayQueryParameters2D
===========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为 :ref:`PhysicsDirectSpaceState2D.intersect_ray()<class_PhysicsDirectSpaceState2D_method_intersect_ray>` 提供参数。

.. rst-class:: classref-introduction-group

描述
----

通过修改这个对象的射线位置等属性，你可以为 :ref:`PhysicsDirectSpaceState2D.intersect_ray()<class_PhysicsDirectSpaceState2D_method_intersect_ray>` 配置参数。

.. rst-class:: classref-reftable-group

属性
----

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

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>` | :ref:`create<class_PhysicsRayQueryParameters2D_method_create>`\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`, collision_mask\: :ref:`int<class_int>` = 4294967295, exclude\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] = []\ ) |static| |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PhysicsRayQueryParameters2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

如果为 ``true``\ ，查询将考虑 :ref:`Area2D<class_Area2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

如果为 ``true``\ ，查询将考虑 :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

查询将检测的物理层（作为位掩码）。默认情况下，会检测所有碰撞层。有关详细信息，请参阅文档中的 `《碰撞层和掩码》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

将被排除在碰撞之外的对象的 :ref:`RID<class_RID>` 列表。请使用 :ref:`CollisionObject2D.get_rid()<class_CollisionObject2D_method_get_rid>` 来获取与派生自 :ref:`CollisionObject2D<class_CollisionObject2D>` 的节点关联的 :ref:`RID<class_RID>`\ 。

\ **注意：**\ 返回的数组为副本，对其进行的修改不会更新原有属性。更新时，请先修改返回的数组，然后将其重新赋值回该属性。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_from:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **from** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_from>`

.. rst-class:: classref-property-setget

- |void| **set_from**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_from**\ (\ )

要查询的射线起点，使用全局坐标。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

如果为 ``true``\ ，查询会在从形状内部开始时检测到命中。在此情况下，碰撞法线将为 ``Vector2(0, 0)``\ 。不会影响凹多边形形状。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_to:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **to** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_to>`

.. rst-class:: classref-property-setget

- |void| **set_to**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_to**\ (\ )

要查询的射线终点，使用全局坐标。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicsRayQueryParameters2D_method_create:

.. rst-class:: classref-method

:ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>` **create**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`, collision_mask\: :ref:`int<class_int>` = 4294967295, exclude\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] = []\ ) |static| :ref:`🔗<class_PhysicsRayQueryParameters2D_method_create>`

返回一个新的、预配置的 **PhysicsRayQueryParameters2D** 对象。使用它可以使用最常见的选项来快速创建查询参数。

::

    var query = PhysicsRayQueryParameters2D.create(global_position, global_position + Vector2(0, 100))
    var collision = get_world_2d().direct_space_state.intersect_ray(query)

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
