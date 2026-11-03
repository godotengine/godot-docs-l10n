:github_url: hide

.. _class_OpenXRHand:

OpenXRHand
==========

**已棄用：** Use :ref:`XRHandModifier3D<class_XRHandModifier3D>` instead.

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

OpenXR 中支援手和手指追蹤的節點。

.. rst-class:: classref-introduction-group

說明
----

該節點啟用 OpenXR 的手部追蹤功能。該節點應該是 :ref:`XROrigin3D<class_XROrigin3D>` 節點的子節點，追蹤會將其位置更新為玩家被追蹤的手掌關節位置（中指的掌骨中心）。該節點還會更新正確蒙皮的手或頭像模型的骨架。

如果骨架是一隻手（手部骨骼之一是該骨架的根節點），則該骨架將相對於手掌位置放置，並且手部網格和骨架應該是 OpenXRHand 節點的子級。

如果手骨是完整骨架的一部分，假設使用 IK 來定位手和胳膊，則手的根部將保持其位置。

預設情況下，骨架手骨會被重新定位以匹配追蹤的手的大小。要保留建模的骨骼大小，請更改 :ref:`bone_update<class_OpenXRHand_property_bone_update>` 以僅應用旋轉。

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

符合 OpenXR 標準的骨架。

.. _class_OpenXRHand_constant_SKELETON_RIG_HUMANOID:

.. rst-class:: classref-enumeration-constant

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **SKELETON_RIG_HUMANOID** = ``1``

符合 :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` 標準的骨架。

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

骨架骨骼已完全更新（位置和旋轉）以匹配追蹤的骨骼。

.. _class_OpenXRHand_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

骨架骨骼僅旋轉以與追蹤的骨骼對齊，從而保留骨骼長度。

.. _class_OpenXRHand_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

最大支援的骨骼更新模式。

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

指定要在骨骼上執行的更新型別。

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

設定 :ref:`hand_skeleton<class_OpenXRHand_property_hand_skeleton>` 所相容的骨架綁定型別。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
