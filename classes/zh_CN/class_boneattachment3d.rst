:github_url: hide

.. meta::
	:keywords: tag

.. _class_BoneAttachment3D:

BoneAttachment3D
================

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

对父级 :ref:`Skeleton3D<class_Skeleton3D>` 中某个骨骼的 3D 变换进行复制或覆盖的节点。

.. rst-class:: classref-introduction-group

描述
----

这个节点能够选中 :ref:`Skeleton3D<class_Skeleton3D>` 中的某个骨骼并附加到这个骨骼上。这样 **BoneAttachment3D** 节点就能够动态复制或覆盖所选骨骼的 3D 变换。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`bone_idx<class_BoneAttachment3D_property_bone_idx>`                           | ``-1``                                                                        |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                         | :ref:`bone_name<class_BoneAttachment3D_property_bone_name>`                         | ``""``                                                                        |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                     | :ref:`external_skeleton<class_BoneAttachment3D_property_external_skeleton>`         |                                                                               |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`override_pose<class_BoneAttachment3D_property_override_pose>`                 | ``false``                                                                     |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                          | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_external_skeleton<class_BoneAttachment3D_property_use_external_skeleton>` | ``false``                                                                     |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_BoneAttachment3D_method_get_skeleton>`\ (\ )             |
   +-------------------------------------+-----------------------------------------------------------------------------------+
   | |void|                              | :ref:`on_skeleton_update<class_BoneAttachment3D_method_on_skeleton_update>`\ (\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_BoneAttachment3D_property_bone_idx:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_idx** = ``-1`` :ref:`🔗<class_BoneAttachment3D_property_bone_idx>`

.. rst-class:: classref-property-setget

- |void| **set_bone_idx**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_idx**\ (\ )

所附着骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_BoneAttachment3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

所附着骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_external_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **external_skeleton** :ref:`🔗<class_BoneAttachment3D_property_external_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_external_skeleton**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_external_skeleton**\ (\ )

指向外部 :ref:`Skeleton3D<class_Skeleton3D>` 节点的 :ref:`NodePath<class_NodePath>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_override_pose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **override_pose** = ``false`` :ref:`🔗<class_BoneAttachment3D_property_override_pose>`

.. rst-class:: classref-property-setget

- |void| **set_override_pose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_override_pose**\ (\ )

**BoneAttachment3D** 节点是否会覆盖所附着骨骼的骨骼姿势。设置为 ``true`` 时，\ **BoneAttachment3D** 节点能够更改骨骼的姿势。设置为 ``false`` 时，\ **BoneAttachment3D** 始终为该骨骼的变换。

\ **注意：**\ 由于固有的设计，覆盖是在骨架更新的过程中使用信号打断执行的。与 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` 一起使用时可能会造成预料之外的行为。

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_use_external_skeleton:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_external_skeleton** = ``false`` :ref:`🔗<class_BoneAttachment3D_property_use_external_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_use_external_skeleton**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_external_skeleton**\ (\ )

设置 **BoneAttachment3D** 节点是否使用外部 :ref:`Skeleton3D<class_Skeleton3D>` 节点，而不是尝试使用其父节点作为 :ref:`Skeleton3D<class_Skeleton3D>`\ 。当设置为 ``true`` 时，\ **BoneAttachment3D** 节点将使用 :ref:`external_skeleton<class_BoneAttachment3D_property_external_skeleton>` 中设置的外部 :ref:`Skeleton3D<class_Skeleton3D>` 节点。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_BoneAttachment3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) :ref:`🔗<class_BoneAttachment3D_method_get_skeleton>`

如果存在父级或外部 :ref:`Skeleton3D<class_Skeleton3D>` 节点则将其返回，否则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_method_on_skeleton_update:

.. rst-class:: classref-method

|void| **on_skeleton_update**\ (\ ) :ref:`🔗<class_BoneAttachment3D_method_on_skeleton_update>`

当 :ref:`Skeleton3D<class_Skeleton3D>` 被更新时自动调用的函数。该函数是 **BoneAttachment3D** 节点更新其位置的地方，以便在\ *未*\ 设置为覆盖骨骼姿势时正确绑定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
