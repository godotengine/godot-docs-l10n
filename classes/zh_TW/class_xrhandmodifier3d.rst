:github_url: hide

.. _class_XRHandModifier3D:

XRHandModifier3D
================

**繼承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A node for driving hand meshes from :ref:`XRHandTracker<class_XRHandTracker>` data.

.. rst-class:: classref-introduction-group

說明
----

This node uses hand tracking data from an :ref:`XRHandTracker<class_XRHandTracker>` to pose the skeleton of a hand mesh.

Positioning of hands is performed by creating an :ref:`XRNode3D<class_XRNode3D>` ancestor of the hand mesh driven by the same :ref:`XRHandTracker<class_XRHandTracker>`.

The hand tracking position-data is scaled by :ref:`Skeleton3D.motion_scale<class_Skeleton3D_property_motion_scale>` when applied to the skeleton, which can be used to adjust the tracked hand to match the scale of the hand model.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+
   | :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` | :ref:`bone_update<class_XRHandModifier3D_property_bone_update>`   | ``0``                          |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+
   | :ref:`StringName<class_StringName>`                 | :ref:`hand_tracker<class_XRHandModifier3D_property_hand_tracker>` | ``&"/user/hand_tracker/left"`` |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_XRHandModifier3D_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_XRHandModifier3D_BoneUpdate>`

.. _class_XRHandModifier3D_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

The skeleton's bones are fully updated (both position and rotation) to match the tracked bones.

.. _class_XRHandModifier3D_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

The skeleton's bones are only rotated to align with the tracked bones, preserving bone length.

.. _class_XRHandModifier3D_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

Represents the size of the :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XRHandModifier3D_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_XRHandModifier3D_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **get_bone_update**\ (\ )

Specifies the type of updates to perform on the bones.

.. rst-class:: classref-item-separator

----

.. _class_XRHandModifier3D_property_hand_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **hand_tracker** = ``&"/user/hand_tracker/left"`` :ref:`🔗<class_XRHandModifier3D_property_hand_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_hand_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_hand_tracker**\ (\ )

The name of the :ref:`XRHandTracker<class_XRHandTracker>` registered with :ref:`XRServer<class_XRServer>` to obtain the hand tracking data from.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
