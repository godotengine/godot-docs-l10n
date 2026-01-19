:github_url: hide

.. _class_XRBodyModifier3D:

XRBodyModifier3D
================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于从 :ref:`XRBodyTracker<class_XRBodyTracker>` 数据驱动身体网格的节点。

.. rst-class:: classref-introduction-group

描述
----

该节点使用来自 :ref:`XRBodyTracker<class_XRBodyTracker>` 的身体跟踪数据来设置身体网格的骨架。

身体的定位是通过创建由相同 :ref:`XRBodyTracker<class_XRBodyTracker>` 驱动的身体网格的 :ref:`XRNode3D<class_XRNode3D>` 祖先来执行的。

身体跟踪位置数据在应用于骨架时由 :ref:`Skeleton3D.motion_scale<class_Skeleton3D_property_motion_scale>` 缩放，可用于调整跟踪的身体以匹配身体模型的缩放。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_XRBodyModifier3D_BodyUpdate:

.. rst-class:: classref-enumeration

flags **BodyUpdate**: :ref:`🔗<enum_XRBodyModifier3D_BodyUpdate>`

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_UPPER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_UPPER_BODY** = ``1``

骨架的上半身关节已更新。

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_LOWER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_LOWER_BODY** = ``2``

骨架的下半身关节已更新。

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_HANDS:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_HANDS** = ``4``

骨架的手部关节已更新。

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyModifier3D_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_XRBodyModifier3D_BoneUpdate>`

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

骨架的骨骼完全更新（位置和旋转）以匹配跟踪的骨骼。

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

骨架的骨骼仅旋转以与跟踪的骨骼对齐，从而保留骨骼长度。

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

代表 :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XRBodyModifier3D_property_body_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **body_tracker** = ``&"/user/body_tracker"`` :ref:`🔗<class_XRBodyModifier3D_property_body_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_body_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_body_tracker**\ (\ )

注册到 :ref:`XRServer<class_XRServer>` 的 :ref:`XRBodyTracker<class_XRBodyTracker>` 的名称，可从中获取身体跟踪数据。

.. rst-class:: classref-item-separator

----

.. _class_XRBodyModifier3D_property_body_update:

.. rst-class:: classref-property

|bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\] **body_update** = ``7`` :ref:`🔗<class_XRBodyModifier3D_property_body_update>`

.. rst-class:: classref-property-setget

- |void| **set_body_update**\ (\ value\: |bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\]\ )
- |bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\] **get_body_update**\ (\ )

指定要更新的身体部位。

.. rst-class:: classref-item-separator

----

.. _class_XRBodyModifier3D_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_XRBodyModifier3D_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **get_bone_update**\ (\ )

指定要在骨骼上执行的更新类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
