:github_url: hide

.. _class_OpenXRHand:

OpenXRHand
==========

**已弃用：** Use :ref:`XRHandModifier3D<class_XRHandModifier3D>` instead.

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

OpenXR 中支持手和手指跟踪的节点。

.. rst-class:: classref-introduction-group

描述
----

该节点启用 OpenXR 的手部跟踪功能。该节点应该是 :ref:`XROrigin3D<class_XROrigin3D>` 节点的子节点，跟踪会将其位置更新为玩家被跟踪的手掌关节位置（中指的掌骨中心）。该节点还会更新正确蒙皮的手或头像模型的骨架。

如果骨架是一只手（手部骨骼之一是该骨架的根节点），则该骨架将相对于手掌位置放置，并且手部网格和骨架应该是 OpenXRHand 节点的子级。

如果手骨是完整骨架的一部分，假设使用 IK 来定位手和胳膊，则手的根部将保持其位置。

默认情况下，骨架手骨会被重新定位以匹配跟踪的手的大小。要保留建模的骨骼大小，请更改 :ref:`bone_update<class_OpenXRHand_property_bone_update>` 以仅应用旋转。

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_OpenXRHand_Hands:

.. rst-class:: classref-enumeration

enum **Hands**: :ref:`🔗<enum_OpenXRHand_Hands>`

.. _class_OpenXRHand_constant_HAND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Hands<enum_OpenXRHand_Hands>` **HAND_LEFT** = ``0``

追踪玩家的左手。

.. _class_OpenXRHand_constant_HAND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Hands<enum_OpenXRHand_Hands>` **HAND_RIGHT** = ``1``

追踪玩家的右手。

.. _class_OpenXRHand_constant_HAND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hands<enum_OpenXRHand_Hands>` **HAND_MAX** = ``2``

最大支持的手数。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRHand_MotionRange:

.. rst-class:: classref-enumeration

enum **MotionRange**: :ref:`🔗<enum_OpenXRHand_MotionRange>`

.. _class_OpenXRHand_constant_MOTION_RANGE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **MOTION_RANGE_UNOBSTRUCTED** = ``0``

玩家抓握时，手部骨架呈握拳状。

.. _class_OpenXRHand_constant_MOTION_RANGE_CONFORM_TO_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **MOTION_RANGE_CONFORM_TO_CONTROLLER** = ``1``

玩家抓握时，手部骨架遵循玩家所持的控制器。

.. _class_OpenXRHand_constant_MOTION_RANGE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **MOTION_RANGE_MAX** = ``2``

最大支持的运动范围。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRHand_SkeletonRig:

.. rst-class:: classref-enumeration

enum **SkeletonRig**: :ref:`🔗<enum_OpenXRHand_SkeletonRig>`

.. _class_OpenXRHand_constant_SKELETON_RIG_OPENXR:

.. rst-class:: classref-enumeration-constant

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **SKELETON_RIG_OPENXR** = ``0``

符合 OpenXR 标准的骨架。

.. _class_OpenXRHand_constant_SKELETON_RIG_HUMANOID:

.. rst-class:: classref-enumeration-constant

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **SKELETON_RIG_HUMANOID** = ``1``

符合 :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` 标准的骨架。

.. _class_OpenXRHand_constant_SKELETON_RIG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **SKELETON_RIG_MAX** = ``2``

最大支持的手数。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRHand_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_OpenXRHand_BoneUpdate>`

.. _class_OpenXRHand_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

骨架骨骼已完全更新（位置和旋转）以匹配跟踪的骨骼。

.. _class_OpenXRHand_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

骨架骨骼仅旋转以与跟踪的骨骼对齐，从而保留骨骼长度。

.. _class_OpenXRHand_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

最大支持的骨骼更新模式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRHand_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_OpenXRHand_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **get_bone_update**\ (\ )

指定要在骨骼上执行的更新类型。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_hand:

.. rst-class:: classref-property

:ref:`Hands<enum_OpenXRHand_Hands>` **hand** = ``0`` :ref:`🔗<class_OpenXRHand_property_hand>`

.. rst-class:: classref-property-setget

- |void| **set_hand**\ (\ value\: :ref:`Hands<enum_OpenXRHand_Hands>`\ )
- :ref:`Hands<enum_OpenXRHand_Hands>` **get_hand**\ (\ )

指定该节点是追踪玩家的左手还是右手。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_hand_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **hand_skeleton** = ``NodePath("")`` :ref:`🔗<class_OpenXRHand_property_hand_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_hand_skeleton**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_hand_skeleton**\ (\ )

设置一个\ :ref:`Skeleton3D<class_Skeleton3D>`\ 节点，该节点的姿势位置将被更新。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_motion_range:

.. rst-class:: classref-property

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **motion_range** = ``0`` :ref:`🔗<class_OpenXRHand_property_motion_range>`

.. rst-class:: classref-property-setget

- |void| **set_motion_range**\ (\ value\: :ref:`MotionRange<enum_OpenXRHand_MotionRange>`\ )
- :ref:`MotionRange<enum_OpenXRHand_MotionRange>` **get_motion_range**\ (\ )

设置限制手部运动的运动范围（前提是支持）。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_skeleton_rig:

.. rst-class:: classref-property

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **skeleton_rig** = ``0`` :ref:`🔗<class_OpenXRHand_property_skeleton_rig>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton_rig**\ (\ value\: :ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>`\ )
- :ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **get_skeleton_rig**\ (\ )

设置 :ref:`hand_skeleton<class_OpenXRHand_property_hand_skeleton>` 所兼容的骨架绑定类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
