:github_url: hide

.. _class_PhysicsTestMotionResult3D:

PhysicsTestMotionResult3D
=========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

描述 :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>` 的运动和碰撞结果。

.. rst-class:: classref-introduction-group

描述
----

描述 :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>` 的运动和碰撞结果。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_PhysicsTestMotionResult3D_method_get_collider>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_PhysicsTestMotionResult3D_method_get_collider_id>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_PhysicsTestMotionResult3D_method_get_collider_rid>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_PhysicsTestMotionResult3D_method_get_collider_shape>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collider_velocity<class_PhysicsTestMotionResult3D_method_get_collider_velocity>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_PhysicsTestMotionResult3D_method_get_collision_count>`\ (\ ) |const|                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_depth<class_PhysicsTestMotionResult3D_method_get_collision_depth>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_local_shape<class_PhysicsTestMotionResult3D_method_get_collision_local_shape>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_normal<class_PhysicsTestMotionResult3D_method_get_collision_normal>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_point<class_PhysicsTestMotionResult3D_method_get_collision_point>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_safe_fraction<class_PhysicsTestMotionResult3D_method_get_collision_safe_fraction>`\ (\ ) |const|                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_unsafe_fraction<class_PhysicsTestMotionResult3D_method_get_collision_unsafe_fraction>`\ (\ ) |const|                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_remainder<class_PhysicsTestMotionResult3D_method_get_remainder>`\ (\ ) |const|                                                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_travel<class_PhysicsTestMotionResult3D_method_get_travel>`\ (\ ) |const|                                                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicsTestMotionResult3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider>`

如果发生了碰撞，则返回相撞物体所附加的 :ref:`Object<class_Object>`\ ，碰撞物体由碰撞索引指定（默认为最深的碰撞）。见 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_id>`

如果发生了碰撞，则返回相撞物体所附加 :ref:`Object<class_Object>` 的唯一实例 ID，碰撞物体由碰撞索引指定（默认为最深的碰撞）。见 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_rid>`

如果发生了碰撞，则返回相撞物体在 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 中使用的 :ref:`RID<class_RID>`\ ，碰撞物体由碰撞索引指定（默认为最深的碰撞）。见 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_shape>`

如果发生了碰撞，则返回相撞物体形状的索引，碰撞物体由碰撞索引指定（默认为最深的碰撞）。见 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collider_velocity**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_velocity>`

如果发生了碰撞，则返回相撞物体的速度。见 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_count>`

返回检测到的碰撞次数。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_depth**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_depth>`

如果发生了碰撞，则在给定碰撞索引（默认为最深碰撞）的情况下，返回沿碰撞法线的重叠长度。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_local_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_local_shape>`

如果发生了碰撞，则在给定碰撞索引（默认为最深碰撞）的情况下，返回移动对象的碰撞形状。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_normal**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_normal>`

如果发生了碰撞，则在给定碰撞索引（默认为最深碰撞）的情况下，返回碰撞物体形状在碰撞点处的法线。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_point**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_point>`

如果发生了碰撞，则在给定碰撞索引（默认为最深碰撞）的情况下，返回使用全局坐标表示的碰撞点。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_safe_fraction>`

返回可以运动但不发生碰撞的最大比例，在 ``0`` 和 ``1`` 之间。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_unsafe_fraction>`

如果发生了碰撞，则返回碰撞运动所需的最小摩擦力，在 ``0`` 和 ``1`` 之间。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_remainder>`

返回移动对象的剩余移动向量。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_travel**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_travel>`

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
