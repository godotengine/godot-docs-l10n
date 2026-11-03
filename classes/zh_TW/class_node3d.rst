:github_url: hide

.. meta::
	:keywords: spatial

.. _class_Node3D:

Node3D
======

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AudioListener3D<class_AudioListener3D>`, :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`, :ref:`BoneAttachment3D<class_BoneAttachment3D>`, :ref:`Camera3D<class_Camera3D>`, :ref:`CollisionObject3D<class_CollisionObject3D>`, :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`, :ref:`CollisionShape3D<class_CollisionShape3D>`, :ref:`GridMap<class_GridMap>`, :ref:`ImporterMeshInstance3D<class_ImporterMeshInstance3D>`, :ref:`Joint3D<class_Joint3D>`, :ref:`LightmapProbe<class_LightmapProbe>`, :ref:`Marker3D<class_Marker3D>`, :ref:`NavigationLink3D<class_NavigationLink3D>`, :ref:`NavigationObstacle3D<class_NavigationObstacle3D>`, :ref:`NavigationRegion3D<class_NavigationRegion3D>`, :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>`, :ref:`OpenXRHand<class_OpenXRHand>`, :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`, :ref:`OpenXRRenderModelManager<class_OpenXRRenderModelManager>`, :ref:`Path3D<class_Path3D>`, :ref:`PathFollow3D<class_PathFollow3D>`, :ref:`RayCast3D<class_RayCast3D>`, :ref:`RemoteTransform3D<class_RemoteTransform3D>`, :ref:`ShapeCast3D<class_ShapeCast3D>`, :ref:`Skeleton3D<class_Skeleton3D>`, :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, :ref:`SpringArm3D<class_SpringArm3D>`, :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>`, :ref:`VehicleWheel3D<class_VehicleWheel3D>`, :ref:`VisualInstance3D<class_VisualInstance3D>`, :ref:`XRFaceModifier3D<class_XRFaceModifier3D>`, :ref:`XRNode3D<class_XRNode3D>`, :ref:`XROrigin3D<class_XROrigin3D>`

3D 空間中的基礎物件，所有 3D 節點都會繼承。

.. rst-class:: classref-introduction-group

說明
----

**Node3D** 節點是對位於 3D 空間中的節點基礎表示，所有其他 3D 節點都繼承自該類。

除非該 **Node3D** 的 :ref:`top_level<class_Node3D_property_top_level>` 為 ``true``\ ，仿射操作（旋轉、縮放、平移）的計算都使用相對於父節點的座標系。在這一座標系中，放射操作對應於該 **Node3D** 的 :ref:`transform<class_Node3D_property_transform>` 的直接仿射運算。術語\ *父空間*\ 指的就是這個座標系。附加到 **Node3D** 本身的座標系被稱為物件區域座標系，即\ *區域空間*\ 。

\ **注意：**\ 除非另行說明，所有需要提供角度參數的方法收到的角度都必須以\ *弧度*\ 為單位。請使用 :ref:`@GlobalScope.deg_to_rad()<class_@GlobalScope_method_deg_to_rad>` 將度數轉換為弧度。

\ **注意：**\ Godot 3 及更早版本中，\ **Node3D** 的名字叫 *Spatial*\ （空間節點）。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`3D 入門 <../tutorials/3d/introduction_to_3d>`

- `所有 3D 範例 <https://github.com/godotengine/godot-demo-projects/tree/master/3d>`__

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_Node3D_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ ) :ref:`🔗<class_Node3D_signal_visibility_changed>`

該節點的可見性發生改變時發出（見 :ref:`visible<class_Node3D_property_visible>` 和 :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>`\ ）。

這個訊號會在相關的 :ref:`NOTIFICATION_VISIBILITY_CHANGED<class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED>` 通知\ *之後*\ 觸發。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Node3D_RotationEditMode:

.. rst-class:: classref-enumeration

enum **RotationEditMode**: :ref:`🔗<enum_Node3D_RotationEditMode>`

.. _class_Node3D_constant_ROTATION_EDIT_MODE_EULER:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_EULER** = ``0``

該旋轉角度是通過一個 `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__\ （Euler angles）型別的 :ref:`Vector3<class_Vector3>`\ （三維向量）來進行編輯的。在 Godot 中，歐拉角始終使用內旋（intrinsic）順序，這意味著旋轉是圍繞物體自身的區域座標軸進行的。

