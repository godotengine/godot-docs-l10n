:github_url: hide

.. _class_PhysicsBody3D:

PhysicsBody3D
=============

**继承：** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`CharacterBody3D<class_CharacterBody3D>`, :ref:`PhysicalBone3D<class_PhysicalBone3D>`, :ref:`RigidBody3D<class_RigidBody3D>`, :ref:`StaticBody3D<class_StaticBody3D>`

受物理影响的 3D 游戏对象的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

**PhysicsBody3D** 与受物理影响的 3D 游戏对象的抽象基类。所有 3D 物理体都继承自这个类。

\ **警告：**\ 缩放不均一时，这个节点的行为可能不符合预期。建议让所有轴上的缩放都保持一致，改为调整碰撞形状的大小。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`物理介绍 <../tutorials/physics/physics_introduction>`

- :doc:`排查物理问题 <../tutorials/physics/troubleshooting_physics_issues>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_x<class_PhysicsBody3D_property_axis_lock_angular_x>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_y<class_PhysicsBody3D_property_axis_lock_angular_y>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_z<class_PhysicsBody3D_property_axis_lock_angular_z>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_x<class_PhysicsBody3D_property_axis_lock_linear_x>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_y<class_PhysicsBody3D_property_axis_lock_linear_y>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_z<class_PhysicsBody3D_property_axis_lock_linear_z>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`add_collision_exception_with<class_PhysicsBody3D_method_add_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                                                   |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_axis_lock<class_PhysicsBody3D_method_get_axis_lock>`\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] | :ref:`get_collision_exceptions<class_PhysicsBody3D_method_get_collision_exceptions>`\ (\ )                                                                                                                                                                                                                                                                                           |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_gravity<class_PhysicsBody3D_method_get_gravity>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision3D<class_KinematicCollision3D>`                | :ref:`move_and_collide<class_PhysicsBody3D_method_move_and_collide>`\ (\ motion\: :ref:`Vector3<class_Vector3>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ )                                                                |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_collision_exception_with<class_PhysicsBody3D_method_remove_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_axis_lock<class_PhysicsBody3D_method_set_axis_lock>`\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                          |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`test_move<class_PhysicsBody3D_method_test_move>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, collision\: :ref:`KinematicCollision3D<class_KinematicCollision3D>` = null, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PhysicsBody3D_property_axis_lock_angular_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_x** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_x>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

锁定物体在 X 轴上的旋转。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_angular_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_y** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_y>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

锁定物体在 Y 轴上的旋转。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_angular_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_z** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_z>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

锁定物体在 Z 轴上的旋转。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_x** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_x>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

锁定物体在 X 轴上的线性运动。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_y** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_y>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

锁定物体在 Y 轴上的线性运动。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_z** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_z>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

锁定物体在 Z 轴上的线性运动。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicsBody3D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody3D_method_add_collision_exception_with>`

将一个物体添加到这个物体不能碰撞的物体列表中。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_axis_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const| :ref:`🔗<class_PhysicsBody3D_method_get_axis_lock>`

如果指定的线性或旋转轴 ``axis`` 被锁定，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_PhysicsBody3D_method_get_collision_exceptions>`

返回该物体的碰撞例外节点数组。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_gravity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_gravity**\ (\ ) |const| :ref:`🔗<class_PhysicsBody3D_method_get_gravity>`

返回根据能够影响该物体的所有来源计算得到的重力向量，包括 :ref:`Area3D<class_Area3D>` 节点的重力覆盖和全局世界重力。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_move_and_collide:

.. rst-class:: classref-method

:ref:`KinematicCollision3D<class_KinematicCollision3D>` **move_and_collide**\ (\ motion\: :ref:`Vector3<class_Vector3>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_PhysicsBody3D_method_move_and_collide>`

沿着运动向量 ``motion`` 移动该物体。为了在 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 和 :ref:`Node._process()<class_Node_private_method__process>` 中不依赖帧速率，\ ``motion`` 应该使用 ``delta`` 计算。

发生碰撞后该物体就会停止运动。返回 :ref:`KinematicCollision3D<class_KinematicCollision3D>`\ ，包含停止时的碰撞信息，或者沿运动向量接触到其他物体时的碰撞信息。

如果 ``test_only`` 为 ``true``\ ，则该物体不会移动，但会给出可能的碰撞信息。

\ ``safe_margin`` 是用于碰撞恢复的额外边距（详见 :ref:`CharacterBody3D.safe_margin<class_CharacterBody3D_property_safe_margin>` ）。

如果 ``recovery_as_collision`` 为 ``true``\ ，则恢复阶段发生的穿透解除也会被报告为碰撞；例如，\ :ref:`CharacterBody3D<class_CharacterBody3D>` 在吸附到地板时会用这个选项来改善对地板检测。

\ ``max_collisions`` 可用于检索多次碰撞的结果。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody3D_method_remove_collision_exception_with>`

将一个物体从该物体不能碰撞的物体列表中移除。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_set_axis_lock:

.. rst-class:: classref-method

|void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_PhysicsBody3D_method_set_axis_lock>`

根据 ``lock`` 的值锁定或解锁指定的线性或旋转轴 ``axis``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_test_move:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_move**\ (\ from\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, collision\: :ref:`KinematicCollision3D<class_KinematicCollision3D>` = null, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_PhysicsBody3D_method_test_move>`

在不移动实体的情况下检查碰撞。为了在 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 或 :ref:`Node._process()<class_Node_private_method__process>` 中独立于帧速率，\ ``motion`` 应该使用 ``delta`` 来计算。

实际上是将节点的位置、缩放和旋转设置为给定 :ref:`Transform3D<class_Transform3D>` 的位置、缩放和旋转，然后尝试沿向量 ``motion`` 移动实体。如果碰撞会阻止实体沿整个路径移动，则返回 ``true``\ 。

\ ``collision`` 是类型为 :ref:`KinematicCollision3D<class_KinematicCollision3D>` 的一个可选对象，它包含有关停止时碰撞或沿运动接触另一个实体时碰撞的附加信息。

\ ``safe_margin`` 是用于碰撞恢复的额外余量（详见 :ref:`CharacterBody3D.safe_margin<class_CharacterBody3D_property_safe_margin>`\ ）。

如果 ``recovery_as_collision`` 为 ``true``\ ，恢复阶段的任何穿透也将被报告为碰撞；这对于检查该实体是否会\ *接触*\ 其他任意实体很有用。

\ ``max_collisions`` 允许检索一个以上的碰撞结果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
