:github_url: hide

.. _class_SkeletonModification2DJiggle:

SkeletonModification2DJiggle
============================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

让 :ref:`Bone2D<class_Bone2D>` 节点在朝某个目标移动的过程中产生摇晃的修改器。

.. rst-class:: classref-introduction-group

描述
----

这种修改器会将一系列的骨骼朝某个目标移动，这些骨骼通常称作骨骼链。这种修改器的特点在于，它会为骨骼链中的每一个骨骼计算速度和加速度，并使用输入值运行一段非常轻量级的类物理计算。这样这些骨骼就能够越过目标并来回“摇晃”（Jiggle）。根据配置的不同，可以得到类似弹簧的摇晃，也可以得到类似布料的摇晃。

这种修改器可用于为头发、衣服边缘等添加额外的运动。可以通过不同的设置控制目标移动时关节的移动方式。

\ **注意：**\ Jiggle 修改器的 ``jiggle_joints`` 属性中保存的是数据对象，记录 Jiggle 链中各个关节的数据。这一点与 :ref:`Bone2D<class_Bone2D>` 节点不同！Jiggle 关节保存了 Jiggle 修改器使用的骨骼链中各个 :ref:`Bone2D<class_Bone2D>` 所需的数据。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`damping<class_SkeletonModification2DJiggle_property_damping>`                                   | ``0.75``          |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`gravity<class_SkeletonModification2DJiggle_property_gravity>`                                   | ``Vector2(0, 6)`` |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`           | :ref:`jiggle_data_chain_length<class_SkeletonModification2DJiggle_property_jiggle_data_chain_length>` | ``0``             |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`mass<class_SkeletonModification2DJiggle_property_mass>`                                         | ``0.75``          |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`stiffness<class_SkeletonModification2DJiggle_property_stiffness>`                               | ``3.0``           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DJiggle_property_target_nodepath>`                   | ``NodePath("")``  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`         | :ref:`use_gravity<class_SkeletonModification2DJiggle_property_use_gravity>`                           | ``false``         |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_collision_mask<class_SkeletonModification2DJiggle_method_get_collision_mask>`\ (\ ) |const|                                                                                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_jiggle_joint_bone2d_node<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_jiggle_joint_bone_index<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                          |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_damping<class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`get_jiggle_joint_gravity<class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_mass<class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                      |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_jiggle_joint_override<class_SkeletonModification2DJiggle_method_get_jiggle_joint_override>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_stiffness<class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                            |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_jiggle_joint_use_gravity<class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_use_colliders<class_SkeletonModification2DJiggle_method_get_use_colliders>`\ (\ ) |const|                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_collision_mask<class_SkeletonModification2DJiggle_method_set_collision_mask>`\ (\ collision_mask\: :ref:`int<class_int>`\ )                                                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_bone2d_node<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_bone_index<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_damping<class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping>`\ (\ joint_idx\: :ref:`int<class_int>`, damping\: :ref:`float<class_float>`\ )                   |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_gravity<class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`, gravity\: :ref:`Vector2<class_Vector2>`\ )               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_mass<class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass>`\ (\ joint_idx\: :ref:`int<class_int>`, mass\: :ref:`float<class_float>`\ )                            |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_override<class_SkeletonModification2DJiggle_method_set_jiggle_joint_override>`\ (\ joint_idx\: :ref:`int<class_int>`, override\: :ref:`bool<class_bool>`\ )                  |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_stiffness<class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness>`\ (\ joint_idx\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ )             |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_use_gravity<class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`, use_gravity\: :ref:`bool<class_bool>`\ )         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_use_colliders<class_SkeletonModification2DJiggle_method_set_use_colliders>`\ (\ use_colliders\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SkeletonModification2DJiggle_property_damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping** = ``0.75`` :ref:`🔗<class_SkeletonModification2DJiggle_property_damping>`

.. rst-class:: classref-property-setget

- |void| **set_damping**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping**\ (\ )

未被覆盖时，Jiggle 关节所受到的默认阻尼大小。值约高，所应用的计算得到的速度也就约多。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_gravity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity** = ``Vector2(0, 6)`` :ref:`🔗<class_SkeletonModification2DJiggle_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity**\ (\ )

未被覆盖时，Jiggle 关节所受到的默认重力大小。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_jiggle_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **jiggle_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DJiggle_property_jiggle_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_jiggle_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_jiggle_data_chain_length**\ (\ )

该 Jiggle 修改器中的 Jiggle 关节的数量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``0.75`` :ref:`🔗<class_SkeletonModification2DJiggle_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

未被覆盖时，Jiggle 关节所分配的默认质量大小。值约高，移动速度也就约快，超出的距离也就越大。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **stiffness** = ``3.0`` :ref:`🔗<class_SkeletonModification2DJiggle_property_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stiffness**\ (\ )

未被覆盖时，Jiggle 关节所分配的默认刚度大小。值约高越像弹簧，会很快到达正确的位置。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DJiggle_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

该 Jiggle 修改器目标节点的 NodePath 路径。这个节点是 Jiggle 链所要旋转至的目标。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_use_gravity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_gravity** = ``false`` :ref:`🔗<class_SkeletonModification2DJiggle_property_use_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_use_gravity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_gravity**\ (\ )

假设 Jiggle 关节没有覆盖默认设置的前提下，是否应该对这些关节施加重力向量 :ref:`gravity<class_SkeletonModification2DJiggle_property_gravity>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SkeletonModification2DJiggle_method_get_collision_mask:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_mask**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_collision_mask>`

返回在启用碰撞时 Jiggle 修改器所使用的碰撞掩码。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_jiggle_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node>`

返回 ``joint_idx`` 处 Jiggle 关节所分配的 :ref:`Bone2D<class_Bone2D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_jiggle_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index>`

返回 ``joint_idx`` 处 Jiggle 关节所分配 :ref:`Bone2D<class_Bone2D>` 节点的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_damping**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping>`

返回 ``joint_idx`` 处 Jiggle 关节的阻尼大小。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_jiggle_joint_gravity**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity>`

返回表示 ``joint_idx`` 处 Jiggle 关节所受到的重力的 :ref:`Vector2<class_Vector2>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_mass**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass>`

返回 ``joint_idx`` 处 Jiggle 关节的质量大小。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_jiggle_joint_override**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_override>`

返回表示 ``joint_idx`` 处 Jiggle 关节是否覆盖修改器中定义的默认 Jiggle 关节数据的布尔值。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_stiffness**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness>`

返回 ``joint_idx`` 处 Jiggle 关节的刚度。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_jiggle_joint_use_gravity**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity>`

返回表示 ``joint_idx`` 处 Jiggle 关节是否使用重力的布尔值。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_use_colliders:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_colliders**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_use_colliders>`

返回 Jiggle 修改器在求解时是否考虑物理碰撞器。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_collision_mask:

.. rst-class:: classref-method

|void| **set_collision_mask**\ (\ collision_mask\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_collision_mask>`

在 Jiggle 修改器被设为考虑碰撞器时，设置该 Jiggle 修改器所需作出反应的碰撞器的碰撞掩码。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_jiggle_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node>`

设置 ``joint_idx`` 处 Jiggle 关节所分配的 :ref:`Bone2D<class_Bone2D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index:

.. rst-class:: classref-method

|void| **set_jiggle_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index>`

设置 ``joint_idx`` 处 Jiggle 关节的骨骼索引 ``bone_idx``\ 。如果适用，还会根据所链接骨架提供的数据来更新 Jiggle 关节的 ``bone2d_node``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping:

.. rst-class:: classref-method

|void| **set_jiggle_joint_damping**\ (\ joint_idx\: :ref:`int<class_int>`, damping\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping>`

设置 ``joint_idx`` 处 Jiggle 关节的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity:

.. rst-class:: classref-method

|void| **set_jiggle_joint_gravity**\ (\ joint_idx\: :ref:`int<class_int>`, gravity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity>`

设置 ``joint_idx`` 处 Jiggle 关节的重力向量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass:

.. rst-class:: classref-method

|void| **set_jiggle_joint_mass**\ (\ joint_idx\: :ref:`int<class_int>`, mass\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass>`

设置 ``joint_idx`` 处 Jiggle 关节的质量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_override:

.. rst-class:: classref-method

|void| **set_jiggle_joint_override**\ (\ joint_idx\: :ref:`int<class_int>`, override\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_override>`

设置 ``joint_idx`` 处 Jiggle 关节是否应覆盖默认 Jiggle 关节设置。设置为 ``true`` 会使该关节使用自身的设置，不使用附加至修改器的设置。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness:

.. rst-class:: classref-method

|void| **set_jiggle_joint_stiffness**\ (\ joint_idx\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness>`

设置 ``joint_idx`` 处 Jiggle 关节的刚度。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity:

.. rst-class:: classref-method

|void| **set_jiggle_joint_use_gravity**\ (\ joint_idx\: :ref:`int<class_int>`, use_gravity\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity>`

设置 ``joint_idx`` 处 Jiggle 关节是否应使用重力。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_use_colliders:

.. rst-class:: classref-method

|void| **set_use_colliders**\ (\ use_colliders\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_use_colliders>`

如果为 ``true``\ ，则 Jiggle 修改器将考虑碰撞器，防止它们进入这些碰撞对象。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