.. _class_Node3D_constant_ROTATION_EDIT_MODE_QUATERNION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_QUATERNION** = ``1``

旋轉量以 :ref:`Quaternion<class_Quaternion>`\ （四元數）的形式進行編輯。四元數可以避免 :doc:`gimbal lock <../tutorials/3d/using_transforms>` 以及必須選擇旋轉順序的問題，但不如歐拉角直觀。四元數旋轉與 3D 幾何代數中的旋轉子（rotors）基本相同，只是數值的標記方式不同。

.. _class_Node3D_constant_ROTATION_EDIT_MODE_BASIS:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_BASIS** = ``2``

旋轉量以 :ref:`Basis<class_Basis>` 的形式編輯。該模式下可以自由修改 :ref:`basis<class_Node3D_property_basis>` 的軸，但 :ref:`scale<class_Node3D_property_scale>` 屬性不可用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSFORM_CHANGED** = ``2000`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`

如果 :ref:`is_transform_notification_enabled()<class_Node3D_method_is_transform_notification_enabled>` 為 ``true``\ ，該節點的 :ref:`global_transform<class_Node3D_property_global_transform>` 發生改變時收到的通知。另見 :ref:`set_notify_transform()<class_Node3D_method_set_notify_transform>`\ 。

\ **注意：**\ :ref:`VisualInstance3D<class_VisualInstance3D>`\ 、\ :ref:`CollisionObject3D<class_CollisionObject3D>` 等大多數 3D 節點都會自動啟用，從而正常工作。

\ **注意：**\ 在編輯器中，如果節點附加了小工具，就會將該通知傳播給子節點（見 :ref:`add_gizmo()<class_Node3D_method_add_gizmo>`\ ）。

.. _class_Node3D_constant_NOTIFICATION_ENTER_WORLD:

.. rst-class:: classref-constant

**NOTIFICATION_ENTER_WORLD** = ``41`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_ENTER_WORLD>`

當該節點注冊至新 :ref:`World3D<class_World3D>` 時收到的通知（見 :ref:`get_world_3d()<class_Node3D_method_get_world_3d>`\ ）。

.. _class_Node3D_constant_NOTIFICATION_EXIT_WORLD:

.. rst-class:: classref-constant

**NOTIFICATION_EXIT_WORLD** = ``42`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_EXIT_WORLD>`

當該節點從目前 :ref:`World3D<class_World3D>` 中注銷時收到的通知（見 :ref:`get_world_3d()<class_Node3D_method_get_world_3d>`\ ）。

該通知會以反向順序發送。

.. _class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_VISIBILITY_CHANGED** = ``43`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED>`

節點的可見性發生改變時收到的通知（見 :ref:`visible<class_Node3D_property_visible>` 和 :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>`\ ）。

該通知會在相關 :ref:`visibility_changed<class_Node3D_signal_visibility_changed>` 訊號\ *之前*\ 收到。

.. _class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_LOCAL_TRANSFORM_CHANGED** = ``44`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`

如果 :ref:`is_local_transform_notification_enabled()<class_Node3D_method_is_local_transform_notification_enabled>` 為 ``true``\ ，該節點的 :ref:`transform<class_Node3D_property_transform>` 發生改變時收到的通知。父級 **Node3D** 節點的 :ref:`transform<class_Node3D_property_transform>` 發生改變時不會受到該通知。另見 :ref:`set_notify_local_transform()<class_Node3D_method_set_notify_local_transform>`\ 。

\ **注意：**\ :ref:`CSGShape3D<class_CSGShape3D>`\ 、\ :ref:`CollisionShape3D<class_CollisionShape3D>` 等部分節點會自動啟用，從而正常工作。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Node3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** :ref:`🔗<class_Node3D_property_basis>`

.. rst-class:: classref-property-setget

- |void| **set_basis**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_basis**\ (\ )

:ref:`transform<class_Node3D_property_transform>` 屬性的基。代表該節點在父空間中的旋轉、縮放、傾斜（相對於父節點）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **global_basis** :ref:`🔗<class_Node3D_property_global_basis>`

.. rst-class:: classref-property-setget

- |void| **set_global_basis**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_global_basis**\ (\ )

:ref:`global_transform<class_Node3D_property_global_transform>` 屬性的基。代表該節點在全域空間中的旋轉、縮放、傾斜（相對於世界）。

\ **注意：**\ 如果該節點不在樹中，則取得該屬性會失敗並回傳 :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_position** :ref:`🔗<class_Node3D_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_position**\ (\ )

