:github_url: hide

.. _class_PhysicsTestMotionParameters3D:

PhysicsTestMotionParameters3D
=============================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為 :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>` 提供參數。

.. rst-class:: classref-introduction-group

說明
----

更改該物件的運動等屬性可以配置 :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>` 的參數。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_separation_ray<class_PhysicsTestMotionParameters3D_property_collide_separation_ray>` | ``false``                                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude_bodies<class_PhysicsTestMotionParameters3D_property_exclude_bodies>`                 | ``[]``                                              |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] | :ref:`exclude_objects<class_PhysicsTestMotionParameters3D_property_exclude_objects>`               | ``[]``                                              |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`              | :ref:`from<class_PhysicsTestMotionParameters3D_property_from>`                                     | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`margin<class_PhysicsTestMotionParameters3D_property_margin>`                                 | ``0.001``                                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                              | :ref:`max_collisions<class_PhysicsTestMotionParameters3D_property_max_collisions>`                 | ``1``                                               |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                      | :ref:`motion<class_PhysicsTestMotionParameters3D_property_motion>`                                 | ``Vector3(0, 0, 0)``                                |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`recovery_as_collision<class_PhysicsTestMotionParameters3D_property_recovery_as_collision>`   | ``false``                                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PhysicsTestMotionParameters3D_property_collide_separation_ray:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_separation_ray** = ``false`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_collide_separation_ray>`

.. rst-class:: classref-property-setget

- |void| **set_collide_separation_ray_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_separation_ray_enabled**\ (\ )

如果設定為 ``true``\ ，則 :ref:`PhysicsServer3D.SHAPE_SEPARATION_RAY<class_PhysicsServer3D_constant_SHAPE_SEPARATION_RAY>` 型別的形狀用於偵測碰撞，並可以停止運動。吸附到地面時很有用。

如果設定為 ``false``\ ，則 :ref:`PhysicsServer3D.SHAPE_SEPARATION_RAY<class_PhysicsServer3D_constant_SHAPE_SEPARATION_RAY>` 型別的形狀僅在與其他物體重疊時用於分離。這是分離射線形狀的主要用途。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_exclude_bodies:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude_bodies** = ``[]`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_exclude_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_bodies**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude_bodies**\ (\ )

可選的物體 :ref:`RID<class_RID>` 陣列，會排除與這些物體的碰撞。請使用 :ref:`CollisionObject3D.get_rid()<class_CollisionObject3D_method_get_rid>` 來獲取與衍生自 :ref:`CollisionObject3D<class_CollisionObject3D>` 的節點關聯的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_exclude_objects:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **exclude_objects** = ``[]`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_exclude_objects>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_objects**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_exclude_objects**\ (\ )

可選的物件唯一實例 ID 陣列，會排除與這些實例的碰撞。見 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_from:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **from** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_from>`

.. rst-class:: classref-property-setget

- |void| **set_from**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_from**\ (\ )

運動開始處的全域空間變換。通常設為 :ref:`Node3D.global_transform<class_Node3D_property_global_transform>`\ ，使用目前物體的變換。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.001`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

增加碰撞偵測中涉及的形狀的大小。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_max_collisions:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_collisions** = ``1`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_max_collisions>`

.. rst-class:: classref-property-setget

- |void| **set_max_collisions**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_collisions**\ (\ )

返回碰撞的最大數量，在 ``1`` 和 ``32`` 之間。始終返回偵測到的最深碰撞。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_motion:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **motion** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_motion>`

.. rst-class:: classref-property-setget

- |void| **set_motion**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_motion**\ (\ )

運動向量，定義要測試的運動的長度和方向。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_recovery_as_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recovery_as_collision** = ``false`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_recovery_as_collision>`

.. rst-class:: classref-property-setget

- |void| **set_recovery_as_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recovery_as_collision_enabled**\ (\ )

如果設定為 ``true``\ ，則把恢復階段的穿透彙報為碰撞；使用場景包括 :ref:`CharacterBody3D<class_CharacterBody3D>` 提升地面吸附階段的地面偵測。

如果設定為 ``false``\ ，則只會彙報移動造成的碰撞，一般符合預期行為。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
