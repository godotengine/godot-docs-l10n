:github_url: hide

.. _class_ShapeCast2D:

ShapeCast2D
===========

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

2D 形狀，會掃描空間中某個區域，用於偵測 :ref:`CollisionObject2D<class_CollisionObject2D>`\ 。

.. rst-class:: classref-introduction-group

說明
----

形狀投射會將其 :ref:`shape<class_ShapeCast2D_property_shape>` 沿著 :ref:`target_position<class_ShapeCast2D_property_target_position>` 確定的投射方向進行掃描，能夠偵測到碰撞物件。類似於 :ref:`RayCast2D<class_RayCast2D>`\ ，但是能夠掃描空間中的一個區域，而不僅僅是一條直線。\ **ShapeCast2D** 能夠偵測到多個碰撞物件。可用於實作較寬的鐳射射線，或者將簡單的形狀吸附到地面。

要立即偵測碰撞重疊，可以將 :ref:`target_position<class_ShapeCast2D_property_target_position>` 設定為 ``Vector2(0, 0)``\ ，並在同一個物理影格中呼叫 :ref:`force_shapecast_update()<class_ShapeCast2D_method_force_shapecast_update>`\ 。這樣就能夠克服 :ref:`Area2D<class_Area2D>` 在進行連續區域偵測時的局限性，因為它無法立即獲取碰撞資訊。

\ **注意：**\ 形狀投射比射線投射的計算量更大。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_ShapeCast2D_property_collide_with_areas>`   | ``false``          |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_ShapeCast2D_property_collide_with_bodies>` | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>`           | ``1``              |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Array<class_Array>`     | :ref:`collision_result<class_ShapeCast2D_property_collision_result>`       | ``[]``             |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_ShapeCast2D_property_enabled>`                         | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_ShapeCast2D_property_exclude_parent>`           | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`     | :ref:`margin<class_ShapeCast2D_property_margin>`                           | ``0.0``            |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`max_results<class_ShapeCast2D_property_max_results>`                 | ``32``             |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Shape2D<class_Shape2D>` | :ref:`shape<class_ShapeCast2D_property_shape>`                             |                    |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`target_position<class_ShapeCast2D_property_target_position>`         | ``Vector2(0, 50)`` |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_ShapeCast2D_method_add_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                                    |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_ShapeCast2D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_ShapeCast2D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_shapecast_update<class_ShapeCast2D_method_force_shapecast_update>`\ (\ )                                                                            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_safe_fraction<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`\ (\ ) |const|                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_unsafe_fraction<class_ShapeCast2D_method_get_closest_collision_unsafe_fraction>`\ (\ ) |const|                                      |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_ShapeCast2D_method_get_collider>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_ShapeCast2D_method_get_collider_rid>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_ShapeCast2D_method_get_collider_shape>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_ShapeCast2D_method_get_collision_count>`\ (\ ) |const|                                                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_ShapeCast2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_ShapeCast2D_method_get_collision_normal>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_ShapeCast2D_method_get_collision_point>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_ShapeCast2D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_ShapeCast2D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                              |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_ShapeCast2D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_ShapeCast2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ShapeCast2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_ShapeCast2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

如果為 ``true``\ ，則會報告與 :ref:`Area2D<class_Area2D>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_ShapeCast2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

如果為 ``true``\ ，則會報告與 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_ShapeCast2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

形狀的碰撞遮罩。只有至少啟用了一個在該遮罩中的碰撞層的物件才會被偵測到。有關詳細資訊，請參閱文件中的\ `《碰撞層和遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collision_result:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **collision_result** = ``[]`` :ref:`🔗<class_ShapeCast2D_property_collision_result>`

.. rst-class:: classref-property-setget

- :ref:`Array<class_Array>` **get_collision_result**\ (\ )

從碰撞掃描中返回完整的碰撞資訊。返回的資料與 :ref:`PhysicsDirectSpaceState2D.get_rest_info()<class_PhysicsDirectSpaceState2D_method_get_rest_info>` 方法中的資料相同。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_ShapeCast2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

如果為 ``true``\ ，將報告碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_ShapeCast2D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