該節點的全域位置（平移），使用全域空間（相對於世界）。等價於 :ref:`global_transform<class_Node3D_property_global_transform>` 的 :ref:`Transform3D.origin<class_Transform3D_property_origin>`\ 。

\ **注意：**\ 如果該節點不在樹中，則取得該屬性會失敗並回傳 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_rotation** :ref:`🔗<class_Node3D_property_global_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_rotation**\ (\ )

該節點的全域旋轉\ `歐拉角 <https://zh.wikipedia.org/zh-cn/%E6%AC%A7%E6%8B%89%E8%A7%92>`__\ ，單位為弧度，使用全域空間（相對於世界）。該值取得自 :ref:`global_basis<class_Node3D_property_global_basis>` 的旋轉。

- :ref:`Vector3.x<class_Vector3_property_x>` 包含圍繞全域 X 軸的角度（俯仰）。

- :ref:`Vector3.y<class_Vector3_property_y>` 包含圍繞全域 Y 軸的角度（偏擺）。

- :ref:`Vector3.z<class_Vector3_property_z>` 包含圍繞全域 Z 軸的角度（翻滾）。

\ **注意：**\ 與 :ref:`rotation<class_Node3D_property_rotation>` 不同，該屬性始終使用 YXZ 約定（\ :ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`\ ）。

\ **注意：**\ 如果該節點不在樹中，則取得該屬性會失敗並回傳 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_rotation_degrees:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_rotation_degrees** :ref:`🔗<class_Node3D_property_global_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation_degrees**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_rotation_degrees**\ (\ )

該節點的 :ref:`global_rotation<class_Node3D_property_global_rotation>`\ ，但單位為角度而非弧度。

\ **注意：**\ 如果該節點不在樹中，則取得該屬性會失敗並回傳 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **global_transform** :ref:`🔗<class_Node3D_property_global_transform>`

.. rst-class:: classref-property-setget

- |void| **set_global_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_global_transform**\ (\ )

該節點的變換，使用全域空間（相對於世界）。包含並代表該節點的 :ref:`global_position<class_Node3D_property_global_position>`\ 、\ :ref:`global_rotation<class_Node3D_property_global_rotation>` 以及全域縮放。

\ **注意：**\ 如果該節點不在樹中，則取得該屬性會失敗並回傳 :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Node3D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

該節點的位置（平移），使用父空間（相對於父節點）。等價於 :ref:`transform<class_Node3D_property_transform>` 的 :ref:`Transform3D.origin<class_Transform3D_property_origin>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_quaternion:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **quaternion** :ref:`🔗<class_Node3D_property_quaternion>`

.. rst-class:: classref-property-setget

- |void| **set_quaternion**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_quaternion**\ (\ )

該節點的旋轉，以父空間中的四元數 :ref:`Quaternion<class_Quaternion>` 的形式顯示（相對於父節點）。該值取得自 :ref:`basis<class_Node3D_property_basis>` 的旋轉。

\ **注意：**\ 四元數更適合 3D 數學運算，但相對不那麼直觀。設定該屬性可能適用於插值（見 :ref:`Quaternion.slerp()<class_Quaternion_method_slerp>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **rotation** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Node3D_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_rotation**\ (\ )

