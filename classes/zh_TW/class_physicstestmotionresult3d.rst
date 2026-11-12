:github_url: hide

.. _class_PhysicsTestMotionResult3D:

PhysicsTestMotionResult3D
=========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

描述 :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>` 的運動和碰撞結果。

.. rst-class:: classref-introduction-group

說明
----

Describes the motion and collision result from :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

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

方法說明
--------

.. _class_PhysicsTestMotionResult3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider>`

如果發生了碰撞，則返回相撞物體所附加的 :ref:`Object<class_Object>`\ ，碰撞物體由碰撞索引指定（預設為最深的碰撞）。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_id>`

如果發生了碰撞，則返回相撞物體所附加 :ref:`Object<class_Object>` 的唯一實例 ID，碰撞物體由碰撞索引指定（預設為最深的碰撞）。見 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_rid>`

如果發生了碰撞，則返回相撞物體在 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 中使用的 :ref:`RID<class_RID>`\ ，碰撞物體由碰撞索引指定（預設為最深的碰撞）。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_shape>`

如果發生了碰撞，則返回相撞物體形狀的索引，碰撞物體由碰撞索引指定（預設為最深的碰撞）。請參閱 :ref:`CollisionObject3D<class_CollisionObject3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collider_velocity**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_velocity>`

若發生碰撞，則回傳指定碰撞索引對應之碰撞物體的速度（預設使用穿透最深的碰撞）。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_count>`

返回偵測到的碰撞次數。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_depth**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_depth>`

如果發生了碰撞，則在給定碰撞索引（預設為最深碰撞）的情況下，返回沿碰撞法線的重疊長度。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_local_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_local_shape>`

如果發生了碰撞，則在給定碰撞索引（預設為最深碰撞）的情況下，返回移動物件的碰撞形狀。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_normal**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_normal>`

如果發生了碰撞，則在給定碰撞索引（預設為最深碰撞）的情況下，返回碰撞物體形狀在碰撞點處的法線。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_point**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_point>`

如果發生了碰撞，則在給定碰撞索引（預設為最深碰撞）的情況下，返回使用全域座標表示的碰撞點。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_safe_fraction>`

返回可以運動但不發生碰撞的最大比例，在 ``0`` 和 ``1`` 之間。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_unsafe_fraction>`

如果發生了碰撞，則返回碰撞運動所需的最小摩擦力，在 ``0`` 和 ``1`` 之間。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_remainder>`

返回移動對象的剩餘移動向量。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_travel**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_travel>`

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
