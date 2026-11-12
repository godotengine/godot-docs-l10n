:github_url: hide

.. _class_PhysicsTestMotionParameters3D:

PhysicsTestMotionParameters3D
=============================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为 :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>` 提供参数。

.. rst-class:: classref-introduction-group

描述
----

By changing various properties of this object, such as the motion, you can configure the parameters for :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_PhysicsTestMotionParameters3D_property_collide_separation_ray:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_separation_ray** = ``false`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_collide_separation_ray>`

.. rst-class:: classref-property-setget

- |void| **set_collide_separation_ray_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_separation_ray_enabled**\ (\ )

如果设置为 ``true``\ ，则 :ref:`PhysicsServer3D.SHAPE_SEPARATION_RAY<class_PhysicsServer3D_constant_SHAPE_SEPARATION_RAY>` 类型的形状用于检测碰撞，并可以停止运动。吸附到地面时很有用。

如果设置为 ``false``\ ，则 :ref:`PhysicsServer3D.SHAPE_SEPARATION_RAY<class_PhysicsServer3D_constant_SHAPE_SEPARATION_RAY>` 类型的形状仅在与其他物体重叠时用于分离。这是分离射线形状的主要用途。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_exclude_bodies:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude_bodies** = ``[]`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_exclude_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_bodies**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude_bodies**\ (\ )

可选的物体 :ref:`RID<class_RID>` 数组，会排除与这些物体的碰撞。请使用 :ref:`CollisionObject3D.get_rid()<class_CollisionObject3D_method_get_rid>` 来获取与派生自 :ref:`CollisionObject3D<class_CollisionObject3D>` 的节点关联的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_exclude_objects:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **exclude_objects** = ``[]`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_exclude_objects>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_objects**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_exclude_objects**\ (\ )

可选的对象唯一实例 ID 数组，会排除与这些实例的碰撞。见 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_from:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **from** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_from>`

.. rst-class:: classref-property-setget

- |void| **set_from**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_from**\ (\ )

运动开始处的全局空间变换。通常设为 :ref:`Node3D.global_transform<class_Node3D_property_global_transform>`\ ，使用当前物体的变换。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.001`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

增加碰撞检测中涉及的形状的大小。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_max_collisions:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_collisions** = ``1`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_max_collisions>`

.. rst-class:: classref-property-setget

- |void| **set_max_collisions**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_collisions**\ (\ )

返回碰撞的最大数量，在 ``1`` 和 ``32`` 之间。始终返回检测到的最深碰撞。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_motion:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **motion** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_motion>`

.. rst-class:: classref-property-setget

- |void| **set_motion**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_motion**\ (\ )

运动向量，定义要测试的运动的长度和方向。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters3D_property_recovery_as_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recovery_as_collision** = ``false`` :ref:`🔗<class_PhysicsTestMotionParameters3D_property_recovery_as_collision>`

.. rst-class:: classref-property-setget

- |void| **set_recovery_as_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recovery_as_collision_enabled**\ (\ )

如果设置为 ``true``\ ，则把恢复阶段的穿透汇报为碰撞；使用场景包括 :ref:`CharacterBody3D<class_CharacterBody3D>` 提升地面吸附阶段的地面检测。

如果设置为 ``false``\ ，则只会汇报移动造成的碰撞，一般符合预期行为。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