該節點的旋轉角度，以 `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__\ （Euler angles）表示，單位為弧度，且處於父空間（相對於父節點）。該值提取自 :ref:`basis<class_Node3D_property_basis>` 的旋轉分量。

\ :ref:`Vector3.x<class_Vector3_property_x>` 是圍繞區域 X 軸的旋轉角度（俯仰角 / pitch）；

\ :ref:`Vector3.y<class_Vector3_property_y>` 是圍繞區域 Y 軸的旋轉角度（偏航角 / yaw）；

\ :ref:`Vector3.z<class_Vector3_property_z>` 是圍繞區域 Z 軸的旋轉角度（滾轉角 / roll）。

每次連續旋轉的順序可以通過 :ref:`rotation_order<class_Node3D_property_rotation_order>` 來更改（詳見 :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` 常數）。在 Godot 中，歐拉角始終使用內旋（intrinsic）順序。預設情況下，使用的是內旋 YXZ 約定（\ :ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`\ ）。

\ **注意：** 此屬性在檢視器（inspector）中是以“度”為單位進行編輯的。如果你想在腳本中使用“度”作為單位，請使用 :ref:`rotation_degrees<class_Node3D_property_rotation_degrees>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **rotation_degrees** :ref:`🔗<class_Node3D_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_rotation_degrees**\ (\ )

該節點的 :ref:`rotation<class_Node3D_property_rotation>`\ ，但單位為角度而非弧度。

\ **注意：**\ 這\ **不是**\ 屬性檢視器面板中的那個屬性。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_edit_mode:

.. rst-class:: classref-property

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **rotation_edit_mode** = ``0`` :ref:`🔗<class_Node3D_property_rotation_edit_mode>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_edit_mode**\ (\ value\: :ref:`RotationEditMode<enum_Node3D_RotationEditMode>`\ )
- :ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **get_rotation_edit_mode**\ (\ )

該節點的旋轉和縮放在屬性檢視器面板中的顯示方式。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_order:

.. rst-class:: classref-property

:ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` **rotation_order** = ``2`` :ref:`🔗<class_Node3D_property_rotation_order>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_order**\ (\ value\: :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`\ )
- :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` **get_rotation_order**\ (\ )

:ref:`rotation<class_Node3D_property_rotation>` 屬性的軸旋轉順序。在 Godot 中，歐拉角始終使用內旋（intrinsic）順序，這意味著最終的朝向是通過按照此順序繞區域軸旋轉來計算的。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_scale:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_Node3D_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_scale**\ (\ )

該節點的縮放，使用區域空間（相對於該節點）。該值取得自 :ref:`basis<class_Node3D_property_basis>` 的縮放。

\ **注意：**\ 部分 3D 節點型別的行為不受該屬性的影響。例如 :ref:`Light3D<class_Light3D>`\ 、\ :ref:`Camera3D<class_Camera3D>`\ 、\ :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` 等。

\ **警告：**\ 各縮放分量的正負必須一致，並且\ **不能**\ 完全等於 ``0.0``\ 。否則無法從 :ref:`basis<class_Node3D_property_basis>` 取得該縮放值，可能導致所需的縮放在從磁碟重新載入後丟失，以及其他潛在的不穩定行為。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_top_level:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **top_level** = ``false`` :ref:`🔗<class_Node3D_property_top_level>`

.. rst-class:: classref-property-setget

- |void| **set_as_top_level**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_top_level**\ (\ )

如果為 ``true``\ ，則該節點不會繼承其父節點的變換。因此，節點的變換只會在全域空間中進行，同時也意味著 :ref:`global_transform<class_Node3D_property_global_transform>` 和 :ref:`transform<class_Node3D_property_transform>` 完全一致。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Node3D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

該節點的區域變換，使用父空間（相對於父節點）。包含並代表該節點的 :ref:`position<class_Node3D_property_position>`\ 、\ :ref:`rotation<class_Node3D_property_rotation>` 以及 :ref:`scale<class_Node3D_property_scale>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_visibility_parent:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **visibility_parent** = ``NodePath("")`` :ref:`🔗<class_Node3D_property_visibility_parent>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_parent**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_visibility_parent**\ (\ )

該節點及其子級的可見性範圍父級。可見性父級必須是一個 :ref:`GeometryInstance3D<class_GeometryInstance3D>`\ 。

僅當可見性父級節點（及其所有可見性祖級節點）因為與相機的距離比其自身 :ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` 更近而被隱藏時，視覺實例才會可見。通過 :ref:`visible<class_Node3D_property_visible>` 屬性隱藏的節點，可以看作被從可見性相依性樹中移除，因此相依性實例不會考慮隱藏節點或其祖級節點。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_Node3D_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

如果為 ``true``\ ，則該節點能否顯示。只有當所有祖先節點都是可見的時候，這個節點才可見。換句話說，\ :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>` 必須回傳 ``true``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Node3D_method_add_gizmo:

.. rst-class:: classref-method

|void| **add_gizmo**\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`\ ) :ref:`🔗<class_Node3D_method_add_gizmo>`

