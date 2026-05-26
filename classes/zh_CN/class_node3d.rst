:github_url: hide

.. meta::
	:keywords: spatial

.. _class_Node3D:

Node3D
======

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AudioListener3D<class_AudioListener3D>`, :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`, :ref:`BoneAttachment3D<class_BoneAttachment3D>`, :ref:`Camera3D<class_Camera3D>`, :ref:`CollisionObject3D<class_CollisionObject3D>`, :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`, :ref:`CollisionShape3D<class_CollisionShape3D>`, :ref:`GridMap<class_GridMap>`, :ref:`ImporterMeshInstance3D<class_ImporterMeshInstance3D>`, :ref:`Joint3D<class_Joint3D>`, :ref:`LightmapProbe<class_LightmapProbe>`, :ref:`Marker3D<class_Marker3D>`, :ref:`NavigationLink3D<class_NavigationLink3D>`, :ref:`NavigationObstacle3D<class_NavigationObstacle3D>`, :ref:`NavigationRegion3D<class_NavigationRegion3D>`, :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>`, :ref:`OpenXRHand<class_OpenXRHand>`, :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`, :ref:`OpenXRRenderModelManager<class_OpenXRRenderModelManager>`, :ref:`Path3D<class_Path3D>`, :ref:`PathFollow3D<class_PathFollow3D>`, :ref:`RayCast3D<class_RayCast3D>`, :ref:`RemoteTransform3D<class_RemoteTransform3D>`, :ref:`ShapeCast3D<class_ShapeCast3D>`, :ref:`Skeleton3D<class_Skeleton3D>`, :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, :ref:`SpringArm3D<class_SpringArm3D>`, :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>`, :ref:`VehicleWheel3D<class_VehicleWheel3D>`, :ref:`VisualInstance3D<class_VisualInstance3D>`, :ref:`XRFaceModifier3D<class_XRFaceModifier3D>`, :ref:`XRNode3D<class_XRNode3D>`, :ref:`XROrigin3D<class_XROrigin3D>`

3D 空间中的基础对象，所有 3D 节点都会继承。

.. rst-class:: classref-introduction-group

描述
----

**Node3D** 节点是对位于 3D 空间中的节点基础表示，所有其他 3D 节点都继承自该类。

除非该 **Node3D** 的 :ref:`top_level<class_Node3D_property_top_level>` 为 ``true``\ ，仿射操作（旋转、缩放、平移）的计算都使用相对于父节点的坐标系。在这一坐标系中，放射操作对应于该 **Node3D** 的 :ref:`transform<class_Node3D_property_transform>` 的直接仿射运算。术语\ *父空间*\ 指的就是这个坐标系。附加到 **Node3D** 本身的坐标系被称为对象本地坐标系，即\ *局部空间*\ 。

\ **注意：**\ 除非另行说明，所有需要提供角度参数的方法收到的角度都必须以\ *弧度*\ 为单位。请使用 :ref:`@GlobalScope.deg_to_rad()<class_@GlobalScope_method_deg_to_rad>` 将度数转换为弧度。

\ **注意：**\ Godot 3 及更早版本中，\ **Node3D** 的名字叫 *Spatial*\ （空间节点）。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`3D 简介 <../tutorials/3d/introduction_to_3d>`

