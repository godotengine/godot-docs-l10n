:github_url: hide

.. _class_XRHandModifier3D:

XRHandModifier3D
================

**继承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于从 :ref:`XRHandTracker<class_XRHandTracker>` 数据驱动手部网格的节点。

.. rst-class:: classref-introduction-group

描述
----

该节点使用来自 :ref:`XRHandTracker<class_XRHandTracker>` 的手部跟踪数据来设置手部网格的骨架。

通过创建由相同 :ref:`XRHandTracker<class_XRHandTracker>` 驱动的手部网格的 :ref:`XRNode3D<class_XRNode3D>` 祖先来定位手部。

当将手部跟踪位置数据应用于骨架时，它会根据 :ref:`Skeleton3D.motion_scale<class_Skeleton3D_property_motion_scale>` 进行缩放，可用于调整跟踪的手部以匹配手部模型的缩放。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_XRHandModifier3D_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_XRHandModifier3D_BoneUpdate>`

.. _class_XRHandModifier3D_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

骨架的骨骼完全更新（位置和旋转）以匹配跟踪的骨骼。

.. _class_XRHandModifier3D_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

骨架的骨骼仅旋转以与跟踪的骨骼对齐，从而保留骨骼长度。

.. _class_XRHandModifier3D_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

代表 :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XRHandModifier3D_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_XRHandModifier3D_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **get_bone_update**\ (\ )

指定要在骨骼上执行的更新类型。

.. rst-class:: classref-item-separator

----

.. _class_XRHandModifier3D_property_hand_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **hand_tracker** = ``&"/user/hand_tracker/left"`` :ref:`🔗<class_XRHandModifier3D_property_hand_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_hand_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_hand_tracker**\ (\ )

向 :ref:`XRServer<class_XRServer>` 注册的 :ref:`XRHandTracker<class_XRHandTracker>` 的名称，可以从中获取手部跟踪数据。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