將小工具 ``gizmo`` 附加至該節點。僅在編輯器中有效。

\ **注意：**\ ``gizmo`` 應為 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`\ 。參數型別使用 :ref:`Node3DGizmo<class_Node3DGizmo>` 是為了避免在 **Node3D** 中對編輯器類產生相依性。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_clear_gizmos:

.. rst-class:: classref-method

|void| **clear_gizmos**\ (\ ) :ref:`🔗<class_Node3D_method_clear_gizmos>`

清空所有附加到該節點的 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 物件。僅在編輯器中生效。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_clear_subgizmo_selection:

.. rst-class:: classref-method

|void| **clear_subgizmo_selection**\ (\ ) :ref:`🔗<class_Node3D_method_clear_subgizmo_selection>`

取消選中該節點的所有子小工具。適用於選中的子小工具在屬性發生改變後不再存在的情況。僅在編輯器中有效。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_force_update_transform:

.. rst-class:: classref-method

|void| **force_update_transform**\ (\ ) :ref:`🔗<class_Node3D_method_force_update_transform>`

發送 :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`\ ，強制更新該節點的 :ref:`global_transform<class_Node3D_property_global_transform>`\ 。如果該節點不在樹中則失敗。

\ **注意：**\ 出於效能原因，變換的更改通常會累積到一影格的末尾進行\ *單次*\ 應用。更新還會傳播至 **Node3D** 子節點。因此，請僅在需要最新變換時使用該方法（例如在物理操作期間）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_gizmos:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3DGizmo<class_Node3DGizmo>`\] **get_gizmos**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_gizmos>`

回傳附加於該節點的所有 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 物件。僅在編輯器中有效。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_global_transform_interpolated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_global_transform_interpolated**\ (\ ) :ref:`🔗<class_Node3D_method_get_global_transform_interpolated>`

使用物理內插時，有時你會需要得知節點的內插（顯示）變換，而非標準變換（標準變換僅反映最近一次物理更新）。

這對於以畫格為基礎的操作（如在 :ref:`Node._process()<class_Node_private_method__process>` 發生的運算）特別重要，而不是在 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ 。例如：讓 :ref:`Camera3D<class_Camera3D>` 鎖定某節點，或在畫格時決定雷射發射位置。

\ **注意：** 此函式首次呼叫時，會在 **Node3D** 上建立內插管理器，可響應物理內插重設。若初次追蹤 **Node3D** 時出現「殘影」問題，請務必在重設其物理內插前至少呼叫一次 :ref:`get_global_transform_interpolated()<class_Node3D_method_get_global_transform_interpolated>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_parent_node_3d:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_parent_node_3d**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_parent_node_3d>`

回傳直接對該節點的 :ref:`global_transform<class_Node3D_property_global_transform>` 產生影響的父級 **Node3D** 節點。如果不存在父節點、父節點不是 **Node3D** 或 :ref:`top_level<class_Node3D_property_top_level>` 為 ``true`` 則回傳 ``null``\ 。

\ **注意：**\ 該方法並不總是等價於 :ref:`Node.get_parent()<class_Node_method_get_parent>`\ ，後者不會考慮 :ref:`top_level<class_Node3D_property_top_level>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_world_3d:

.. rst-class:: classref-method

:ref:`World3D<class_World3D>` **get_world_3d**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_world_3d>`

回傳該節點注冊到的 :ref:`World3D<class_World3D>`\ 。

通常與該節點視埠的世界一致（見 :ref:`Node.get_viewport()<class_Node_method_get_viewport>` 和 :ref:`Viewport.find_world_3d()<class_Viewport_method_find_world_3d>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_rotate:

.. rst-class:: classref-method

|void| **global_rotate**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_global_rotate>`

將該節點的 :ref:`global_basis<class_Node3D_property_global_basis>` 繞全域軸 ``axis`` 旋轉，旋轉弧度為 ``angle``\ 。該操作所涉及的計算在全域空間中進行（相對於世界），\ :ref:`global_position<class_Node3D_property_global_position>` 保持不變。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_scale:

