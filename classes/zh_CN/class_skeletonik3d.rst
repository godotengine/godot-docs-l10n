:github_url: hide

.. _class_SkeletonIK3D:

SkeletonIK3D
============

**已弃用：** This class may be changed or removed in future versions.

**继承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

可以将 :ref:`Skeleton3D<class_Skeleton3D>` 骨骼链中的所有骨骼进行旋转，从而将末端骨骼放置在正确的 3D 位置的节点。

.. rst-class:: classref-introduction-group

描述
----

SkeletonIK3D 可以将 :ref:`Skeleton3D<class_Skeleton3D>` 骨骼链中的所有骨骼进行旋转，从而将末端骨骼放置在正确的 3D 位置。游戏中 IK 的典型场景是将角色的脚放在地面上，或者将角色的手放在当前持有的物体上。SkeletonIK 在内部使用 FabrikInverseKinematic 来解决骨骼链，并将结果应用于 :ref:`Skeleton3D<class_Skeleton3D>` ``bones_global_pose_override`` 属性中所有受影响的骨骼链。如果完全应用，这将覆盖任何来自 :ref:`Animation<class_Animation>` 的骨骼变换或用户设置的骨骼自定义姿势。应用量可以用 :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>` 属性来控制。

::

    # 在每一个新的帧上自动应用 IK 效果（不是当前的）。
    skeleton_ik_node.start()

    # 只在当前帧上应用 IK 效果
    skeleton_ik_node.start(true)

    # 停止 IK 效果并重置骨骼上的 bones_global_pose_override
    skeleton_ik_node.stop()

    # 应用完整的 IK 效果
    skeleton_ik_node.set_influence(1.0)

    # 应用一半的 IK 效果
    skeleton_ik_node.set_influence(0.5)

    # 应用零 IK 效果（数值为 0.01 或低于 0.01 也会移除 Skeleton 上的 bones_global_pose_override）
    skeleton_ik_node.set_influence(0.0)

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`interpolation<class_SkeletonIK3D_property_interpolation>`           |                                                     |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`magnet<class_SkeletonIK3D_property_magnet>`                         | ``Vector3(0, 0, 0)``                                |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`max_iterations<class_SkeletonIK3D_property_max_iterations>`         | ``10``                                              |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`min_distance<class_SkeletonIK3D_property_min_distance>`             | ``0.01``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` | ``true``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`root_bone<class_SkeletonIK3D_property_root_bone>`                   | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`target<class_SkeletonIK3D_property_target>`                         | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`       | :ref:`target_node<class_SkeletonIK3D_property_target_node>`               | ``NodePath("")``                                    |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`tip_bone<class_SkeletonIK3D_property_tip_bone>`                     | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`use_magnet<class_SkeletonIK3D_property_use_magnet>`                 | ``false``                                           |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_parent_skeleton<class_SkeletonIK3D_method_get_parent_skeleton>`\ (\ ) |const|         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_running<class_SkeletonIK3D_method_is_running>`\ (\ )                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`start<class_SkeletonIK3D_method_start>`\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`stop<class_SkeletonIK3D_method_stop>`\ (\ )                                               |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SkeletonIK3D_property_interpolation:

.. rst-class:: classref-property

:ref:`float<class_float>` **interpolation** :ref:`🔗<class_SkeletonIK3D_property_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interpolation**\ (\ )