如果為 ``true``\ ，父節點將被排除在碰撞偵測之外。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_ShapeCast2D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

該形狀的碰撞邊距。較大的邊距有助於更一致地偵測碰撞，但代價是犧牲精度。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_max_results:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_results** = ``32`` :ref:`🔗<class_ShapeCast2D_property_max_results>`

.. rst-class:: classref-property-setget

- |void| **set_max_results**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_results**\ (\ )

可以使用這個參數來限制相交點的數量，減少處理時間。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_ShapeCast2D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

The shape to be used for collision queries.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 50)`` :ref:`🔗<class_ShapeCast2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

The shape's destination point, relative to this node's :ref:`Node2D.position<class_Node2D_property_position>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ShapeCast2D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_ShapeCast2D_method_add_exception>`

Adds a collision exception so the shape does not report collisions with the specified node.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast2D_method_add_exception_rid>`

新增碰撞例外，使該形狀不彙報與指定 :ref:`RID<class_RID>` 節點的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_ShapeCast2D_method_clear_exceptions>`

移除該形狀的所有碰撞例外。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_force_shapecast_update:

.. rst-class:: classref-method

|void| **force_shapecast_update**\ (\ ) :ref:`🔗<class_ShapeCast2D_method_force_shapecast_update>`

Updates the collision information for the shape immediately, without waiting for the next ``_physics_process`` call. Use this method, for example, when the shape or its parent has changed state.

\ **Note:** Setting :ref:`enabled<class_ShapeCast2D_property_enabled>` to ``true`` is not required for this to work.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_closest_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`

Returns the fraction from this cast's origin to its :ref:`target_position<class_ShapeCast2D_property_target_position>` of how far the shape can move without triggering a collision, as a value between ``0.0`` and ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_closest_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_closest_collision_unsafe_fraction>`

Returns the fraction from this cast's origin to its :ref:`target_position<class_ShapeCast2D_property_target_position>` of how far the shape must move to trigger a collision, as a value between ``0.0`` and ``1.0``.

In ideal conditions this would be the same as :ref:`get_closest_collision_safe_fraction()<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`, however shape casting is calculated in discrete steps, so the precise point of collision can occur between two calculated positions.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider>`

返回 ``index`` 處多次碰撞之一的碰撞 :ref:`Object<class_Object>`\ ，如果沒有物件與形狀相交（即 :ref:`is_colliding()<class_ShapeCast2D_method_is_colliding>` 返回 ``false``\ ），則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider_rid>`

返回 ``index`` 處多次碰撞之一的碰撞物件的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider_shape>`

返回 ``index`` 處多次碰撞之一的碰撞形狀的形狀 ID，如果沒有物件與該形狀相交（即 :ref:`is_colliding()<class_ShapeCast2D_method_is_colliding>` 返回 ``false``\ ），則返回 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_count>`

在撞擊點偵測到的碰撞次數。使用它來反覆運算由 :ref:`get_collider()<class_ShapeCast2D_method_get_collider>`\ 、\ :ref:`get_collider_shape()<class_ShapeCast2D_method_get_collider_shape>`\ 、\ :ref:`get_collision_point()<class_ShapeCast2D_method_get_collision_point>`\ 、和 :ref:`get_collision_normal()<class_ShapeCast2D_method_get_collision_normal>` 方法提供的多個碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_mask_value>`

返回 :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_normal>`

返回相交物件 ``index`` 處多次碰撞之一的法線。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_point>`

Returns the collision point of one of the multiple collisions at ``index`` where the shape intersects the colliding object.

\ **Note:** This point is in the **global** coordinate system.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_is_colliding>`

返回是否有任何物件與形狀的向量相交（考慮向量長度）。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_ShapeCast2D_method_remove_exception>`

Removes a collision exception so the shape does report collisions with the specified node.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast2D_method_remove_exception_rid>`

移除碰撞例外，使該形狀能夠彙報與指定 :ref:`RID<class_RID>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ShapeCast2D_method_set_collision_mask_value>`

根據 ``value``\ ，啟用或禁用 :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
