:github_url: hide

.. _class_RayCast2D:

RayCast2D
=========

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

2D 空间中的射线，用于查找第一个相交的碰撞物体。

.. rst-class:: classref-introduction-group

描述
----

Raycast 代表的是从它的原点到 :ref:`target_position<class_RayCast2D_property_target_position>` 的射线，如果与碰撞对象相交，就能找到路径上距离最近的对象。

要让 **RayCast2D** 忽略某些对象，可以通过将它们加入例外列表，也可以通过让检测汇报忽略 :ref:`Area2D<class_Area2D>`\ （\ :ref:`collide_with_areas<class_RayCast2D_property_collide_with_areas>`\ ）或 :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ （\ :ref:`collide_with_bodies<class_RayCast2D_property_collide_with_bodies>`\ ），还可以通过配置物理层。

\ **RayCast2D** 每一个物理帧都会计算是否相交，且该计算结果会保留到下一个物理帧。如果要立即执行射线投射，或者你想要在同一个物理帧内多次配置 **RayCast2D**\ ，请使用 :ref:`force_raycast_update()<class_RayCast2D_method_force_raycast_update>`\ 。

要扫描 2D 空间中的某个区块，可以使用多个 **RayCast2D** 或使用 :ref:`ShapeCast2D<class_ShapeCast2D>` 去近似该区块。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`发射射线 <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_RayCast2D_property_collide_with_areas>`   | ``false``          |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_RayCast2D_property_collide_with_bodies>` | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_RayCast2D_property_collision_mask>`           | ``1``              |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_RayCast2D_property_enabled>`                         | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_RayCast2D_property_exclude_parent>`           | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>`         | ``false``          |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`target_position<class_RayCast2D_property_target_position>`         | ``Vector2(0, 50)`` |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_RayCast2D_method_add_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                                    |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_RayCast2D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_RayCast2D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_raycast_update<class_RayCast2D_method_force_raycast_update>`\ (\ )                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_RayCast2D_method_get_collider>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_RayCast2D_method_get_collider_rid>`\ (\ ) |const|                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_RayCast2D_method_get_collider_shape>`\ (\ ) |const|                                                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_RayCast2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_RayCast2D_method_get_collision_normal>`\ (\ ) |const|                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_RayCast2D_method_get_collision_point>`\ (\ ) |const|                                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_RayCast2D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_RayCast2D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_RayCast2D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_RayCast2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RayCast2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_RayCast2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

如果为 ``true``\ ，则会报告与 :ref:`Area2D<class_Area2D>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_RayCast2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

如果为 ``true``\ ，则会报告与 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_RayCast2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

射线的碰撞遮罩。只能检测到至少启用了一个遮罩中碰撞层的对象。详见文档中的\ `《碰撞层与掩码》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_RayCast2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

如果为 ``true``\ ，将报告碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_RayCast2D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

如果为 ``true``\ ，则射线投射不会汇报与其父节点的碰撞。仅在父节点为 :ref:`CollisionObject2D<class_CollisionObject2D>` 时有效。另见 :ref:`Node.get_parent()<class_Node_method_get_parent>`\ 、\ :ref:`add_exception()<class_RayCast2D_method_add_exception>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_RayCast2D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

如果为 ``true``\ ，射线会在从形状内部开始时检测到命中。在此情况下，碰撞法线将为 ``Vector2(0, 0)``\ 。不会影响凹多边形形状。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 50)`` :ref:`🔗<class_RayCast2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

射线的目的点，相对于射线投射的 :ref:`Node2D.position<class_Node2D_property_position>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RayCast2D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception>`

添加碰撞例外，这样射线就不会报告与 ``node`` 节点的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception_rid>`

添加碰撞例外，这样射线就不会报告与指定 :ref:`RID<class_RID>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_RayCast2D_method_clear_exceptions>`

删除此射线的所有碰撞例外。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_force_raycast_update:

.. rst-class:: classref-method

|void| **force_raycast_update**\ (\ ) :ref:`🔗<class_RayCast2D_method_force_raycast_update>`

立即更新射线的碰撞信息，不等待下一次的 ``_physics_process`` 调用。例如，请在射线或其父级更改状态后使用该方法。

\ **注意：**\ :ref:`enabled<class_RayCast2D_property_enabled>` 不需要为 ``true`` 即可生效。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider>`

返回射线相交的第一个物体，如果没有物体与射线相交则返回 ``null``\ （即 :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` 返回 ``false``\ ）。

\ **注意：**\ 该物体不一定是 :ref:`CollisionObject2D<class_CollisionObject2D>`\ 。例如 :ref:`TileMapLayer<class_TileMapLayer>` 相交时，方法返回的就是 :ref:`TileMapLayer<class_TileMapLayer>` 实例。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_rid>`

返回该射线相交的第一个对象的 :ref:`RID<class_RID>`\ ，如果没有对象与该射线相交，则返回空 :ref:`RID<class_RID>`\ （即 :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` 返回 ``false``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_shape>`

返回与射线相交的第一个对象的形状 ID，射线未与任何对象相交时返回 ``0``\ （即 :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` 返回 ``false`` 时）。

要获取相交的形状节点，比如假设目标是 :ref:`CollisionObject2D<class_CollisionObject2D>`\ ，可以使用：


.. tabs::

 .. code-tab:: gdscript

    var target = get_collider() # 是 CollisionObject2D 节点。
    var shape_id = get_collider_shape() # 碰撞体中的形状索引。
    var owner_id = target.shape_find_owner(shape_id) # 碰撞体中的所有者 ID。
    var shape = target.shape_owner_get_owner(owner_id)

 .. code-tab:: csharp

    var target = (CollisionObject2D)GetCollider(); // 是 CollisionObject2D 节点。
    var shapeId = GetColliderShape(); // 碰撞体中的形状索引。
    var ownerId = target.ShapeFindOwner(shapeId); // 碰撞体中的所有者 ID。
    var shape = target.ShapeOwnerGetOwner(ownerId);



.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_mask_value>`

返回 :ref:`collision_mask<class_RayCast2D_property_collision_mask>` 中是否启用了指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_normal>`

返回相交对象的形状在碰撞点处的法线，如果射线从该形状内部发出并且 :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` 为 ``true``\ ，则为 ``Vector2(0, 0)``\ 。

\ **注意：**\ 请在调用前检查 :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` 返回的是否为 ``true``\ ，这样返回的法线就是即时有效的。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_point>`

返回全局坐标系中射线与最近的物体相交的碰撞点。如果 :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` 为 ``true`` 并且射线从碰撞形状内部开始，则该函数将返回该射线的原点。

\ **注意：**\ 在调用该方法之前，请检查 :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` 是否返回 ``true``\ ，以确保返回的点有效且最新。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_is_colliding>`

返回是否有任何对象与射线的向量相交（考虑向量长度）。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception>`

移除碰撞例外，这样射线就会报告与 ``node`` 节点的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception_rid>`

移除碰撞例外，这样射线就会报告与指定的 :ref:`RID<class_RID>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RayCast2D_method_set_collision_mask_value>`

根据 ``value``\ ，启用或禁用 :ref:`collision_mask<class_RayCast2D_property_collision_mask>` 中指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