**已弃用：** Use :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>` instead.

IK 效果被应用于当前骨架骨骼链的程度的插值。\ ``1.0`` 的值将完全覆盖所有骨架骨骼变换，而 ``0.0`` 的值将在视觉上禁用 SkeletonIK。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_magnet:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **magnet** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_magnet_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_magnet_position**\ (\ )

IK 链的次要目标位置（首先是 :ref:`target<class_SkeletonIK3D_property_target>` 属性或 :ref:`target_node<class_SkeletonIK3D_property_target_node>`\ ）。使用磁铁位置（极点目标）来控制 IK 链的弯曲。仅当骨骼链具有 2 个以上的骨骼时才有效。中间链骨位置将与磁铁位置进行线性插值。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_max_iterations:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_iterations** = ``10`` :ref:`🔗<class_SkeletonIK3D_property_max_iterations>`

.. rst-class:: classref-property-setget

- |void| **set_max_iterations**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_iterations**\ (\ )

IK解算器使用的迭代循环的数量，以产生更准确（和优雅）的骨链效果。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_min_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_distance** = ``0.01`` :ref:`🔗<class_SkeletonIK3D_property_min_distance>`

.. rst-class:: classref-property-setget

- |void| **set_min_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_distance**\ (\ )

骨骼与目标对象之间的最小距离。如果距离低于这个值，IK解算器将停止进一步的迭代。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_override_tip_basis:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **override_tip_basis** = ``true`` :ref:`🔗<class_SkeletonIK3D_property_override_tip_basis>`

.. rst-class:: classref-property-setget

- |void| **set_override_tip_basis**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_override_tip_basis**\ (\ )

如果为 ``true``\ ，则用 :ref:`target<class_SkeletonIK3D_property_target>`\ （或者如果定义了 :ref:`target_node<class_SkeletonIK3D_property_target_node>`]）的旋转覆盖尖端骨骼的旋转。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

当前的根骨骼的名称，即 IK 链中的第一条骨骼。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **target** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_target_transform**\ (\ )

放置尖端骨骼的 IK 链的第一个目标，如果 :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` 是 ``true``\ ，尖端骨骼的旋转方式。如果 :ref:`target_node<class_SkeletonIK3D_property_target_node>` 路径可用，则使用节点变换，并忽略此属性。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_node** = ``NodePath("")`` :ref:`🔗<class_SkeletonIK3D_property_target_node>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

IK 链的目标节点 :ref:`NodePath<class_NodePath>`\ 。如果有的话，将使用节点当前的 :ref:`Transform3D<class_Transform3D>`\ ，而不是 :ref:`target<class_SkeletonIK3D_property_target>` 属性。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_tip_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tip_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_tip_bone>`

.. rst-class:: classref-property-setget

- |void| **set_tip_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tip_bone**\ (\ )

当前尖端骨骼的名称，IK 链中放置在 :ref:`target<class_SkeletonIK3D_property_target>` 变换处的最后一个骨骼（或者已定义 :ref:`target_node<class_SkeletonIK3D_property_target_node>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_use_magnet:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_magnet** = ``false`` :ref:`🔗<class_SkeletonIK3D_property_use_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_use_magnet**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_magnet**\ (\ )

如果为 ``true``\ ，指示 IK 求解器在解算器链时考虑次要磁铁目标（极点目标）。使用磁铁位置（磁极目标）来控制 IK 链的弯曲。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SkeletonIK3D_method_get_parent_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_parent_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonIK3D_method_get_parent_skeleton>`

返回 SkeletonIK 进入场景树时存在的父级 :ref:`Skeleton3D<class_Skeleton3D>` 节点。如果 SkeletonIK3D 进入场景树时父节点不是 :ref:`Skeleton3D<class_Skeleton3D>` 节点，则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_is_running>`

如果 SkeletonIK 正将 IK 效果应用到 :ref:`Skeleton3D<class_Skeleton3D>` 骨骼的连续帧上，则返回 ``true``\ 。如果 SkeletonIK 被停止或 :ref:`start()<class_SkeletonIK3D_method_start>` 被使用时 ``one_time`` 参数被设置为 ``true``\ ，则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SkeletonIK3D_method_start>`

开始将 IK 效果应用到每一帧的 :ref:`Skeleton3D<class_Skeleton3D>` 骨骼，但只会在下一帧开始生效。如果 ``one_time`` 为 ``true`` 则将立即生效，但仍会在下一帧重置。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_stop>`

停止将 IK 效果应用到每帧的 :ref:`Skeleton3D<class_Skeleton3D>` 骨骼，并调用 :ref:`Skeleton3D.clear_bones_global_pose_override()<class_Skeleton3D_method_clear_bones_global_pose_override>` 来移除所有骨骼上的现有覆盖。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