.. rst-class:: classref-method

|void| **global_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_global_scale>`

使用 ``scale`` 中給定的縮放係數對該節點的 :ref:`global_basis<class_Node3D_property_global_basis>` 進行縮放。該操作所設計的計算在全域空間中進行（相對於世界），\ :ref:`global_position<class_Node3D_property_global_position>` 保持不變。

\ **注意：**\ 請勿將該方法與 :ref:`scale<class_Node3D_property_scale>` 屬性混淆。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_translate:

.. rst-class:: classref-method

|void| **global_translate**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_global_translate>`

向該節點的 :ref:`global_position<class_Node3D_property_global_position>` 新增 ``offset`` 中指定的全域空間平移偏移量（相對於世界）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_hide:

.. rst-class:: classref-method

|void| **hide**\ (\ ) :ref:`🔗<class_Node3D_method_hide>`

阻止渲染該節點。等價於將 :ref:`visible<class_Node3D_property_visible>` 設定為 ``false``\ 。該方法與 :ref:`show()<class_Node3D_method_show>` 相對。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_local_transform_notification_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_local_transform_notification_enabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_local_transform_notification_enabled>`

如果該節點會在 :ref:`transform<class_Node3D_property_transform>` 改變時收到 :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>` 則回傳 ``true``\ 。可以通過 :ref:`set_notify_local_transform()<class_Node3D_method_set_notify_local_transform>` 啟用這一行為。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_scale_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_disabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_scale_disabled>`

如果該節點的 :ref:`global_transform<class_Node3D_property_global_transform>` 會自動進行正交正規化，則回傳 ``true``\ 。正交正規化的節點不會變形，效果與全域縮放為 :ref:`Vector3.ONE<class_Vector3_constant_ONE>`\ （或對應的負值）一致。另見 :ref:`set_disable_scale()<class_Node3D_method_set_disable_scale>` 和 :ref:`orthonormalize()<class_Node3D_method_orthonormalize>`\ 。

\ **注意：**\ 該設定不影響 :ref:`transform<class_Node3D_property_transform>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_transform_notification_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transform_notification_enabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_transform_notification_enabled>`

如果該節點會在 :ref:`global_transform<class_Node3D_property_global_transform>` 改變時收到 :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` 則回傳 ``true``\ 。可以通過 :ref:`set_notify_transform()<class_Node3D_method_set_notify_transform>` 啟用這一行為。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_visible_in_tree:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_visible_in_tree**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_visible_in_tree>`

如果該節點位於場景樹中且該節點及其所有\ *連續的* **Node3D** 祖先節點的 :ref:`visible<class_Node3D_property_visible>` 屬性均為 ``true``\ ，則回傳 ``true``\ 。其他型別的祖先節點（例如 :ref:`Node<class_Node>`\ 、\ :ref:`Node2D<class_Node2D>`\ ）都會打斷連續。另見 :ref:`Node.get_parent()<class_Node_method_get_parent>`\ 。

\ **注意：**\ 該方法無法考慮 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`\ ，因此即便該方法回傳 ``true``\ ，也可能不渲染該節點。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_look_at:

.. rst-class:: classref-method

|void| **look_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node3D_method_look_at>`

旋轉該節點，讓區域向前的軸（-Z，\ :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>`\ ）指向 ``target`` 的位置。該操作所涉及的運算在全域空間中進行（相對於世界）。

區域向上的軸（+Y）在保持與區域向前的軸垂直的前提下，盡可能接近 ``up`` 向量。最終的變換是正交變換，並且保留了原有縮放。非統一縮放可能無法正常工作。

\ ``target`` 位置不能和該節點的位置相同，\ ``up`` 向量不能為 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。此外，節點位置到 ``target`` 位置的方向不能與 ``up`` 向量平行，這樣可以避免圍繞區域 Z 軸發生預料之外的旋轉。

如果 ``use_model_front`` 為 ``true``\ ，則會將 +Z 軸（素材正面）作為向前的軸（此時 +X 為左），指向 ``target`` 的位置。預設情況下會將 -Z 軸（相機前方）作為向前的軸（此時 +X 為右）。

