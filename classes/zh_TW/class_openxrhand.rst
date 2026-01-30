:github_url: hide

.. _class_OpenXRHand:

OpenXRHand
==========

**已棄用：** Use :ref:`XRHandModifier3D<class_XRHandModifier3D>` instead.

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Node supporting hand and finger tracking in OpenXR.

.. rst-class:: classref-introduction-group

說明
----

This node enables OpenXR's hand tracking functionality. The node should be a child node of an :ref:`XROrigin3D<class_XROrigin3D>` node, tracking will update its position to the player's tracked hand Palm joint location (the center of the middle finger's metacarpal bone). This node also updates the skeleton of a properly skinned hand or avatar model.

If the skeleton is a hand (one of the hand bones is the root node of the skeleton), then the skeleton will be placed relative to the hand palm location and the hand mesh and skeleton should be children of the OpenXRHand node.

If the hand bones are part of a full skeleton, then the root of the hand will keep its location with the assumption that IK is used to position the hand and arm.

By default the skeleton hand bones are repositioned to match the size of the tracked hand. To preserve the modeled bone sizes change :ref:`bone_update<class_OpenXRHand_property_bone_update>` to apply rotation only.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------+------------------+
   | :ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>`   | :ref:`bone_update<class_OpenXRHand_property_bone_update>`     | ``0``            |
   +-------------------------------------------------+---------------------------------------------------------------+------------------+
   | :ref:`Hands<enum_OpenXRHand_Hands>`             | :ref:`hand<class_OpenXRHand_property_hand>`                   | ``0``            |
   +-------------------------------------------------+---------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`hand_skeleton<class_OpenXRHand_property_hand_skeleton>` | ``NodePath("")`` |
   +-------------------------------------------------+---------------------------------------------------------------+------------------+
   | :ref:`MotionRange<enum_OpenXRHand_MotionRange>` | :ref:`motion_range<class_OpenXRHand_property_motion_range>`   | ``0``            |
   +-------------------------------------------------+---------------------------------------------------------------+------------------+
   | :ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` | :ref:`skeleton_rig<class_OpenXRHand_property_skeleton_rig>`   | ``0``            |
   +-------------------------------------------------+---------------------------------------------------------------+------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_OpenXRHand_Hands:

.. rst-class:: classref-enumeration

enum **Hands**: :ref:`🔗<enum_OpenXRHand_Hands>`

.. _class_OpenXRHand_constant_HAND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Hands<enum_OpenXRHand_Hands>` **HAND_LEFT** = ``0``

追蹤玩家的左手。

.. _class_OpenXRHand_constant_HAND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Hands<enum_OpenXRHand_Hands>` **HAND_RIGHT** = ``1``

追蹤玩家的右手。

.. _class_OpenXRHand_constant_HAND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hands<enum_OpenXRHand_Hands>` **HAND_MAX** = ``2``

最大支援的手數。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRHand_MotionRange:

.. rst-class:: classref-enumeration

enum **MotionRange**: :ref:`🔗<enum_OpenXRHand_MotionRange>`

.. _class_OpenXRHand_constant_MOTION_RANGE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **MOTION_RANGE_UNOBSTRUCTED** = ``0``

玩家抓握時，手部骨架呈握拳狀。

.. _class_OpenXRHand_constant_MOTION_RANGE_CONFORM_TO_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **MOTION_RANGE_CONFORM_TO_CONTROLLER** = ``1``

玩家抓握時，手部骨架遵循玩家所持的控制器。

.. _class_OpenXRHand_constant_MOTION_RANGE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **MOTION_RANGE_MAX** = ``2``

最大支援的運動範圍。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRHand_SkeletonRig:

.. rst-class:: classref-enumeration

enum **SkeletonRig**: :ref:`🔗<enum_OpenXRHand_SkeletonRig>`

.. _class_OpenXRHand_constant_SKELETON_RIG_OPENXR:

.. rst-class:: classref-enumeration-constant

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **SKELETON_RIG_OPENXR** = ``0``

An OpenXR compliant skeleton.

.. _class_OpenXRHand_constant_SKELETON_RIG_HUMANOID:

.. rst-class:: classref-enumeration-constant

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **SKELETON_RIG_HUMANOID** = ``1``

A :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` compliant skeleton.

.. _class_OpenXRHand_constant_SKELETON_RIG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **SKELETON_RIG_MAX** = ``2``

最大支援的手數。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRHand_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_OpenXRHand_BoneUpdate>`

.. _class_OpenXRHand_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

The skeletons bones are fully updated (both position and rotation) to match the tracked bones.

.. _class_OpenXRHand_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

The skeletons bones are only rotated to align with the tracked bones, preserving bone length.

.. _class_OpenXRHand_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

Maximum supported bone update mode.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRHand_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_OpenXRHand_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **get_bone_update**\ (\ )

Specify the type of updates to perform on the bone.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_hand:

.. rst-class:: classref-property

:ref:`Hands<enum_OpenXRHand_Hands>` **hand** = ``0`` :ref:`🔗<class_OpenXRHand_property_hand>`

.. rst-class:: classref-property-setget

- |void| **set_hand**\ (\ value\: :ref:`Hands<enum_OpenXRHand_Hands>`\ )
- :ref:`Hands<enum_OpenXRHand_Hands>` **get_hand**\ (\ )

指定該節點是追蹤玩家的左手還是右手。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_hand_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **hand_skeleton** = ``NodePath("")`` :ref:`🔗<class_OpenXRHand_property_hand_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_hand_skeleton**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_hand_skeleton**\ (\ )

設定一個\ :ref:`Skeleton3D<class_Skeleton3D>`\ 節點，該節點的姿勢位置將被更新。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_motion_range:

.. rst-class:: classref-property

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **motion_range** = ``0`` :ref:`🔗<class_OpenXRHand_property_motion_range>`

.. rst-class:: classref-property-setget

- |void| **set_motion_range**\ (\ value\: :ref:`MotionRange<enum_OpenXRHand_MotionRange>`\ )
- :ref:`MotionRange<enum_OpenXRHand_MotionRange>` **get_motion_range**\ (\ )

設定限制手部運動的運動範圍（前提是支援）。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_skeleton_rig:

.. rst-class:: classref-property

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **skeleton_rig** = ``0`` :ref:`🔗<class_OpenXRHand_property_skeleton_rig>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton_rig**\ (\ value\: :ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>`\ )
- :ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **get_skeleton_rig**\ (\ )

Set the type of skeleton rig the :ref:`hand_skeleton<class_OpenXRHand_property_hand_skeleton>` is compliant with.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
