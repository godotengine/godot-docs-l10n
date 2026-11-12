:github_url: hide

.. _class_PhysicsTestMotionResult2D:

PhysicsTestMotionResult2D
=========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

描述 :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>` 的運動和碰撞結果。

.. rst-class:: classref-introduction-group

說明
----

Describes the motion and collision result from :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_PhysicsTestMotionResult2D_method_get_collider>`\ (\ ) |const|                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_PhysicsTestMotionResult2D_method_get_collider_id>`\ (\ ) |const|                             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_PhysicsTestMotionResult2D_method_get_collider_rid>`\ (\ ) |const|                           |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_PhysicsTestMotionResult2D_method_get_collider_shape>`\ (\ ) |const|                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collider_velocity<class_PhysicsTestMotionResult2D_method_get_collider_velocity>`\ (\ ) |const|                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_depth<class_PhysicsTestMotionResult2D_method_get_collision_depth>`\ (\ ) |const|                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_local_shape<class_PhysicsTestMotionResult2D_method_get_collision_local_shape>`\ (\ ) |const|         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_PhysicsTestMotionResult2D_method_get_collision_normal>`\ (\ ) |const|                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_PhysicsTestMotionResult2D_method_get_collision_point>`\ (\ ) |const|                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_safe_fraction<class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction>`\ (\ ) |const|     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_unsafe_fraction<class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction>`\ (\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_remainder<class_PhysicsTestMotionResult2D_method_get_remainder>`\ (\ ) |const|                                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_travel<class_PhysicsTestMotionResult2D_method_get_travel>`\ (\ ) |const|                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PhysicsTestMotionResult2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider>`

如果發生了碰撞，則返回相撞物體所附加的 :ref:`Object<class_Object>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_id>`

如果發生了碰撞，則返回相撞物體所附加 :ref:`Object<class_Object>` 的唯一實例 ID。見 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_rid>`

如果發生了碰撞，則返回相撞物體在 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 中使用的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_shape>`

如果發生了碰撞，則返回相撞物體形狀的索引。見 :ref:`CollisionObject2D<class_CollisionObject2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collider_velocity**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_velocity>`

如果發生了碰撞，則返回相撞物體的速度。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_depth**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_depth>`

如果發生了碰撞，則返回沿碰撞法線的重疊長度。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_local_shape**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_local_shape>`

如果發生了碰撞，則返回移動物件的碰撞形狀。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_normal>`

如果發生了碰撞，則返回碰撞物體形狀在碰撞點處的法線。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_point>`

如果發生了碰撞，則返回使用全域座標表示的碰撞點。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction>`

返回可以運動但不發生碰撞的最大比例，在 ``0`` 和 ``1`` 之間。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction>`

如果發生了碰撞，則返回碰撞運動所需的最小摩擦力，在 ``0`` 和 ``1`` 之間。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_remainder>`

返回移動對象的剩餘移動向量。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_travel**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_travel>`

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