\ **注意：**\ 如果該節點不在場景樹中，則該方法失敗。必要時請改用 :ref:`look_at_from_position()<class_Node3D_method_look_at_from_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_look_at_from_position:

.. rst-class:: classref-method

|void| **look_at_from_position**\ (\ position\: :ref:`Vector3<class_Vector3>`, target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node3D_method_look_at_from_position>`

將該節點移動到 ``position`` 位置，然後旋轉至指向 ``target`` 位置，類似於 :ref:`look_at()<class_Node3D_method_look_at>`\ 。操作發生在全域空間中（相對於世界）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_orthonormalize:

.. rst-class:: classref-method

|void| **orthonormalize**\ (\ ) :ref:`🔗<class_Node3D_method_orthonormalize>`

將該節點的 :ref:`basis<class_Node3D_property_basis>` 進行正交正規化化。該方法會將該節點的 :ref:`scale<class_Node3D_property_scale>` 設定為 :ref:`Vector3.ONE<class_Vector3_constant_ONE>`\ （或對應的負值），保持 :ref:`position<class_Node3D_property_position>` 和 :ref:`rotation<class_Node3D_property_rotation>` 不變。另見 :ref:`Transform3D.orthonormalized()<class_Transform3D_method_orthonormalized>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate:

.. rst-class:: classref-method

|void| **rotate**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate>`

將節點的 :ref:`basis<class_Node3D_property_basis>` 繞 ``axis`` 軸旋轉，旋轉角 ``angle`` 的單位為弧度。該操作在父空間中進行計算（相對於父節點），\ :ref:`position<class_Node3D_property_position>` 保持不變。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_object_local:

.. rst-class:: classref-method

|void| **rotate_object_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_object_local>`

將節點的 :ref:`basis<class_Node3D_property_basis>` 繞 ``axis`` 軸旋轉，旋轉角 ``angle`` 的單位為弧度。該操作在區域空間中進行計算（相對於該節點），\ :ref:`position<class_Node3D_property_position>` 保持不變。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_x:

.. rst-class:: classref-method

|void| **rotate_x**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_x>`

將節點的 :ref:`basis<class_Node3D_property_basis>` 繞 X 軸旋轉，旋轉角 ``angle`` 的單位為弧度。該操作在父空間中進行計算（相對於父節點），\ :ref:`position<class_Node3D_property_position>` 保持不變。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_y:

.. rst-class:: classref-method

|void| **rotate_y**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_y>`

將節點的 :ref:`basis<class_Node3D_property_basis>` 繞 Y 軸旋轉，旋轉角 ``angle`` 的單位為弧度。該操作在父空間中進行計算（相對於父節點），\ :ref:`position<class_Node3D_property_position>` 保持不變。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_z:

.. rst-class:: classref-method

|void| **rotate_z**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_z>`

將節點的 :ref:`basis<class_Node3D_property_basis>` 繞 Z 軸旋轉，旋轉角 ``angle`` 的單位為弧度。該操作在父空間中進行計算（相對於父節點），\ :ref:`position<class_Node3D_property_position>` 保持不變。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_scale_object_local:

.. rst-class:: classref-method

|void| **scale_object_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_scale_object_local>`

將節點的 :ref:`basis<class_Node3D_property_basis>` 進行縮放，縮放係數為 ``scale``\ 。該操作在區域空間中進行計算（相對於該節點），\ :ref:`position<class_Node3D_property_position>` 保持不變。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_disable_scale:

.. rst-class:: classref-method

|void| **set_disable_scale**\ (\ disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_disable_scale>`

如果為 ``true``\ ，則該節點的 :ref:`global_transform<class_Node3D_property_global_transform>` 會自動進行正交正規化化。正交正規化化的節點不會變形，效果與全域縮放為 :ref:`Vector3.ONE<class_Vector3_constant_ONE>`\ （或對應的負值）一致。另見 :ref:`is_scale_disabled()<class_Node3D_method_is_scale_disabled>` 和 :ref:`orthonormalize()<class_Node3D_method_orthonormalize>`\ 。

