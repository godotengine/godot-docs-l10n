:github_url: hide

.. _class_SkeletonModification2DCCDIK:

SkeletonModification2DCCDIK
===========================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 CCDIK 操纵一系列骨骼到达某个 2D 目标的修改器。

.. rst-class:: classref-introduction-group

描述
----

这种 :ref:`SkeletonModification2D<class_SkeletonModification2D>` 使用的是名为循环坐标下降逆向运动学（Cyclic Coordinate Descent Inverse Kinematics）的算法，即 CCDIK，能够对 :ref:`Skeleton2D<class_Skeleton2D>` 中的一条骨骼链进行操作，从而抵达指定的目标。

CCDIK 的工作原理是让一组骨骼围绕单一轴旋转，这组骨骼通常称作“骨骼链”。每根骨骼的尖端都会转向目标（默认），这样整条骨骼链就能够正确旋转，从而抵达目标。因为这些骨骼都只围绕单一轴进行旋转，CCDIK 看起来\ *能够*\ 比其他 IK 解算器更加机械。

\ **注意：**\ CCDIK 修改器具有关节属性 ``ccdik_joints``\ ，里面是存放 CCDIK 链中各个关节数据的数据对象。关节和骨骼是两码事！CCDIK 关节存放的是 CCDIK 所使用的骨骼链中每根骨骼所需的数据。

CCDIK 还完全支持角度约束，能够对求解过程进行更多控制。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`ccdik_data_chain_length<class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length>` | ``0``            |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DCCDIK_property_target_nodepath>`                 | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`tip_nodepath<class_SkeletonModification2DCCDIK_property_tip_nodepath>`                       | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_ccdik_joint_bone2d_node<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_ccdik_joint_bone_index<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                     |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_constraint_angle_invert<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_ccdik_joint_constraint_angle_max<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_ccdik_joint_constraint_angle_min<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_enable_constraint<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_rotate_from_joint<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_bone2d_node<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ )        |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_bone_index<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_invert<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>`\ (\ joint_idx\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_max<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max>`\ (\ joint_idx\: :ref:`int<class_int>`, angle_max\: :ref:`float<class_float>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_min<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min>`\ (\ joint_idx\: :ref:`int<class_int>`, angle_min\: :ref:`float<class_float>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_enable_constraint<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint>`\ (\ joint_idx\: :ref:`int<class_int>`, enable_constraint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_rotate_from_joint<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint>`\ (\ joint_idx\: :ref:`int<class_int>`, rotate_from_joint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **ccdik_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_ccdik_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ccdik_data_chain_length**\ (\ )

CCDIK 修改中 CCDIK 关节的数量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

作为 CCDIK 修改目标的节点的 NodePath。该节点是 CCDIK 链会尝试将该骨骼链旋转到的节点。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_property_tip_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **tip_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_tip_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_tip_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_tip_node**\ (\ )

该 CCDIK 链的结束位置。通常，这应该是一个 :ref:`Bone2D<class_Bone2D>` 节点的一个子节点，被附加到 CCDIK 链中的最终 :ref:`Bone2D<class_Bone2D>` 上。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_ccdik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node>`

返回分配给位于 ``joint_idx`` 的 CCDIK 关节的 :ref:`Bone2D<class_Bone2D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ccdik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index>`

返回分配给位于 ``joint_idx`` 的 CCDIK 关节的 :ref:`Bone2D<class_Bone2D>` 节点的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_constraint_angle_invert**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert>`

返回索引为 ``joint_idx`` 的 CCDIK 关节是否使用反向关节约束。详见 :ref:`set_ccdik_joint_constraint_angle_invert()<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_ccdik_joint_constraint_angle_max**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max>`

返回索引为 ``joint_idx`` 的关节的最大角约束。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_ccdik_joint_constraint_angle_min**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min>`

返回索引为 ``joint_idx`` 的关节的最小角约束。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_enable_constraint**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint>`

返回索引为 ``joint_idx`` 的 CCDIK 关节是否启用角度约束。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_rotate_from_joint**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint>`

返回位于 ``joint_idx`` 的关节是从该关节旋转，\ ``true``\ ，还是从尖端旋转，\ ``false``\ 。默认是从尖端旋转。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_ccdik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node>`

设置分配给位于 ``joint_idx`` 的 CCDIK 关节的 :ref:`Bone2D<class_Bone2D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index:

.. rst-class:: classref-method

|void| **set_ccdik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index>`

设置位于 ``joint_idx`` 的 CCDIK 关节的骨骼索引 ``joint_idx``\ 。可能时，还会根据所链接的骨架提供的信息来更新 CCDIK 关节的 ``bone2d_node``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_invert**\ (\ joint_idx\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>`

设置索引为 ``joint_idx`` 的 CCDIK 关节是否使用反向关节约束。

反向关节约束只会将该 CCDIK 关节的角度约束在输入的最大最小角度范围\ *之外*\ 。因此，它被称为反向关节约束，因为它将关节约束在输入值的外部。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_max**\ (\ joint_idx\: :ref:`int<class_int>`, angle_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max>`

设置索引为 ``joint_idx`` 的关节的最大角约束。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_min**\ (\ joint_idx\: :ref:`int<class_int>`, angle_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min>`

设置索引为 ``joint_idx`` 的关节的最小角约束。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint:

.. rst-class:: classref-method

|void| **set_ccdik_joint_enable_constraint**\ (\ joint_idx\: :ref:`int<class_int>`, enable_constraint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint>`

决定是否启用 ``joint_idx`` 处 CCDIK 关节上的角度约束。为 ``true`` 时将启用约束，在求解时纳入考虑范围。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint:

.. rst-class:: classref-method

|void| **set_ccdik_joint_rotate_from_joint**\ (\ joint_idx\: :ref:`int<class_int>`, rotate_from_joint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint>`

设置位于 ``joint_idx`` 的关节是设为从关节旋转，\ ``true``\ ，还是从尖端旋转，\ ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
