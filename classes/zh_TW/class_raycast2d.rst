:github_url: hide

.. _class_RayCast2D:

RayCast2D
=========

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A ray in 2D space, used to find the first collision object it intersects.

.. rst-class:: classref-introduction-group

說明
----

A raycast represents a ray from its origin to its :ref:`target_position<class_RayCast2D_property_target_position>` that finds the closest object along its path, if it intersects any.

\ **RayCast2D** can ignore some objects by adding them to an exception list, by making its detection reporting ignore :ref:`Area2D<class_Area2D>`\ s (:ref:`collide_with_areas<class_RayCast2D_property_collide_with_areas>`) or :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ s (:ref:`collide_with_bodies<class_RayCast2D_property_collide_with_bodies>`), or by configuring physics layers.

\ **RayCast2D** calculates intersection every physics frame, and it holds the result until the next physics frame. For an immediate raycast, or if you want to configure a **RayCast2D** multiple times within the same physics frame, use :ref:`force_raycast_update()<class_RayCast2D_method_force_raycast_update>`.

To sweep over a region of 2D space, you can approximate the region with multiple **RayCast2D**\ s or use :ref:`ShapeCast2D<class_ShapeCast2D>`.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`發射射線 <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_RayCast2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_RayCast2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

如果為 ``true``\ ，則會報告與 :ref:`Area2D<class_Area2D>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_RayCast2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

如果為 ``true``\ ，則會報告與 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_RayCast2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

射線的碰撞遮罩。只能偵測到至少啟用了一個遮罩中碰撞層的物件。詳情請參閱文件中的\ `《碰撞層與遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_RayCast2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

如果為 ``true``\ ，將報告碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_RayCast2D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

If ``true``, this raycast will not report collisions with its parent node. This property only has an effect if the parent node is a :ref:`CollisionObject2D<class_CollisionObject2D>`. See also :ref:`Node.get_parent()<class_Node_method_get_parent>` and :ref:`add_exception()<class_RayCast2D_method_add_exception>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_RayCast2D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

如果為 ``true``\ ，射線會在從形狀內部開始時偵測到命中。在此情況下，碰撞法線將為 ``Vector2(0, 0)``\ 。不會影響凹多邊形形狀。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 50)`` :ref:`🔗<class_RayCast2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

The ray's destination point, relative to this raycast's :ref:`Node2D.position<class_Node2D_property_position>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RayCast2D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception>`

Adds a collision exception so the ray does not report collisions with the specified ``node``.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception_rid>`

新增碰撞例外，這樣射線就不會報告與指定 :ref:`RID<class_RID>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_RayCast2D_method_clear_exceptions>`

刪除此射線的所有碰撞例外。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_force_raycast_update:

.. rst-class:: classref-method

|void| **force_raycast_update**\ (\ ) :ref:`🔗<class_RayCast2D_method_force_raycast_update>`

更新射線的碰撞資訊。使用該方法立即更新碰撞資訊，而不是等待下一個 ``_physics_process`` 呼叫，例如，如果射線或其父級已更改狀態。

\ **注意：**\ :ref:`enabled<class_RayCast2D_property_enabled>` 不需要為 ``true`` 即可生效。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider>`

Returns the first object that the ray intersects, or ``null`` if no object is intersecting the ray (i.e. :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` returns ``false``).

\ **Note:** This object is not guaranteed to be a :ref:`CollisionObject2D<class_CollisionObject2D>`. For example, if the ray intersects a :ref:`TileMapLayer<class_TileMapLayer>`, the method will return a :ref:`TileMapLayer<class_TileMapLayer>` instance.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_rid>`

返回該射線相交的第一個物件的 :ref:`RID<class_RID>`\ ，如果沒有物件與該射線相交，則返回空 :ref:`RID<class_RID>`\ （即 :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` 返回 ``false``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_shape>`

Returns the shape ID of the first object that the ray intersects, or ``0`` if no object is intersecting the ray (i.e. :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` returns ``false``).

To get the intersected shape node, for a :ref:`CollisionObject2D<class_CollisionObject2D>` target, use:


.. tabs::

 .. code-tab:: gdscript

    var target = get_collider() # A CollisionObject2D.
    var shape_id = get_collider_shape() # The shape index in the collider.
    var owner_id = target.shape_find_owner(shape_id) # The owner ID in the collider.
    var shape = target.shape_owner_get_owner(owner_id)

 .. code-tab:: csharp

    var target = (CollisionObject2D)GetCollider(); // A CollisionObject2D.
    var shapeId = GetColliderShape(); // The shape index in the collider.
    var ownerId = target.ShapeFindOwner(shapeId); // The owner ID in the collider.
    var shape = target.ShapeOwnerGetOwner(ownerId);



.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_mask_value>`

返回 :ref:`collision_mask<class_RayCast2D_property_collision_mask>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_normal>`

Returns the normal of the intersecting object's shape at the collision point, or ``Vector2(0, 0)`` if the ray starts inside the shape and :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` is ``true``.

\ **Note:** Check that :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` returns ``true`` before calling this method to ensure the returned normal is valid and up-to-date.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_point>`

Returns the collision point at which the ray intersects the closest object, in the global coordinate system. If :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` is ``true`` and the ray starts inside of a collision shape, this function will return the origin point of the ray.

\ **Note:** Check that :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` returns ``true`` before calling this method to ensure the returned point is valid and up-to-date.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_is_colliding>`

返回是否有任何物件與射線的向量相交（考慮向量長度）。

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception>`

Removes a collision exception so the ray can report collisions with the specified ``node``.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception_rid>`

Removes a collision exception so the ray can report collisions with the specified :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RayCast2D_method_set_collision_mask_value>`

根據 ``value``\ ，啟用或禁用 :ref:`collision_mask<class_RayCast2D_property_collision_mask>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