\ **注意：**\ 該設定不影響 :ref:`transform<class_Node3D_property_transform>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_identity:

.. rst-class:: classref-method

|void| **set_identity**\ (\ ) :ref:`🔗<class_Node3D_method_set_identity>`

將該節點的 :ref:`transform<class_Node3D_property_transform>` 設定為 :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`\ ，會重設父空間中的所有變換（\ :ref:`position<class_Node3D_property_position>`\ 、\ :ref:`rotation<class_Node3D_property_rotation>`\ 、\ :ref:`scale<class_Node3D_property_scale>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_ignore_transform_notification:

.. rst-class:: classref-method

|void| **set_ignore_transform_notification**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_ignore_transform_notification>`

如果為 ``true``\ ，則該節點不會收到 :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` 和 :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`\ 。

適用於在處理這些通知時阻止無限遞歸。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_notify_local_transform:

.. rst-class:: classref-method

|void| **set_notify_local_transform**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_notify_local_transform>`

如果為 ``true``\ ，則該節點會在 :ref:`transform<class_Node3D_property_transform>` 發生變化時收到 :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`\ 。

\ **注意：**\ :ref:`CSGShape3D<class_CSGShape3D>`\ 、\ :ref:`CollisionShape3D<class_CollisionShape3D>` 等部分 3D 節點會自動啟用，從而正常工作。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_notify_transform:

.. rst-class:: classref-method

|void| **set_notify_transform**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_notify_transform>`

如果為 ``true``\ ，則該節點會在 :ref:`global_transform<class_Node3D_property_global_transform>` 發生變化時收到 :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`\ 。

\ **注意：**\ :ref:`VisualInstance3D<class_VisualInstance3D>`\ 、\ :ref:`CollisionObject3D<class_CollisionObject3D>` 等大多數 3D 節點會自動啟用，從而正常工作。

\ **注意：**\ 在編輯器中，如果節點附加了小工具，就會將該通知傳播給子節點（見 :ref:`add_gizmo()<class_Node3D_method_add_gizmo>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_subgizmo_selection:

.. rst-class:: classref-method

|void| **set_subgizmo_selection**\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`, id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Node3D_method_set_subgizmo_selection>`

選中小工具 ``gizmo`` 的 ID 為 ``id`` 的子小工具，並設定其變換。僅在編輯器中有效。

\ **注意：**\ 小工具物件通常是 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 的實例，但參數型別保持通用以避免在 **Node3D** 中建立對編輯器類的相依性。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_show:

.. rst-class:: classref-method

|void| **show**\ (\ ) :ref:`🔗<class_Node3D_method_show>`

允許渲染該節點。等價於將 :ref:`visible<class_Node3D_property_visible>` 設定為 ``true``\ 。該方法與 :ref:`hide()<class_Node3D_method_hide>` 相對。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_to_global:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **to_global**\ (\ local_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Node3D_method_to_global>`

回傳將 ``local_point`` 從該節點的區域空間轉換至全域空間的結果。該方法與 :ref:`to_local()<class_Node3D_method_to_local>` 相對。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **to_local**\ (\ global_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Node3D_method_to_local>`

回傳將 ``global_point`` 從全域空間轉換至該節點的區域空間的結果。該方法與 :ref:`to_global()<class_Node3D_method_to_global>` 相對。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_translate:

.. rst-class:: classref-method

|void| **translate**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_translate>`

向該節點的位置新增平移偏移量 ``offset``\ ，使用區域空間（相對於該節點）。

\ **注意：**\ 請優先使用 :ref:`translate_object_local()<class_Node3D_method_translate_object_local>`\ ，因為本方法可能在後續版本中發生改變。

\ **注意：**\ 該操作所涉及的運算\ **不是**\ 在父空間中進行的，這與該方法的命名方式不一致是處於相容考慮。要在父空間中進行平移請向 :ref:`position<class_Node3D_property_position>` 新增 ``offset``\ （\ ``node_3d.position += offset``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_translate_object_local:

.. rst-class:: classref-method

|void| **translate_object_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_translate_object_local>`

向該節點的位置新增平移偏移量 ``offset``\ ，使用區域空間（相對於該節點）。

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_update_gizmos:

.. rst-class:: classref-method

|void| **update_gizmos**\ (\ ) :ref:`🔗<class_Node3D_method_update_gizmos>`

更新附加於該節點的所有 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 小工具。僅在編輯器中有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
