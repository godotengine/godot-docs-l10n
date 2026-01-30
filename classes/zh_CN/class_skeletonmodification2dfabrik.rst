:github_url: hide

.. _class_SkeletonModification2DFABRIK:

SkeletonModification2DFABRIK
============================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 FABRIK 操纵一系列 :ref:`Bone2D<class_Bone2D>` 到达某个目标的修改器。

.. rst-class:: classref-introduction-group

描述
----

这种 :ref:`SkeletonModification2D<class_SkeletonModification2D>` 使用的是名为前后延伸反向运动学（Forward And Backward Reaching Inverse Kinematics）的算法，即 FABRIK，能够对一条骨骼链进行旋转，从而抵达目标。

FABRIK 需要先拿到一系列骨骼的位置和长度，这组骨骼通常称作“骨骼链”。它首先会做一次向前处理，将最终的骨骼放置在目标的位置。然后让所有其他骨骼朝尖端骨骼移动，恢复原有的骨骼长度。然后再做一次向后处理，将 FABRIK 链中的根/第一根骨骼放回原点。然后移动所有其他骨骼，恢复原有的骨骼长度。这样就尽可能地让骨骼链抵达了目标，并且所有骨骼之间的长度仍然为正确的长度。

由于 FABRIK 的工作原理，它通常比 :ref:`SkeletonModification2DCCDIK<class_SkeletonModification2DCCDIK>` 得到的结果更加自然。

\ **注意：**\ FABRIK 修改器具有关节属性 ``fabrik_joints``\ ，里面是存放 FABRIK 链中各个关节数据的数据对象。关节和 :ref:`Bone2D<class_Bone2D>` 是两码事！FABRIK 关节存放的是 FABRIK 所使用的骨骼链中每根 :ref:`Bone2D<class_Bone2D>` 所需的数据。

可以传入磁铁向量来帮助控制 FABRIK 关节的移动，会在求解前让骨骼朝某个方向做略微的移动，对最终结果进行微调。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`fabrik_data_chain_length<class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length>` | ``0``            |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DFABRIK_property_target_nodepath>`                   | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_fabrik_joint_bone2d_node<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_fabrik_joint_bone_index<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`get_fabrik_joint_magnet_position<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_fabrik_joint_use_target_rotation<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_bone2d_node<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ )             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_bone_index<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                                |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_magnet_position<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position>`\ (\ joint_idx\: :ref:`int<class_int>`, magnet_position\: :ref:`Vector2<class_Vector2>`\ )       |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_use_target_rotation<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation>`\ (\ joint_idx\: :ref:`int<class_int>`, use_target_rotation\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **fabrik_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_fabrik_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fabrik_data_chain_length**\ (\ )

FABRIK 修改中 FABRIK 关节的数量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DFABRIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

FABRIK 修改器的目标节点的 NodePath。FABRIK 链会尝试将骨骼链转向这个节点。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_fabrik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node>`

返回分配给位于 ``joint_idx`` 的 FABRIK 关节的 :ref:`Bone2D<class_Bone2D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_fabrik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index>`

返回分配给位于 ``joint_idx`` 的 FABRIK 关节的 :ref:`Bone2D<class_Bone2D>` 节点的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_fabrik_joint_magnet_position**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position>`

返回位于 ``joint_idx`` 的关节的磁吸位置向量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_fabrik_joint_use_target_rotation**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation>`

返回关节是否正在使用目标的旋转，而不是允许 FABRIK 旋转关节。此选项仅适用于链中的末端/最终关节。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_fabrik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node>`

设置分配给位于 ``joint_idx`` 的 FABRIK 关节的 :ref:`Bone2D<class_Bone2D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index:

.. rst-class:: classref-method

|void| **set_fabrik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index>`

设置位于 ``joint_idx`` 的 FABRIK 关节的骨骼索引 ``bone_idx``\ 。可能时，这也会根据链接骨架所提供的数据来更新 FABRIK 关节的 ``bone2d_node``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position:

.. rst-class:: classref-method

|void| **set_fabrik_joint_magnet_position**\ (\ joint_idx\: :ref:`int<class_int>`, magnet_position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position>`

设置位于 ``joint_idx`` 的关节的磁吸位置向量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation:

.. rst-class:: classref-method

|void| **set_fabrik_joint_use_target_rotation**\ (\ joint_idx\: :ref:`int<class_int>`, use_target_rotation\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation>`

设置位于 ``joint_idx`` 的关节是否正在使用目标节点的旋转，而不是让 FABRIK 旋转关节。

\ **注意：**\ 这个选项仅适用于链中的末端/最终关节。对于所有其他节点，这个选项将被忽略。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
