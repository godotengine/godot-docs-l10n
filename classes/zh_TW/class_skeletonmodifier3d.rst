:github_url: hide

.. _class_SkeletonModifier3D:

SkeletonModifier3D
==================

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`BoneConstraint3D<class_BoneConstraint3D>`, :ref:`BoneTwistDisperser3D<class_BoneTwistDisperser3D>`, :ref:`IKModifier3D<class_IKModifier3D>`, :ref:`LimitAngularVelocityModifier3D<class_LimitAngularVelocityModifier3D>`, :ref:`LookAtModifier3D<class_LookAtModifier3D>`, :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`, :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>`, :ref:`RetargetModifier3D<class_RetargetModifier3D>`, :ref:`SkeletonIK3D<class_SkeletonIK3D>`, :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, :ref:`XRBodyModifier3D<class_XRBodyModifier3D>`, :ref:`XRHandModifier3D<class_XRHandModifier3D>`

能夠修改 Skeleton3D 中骨骼的節點。

.. rst-class:: classref-introduction-group

說明
----

**SkeletonModifier3D** 會將父級 :ref:`Skeleton3D<class_Skeleton3D>` 節點作為目標 :ref:`Skeleton3D<class_Skeleton3D>`\ 。

如果存在 :ref:`AnimationMixer<class_AnimationMixer>`\ ，則修改會在 :ref:`AnimationMixer<class_AnimationMixer>` 的播放處理後執行。

該節點應該用於實作自訂 IK 解算器、約束、骨架物理。

.. rst-class:: classref-introduction-group

教學
----

- `3D 骨架修改器的設計 <https://godotengine.org/article/design-of-the-skeleton-modifier-3d/>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`active<class_SkeletonModifier3D_property_active>`       | ``true`` |
   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`influence<class_SkeletonModifier3D_property_influence>` | ``1.0``  |
   +---------------------------+---------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification<class_SkeletonModifier3D_private_method__process_modification>`\ (\ ) |virtual|                                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification_with_delta<class_SkeletonModifier3D_private_method__process_modification_with_delta>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_skeleton_changed<class_SkeletonModifier3D_private_method__skeleton_changed>`\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_validate_bone_names<class_SkeletonModifier3D_private_method__validate_bone_names>`\ (\ ) |virtual|                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_SkeletonModifier3D_method_get_skeleton>`\ (\ ) |const|                                                                                                                             |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_SkeletonModifier3D_signal_modification_processed:

.. rst-class:: classref-signal

**modification_processed**\ (\ ) :ref:`🔗<class_SkeletonModifier3D_signal_modification_processed>`

修改完成後通知。

\ **注意：**\ 如果要取得修改器修改後的骨骼姿勢，必須在觸發該訊號時使用 :ref:`Skeleton3D.get_bone_pose()<class_Skeleton3D_method_get_bone_pose>` 或 :ref:`Skeleton3D.get_bone_global_pose()<class_Skeleton3D_method_get_bone_global_pose>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_SkeletonModifier3D_BoneAxis:

.. rst-class:: classref-enumeration

enum **BoneAxis**: :ref:`🔗<enum_SkeletonModifier3D_BoneAxis>`

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_X** = ``0``

+X 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_X** = ``1``

-X 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Y** = ``2``

+Y 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Y** = ``3``

-Y 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Z** = ``4``

+Z 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Z** = ``5``

-Z 軸對應的列舉值。

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_BoneDirection:

.. rst-class:: classref-enumeration

enum **BoneDirection**: :ref:`🔗<enum_SkeletonModifier3D_BoneDirection>`

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_X** = ``0``

+X 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_X** = ``1``

-X 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_Y** = ``2``

+Y 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_Y** = ``3``

-Y 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_Z** = ``4``

+Z 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_Z** = ``5``

-Z 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_FROM_PARENT:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_FROM_PARENT** = ``6``

列舉值，表示從父骨骼指向子骨骼的軸。

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_SecondaryDirection:

.. rst-class:: classref-enumeration

