:github_url: hide

.. _class_XRBodyModifier3D:

XRBodyModifier3D
================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A node for driving body meshes from :ref:`XRBodyTracker<class_XRBodyTracker>` data.

.. rst-class:: classref-introduction-group

說明
----

This node uses body tracking data from an :ref:`XRBodyTracker<class_XRBodyTracker>` to pose the skeleton of a body mesh.

Positioning of the body is performed by creating an :ref:`XRNode3D<class_XRNode3D>` ancestor of the body mesh driven by the same :ref:`XRBodyTracker<class_XRBodyTracker>`.

The body tracking position-data is scaled by :ref:`Skeleton3D.motion_scale<class_Skeleton3D_property_motion_scale>` when applied to the skeleton, which can be used to adjust the tracked body to match the scale of the body model.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`StringName<class_StringName>`                               | :ref:`body_tracker<class_XRBodyModifier3D_property_body_tracker>` | ``&"/user/body_tracker"`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+
   | |bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\] | :ref:`body_update<class_XRBodyModifier3D_property_body_update>`   | ``7``                     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>`               | :ref:`bone_update<class_XRBodyModifier3D_property_bone_update>`   | ``0``                     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_XRBodyModifier3D_BodyUpdate:

.. rst-class:: classref-enumeration

flags **BodyUpdate**: :ref:`🔗<enum_XRBodyModifier3D_BodyUpdate>`

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_UPPER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_UPPER_BODY** = ``1``

The skeleton's upper body joints are updated.

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_LOWER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_LOWER_BODY** = ``2``

The skeleton's lower body joints are updated.

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_HANDS:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_HANDS** = ``4``

The skeleton's hand joints are updated.

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyModifier3D_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_XRBodyModifier3D_BoneUpdate>`

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

The skeleton's bones are fully updated (both position and rotation) to match the tracked bones.

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

The skeleton's bones are only rotated to align with the tracked bones, preserving bone length.

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

Represents the size of the :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XRBodyModifier3D_property_body_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **body_tracker** = ``&"/user/body_tracker"`` :ref:`🔗<class_XRBodyModifier3D_property_body_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_body_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_body_tracker**\ (\ )

The name of the :ref:`XRBodyTracker<class_XRBodyTracker>` registered with :ref:`XRServer<class_XRServer>` to obtain the body tracking data from.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyModifier3D_property_body_update:

.. rst-class:: classref-property

|bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\] **body_update** = ``7`` :ref:`🔗<class_XRBodyModifier3D_property_body_update>`

.. rst-class:: classref-property-setget

- |void| **set_body_update**\ (\ value\: |bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\]\ )
- |bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\] **get_body_update**\ (\ )

Specifies the body parts to update.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyModifier3D_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_XRBodyModifier3D_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **get_bone_update**\ (\ )

Specifies the type of updates to perform on the bones.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
