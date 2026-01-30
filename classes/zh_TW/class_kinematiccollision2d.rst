:github_url: hide

.. _class_KinematicCollision2D:

KinematicCollision2D
====================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放移動 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 所產生的碰撞資料。

.. rst-class:: classref-introduction-group

說明
----

存放移動 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 所產生的碰撞資料，通常是由 :ref:`PhysicsBody2D.move_and_collide()<class_PhysicsBody2D_method_move_and_collide>` 產生的。移動 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 時，它會在偵測到與另一個實體發生碰撞時停止。偵測到碰撞時就會返回 **KinematicCollision2D** 對象。

碰撞封包括碰撞物件、剩餘運動和碰撞位置。可以使用該資料進行碰撞的自訂響應。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_angle<class_KinematicCollision2D_method_get_angle>`\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_KinematicCollision2D_method_get_collider>`\ (\ ) |const|                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_KinematicCollision2D_method_get_collider_id>`\ (\ ) |const|                                                    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_KinematicCollision2D_method_get_collider_rid>`\ (\ ) |const|                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider_shape<class_KinematicCollision2D_method_get_collider_shape>`\ (\ ) |const|                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape_index<class_KinematicCollision2D_method_get_collider_shape_index>`\ (\ ) |const|                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collider_velocity<class_KinematicCollision2D_method_get_collider_velocity>`\ (\ ) |const|                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_depth<class_KinematicCollision2D_method_get_depth>`\ (\ ) |const|                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_local_shape<class_KinematicCollision2D_method_get_local_shape>`\ (\ ) |const|                                                    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_normal<class_KinematicCollision2D_method_get_normal>`\ (\ ) |const|                                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_position<class_KinematicCollision2D_method_get_position>`\ (\ ) |const|                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_remainder<class_KinematicCollision2D_method_get_remainder>`\ (\ ) |const|                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_travel<class_KinematicCollision2D_method_get_travel>`\ (\ ) |const|                                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_KinematicCollision2D_method_get_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle**\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_angle>`

根據 ``up_direction`` 返回碰撞角度，\ ``up_direction`` 預設為 :ref:`Vector2.UP<class_Vector2_constant_UP>`\ 。該返回值始終為正。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider>`

返回該碰撞實體所附加的 :ref:`Object<class_Object>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_id>`

返回該碰撞物體附加的 :ref:`Object<class_Object>` 的唯一實例 ID。見 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_rid>`

返回 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的碰撞物體的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_shape>`

返回該碰撞物體的形狀。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape_index**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_shape_index>`

返回該碰撞物體形狀的索引。見 :ref:`CollisionObject2D<class_CollisionObject2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collider_velocity**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_velocity>`

返回該碰撞物體的速度。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_depth**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_depth>`

返回該碰撞物體沿碰撞法線覆蓋的長度。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_local_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_local_shape**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_local_shape>`

返回移動對象的碰撞形狀。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_normal**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_normal>`

返回該碰撞物體的形狀在碰撞點的法線。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_position**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_position>`

返回碰撞點，使用全域座標。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_remainder>`

返回移動對象的剩餘移動向量。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_travel**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_travel>`

返回移動物件的在碰撞前的運動。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