enum **SecondaryDirection**: :ref:`🔗<enum_SkeletonModifier3D_SecondaryDirection>`

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_NONE** = ``0``

當軸未定義時對應的列舉值。

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_X** = ``1``

+X 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_X** = ``2``

-X 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_Y** = ``3``

+Y 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_Y** = ``4``

-Y 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_Z** = ``5``

+Z 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_Z** = ``6``

-Z 軸對應的列舉值。

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_CUSTOM** = ``7``

可選軸對應的列舉值。

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_RotationAxis:

.. rst-class:: classref-enumeration

enum **RotationAxis**: :ref:`🔗<enum_SkeletonModifier3D_RotationAxis>`

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_X** = ``0``

列舉值，表示 X 軸的旋轉。

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_Y** = ``1``

列舉值，表示 Y 軸的旋轉。

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_Z** = ``2``

列舉值，表示 Z 軸的旋轉。

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_ALL** = ``3``

列舉值，表示無約束的旋轉。

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_CUSTOM** = ``4``

可選旋轉軸對應的列舉值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SkeletonModifier3D_property_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **active** = ``true`` :ref:`🔗<class_SkeletonModifier3D_property_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

如果為 ``true``\ ，則 **SkeletonModifier3D** 將執行處理。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_property_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **influence** = ``1.0`` :ref:`🔗<class_SkeletonModifier3D_property_influence>`

.. rst-class:: classref-property-setget

- |void| **set_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_influence**\ (\ )

設定修改的影響。

\ **注意：**\ 該值由 :ref:`Skeleton3D<class_Skeleton3D>` 用來混合，因此 **SkeletonModifier3D** 應始終僅應用結果的 100% 而不進行插值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SkeletonModifier3D_private_method__process_modification:

.. rst-class:: classref-method

|void| **_process_modification**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification>`

**已棄用：** Use :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` instead.

覆蓋該虛方法可以實作自訂骨架修改器。你應該在這裡執行取得 :ref:`Skeleton3D<class_Skeleton3D>` 的目前姿勢、應用姿勢之類的操作。

\ :ref:`_process_modification()<class_SkeletonModifier3D_private_method__process_modification>` 不得將 :ref:`influence<class_SkeletonModifier3D_property_influence>` 套用至骨骼姿勢，因為 :ref:`Skeleton3D<class_Skeleton3D>` 會自動將影響套用至修改器設定的所有骨骼姿勢。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__process_modification_with_delta:

.. rst-class:: classref-method

|void| **_process_modification_with_delta**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification_with_delta>`

覆蓋該虛方法可以實作自訂骨架修改器。你應該在這裡執行取得 :ref:`Skeleton3D<class_Skeleton3D>` 的目前姿勢、應用姿勢之類的操作。

\ :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` 不得將 :ref:`influence<class_SkeletonModifier3D_property_influence>` 套用至骨骼姿勢，因為 :ref:`Skeleton3D<class_Skeleton3D>` 會自動將影響套用至修改器設定的所有骨骼姿勢。

\ ``delta`` 是由父級 :ref:`Skeleton3D<class_Skeleton3D>` 傳入的。另見 :ref:`Skeleton3D.advance()<class_Skeleton3D_method_advance>`\ 。

\ **注意：**\ 該方法可以在 :ref:`Node._process()<class_Node_private_method__process>` 和 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 之外呼叫，\ ``delta`` 為 ``0.0``\ ，因為修改應該在 :ref:`Skeleton3D<class_Skeleton3D>` 初始化之後立即處理。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__skeleton_changed:

.. rst-class:: classref-method

|void| **_skeleton_changed**\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__skeleton_changed>`

骨架發生改變時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__validate_bone_names:

.. rst-class:: classref-method

|void| **_validate_bone_names**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__validate_bone_names>`

在骨骼名稱和索引需要驗證時呼叫，例如進入場景樹時或更改骨架時。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonModifier3D_method_get_skeleton>`

如果存在父級 :ref:`Skeleton3D<class_Skeleton3D>` 節點則將其回傳。否則，回傳 ``null``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
