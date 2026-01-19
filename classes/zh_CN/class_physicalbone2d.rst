:github_url: hide

.. meta::
	:keywords: ragdoll

.. _class_PhysicalBone2D:

PhysicalBone2D
==============

**继承：** :ref:`RigidBody2D<class_RigidBody2D>` **<** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

派生自 :ref:`RigidBody2D<class_RigidBody2D>` 的节点，用于让 :ref:`Skeleton2D<class_Skeleton2D>` 中的 :ref:`Bone2D<class_Bone2D>` 对物理作出反应。

.. rst-class:: classref-introduction-group

描述
----

**PhysicalBone2D** 节点基于 :ref:`RigidBody2D<class_RigidBody2D>`\ ，可以用来使 :ref:`Skeleton2D<class_Skeleton2D>` 中的 :ref:`Bone2D<class_Bone2D>` 节点对物理作出反应。

\ **注意：**\ 为了让 :ref:`Bone2D<class_Bone2D>` 节点在视觉上跟随 **PhysicalBone2D** 节点，请在父级 :ref:`Skeleton2D<class_Skeleton2D>` 节点上使用 :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` 修改。

\ **注意：**\ **PhysicalBone2D** 节点不会自动创建 :ref:`Joint2D<class_Joint2D>` 节点来让 **PhysicalBone2D** 节点保持在一起。你需要手动创建这些节点。大多数情况下，你想要使用的都是 :ref:`PinJoint2D<class_PinJoint2D>` 节点。创建 **PhysicalBone2D** 子节点后会自动配置 :ref:`Joint2D<class_Joint2D>` 节点。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`auto_configure_joint<class_PhysicalBone2D_property_auto_configure_joint>`               | ``true``         |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`bone2d_index<class_PhysicalBone2D_property_bone2d_index>`                               | ``-1``           |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`bone2d_nodepath<class_PhysicalBone2D_property_bone2d_nodepath>`                         | ``NodePath("")`` |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`follow_bone_when_simulating<class_PhysicalBone2D_property_follow_bone_when_simulating>` | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`simulate_physics<class_PhysicalBone2D_property_simulate_physics>`                       | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Joint2D<class_Joint2D>` | :ref:`get_joint<class_PhysicalBone2D_method_get_joint>`\ (\ ) |const|                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_simulating_physics<class_PhysicalBone2D_method_is_simulating_physics>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PhysicalBone2D_property_auto_configure_joint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_configure_joint** = ``true`` :ref:`🔗<class_PhysicalBone2D_property_auto_configure_joint>`

.. rst-class:: classref-property-setget

- |void| **set_auto_configure_joint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_auto_configure_joint**\ (\ )

如果为 ``true``\ ，\ **PhysicalBone2D** 节点会自动配置第一个 :ref:`Joint2D<class_Joint2D>` 子节点。自动配置仅限于设置节点属性和定位该 :ref:`Joint2D<class_Joint2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone2d_index** = ``-1`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_index>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone2d_index**\ (\ )

该 **PhysicalBone2D** 节点所模拟的 :ref:`Bone2D<class_Bone2D>` 节点的索引。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **bone2d_nodepath** = ``NodePath("")`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_nodepath**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_bone2d_nodepath**\ (\ )

该 **PhysicalBone2D** 所模拟的 :ref:`Bone2D<class_Bone2D>` 的 :ref:`NodePath<class_NodePath>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_follow_bone_when_simulating:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_bone_when_simulating** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_follow_bone_when_simulating>`

.. rst-class:: classref-property-setget

- |void| **set_follow_bone_when_simulating**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_follow_bone_when_simulating**\ (\ )

如果为 ``true``\ ，则该 **PhysicalBone2D** 在模拟物理时会保持其绑定的骨骼的变换。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_simulate_physics:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simulate_physics** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_simulate_physics>`

.. rst-class:: classref-property-setget

- |void| **set_simulate_physics**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simulate_physics**\ (\ )

如果为 ``true``\ ，\ **PhysicalBone2D** 将开始使用物理进行模拟。如果为 ``false``\ ，\ **PhysicalBone2D** 将跟随 :ref:`Bone2D<class_Bone2D>` 节点的变换。

\ **注意：**\ 要使 :ref:`Bone2D<class_Bone2D>` 节点在视觉上跟随 **PhysicalBone2D** 节点，请在具有 :ref:`Bone2D<class_Bone2D>` 节点的 :ref:`Skeleton2D<class_Skeleton2D>` 节点上使用一个 :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` 修改。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicalBone2D_method_get_joint:

.. rst-class:: classref-method

:ref:`Joint2D<class_Joint2D>` **get_joint**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_get_joint>`

如果存在，则返回第一个 :ref:`Joint2D<class_Joint2D>` 子节点。主要是辅助函数，用于简化对 **PhysicalBone2D** 所自动配置的 :ref:`Joint2D<class_Joint2D>` 的获取。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_is_simulating_physics>`

返回一个布尔值，表示 **PhysicalBone2D** 节点是否处于运行状态，正在使用 Godot 2D 物理引擎进行仿真。为 ``true`` 时，该 PhysicalBone2D 节点正在使用物理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
