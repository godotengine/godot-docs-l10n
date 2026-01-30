:github_url: hide

.. _class_Skeleton3D:

Skeleton3D
==========

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

包含骨骼層級結構的節點，用於建立 3D 骨骼動畫。

.. rst-class:: classref-introduction-group

說明
----

**Skeleton3D** provides an interface for managing a hierarchy of bones, including pose, rest and animation (see :ref:`Animation<class_Animation>`). It can also use ragdoll physics.

The overall transform of a bone with respect to the skeleton is determined by bone pose. Bone rest defines the initial transform of the bone pose.

Note that "global pose" below refers to the overall transform of the bone with respect to skeleton, so it is not the actual global/world transform of the bone.

.. rst-class:: classref-introduction-group

教學
----

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                         | :ref:`animate_physical_bones<class_Skeleton3D_property_animate_physical_bones>`                 | ``true``  |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` | :ref:`modifier_callback_mode_process<class_Skeleton3D_property_modifier_callback_mode_process>` | ``1``     |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                       | :ref:`motion_scale<class_Skeleton3D_property_motion_scale>`                                     | ``1.0``   |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                         | :ref:`show_rest_only<class_Skeleton3D_property_show_rest_only>`                                 | ``false`` |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`add_bone<class_Skeleton3D_method_add_bone>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`advance<class_Skeleton3D_method_advance>`\ (\ delta\: :ref:`float<class_float>`\ )                                                                                                                                                                            |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_bones<class_Skeleton3D_method_clear_bones>`\ (\ )                                                                                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_bones_global_pose_override<class_Skeleton3D_method_clear_bones_global_pose_override>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skin<class_Skin>`                                          | :ref:`create_skin_from_rest_transforms<class_Skeleton3D_method_create_skin_from_rest_transforms>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`find_bone<class_Skeleton3D_method_find_bone>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`force_update_all_bone_transforms<class_Skeleton3D_method_force_update_all_bone_transforms>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`force_update_bone_child_transform<class_Skeleton3D_method_force_update_bone_child_transform>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                  | :ref:`get_bone_children<class_Skeleton3D_method_get_bone_children>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_bone_count<class_Skeleton3D_method_get_bone_count>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_pose<class_Skeleton3D_method_get_bone_global_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_pose_no_override<class_Skeleton3D_method_get_bone_global_pose_no_override>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_pose_override<class_Skeleton3D_method_get_bone_global_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_rest<class_Skeleton3D_method_get_bone_global_rest>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_bone_meta<class_Skeleton3D_method_get_bone_meta>`\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_bone_meta_list<class_Skeleton3D_method_get_bone_meta_list>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_bone_name<class_Skeleton3D_method_get_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_bone_parent<class_Skeleton3D_method_get_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_pose<class_Skeleton3D_method_get_bone_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_bone_pose_position<class_Skeleton3D_method_get_bone_pose_position>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_bone_pose_rotation<class_Skeleton3D_method_get_bone_pose_rotation>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_bone_pose_scale<class_Skeleton3D_method_get_bone_pose_scale>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_rest<class_Skeleton3D_method_get_bone_rest>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_concatenated_bone_names<class_Skeleton3D_method_get_concatenated_bone_names>`\ (\ ) |const|                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                  | :ref:`get_parentless_bones<class_Skeleton3D_method_get_parentless_bones>`\ (\ ) |const|                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_version<class_Skeleton3D_method_get_version>`\ (\ ) |const|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_bone_meta<class_Skeleton3D_method_has_bone_meta>`\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_bone_enabled<class_Skeleton3D_method_is_bone_enabled>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`localize_rests<class_Skeleton3D_method_localize_rests>`\ (\ )                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_add_collision_exception<class_Skeleton3D_method_physical_bones_add_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_remove_collision_exception<class_Skeleton3D_method_physical_bones_remove_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_start_simulation<class_Skeleton3D_method_physical_bones_start_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ )                                                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_stop_simulation<class_Skeleton3D_method_physical_bones_stop_simulation>`\ (\ )                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkinReference<class_SkinReference>`                        | :ref:`register_skin<class_Skeleton3D_method_register_skin>`\ (\ skin\: :ref:`Skin<class_Skin>`\ )                                                                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`reset_bone_pose<class_Skeleton3D_method_reset_bone_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`reset_bone_poses<class_Skeleton3D_method_reset_bone_poses>`\ (\ )                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_enabled<class_Skeleton3D_method_set_bone_enabled>`\ (\ bone_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>` = true\ )                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_global_pose<class_Skeleton3D_method_set_bone_global_pose>`\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_global_pose_override<class_Skeleton3D_method_set_bone_global_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`, amount\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>` = false\ ) |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_meta<class_Skeleton3D_method_set_bone_meta>`\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_name<class_Skeleton3D_method_set_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_parent<class_Skeleton3D_method_set_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`, parent_idx\: :ref:`int<class_int>`\ )                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose<class_Skeleton3D_method_set_bone_pose>`\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose_position<class_Skeleton3D_method_set_bone_pose_position>`\ (\ bone_idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose_rotation<class_Skeleton3D_method_set_bone_pose_rotation>`\ (\ bone_idx\: :ref:`int<class_int>`, rotation\: :ref:`Quaternion<class_Quaternion>`\ )                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose_scale<class_Skeleton3D_method_set_bone_pose_scale>`\ (\ bone_idx\: :ref:`int<class_int>`, scale\: :ref:`Vector3<class_Vector3>`\ )                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_rest<class_Skeleton3D_method_set_bone_rest>`\ (\ bone_idx\: :ref:`int<class_int>`, rest\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`unparent_bone_and_rest<class_Skeleton3D_method_unparent_bone_and_rest>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_Skeleton3D_signal_bone_enabled_changed:

.. rst-class:: classref-signal

**bone_enabled_changed**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_signal_bone_enabled_changed>`

Emitted when the bone at ``bone_idx`` is toggled with :ref:`set_bone_enabled()<class_Skeleton3D_method_set_bone_enabled>`. Use :ref:`is_bone_enabled()<class_Skeleton3D_method_is_bone_enabled>` to check the new value.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_bone_list_changed:

.. rst-class:: classref-signal

**bone_list_changed**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_bone_list_changed>`

Emitted when the list of bones changes, such as when calling :ref:`add_bone()<class_Skeleton3D_method_add_bone>`, :ref:`set_bone_parent()<class_Skeleton3D_method_set_bone_parent>`, :ref:`unparent_bone_and_rest()<class_Skeleton3D_method_unparent_bone_and_rest>`, or :ref:`clear_bones()<class_Skeleton3D_method_clear_bones>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_pose_updated:

.. rst-class:: classref-signal

**pose_updated**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_pose_updated>`

Emitted when the pose is updated.

\ **Note:** During the update process, this signal is not fired, so modification by :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` is not detected.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_rest_updated:

.. rst-class:: classref-signal

**rest_updated**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_rest_updated>`

Emitted when the rest is updated.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_show_rest_only_changed:

.. rst-class:: classref-signal

**show_rest_only_changed**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_show_rest_only_changed>`

Emitted when the value of :ref:`show_rest_only<class_Skeleton3D_property_show_rest_only>` changes.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_skeleton_updated:

.. rst-class:: classref-signal

**skeleton_updated**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_skeleton_updated>`

Emitted when the final pose has been calculated will be applied to the skin in the update process.

This means that all :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` processing is complete. In order to detect the completion of the processing of each :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, use :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Skeleton3D_ModifierCallbackModeProcess:

.. rst-class:: classref-enumeration

enum **ModifierCallbackModeProcess**: :ref:`🔗<enum_Skeleton3D_ModifierCallbackModeProcess>`

.. _class_Skeleton3D_constant_MODIFIER_CALLBACK_MODE_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **MODIFIER_CALLBACK_MODE_PROCESS_PHYSICS** = ``0``

Set a flag to process modification during physics frames (see :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Skeleton3D_constant_MODIFIER_CALLBACK_MODE_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **MODIFIER_CALLBACK_MODE_PROCESS_IDLE** = ``1``

Set a flag to process modification during process frames (see :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_Skeleton3D_constant_MODIFIER_CALLBACK_MODE_PROCESS_MANUAL:

.. rst-class:: classref-enumeration-constant

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **MODIFIER_CALLBACK_MODE_PROCESS_MANUAL** = ``2``

Do not process modification. Use :ref:`advance()<class_Skeleton3D_method_advance>` to process the modification manually.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Skeleton3D_constant_NOTIFICATION_UPDATE_SKELETON:

.. rst-class:: classref-constant

**NOTIFICATION_UPDATE_SKELETON** = ``50`` :ref:`🔗<class_Skeleton3D_constant_NOTIFICATION_UPDATE_SKELETON>`

Notification received when this skeleton's pose needs to be updated. In that case, this is called only once per frame in a deferred process.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Skeleton3D_property_animate_physical_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animate_physical_bones** = ``true`` :ref:`🔗<class_Skeleton3D_property_animate_physical_bones>`

.. rst-class:: classref-property-setget

- |void| **set_animate_physical_bones**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_animate_physical_bones**\ (\ )

**已棄用：** 此屬性可能在未來版本中變更或移除。

If you follow the recommended workflow and explicitly have :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` as a child of **Skeleton3D**, you can control whether it is affected by raycasting without running :ref:`physical_bones_start_simulation()<class_Skeleton3D_method_physical_bones_start_simulation>`, by its :ref:`SkeletonModifier3D.active<class_SkeletonModifier3D_property_active>`.

However, for old (deprecated) configurations, **Skeleton3D** has an internal virtual :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` for compatibility. This property controls the internal virtual :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>`'s :ref:`SkeletonModifier3D.active<class_SkeletonModifier3D_property_active>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_property_modifier_callback_mode_process:

.. rst-class:: classref-property

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **modifier_callback_mode_process** = ``1`` :ref:`🔗<class_Skeleton3D_property_modifier_callback_mode_process>`

.. rst-class:: classref-property-setget

- |void| **set_modifier_callback_mode_process**\ (\ value\: :ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>`\ )
- :ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **get_modifier_callback_mode_process**\ (\ )

Sets the processing timing for the Modifier.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_property_motion_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **motion_scale** = ``1.0`` :ref:`🔗<class_Skeleton3D_property_motion_scale>`

.. rst-class:: classref-property-setget

- |void| **set_motion_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_motion_scale**\ (\ )

與 3D 位置軌道動畫相乘。

\ **注意：**\ 除非這個值是 ``1.0``\ ，否則動畫中的鍵值將與實際位置值不配對。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_property_show_rest_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_rest_only** = ``false`` :ref:`🔗<class_Skeleton3D_property_show_rest_only>`

.. rst-class:: classref-property-setget

- |void| **set_show_rest_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_show_rest_only**\ (\ )

If ``true``, forces the bones in their default rest pose, regardless of their values. In the editor, this also prevents the bones from being edited.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Skeleton3D_method_add_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_bone**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Skeleton3D_method_add_bone>`

Adds a new bone with the given name. Returns the new bone's index, or ``-1`` if this method fails.

\ **Note:** Bone names should be unique, non empty, and cannot include the ``:`` and ``/`` characters.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_advance:

.. rst-class:: classref-method

|void| **advance**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Skeleton3D_method_advance>`

Manually advance the child :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ s by the specified time (in seconds).

\ **Note:** The ``delta`` is temporarily accumulated in the **Skeleton3D**, and the deferred process uses the accumulated value to process the modification.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_clear_bones:

.. rst-class:: classref-method

|void| **clear_bones**\ (\ ) :ref:`🔗<class_Skeleton3D_method_clear_bones>`

清除這個骨架上的所有骨骼。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_clear_bones_global_pose_override:

.. rst-class:: classref-method

|void| **clear_bones_global_pose_override**\ (\ ) :ref:`🔗<class_Skeleton3D_method_clear_bones_global_pose_override>`

**已棄用：** 此方法可能在未來版本中變更或移除。

移除骨架中所有骨骼上的全域姿勢覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_create_skin_from_rest_transforms:

.. rst-class:: classref-method

:ref:`Skin<class_Skin>` **create_skin_from_rest_transforms**\ (\ ) :ref:`🔗<class_Skeleton3D_method_create_skin_from_rest_transforms>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_find_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_bone**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_find_bone>`

Returns the bone index that matches ``name`` as its name. Returns ``-1`` if no bone with this name exists.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_force_update_all_bone_transforms:

.. rst-class:: classref-method

|void| **force_update_all_bone_transforms**\ (\ ) :ref:`🔗<class_Skeleton3D_method_force_update_all_bone_transforms>`

**已棄用：** This method should only be called internally.

Force updates the bone transforms/poses for all bones in the skeleton.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_force_update_bone_child_transform:

.. rst-class:: classref-method

|void| **force_update_bone_child_transform**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_force_update_bone_child_transform>`

強制更新索引為 ``bone_idx`` 的骨骼及其所有子項的變換/姿勢。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_children:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_bone_children**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_children>`

Returns an array containing the bone indexes of all the child node of the passed in bone, ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_count>`

返回骨架中骨骼的數量。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_pose>`

Returns the overall transform of the specified bone, with respect to the skeleton. Being relative to the skeleton frame, this is not the actual "global" transform of the bone.

\ **Note:** This is the global pose you set to the skeleton in the process, the final global pose can get overridden by modifiers in the deferred process, if you want to access the final global pose, use :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_pose_no_override:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_pose_no_override**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_pose_no_override>`

**已棄用：** 此方法可能在未來版本中變更或移除。

返回指定骨骼的整體變換，相對於骨架，不包含任何全域姿勢覆蓋。由於是相對於骨架的，這不是該骨骼的實際“全域”變換。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_pose_override:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_pose_override>`

**已棄用：** 此方法可能在未來版本中變更或移除。

返回 ``bone_idx`` 骨骼的全域姿勢覆蓋變換。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_rest:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_rest**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_rest>`

返回 ``bone_idx`` 骨骼的全域放鬆變換。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_bone_meta**\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_meta>`

Returns the metadata with the given ``key`` for the bone at index ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_meta_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_bone_meta_list**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_meta_list>`

Returns the list of all metadata keys for the bone at index ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_name>`

返回索引為 ``bone_idx`` 的骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_parent:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_parent>`

返回 ``bone_idx`` 處的骨骼的父級骨骼索引。如果為 -1，則該骨骼沒有父級。

\ **注意：**\ 返回的父骨骼索引總是小於 ``bone_idx``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose>`

Returns the pose transform of the specified bone.

\ **Note:** This is the pose you set to the skeleton in the process, the final pose can get overridden by modifiers in the deferred process, if you want to access the final pose, use :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_bone_pose_position**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose_position>`

Returns the pose position of the bone at ``bone_idx``. The returned :ref:`Vector3<class_Vector3>` is in the local coordinate space of the **Skeleton3D** node.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_bone_pose_rotation**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose_rotation>`

Returns the pose rotation of the bone at ``bone_idx``. The returned :ref:`Quaternion<class_Quaternion>` is local to the bone with respect to the rotation of any parent bones.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_bone_pose_scale**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose_scale>`

Returns the pose scale of the bone at ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_rest:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_rest**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_rest>`

返回骨骼 ``bone_idx`` 的放鬆變換。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_concatenated_bone_names:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_bone_names**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_concatenated_bone_names>`

Returns all bone names concatenated with commas (``,``) as a single :ref:`StringName<class_StringName>`.

It is useful to set it as a hint for the enum property.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_parentless_bones:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_parentless_bones**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_parentless_bones>`

返回一個包含所有無父級的骨骼的陣列。另一種看待這一點的方法是，它返回所有骨骼的索引，這些骨骼不依賴於該骨架中的其他骨骼，或不被該骨架中的其他骨骼修改。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_version:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_version**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_version>`

返回骨骼層次結構在該骨架中更改的次數，包括重命名。

骨架版本沒有被序列化：只能在 Skeleton3D 的單個實例中使用。

用於使 IK 解算器中的和處理骨骼的其他節點中的快取失效。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_has_bone_meta:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_bone_meta**\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_has_bone_meta>`

Returns ``true`` if the bone at index ``bone_idx`` has metadata with the given ``key``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_is_bone_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bone_enabled**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_is_bone_enabled>`

返回位於 ``bone_idx`` 的骨骼是否啟用了骨骼姿勢。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_localize_rests:

.. rst-class:: classref-method

|void| **localize_rests**\ (\ ) :ref:`🔗<class_Skeleton3D_method_localize_rests>`

將骨架中的所有骨骼都恢復到放鬆姿勢。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_add_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_add_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_add_collision_exception>`

**已棄用：** 此方法可能在未來版本中變更或移除。

向物理骨骼新增一個碰撞例外。

就像 :ref:`RigidBody3D<class_RigidBody3D>` 節點一樣工作。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_remove_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_remove_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_remove_collision_exception>`

**已棄用：** 此方法可能在未來版本中變更或移除。

移除物理骨骼的一個碰撞例外。

就像 :ref:`RigidBody3D<class_RigidBody3D>` 節點一樣工作。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_start_simulation:

.. rst-class:: classref-method

|void| **physical_bones_start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_start_simulation>`

**已棄用：** 此方法可能在未來版本中變更或移除。

讓 Skeleton 中的 :ref:`PhysicalBone3D<class_PhysicalBone3D>` 節點開始模擬類比，對物理世界做出反應。

可以傳入骨骼名稱列表，只對傳入的骨骼進行模擬模擬。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_stop_simulation:

.. rst-class:: classref-method

|void| **physical_bones_stop_simulation**\ (\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_stop_simulation>`

**已棄用：** 此方法可能在未來版本中變更或移除。

讓 Skeleton 中的 :ref:`PhysicalBone3D<class_PhysicalBone3D>` 節點停止模擬模擬。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_register_skin:

.. rst-class:: classref-method

:ref:`SkinReference<class_SkinReference>` **register_skin**\ (\ skin\: :ref:`Skin<class_Skin>`\ ) :ref:`🔗<class_Skeleton3D_method_register_skin>`

將給定的 Skin 綁定到 Skeleton。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_reset_bone_pose:

.. rst-class:: classref-method

|void| **reset_bone_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_reset_bone_pose>`

將 ``bone_idx`` 骨骼設定為放鬆姿勢。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_reset_bone_poses:

.. rst-class:: classref-method

|void| **reset_bone_poses**\ (\ ) :ref:`🔗<class_Skeleton3D_method_reset_bone_poses>`

將所有骨骼都設定為放鬆姿勢。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_enabled:

.. rst-class:: classref-method

|void| **set_bone_enabled**\ (\ bone_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_enabled>`

如果為 ``false`` 則為位於 ``bone_idx`` 的骨骼禁用姿勢，如果為 ``true`` 則啟用該骨骼姿勢。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_global_pose:

.. rst-class:: classref-method

|void| **set_bone_global_pose**\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_global_pose>`

Sets the global pose transform, ``pose``, for the bone at ``bone_idx``.

\ **Note:** If other bone poses have been changed, this method executes a dirty poses recalculation and will cause performance to deteriorate. If you know that multiple global poses will be applied, consider using :ref:`set_bone_pose()<class_Skeleton3D_method_set_bone_pose>` with precalculation.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_global_pose_override:

.. rst-class:: classref-method

|void| **set_bone_global_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`, amount\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_global_pose_override>`

**已棄用：** 此方法可能在未來版本中變更或移除。

為 ``bone_idx`` 處的骨骼設定全域姿勢變換 ``pose``\ 。

\ ``amount`` 是套用姿勢時將使用的插值強度，\ ``persistent`` 決定套用的姿勢是否會保留。

\ **注意：**\ 姿勢變換需要的是全域姿勢！要將 :ref:`Node3D<class_Node3D>` 的世界變換轉換為全域骨骼姿勢，請將節點的 :ref:`Node3D.global_transform<class_Node3D_property_global_transform>` 的 :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>` 乘以所期望的世界變換。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_meta:

.. rst-class:: classref-method

|void| **set_bone_meta**\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_meta>`

Sets the metadata with the given ``key`` to ``value`` for the bone at index ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_name:

.. rst-class:: classref-method

|void| **set_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_name>`

Sets the bone name, ``name``, for the bone at ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_parent:

.. rst-class:: classref-method

|void| **set_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`, parent_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_parent>`

將骨骼索引 ``parent_idx`` 設定為 ``bone_idx`` 處骨骼的父級。如果為 -1，則該骨骼沒有父級。

\ **注意：**\ ``parent_idx`` 必須小於 ``bone_idx``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose:

.. rst-class:: classref-method

|void| **set_bone_pose**\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose>`

Sets the pose transform, ``pose``, for the bone at ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose_position:

.. rst-class:: classref-method

|void| **set_bone_pose_position**\ (\ bone_idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose_position>`

Sets the pose position of the bone at ``bone_idx`` to ``position``. ``position`` is a :ref:`Vector3<class_Vector3>` describing a position local to the **Skeleton3D** node.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose_rotation:

.. rst-class:: classref-method

|void| **set_bone_pose_rotation**\ (\ bone_idx\: :ref:`int<class_int>`, rotation\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose_rotation>`

Sets the pose rotation of the bone at ``bone_idx`` to ``rotation``. ``rotation`` is a :ref:`Quaternion<class_Quaternion>` describing a rotation in the bone's local coordinate space with respect to the rotation of any parent bones.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose_scale:

.. rst-class:: classref-method

|void| **set_bone_pose_scale**\ (\ bone_idx\: :ref:`int<class_int>`, scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose_scale>`

Sets the pose scale of the bone at ``bone_idx`` to ``scale``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_rest:

.. rst-class:: classref-method

|void| **set_bone_rest**\ (\ bone_idx\: :ref:`int<class_int>`, rest\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_rest>`

設定骨骼 ``bone_idx`` 的放鬆變換。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_unparent_bone_and_rest:

.. rst-class:: classref-method

|void| **unparent_bone_and_rest**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_unparent_bone_and_rest>`

讓位於 ``bone_idx`` 的骨骼不再有父級，並將其放鬆位置設定為之前父級放鬆時的位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
