:github_url: hide

.. _class_KinematicCollision3D:

KinematicCollision3D
====================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放移动 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 所产生的碰撞数据。

.. rst-class:: classref-introduction-group

描述
----

存放移动 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 所产生的碰撞数据，通常是由 :ref:`PhysicsBody3D.move_and_collide()<class_PhysicsBody3D_method_move_and_collide>` 产生的。移动 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 时，它会在检测到与另一个实体发生碰撞时停止。检测到碰撞时就会返回 **KinematicCollision3D** 对象。

碰撞数据包括碰撞对象、剩余运动和碰撞位置。可以使用该数据进行碰撞的自定义响应。

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

方法说明
--------

.. _class_KinematicCollision3D_method_get_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle**\ (\ collision_index\: :ref:`int<class_int>` = 0, up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_angle>`

根据 ``up_direction`` 返回碰撞角度，默认为 :ref:`Vector3.UP<class_Vector3_constant_UP>`\ 。该值始终为正。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider>`

给定碰撞索引（默认情况下最深的碰撞），返回该碰撞实体所附加的 :ref:`Object<class_Object>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_id>`

给定碰撞索引（默认情况下最深的碰撞），返回该碰撞实体所附加的 :ref:`Object<class_Object>` 的唯一实例 ID。请参阅 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_rid>`

给定碰撞索引（默认情况下最深的碰撞），返回被 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 使用的碰撞实体的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_shape>`

给定碰撞索引（默认情况下最深的碰撞），返回该碰撞实体的形状。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape_index**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_shape_index>`

给定碰撞索引（默认情况下最深的碰撞），返回该碰撞实体的形状索引。请参阅 :ref:`CollisionObject3D<class_CollisionObject3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collider_velocity**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_velocity>`

给定碰撞索引（默认情况下最深的碰撞），返回该碰撞实体的速度。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collision_count>`

返回检测到的碰撞次数。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_depth**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_depth>`

返回该碰撞物体沿碰撞法线覆盖的长度。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_local_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_local_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_local_shape>`

给定碰撞索引（默认情况下最深的碰撞），返回移动的对象的碰撞形状。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_normal**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_normal>`

给定碰撞索引（默认情况下最深的碰撞），返回在碰撞点处该碰撞实体的形状的法线。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_position**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_position>`

给定碰撞索引（默认情况下最深的碰撞），返回以全局坐标表示的碰撞点。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_remainder>`

返回移动对象的剩余移动向量。

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_travel**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_travel>`

返回移动对象的在碰撞前的运动。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
