:github_url: hide

.. _class_KinematicCollision3D:

KinematicCollision3D
====================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放移動 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 所產生的碰撞資料。

.. rst-class:: classref-introduction-group

說明
----

存放移動 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 所產生的碰撞資料，通常是由 :ref:`PhysicsBody3D.move_and_collide()<class_PhysicsBody3D_method_move_and_collide>` 產生的。移動 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 時，它會在偵測到與另一個實體發生碰撞時停止。偵測到碰撞時就會返回 **KinematicCollision3D** 對象。

碰撞封包括碰撞物件、剩餘運動和碰撞位置。可以使用該資料進行碰撞的自訂響應。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_angle<class_KinematicCollision3D_method_get_angle>`\ (\ collision_index\: :ref:`int<class_int>` = 0, up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_KinematicCollision3D_method_get_collider>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                            |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_KinematicCollision3D_method_get_collider_id>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                      |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_KinematicCollision3D_method_get_collider_rid>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                    |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider_shape<class_KinematicCollision3D_method_get_collider_shape>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape_index<class_KinematicCollision3D_method_get_collider_shape_index>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                    |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collider_velocity<class_KinematicCollision3D_method_get_collider_velocity>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                          |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_KinematicCollision3D_method_get_collision_count>`\ (\ ) |const|                                                                                           |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_depth<class_KinematicCollision3D_method_get_depth>`\ (\ ) |const|                                                                                                               |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_local_shape<class_KinematicCollision3D_method_get_local_shape>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                      |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_normal<class_KinematicCollision3D_method_get_normal>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                                |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_position<class_KinematicCollision3D_method_get_position>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                            |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_remainder<class_KinematicCollision3D_method_get_remainder>`\ (\ ) |const|                                                                                                       |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_travel<class_KinematicCollision3D_method_get_travel>`\ (\ ) |const|                                                                                                             |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_KinematicCollision3D_method_get_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle**\ (\ collision_index\: :ref:`int<class_int>` = 0, up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_angle>`

根據 ``up_direction`` 返回碰撞角度，預設為 :ref:`Vector3.UP<class_Vector3_constant_UP>`\ 。該值始終為正。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider>`

給定碰撞索引（預設情況下最深的碰撞），返回該碰撞實體所附加的 :ref:`Object<class_Object>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_id>`

給定碰撞索引（預設情況下最深的碰撞），返回該碰撞實體所附加的 :ref:`Object<class_Object>` 的唯一實例 ID。請參閱 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_rid>`

給定碰撞索引（預設情況下最深的碰撞），返回被 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 使用的碰撞實體的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_shape>`

給定碰撞索引（預設情況下最深的碰撞），返回該碰撞實體的形狀。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape_index**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_shape_index>`

給定碰撞索引（預設情況下最深的碰撞），返回該碰撞實體的形狀索引。請參閱 :ref:`CollisionObject3D<class_CollisionObject3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collider_velocity**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_velocity>`

給定碰撞索引（預設情況下最深的碰撞），返回該碰撞實體的速度。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collision_count>`

返回偵測到的碰撞次數。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_depth**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_depth>`

返回該碰撞物體沿碰撞法線覆蓋的長度。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_local_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_local_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_local_shape>`

給定碰撞索引（預設情況下最深的碰撞），返回移動的物件的碰撞形狀。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_normal**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_normal>`

給定碰撞索引（預設情況下最深的碰撞），返回在碰撞點處該碰撞實體的形狀的法線。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_position**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_position>`

給定碰撞索引（預設情況下最深的碰撞），返回以全域座標表示的碰撞點。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_remainder>`

返回移動對象的剩餘移動向量。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_travel**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_travel>`

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