- `所有 3D 演示 <https://github.com/godotengine/godot-demo-projects/tree/master/3d>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Basis<class_Basis>`                             | :ref:`basis<class_Node3D_property_basis>`                                     |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Basis<class_Basis>`                             | :ref:`global_basis<class_Node3D_property_global_basis>`                       |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`global_position<class_Node3D_property_global_position>`                 |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`global_rotation<class_Node3D_property_global_rotation>`                 |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`global_rotation_degrees<class_Node3D_property_global_rotation_degrees>` |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                 | :ref:`global_transform<class_Node3D_property_global_transform>`               |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`position<class_Node3D_property_position>`                               | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                   | :ref:`quaternion<class_Node3D_property_quaternion>`                           |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`rotation<class_Node3D_property_rotation>`                               | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`rotation_degrees<class_Node3D_property_rotation_degrees>`               |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`RotationEditMode<enum_Node3D_RotationEditMode>` | :ref:`rotation_edit_mode<class_Node3D_property_rotation_edit_mode>`           | ``0``                                               |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`       | :ref:`rotation_order<class_Node3D_property_rotation_order>`                   | ``2``                                               |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`scale<class_Node3D_property_scale>`                                     | ``Vector3(1, 1, 1)``                                |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`top_level<class_Node3D_property_top_level>`                             | ``false``                                           |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                 | :ref:`transform<class_Node3D_property_transform>`                             | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                       | :ref:`visibility_parent<class_Node3D_property_visibility_parent>`             | ``NodePath("")``                                    |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`visible<class_Node3D_property_visible>`                                 | ``true``                                            |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`add_gizmo<class_Node3D_method_add_gizmo>`\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`\ )                                                                                                                                                                      |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`clear_gizmos<class_Node3D_method_clear_gizmos>`\ (\ )                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`clear_subgizmo_selection<class_Node3D_method_clear_subgizmo_selection>`\ (\ )                                                                                                                                                                                       |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`force_update_transform<class_Node3D_method_force_update_transform>`\ (\ )                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node3DGizmo<class_Node3DGizmo>`\] | :ref:`get_gizmos<class_Node3D_method_get_gizmos>`\ (\ ) |const|                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                              | :ref:`get_global_transform_interpolated<class_Node3D_method_get_global_transform_interpolated>`\ (\ )                                                                                                                                                                     |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`                                        | :ref:`get_parent_node_3d<class_Node3D_method_get_parent_node_3d>`\ (\ ) |const|                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`World3D<class_World3D>`                                      | :ref:`get_world_3d<class_Node3D_method_get_world_3d>`\ (\ ) |const|                                                                                                                                                                                                       |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`global_rotate<class_Node3D_method_global_rotate>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`global_scale<class_Node3D_method_global_scale>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                                        |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`global_translate<class_Node3D_method_global_translate>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`hide<class_Node3D_method_hide>`\ (\ )                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_local_transform_notification_enabled<class_Node3D_method_is_local_transform_notification_enabled>`\ (\ ) |const|                                                                                                                                                 |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_scale_disabled<class_Node3D_method_is_scale_disabled>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_transform_notification_enabled<class_Node3D_method_is_transform_notification_enabled>`\ (\ ) |const|                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_visible_in_tree<class_Node3D_method_is_visible_in_tree>`\ (\ ) |const|                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`look_at<class_Node3D_method_look_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ )                                                                       |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`look_at_from_position<class_Node3D_method_look_at_from_position>`\ (\ position\: :ref:`Vector3<class_Vector3>`, target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`orthonormalize<class_Node3D_method_orthonormalize>`\ (\ )                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate<class_Node3D_method_rotate>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                                                                                                                  |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_object_local<class_Node3D_method_rotate_object_local>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                                                                                        |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_x<class_Node3D_method_rotate_x>`\ (\ angle\: :ref:`float<class_float>`\ )                                                                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_y<class_Node3D_method_rotate_y>`\ (\ angle\: :ref:`float<class_float>`\ )                                                                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_z<class_Node3D_method_rotate_z>`\ (\ angle\: :ref:`float<class_float>`\ )                                                                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`scale_object_local<class_Node3D_method_scale_object_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                            |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_disable_scale<class_Node3D_method_set_disable_scale>`\ (\ disable\: :ref:`bool<class_bool>`\ )                                                                                                                                                                  |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_identity<class_Node3D_method_set_identity>`\ (\ )                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_ignore_transform_notification<class_Node3D_method_set_ignore_transform_notification>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                                                                                                  |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_notify_local_transform<class_Node3D_method_set_notify_local_transform>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                                                 |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_notify_transform<class_Node3D_method_set_notify_transform>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_subgizmo_selection<class_Node3D_method_set_subgizmo_selection>`\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`, id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`show<class_Node3D_method_show>`\ (\ )                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                      | :ref:`to_global<class_Node3D_method_to_global>`\ (\ local_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                                                                |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                      | :ref:`to_local<class_Node3D_method_to_local>`\ (\ global_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                                                                 |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`translate<class_Node3D_method_translate>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`translate_object_local<class_Node3D_method_translate_object_local>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                   |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`update_gizmos<class_Node3D_method_update_gizmos>`\ (\ )                                                                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_Node3D_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ ) :ref:`🔗<class_Node3D_signal_visibility_changed>`

该节点的可见性发生改变时发出（见 :ref:`visible<class_Node3D_property_visible>` 和 :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>`\ ）。

这个信号会在相关的 :ref:`NOTIFICATION_VISIBILITY_CHANGED<class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED>` 通知\ *之后*\ 触发。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Node3D_RotationEditMode:

.. rst-class:: classref-enumeration

enum **RotationEditMode**: :ref:`🔗<enum_Node3D_RotationEditMode>`

.. _class_Node3D_constant_ROTATION_EDIT_MODE_EULER:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_EULER** = ``0``

The rotation is edited using a :ref:`Vector3<class_Vector3>` in `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__. In Godot, Euler angles always use intrinsic order, meaning that rotation happens around the local axes of the object.

.. _class_Node3D_constant_ROTATION_EDIT_MODE_QUATERNION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_QUATERNION** = ``1``

The rotation is edited using a :ref:`Quaternion<class_Quaternion>`. Quaternions avoid :doc:`gimbal lock <../tutorials/3d/using_transforms>` and having to choose an order of rotation, but are less intuitive. Quaternion rotation is mostly the same as rotors in 3D geometric algebra, except that the numbers are labeled differently.

.. _class_Node3D_constant_ROTATION_EDIT_MODE_BASIS:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_BASIS** = ``2``

旋转量以 :ref:`Basis<class_Basis>` 的形式编辑。该模式下可以自由修改 :ref:`basis<class_Node3D_property_basis>` 的轴，但 :ref:`scale<class_Node3D_property_scale>` 属性不可用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSFORM_CHANGED** = ``2000`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`

如果 :ref:`is_transform_notification_enabled()<class_Node3D_method_is_transform_notification_enabled>` 为 ``true``\ ，该节点的 :ref:`global_transform<class_Node3D_property_global_transform>` 发生改变时收到的通知。另见 :ref:`set_notify_transform()<class_Node3D_method_set_notify_transform>`\ 。

\ **注意：**\ :ref:`VisualInstance3D<class_VisualInstance3D>`\ 、\ :ref:`CollisionObject3D<class_CollisionObject3D>` 等大多数 3D 节点都会自动启用，从而正常工作。

\ **注意：**\ 在编辑器中，如果节点附加了小工具，就会将该通知传播给子节点（见 :ref:`add_gizmo()<class_Node3D_method_add_gizmo>`\ ）。

.. _class_Node3D_constant_NOTIFICATION_ENTER_WORLD:

.. rst-class:: classref-constant

**NOTIFICATION_ENTER_WORLD** = ``41`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_ENTER_WORLD>`

当该节点注册至新 :ref:`World3D<class_World3D>` 时收到的通知（见 :ref:`get_world_3d()<class_Node3D_method_get_world_3d>`\ ）。

.. _class_Node3D_constant_NOTIFICATION_EXIT_WORLD:

.. rst-class:: classref-constant

**NOTIFICATION_EXIT_WORLD** = ``42`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_EXIT_WORLD>`

当该节点从当前 :ref:`World3D<class_World3D>` 中注销时收到的通知（见 :ref:`get_world_3d()<class_Node3D_method_get_world_3d>`\ ）。

该通知会以反向顺序发送。

.. _class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_VISIBILITY_CHANGED** = ``43`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED>`

节点的可见性发生改变时收到的通知（见 :ref:`visible<class_Node3D_property_visible>` 和 :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>`\ ）。

该通知会在相关 :ref:`visibility_changed<class_Node3D_signal_visibility_changed>` 信号\ *之前*\ 收到。

.. _class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_LOCAL_TRANSFORM_CHANGED** = ``44`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`

如果 :ref:`is_local_transform_notification_enabled()<class_Node3D_method_is_local_transform_notification_enabled>` 为 ``true``\ ，该节点的 :ref:`transform<class_Node3D_property_transform>` 发生改变时收到的通知。父级 **Node3D** 节点的 :ref:`transform<class_Node3D_property_transform>` 发生改变时不会受到该通知。另见 :ref:`set_notify_local_transform()<class_Node3D_method_set_notify_local_transform>`\ 。

\ **注意：**\ :ref:`CSGShape3D<class_CSGShape3D>`\ 、\ :ref:`CollisionShape3D<class_CollisionShape3D>` 等部分节点会自动启用，从而正常工作。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Node3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** :ref:`🔗<class_Node3D_property_basis>`

.. rst-class:: classref-property-setget

- |void| **set_basis**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_basis**\ (\ )

:ref:`transform<class_Node3D_property_transform>` 属性的基。代表该节点在父空间中的旋转、缩放、倾斜（相对于父节点）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **global_basis** :ref:`🔗<class_Node3D_property_global_basis>`

.. rst-class:: classref-property-setget

- |void| **set_global_basis**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_global_basis**\ (\ )

:ref:`global_transform<class_Node3D_property_global_transform>` 属性的基。代表该节点在全局空间中的旋转、缩放、倾斜（相对于世界）。

\ **注意：**\ 如果该节点不在树中，则获取该属性会失败并返回 :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_position** :ref:`🔗<class_Node3D_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_position**\ (\ )

该节点的全局位置（平移），使用全局空间（相对于世界）。等价于 :ref:`global_transform<class_Node3D_property_global_transform>` 的 :ref:`Transform3D.origin<class_Transform3D_property_origin>`\ 。

\ **注意：**\ 如果该节点不在树中，则获取该属性会失败并返回 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_rotation** :ref:`🔗<class_Node3D_property_global_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_rotation**\ (\ )

该节点的全局旋转\ `欧拉角 <https://zh.wikipedia.org/zh-cn/%E6%AC%A7%E6%8B%89%E8%A7%92>`__\ ，单位为弧度，使用全局空间（相对于世界）。该值获取自 :ref:`global_basis<class_Node3D_property_global_basis>` 的旋转。

- :ref:`Vector3.x<class_Vector3_property_x>` 包含围绕全局 X 轴的角度（俯仰）。

- :ref:`Vector3.y<class_Vector3_property_y>` 包含围绕全局 Y 轴的角度（偏摆）。

- :ref:`Vector3.z<class_Vector3_property_z>` 包含围绕全局 Z 轴的角度（翻滚）。

\ **注意：**\ 与 :ref:`rotation<class_Node3D_property_rotation>` 不同，该属性始终使用 YXZ 约定（\ :ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`\ ）。

\ **注意：**\ 如果该节点不在树中，则获取该属性会失败并返回 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_rotation_degrees:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_rotation_degrees** :ref:`🔗<class_Node3D_property_global_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation_degrees**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_rotation_degrees**\ (\ )

该节点的 :ref:`global_rotation<class_Node3D_property_global_rotation>`\ ，但单位为角度而非弧度。

\ **注意：**\ 如果该节点不在树中，则获取该属性会失败并返回 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **global_transform** :ref:`🔗<class_Node3D_property_global_transform>`

.. rst-class:: classref-property-setget

- |void| **set_global_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_global_transform**\ (\ )

该节点的变换，使用全局空间（相对于世界）。包含并代表该节点的 :ref:`global_position<class_Node3D_property_global_position>`\ 、\ :ref:`global_rotation<class_Node3D_property_global_rotation>` 以及全局缩放。

\ **注意：**\ 如果该节点不在树中，则获取该属性会失败并返回 :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Node3D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

该节点的位置（平移），使用父空间（相对于父节点）。等价于 :ref:`transform<class_Node3D_property_transform>` 的 :ref:`Transform3D.origin<class_Transform3D_property_origin>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_quaternion:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **quaternion** :ref:`🔗<class_Node3D_property_quaternion>`

.. rst-class:: classref-property-setget

- |void| **set_quaternion**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_quaternion**\ (\ )

该节点的旋转，以父空间中的四元数 :ref:`Quaternion<class_Quaternion>` 的形式显示（相对于父节点）。该值获取自 :ref:`basis<class_Node3D_property_basis>` 的旋转。

\ **注意：**\ 四元数更适合 3D 数学运算，但相对不那么直观。设置该属性可能适用于插值（见 :ref:`Quaternion.slerp()<class_Quaternion_method_slerp>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **rotation** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Node3D_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_rotation**\ (\ )

Rotation of this node as `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__, in radians and in parent space (relative to the parent node). This value is obtained from :ref:`basis<class_Node3D_property_basis>`'s rotation.

- The :ref:`Vector3.x<class_Vector3_property_x>` is the angle around the local X axis (pitch);

- The :ref:`Vector3.y<class_Vector3_property_y>` is the angle around the local Y axis (yaw);

- The :ref:`Vector3.z<class_Vector3_property_z>` is the angle around the local Z axis (roll).

The order of each consecutive rotation can be changed with :ref:`rotation_order<class_Node3D_property_rotation_order>` (see :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` constants). In Godot, Euler angles always use intrinsic order. By default, the intrinsic YXZ convention is used (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`).

\ **Note:** This property is edited in degrees in the inspector. If you want to use degrees in a script, use :ref:`rotation_degrees<class_Node3D_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **rotation_degrees** :ref:`🔗<class_Node3D_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_rotation_degrees**\ (\ )

该节点的 :ref:`rotation<class_Node3D_property_rotation>`\ ，但单位为角度而非弧度。

\ **注意：**\ 这\ **不是**\ 检查器面板中的那个属性。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_edit_mode:

.. rst-class:: classref-property

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **rotation_edit_mode** = ``0`` :ref:`🔗<class_Node3D_property_rotation_edit_mode>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_edit_mode**\ (\ value\: :ref:`RotationEditMode<enum_Node3D_RotationEditMode>`\ )
- :ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **get_rotation_edit_mode**\ (\ )

该节点的旋转和缩放在检查器面板中的显示方式。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_order:

.. rst-class:: classref-property

:ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` **rotation_order** = ``2`` :ref:`🔗<class_Node3D_property_rotation_order>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_order**\ (\ value\: :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`\ )
- :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` **get_rotation_order**\ (\ )

The axis rotation order of the :ref:`rotation<class_Node3D_property_rotation>` property. In Godot, Euler angles always use intrinsic order, meaning that the final orientation is calculated by rotating around the local axes in this order.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_scale:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_Node3D_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_scale**\ (\ )

该节点的缩放，使用局部空间（相对于该节点）。该值获取自 :ref:`basis<class_Node3D_property_basis>` 的缩放。

\ **注意：**\ 部分 3D 节点类型的行为不受该属性的影响。例如 :ref:`Light3D<class_Light3D>`\ 、\ :ref:`Camera3D<class_Camera3D>`\ 、\ :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` 等。

\ **警告：**\ 各缩放分量的正负必须一致，并且\ **不能**\ 完全等于 ``0.0``\ 。否则无法从 :ref:`basis<class_Node3D_property_basis>` 获取该缩放值，可能导致所需的缩放在从磁盘重新加载后丢失，以及其他潜在的不稳定行为。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_top_level:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **top_level** = ``false`` :ref:`🔗<class_Node3D_property_top_level>`

.. rst-class:: classref-property-setget

- |void| **set_as_top_level**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_top_level**\ (\ )

如果为 ``true``\ ，则该节点不会继承其父节点的变换。因此，节点的变换只会在全局空间中进行，同时也意味着 :ref:`global_transform<class_Node3D_property_global_transform>` 和 :ref:`transform<class_Node3D_property_transform>` 完全一致。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Node3D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

该节点的局部变换，使用父空间（相对于父节点）。包含并代表该节点的 :ref:`position<class_Node3D_property_position>`\ 、\ :ref:`rotation<class_Node3D_property_rotation>` 以及 :ref:`scale<class_Node3D_property_scale>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_visibility_parent:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **visibility_parent** = ``NodePath("")`` :ref:`🔗<class_Node3D_property_visibility_parent>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_parent**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_visibility_parent**\ (\ )

该节点及其子级的可见性范围父级。可见性父级必须是一个 :ref:`GeometryInstance3D<class_GeometryInstance3D>`\ 。

仅当可见性父级节点（及其所有可见性祖级节点）因为与相机的距离比其自身 :ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` 更近而被隐藏时，视觉实例才会可见。通过 :ref:`visible<class_Node3D_property_visible>` 属性隐藏的节点，可以看作被从可见性依赖树中移除，因此依赖实例不会考虑隐藏节点或其祖级节点。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_Node3D_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

如果为 ``true``\ ，则该节点能否显示。只有当所有祖先节点都是可见的时候，这个节点才可见。换句话说，\ :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>` 必须返回 ``true``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Node3D_method_add_gizmo:

.. rst-class:: classref-method

|void| **add_gizmo**\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`\ ) :ref:`🔗<class_Node3D_method_add_gizmo>`

将小工具 ``gizmo`` 附加至该节点。仅在编辑器中有效。

\ **注意：**\ ``gizmo`` 应为 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`\ 。参数类型使用 :ref:`Node3DGizmo<class_Node3DGizmo>` 是为了避免在 **Node3D** 中对编辑器类产生依赖。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_clear_gizmos:

.. rst-class:: classref-method

|void| **clear_gizmos**\ (\ ) :ref:`🔗<class_Node3D_method_clear_gizmos>`

清空所有附加到该节点的 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 对象。仅在编辑器中生效。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_clear_subgizmo_selection:

.. rst-class:: classref-method

|void| **clear_subgizmo_selection**\ (\ ) :ref:`🔗<class_Node3D_method_clear_subgizmo_selection>`

取消选中该节点的所有子小工具。适用于选中的子小工具在属性发生改变后不再存在的情况。仅在编辑器中有效。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_force_update_transform:

.. rst-class:: classref-method

|void| **force_update_transform**\ (\ ) :ref:`🔗<class_Node3D_method_force_update_transform>`

发送 :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`\ ，强制更新该节点的 :ref:`global_transform<class_Node3D_property_global_transform>`\ 。如果该节点不在树中则失败。

\ **注意：**\ 出于性能原因，变换的更改通常会累积到一帧的末尾进行\ *单次*\ 应用。更新还会传播至 **Node3D** 子节点。因此，请仅在需要最新变换时使用该方法（例如在物理操作期间）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_gizmos:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3DGizmo<class_Node3DGizmo>`\] **get_gizmos**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_gizmos>`

返回附加于该节点的所有 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 对象。仅在编辑器中有效。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_global_transform_interpolated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_global_transform_interpolated**\ (\ ) :ref:`🔗<class_Node3D_method_get_global_transform_interpolated>`

使用物理插值时，你可能会想要了解节点插值后（显示）的变换而不是标准变换（标准变换可能仅在最近的物理周期中准确）。

如果是在 :ref:`Node._process()<class_Node_private_method__process>` 中进行的基于帧的操作，而不是在 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 中进行，这一点就尤为重要。例如让 :ref:`Camera3D<class_Camera3D>` 聚焦某个节点，或在帧中而不是在物理周期中找到激光发射的位置。

\ **注意：**\ 第一次对 :ref:`Node2D<class_Node2D>` 调用该函数时会产生插值跳跃，重置物理插值后也会产生这样的现象。如果在最初跟随 **Node3D** 时遇到“拖影”问题，请确保在重置 **Node3D** 的物理插值\ *之前*\ 至少调用一次 :ref:`get_global_transform_interpolated()<class_Node3D_method_get_global_transform_interpolated>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_parent_node_3d:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_parent_node_3d**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_parent_node_3d>`

返回直接对该节点的 :ref:`global_transform<class_Node3D_property_global_transform>` 产生影响的父级 **Node3D** 节点。如果不存在父节点、父节点不是 **Node3D** 或 :ref:`top_level<class_Node3D_property_top_level>` 为 ``true`` 则返回 ``null``\ 。

\ **注意：**\ 该方法并不总是等价于 :ref:`Node.get_parent()<class_Node_method_get_parent>`\ ，后者不会考虑 :ref:`top_level<class_Node3D_property_top_level>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_world_3d:

.. rst-class:: classref-method

:ref:`World3D<class_World3D>` **get_world_3d**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_world_3d>`

返回该节点注册到的 :ref:`World3D<class_World3D>`\ 。

通常与该节点视口的世界一致（见 :ref:`Node.get_viewport()<class_Node_method_get_viewport>` 和 :ref:`Viewport.find_world_3d()<class_Viewport_method_find_world_3d>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_rotate:

.. rst-class:: classref-method

|void| **global_rotate**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_global_rotate>`

将该节点的 :ref:`global_basis<class_Node3D_property_global_basis>` 绕全局轴 ``axis`` 旋转，旋转弧度为 ``angle``\ 。该操作所涉及的计算在全局空间中进行（相对于世界），\ :ref:`global_position<class_Node3D_property_global_position>` 保持不变。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_scale:

.. rst-class:: classref-method

|void| **global_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_global_scale>`

使用 ``scale`` 中给定的缩放系数对该节点的 :ref:`global_basis<class_Node3D_property_global_basis>` 进行缩放。该操作所设计的计算在全局空间中进行（相对于世界），\ :ref:`global_position<class_Node3D_property_global_position>` 保持不变。

\ **注意：**\ 请勿将该方法与 :ref:`scale<class_Node3D_property_scale>` 属性混淆。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_translate:

.. rst-class:: classref-method

|void| **global_translate**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_global_translate>`

向该节点的 :ref:`global_position<class_Node3D_property_global_position>` 添加 ``offset`` 中指定的全局空间平移偏移量（相对于世界）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_hide:

.. rst-class:: classref-method

|void| **hide**\ (\ ) :ref:`🔗<class_Node3D_method_hide>`

阻止渲染该节点。等价于将 :ref:`visible<class_Node3D_property_visible>` 设置为 ``false``\ 。该方法与 :ref:`show()<class_Node3D_method_show>` 相对。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_local_transform_notification_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_local_transform_notification_enabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_local_transform_notification_enabled>`

如果该节点会在 :ref:`transform<class_Node3D_property_transform>` 改变时收到 :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>` 则返回 ``true``\ 。可以通过 :ref:`set_notify_local_transform()<class_Node3D_method_set_notify_local_transform>` 启用这一行为。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_scale_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_disabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_scale_disabled>`

如果该节点的 :ref:`global_transform<class_Node3D_property_global_transform>` 会自动进行正交归一化，则返回 ``true``\ 。正交归一化的节点不会变形，效果与全局缩放为 :ref:`Vector3.ONE<class_Vector3_constant_ONE>`\ （或对应的负值）一致。另见 :ref:`is_scale_disabled()<class_Node3D_method_is_scale_disabled>` 和 :ref:`orthonormalize()<class_Node3D_method_orthonormalize>`\ 。

\ **注意：**\ 该设置不影响 :ref:`transform<class_Node3D_property_transform>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_transform_notification_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transform_notification_enabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_transform_notification_enabled>`

如果该节点会在 :ref:`global_transform<class_Node3D_property_global_transform>` 改变时收到 :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` 则返回 ``true``\ 。可以通过 :ref:`set_notify_transform()<class_Node3D_method_set_notify_transform>` 启用这一行为。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_visible_in_tree:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_visible_in_tree**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_visible_in_tree>`

如果该节点位于场景树中且该节点及其所有\ *连续的* **Node3D** 祖先节点的 :ref:`visible<class_Node3D_property_visible>` 属性均为 ``true``\ ，则返回 ``true``\ 。其他类型的祖先节点（例如 :ref:`Node<class_Node>`\ 、\ :ref:`Node2D<class_Node2D>`\ ）都会打断连续。另见 :ref:`Node.get_parent()<class_Node_method_get_parent>`\ 。

\ **注意：**\ 该方法无法考虑 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`\ ，因此即便该方法返回 ``true``\ ，也可能不渲染该节点。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_look_at:

.. rst-class:: classref-method

|void| **look_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node3D_method_look_at>`

旋转该节点，让局部向前的轴（-Z，\ :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>`\ ）指向 ``target`` 的位置。该操作所涉及的运算在全局空间中进行（相对于世界）。

局部向上的轴（+Y）在保持与局部向前的轴垂直的前提下，尽可能接近 ``up`` 向量。最终的变换是正交变换，并且保留了原有缩放。非统一缩放可能无法正常工作。

\ ``target`` 位置不能和该节点的位置相同，\ ``up`` 向量不能为 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。此外，节点位置到 ``target`` 位置的方向不能与 ``up`` 向量平行，这样可以避免围绕局部 Z 轴发生预料之外的旋转。

如果 ``use_model_front`` 为 ``true``\ ，则会将 +Z 轴（资产正面）作为向前的轴（此时 +X 为左），指向 ``target`` 的位置。默认情况下会将 -Z 轴（相机前方）作为向前的轴（此时 +X 为右）。

\ **注意：**\ 如果该节点不在场景树中，则该方法失败。必要时请改用 :ref:`look_at_from_position()<class_Node3D_method_look_at_from_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_look_at_from_position:

.. rst-class:: classref-method

|void| **look_at_from_position**\ (\ position\: :ref:`Vector3<class_Vector3>`, target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node3D_method_look_at_from_position>`

将该节点移动到 ``position`` 位置，然后旋转至指向 ``target`` 位置，类似于 :ref:`look_at()<class_Node3D_method_look_at>`\ 。操作发生在全局空间中（相对于世界）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_orthonormalize:

.. rst-class:: classref-method

|void| **orthonormalize**\ (\ ) :ref:`🔗<class_Node3D_method_orthonormalize>`

将该节点的 :ref:`basis<class_Node3D_property_basis>` 进行正交归一化。该方法会将该节点的 :ref:`scale<class_Node3D_property_scale>` 设置为 :ref:`Vector3.ONE<class_Vector3_constant_ONE>`\ （或对应的负值），保持 :ref:`position<class_Node3D_property_position>` 和 :ref:`rotation<class_Node3D_property_rotation>` 不变。另见 :ref:`Transform3D.orthonormalized()<class_Transform3D_method_orthonormalized>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate:

.. rst-class:: classref-method

|void| **rotate**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate>`

将节点的 :ref:`basis<class_Node3D_property_basis>` 绕 ``axis`` 轴旋转，旋转角 ``angle`` 的单位为弧度。该操作在父空间中进行计算（相对于父节点），\ :ref:`position<class_Node3D_property_position>` 保持不变。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_object_local:

.. rst-class:: classref-method

|void| **rotate_object_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_object_local>`

将节点的 :ref:`basis<class_Node3D_property_basis>` 绕 ``axis`` 轴旋转，旋转角 ``angle`` 的单位为弧度。该操作在局部空间中进行计算（相对于该节点），\ :ref:`position<class_Node3D_property_position>` 保持不变。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_x:

.. rst-class:: classref-method

|void| **rotate_x**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_x>`

将节点的 :ref:`basis<class_Node3D_property_basis>` 绕 X 轴旋转，旋转角 ``angle`` 的单位为弧度。该操作在父空间中进行计算（相对于父节点），\ :ref:`position<class_Node3D_property_position>` 保持不变。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_y:

.. rst-class:: classref-method

|void| **rotate_y**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_y>`

将节点的 :ref:`basis<class_Node3D_property_basis>` 绕 Y 轴旋转，旋转角 ``angle`` 的单位为弧度。该操作在父空间中进行计算（相对于父节点），\ :ref:`position<class_Node3D_property_position>` 保持不变。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_z:

.. rst-class:: classref-method

|void| **rotate_z**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_z>`

将节点的 :ref:`basis<class_Node3D_property_basis>` 绕 Z 轴旋转，旋转角 ``angle`` 的单位为弧度。该操作在父空间中进行计算（相对于父节点），\ :ref:`position<class_Node3D_property_position>` 保持不变。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_scale_object_local:

.. rst-class:: classref-method

|void| **scale_object_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_scale_object_local>`

将节点的 :ref:`basis<class_Node3D_property_basis>` 进行缩放，缩放系数为 ``scale``\ 。该操作在局部空间中进行计算（相对于该节点），\ :ref:`position<class_Node3D_property_position>` 保持不变。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_disable_scale:

.. rst-class:: classref-method

|void| **set_disable_scale**\ (\ disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_disable_scale>`

如果为 ``true``\ ，则该节点的 :ref:`global_transform<class_Node3D_property_global_transform>` 会自动进行正交归一化。正交归一化的节点不会变形，效果与全局缩放为 :ref:`Vector3.ONE<class_Vector3_constant_ONE>`\ （或对应的负值）一致。另见 :ref:`is_scale_disabled()<class_Node3D_method_is_scale_disabled>` 和 :ref:`orthonormalize()<class_Node3D_method_orthonormalize>`\ 。

\ **注意：**\ 该设置不影响 :ref:`transform<class_Node3D_property_transform>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_identity:

.. rst-class:: classref-method

|void| **set_identity**\ (\ ) :ref:`🔗<class_Node3D_method_set_identity>`

将该节点的 :ref:`transform<class_Node3D_property_transform>` 设置为 :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`\ ，会重置父空间中的所有变换（\ :ref:`position<class_Node3D_property_position>`\ 、\ :ref:`rotation<class_Node3D_property_rotation>`\ 、\ :ref:`scale<class_Node3D_property_scale>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_ignore_transform_notification:

.. rst-class:: classref-method

|void| **set_ignore_transform_notification**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_ignore_transform_notification>`

如果为 ``true``\ ，则该节点不会收到 :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` 和 :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`\ 。

适用于在处理这些通知时阻止无限递归。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_notify_local_transform:

.. rst-class:: classref-method

|void| **set_notify_local_transform**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_notify_local_transform>`

如果为 ``true``\ ，则该节点会在 :ref:`transform<class_Node3D_property_transform>` 发生变化时收到 :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`\ 。

\ **注意：**\ :ref:`CSGShape3D<class_CSGShape3D>`\ 、\ :ref:`CollisionShape3D<class_CollisionShape3D>` 等部分 3D 节点会自动启用，从而正常工作。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_notify_transform:

.. rst-class:: classref-method

|void| **set_notify_transform**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_notify_transform>`

如果为 ``true``\ ，则该节点会在 :ref:`global_transform<class_Node3D_property_global_transform>` 发生变化时收到 :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`\ 。

\ **注意：**\ :ref:`VisualInstance3D<class_VisualInstance3D>`\ 、\ :ref:`CollisionObject3D<class_CollisionObject3D>` 等大多数 3D 节点会自动启用，从而正常工作。

\ **注意：**\ 在编辑器中，如果节点附加了小工具，就会将该通知传播给子节点（见 :ref:`add_gizmo()<class_Node3D_method_add_gizmo>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_subgizmo_selection:

.. rst-class:: classref-method

|void| **set_subgizmo_selection**\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`, id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Node3D_method_set_subgizmo_selection>`

选中小工具 ``gizmo`` 的 ID 为 ``id`` 的子小工具，并设置其变换。仅在编辑器中有效。

\ **注意：**\ 小工具对象通常是 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 的实例，但参数类型保持通用以避免在 **Node3D** 中创建对编辑器类的依赖。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_show:

.. rst-class:: classref-method

|void| **show**\ (\ ) :ref:`🔗<class_Node3D_method_show>`

允许渲染该节点。等价于将 :ref:`visible<class_Node3D_property_visible>` 设置为 ``true``\ 。该方法与 :ref:`hide()<class_Node3D_method_hide>` 相对。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_to_global:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **to_global**\ (\ local_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Node3D_method_to_global>`

返回将 ``local_point`` 从该节点的局部空间转换至全局空间的结果。该方法与 :ref:`to_local()<class_Node3D_method_to_local>` 相对。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **to_local**\ (\ global_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Node3D_method_to_local>`

返回将 ``global_point`` 从全局空间转换至该节点的局部空间的结果。该方法与 :ref:`to_global()<class_Node3D_method_to_global>` 相对。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_translate:

.. rst-class:: classref-method

|void| **translate**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_translate>`

向该节点的位置添加平移偏移量 ``offset``\ ，使用局部空间（相对于该节点）。

\ **注意：**\ 请优先使用 :ref:`translate_object_local()<class_Node3D_method_translate_object_local>`\ ，因为本方法可能在后续版本中发生改变。

\ **注意：**\ 该操作所涉及的运算\ **不是**\ 在父空间中进行的，这与该方法的命名方式不一致是处于兼容考虑。要在父空间中进行平移请向 :ref:`position<class_Node3D_property_position>` 添加 ``offset``\ （\ ``node_3d.position += offset``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_translate_object_local:

.. rst-class:: classref-method

|void| **translate_object_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_translate_object_local>`

向该节点的位置添加平移偏移量 ``offset``\ ，使用局部空间（相对于该节点）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_update_gizmos:

.. rst-class:: classref-method

|void| **update_gizmos**\ (\ ) :ref:`🔗<class_Node3D_method_update_gizmos>`

更新附加于该节点的所有 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 小工具。仅在编辑器中有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
