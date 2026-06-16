:github_url: hide

.. _class_IterateIK3D:

IterateIK3D
===========

**继承：** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`CCDIK3D<class_CCDIK3D>`, :ref:`FABRIK3D<class_FABRIK3D>`, :ref:`JacobianIK3D<class_JacobianIK3D>`

通过重复进行小幅度旋转来逐步接近目标的 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ 。

.. rst-class:: classref-introduction-group

描述
----

这是 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` 的一个基类，它通过反复进行微小的旋转来逐步逼近目标位置。

每个骨骼链（也就是每个设置项）都有一个效应器（effector），这些效应器会按照设置列表的顺序依次进行处理。你可以为每个关节设置一些限制条件。

\ **注意：** 这个类里的所有方法都带有一个 ``index``\ （索引）参数。这个参数用来指定当 IK 包含多个设置项时，具体返回哪一个（比如 ``settings//target_node``\ ）。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`float<class_float>` | :ref:`angular_delta_limit<class_IterateIK3D_property_angular_delta_limit>` | ``0.034906585`` |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`bool<class_bool>`   | :ref:`deterministic<class_IterateIK3D_property_deterministic>`             | ``false``       |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`int<class_int>`     | :ref:`max_iterations<class_IterateIK3D_property_max_iterations>`           | ``4``           |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`float<class_float>` | :ref:`min_distance<class_IterateIK3D_property_min_distance>`               | ``0.001``       |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`int<class_int>`     | :ref:`setting_count<class_IterateIK3D_property_setting_count>`             | ``0``           |
   +---------------------------+----------------------------------------------------------------------------+-----------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JointLimitation3D<class_JointLimitation3D>`                     | :ref:`get_joint_limitation<class_IterateIK3D_method_get_joint_limitation>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` | :ref:`get_joint_limitation_right_axis<class_IterateIK3D_method_get_joint_limitation_right_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_joint_limitation_right_axis_vector<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                                   | :ref:`get_joint_limitation_rotation_offset<class_IterateIK3D_method_get_joint_limitation_rotation_offset>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`             | :ref:`get_joint_rotation_axis<class_IterateIK3D_method_get_joint_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_joint_rotation_axis_vector<class_IterateIK3D_method_get_joint_rotation_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                       | :ref:`get_target_node<class_IterateIK3D_method_get_target_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation<class_IterateIK3D_method_set_joint_limitation>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, limitation\: :ref:`JointLimitation3D<class_JointLimitation3D>`\ )                                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation_right_axis<class_IterateIK3D_method_set_joint_limitation_right_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ ) |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation_right_axis_vector<class_IterateIK3D_method_set_joint_limitation_right_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ )                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation_rotation_offset<class_IterateIK3D_method_set_joint_limitation_rotation_offset>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, offset\: :ref:`Quaternion<class_Quaternion>`\ )                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_rotation_axis<class_IterateIK3D_method_set_joint_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis\: :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`\ )                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_rotation_axis_vector<class_IterateIK3D_method_set_joint_rotation_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis_vector\: :ref:`Vector3<class_Vector3>`\ )                                         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_target_node<class_IterateIK3D_method_set_target_node>`\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ )                                                                                                    |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_IterateIK3D_property_angular_delta_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_delta_limit** = ``0.034906585`` :ref:`🔗<class_IterateIK3D_property_angular_delta_limit>`

.. rst-class:: classref-property-setget

- |void| **set_angular_delta_limit**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_delta_limit**\ (\ )

单次迭代中每根骨骼可以旋转的最大角度。

\ **注意：**\ 该限制在每次迭代中都会应用。例如，如果 :ref:`max_iterations<class_IterateIK3D_property_max_iterations>` 为 ``4``\ ，\ :ref:`angular_delta_limit<class_IterateIK3D_property_angular_delta_limit>` 为 ``5`` 度，则单帧中可能的最大旋转角度为 ``20`` 度。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_deterministic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deterministic** = ``false`` :ref:`🔗<class_IterateIK3D_property_deterministic>`

.. rst-class:: classref-property-setget

- |void| **set_deterministic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deterministic**\ (\ )

如果为 ``false``\ ，则结果将以前一帧的 **IterateIK3D** 结果作为初始状态进行计算。

如果为 ``true``\ ，则会丢弃前一帧的 **IterateIK3D** 结果。此时，新的结果将以除 **IterateIK3D** 之外的骨骼姿势作为初始状态进行计算。这意味着只要目标位置和之前的骨骼姿势相同，结果就始终相同。但是，如果 :ref:`angular_delta_limit<class_IterateIK3D_property_angular_delta_limit>` 和 :ref:`max_iterations<class_IterateIK3D_property_max_iterations>` 设置得太小，骨骼链的末端骨骼将永远无法到达目标位置。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_max_iterations:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_iterations** = ``4`` :ref:`🔗<class_IterateIK3D_property_max_iterations>`

.. rst-class:: classref-property-setget

- |void| **set_max_iterations**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_iterations**\ (\ )

IK 求解器用于生成更精确结果的迭代循环次数。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_min_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_distance** = ``0.001`` :ref:`🔗<class_IterateIK3D_property_min_distance>`

.. rst-class:: classref-property-setget

- |void| **set_min_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_distance**\ (\ )

末端骨骼与目标位置之间的最小距离。如果距离小于此值，IK 求解器将停止进一步迭代。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_IterateIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

设置的数量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_IterateIK3D_method_get_joint_limitation:

.. rst-class:: classref-method

:ref:`JointLimitation3D<class_JointLimitation3D>` **get_joint_limitation**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation>`

返回骨骼链关节列表中 ``joint`` 的关节限制。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_limitation_right_axis:

.. rst-class:: classref-method

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **get_joint_limitation_right_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation_right_axis>`

返回骨骼链关节列表中 ``joint`` 处的关节限制右轴。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_limitation_right_axis_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_joint_limitation_right_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>`

返回骨骼链关节列表中 ``joint`` 处关节的右轴限制向量。

如果 :ref:`get_joint_limitation_right_axis()<class_IterateIK3D_method_get_joint_limitation_right_axis>` 为 :ref:`SkeletonModifier3D.SECONDARY_DIRECTION_NONE<class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE>`\ ，则该方法返回 ``Vector3(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_limitation_rotation_offset:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_joint_limitation_rotation_offset**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation_rotation_offset>`

返回骨骼链关节列表中，指定 ``joint``\ （关节）处的关节限制旋转偏移量。

该旋转是在局部空间中进行的，这个局部空间的构建规则如下：以骨骼的朝向（通常是从父节点指向子节点）作为 +Y 轴，以 :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` 作为 +X 轴。

如果 +X 轴和 +Y 轴不垂直（正交），系统会自动修改 +X 轴，使其与 +Y 轴保持垂直。

此外，如果 :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` 的长度为零，系统会通过“最短弧”旋转的方式，将参考姿态（reference pose）中原本的 +Y 轴旋转至与当前骨骼朝向一致，以此构建出该局部空间。

这里的“参考姿态”，指的是在处理 IK（反向运动学）之前的那一瞬间的骨骼姿态。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_rotation_axis:

.. rst-class:: classref-method

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **get_joint_rotation_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_rotation_axis>`

返回骨骼链关节列表中 ``joint`` 关节的旋转轴。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_rotation_axis_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_joint_rotation_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_rotation_axis_vector>`

返回骨骼链中指定关节的旋转轴向量。该向量表示关节可以绕其旋转的轴。它根据为该关节设置的旋转轴确定。

如果 :ref:`get_joint_rotation_axis()<class_IterateIK3D_method_get_joint_rotation_axis>` 为 :ref:`SkeletonModifier3D.ROTATION_AXIS_ALL<class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL>`\ ，则该方法返回 ``Vector3(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_target_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_target_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_target_node>`

返回末端骨骼试图到达的目标节点。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation:

.. rst-class:: classref-method

|void| **set_joint_limitation**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, limitation\: :ref:`JointLimitation3D<class_JointLimitation3D>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation>`

设置骨骼链关节列表中 ``joint`` 处的关节限制。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation_right_axis:

.. rst-class:: classref-method

|void| **set_joint_limitation_right_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation_right_axis>`

设置骨骼链关节列表中 ``joint`` 处的关节限制右轴。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation_right_axis_vector:

.. rst-class:: classref-method

|void| **set_joint_limitation_right_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation_right_axis_vector>`

设置骨骼链关节列表中 ``joint`` 处的可选关节限制右轴向量。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation_rotation_offset:

.. rst-class:: classref-method

|void| **set_joint_limitation_rotation_offset**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, offset\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation_rotation_offset>`

设置骨骼链关节列表中，指定 ``joint``\ （关节）处的关节限制旋转偏移量。

旋转是在局部空间中进行的，这个局部空间的构建规则如下：以骨骼的朝向（通常是从父节点指向子节点）作为 +Y 轴，以 :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` 作为 +X 轴。

如果 +X 轴和 +Y 轴不垂直（正交），系统会自动修改 +X 轴，使其与 +Y 轴保持垂直。

此外，如果 :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` 的长度为零，系统会通过“最短弧”旋转的方式，将参考姿态（reference pose）中原本的 +Y 轴旋转至与当前骨骼朝向一致，以此构建出该局部空间。

这里的“参考姿态”，指的是在处理 IK（反向运动学）之前的那一瞬间的骨骼姿态。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_rotation_axis:

.. rst-class:: classref-method

|void| **set_joint_rotation_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis\: :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_rotation_axis>`

设置骨骼链关节列表中 ``joint`` 处的旋转轴。

这些轴基于参考姿势的空间，如果 ``axis`` 为 :ref:`SkeletonModifier3D.ROTATION_AXIS_CUSTOM<class_SkeletonModifier3D_constant_ROTATION_AXIS_CUSTOM>`\ ，则可以指定任意轴。

此处，参考姿势是指处理 IK 之前的骨骼姿势。

\ **注意：**\ 旋转轴和前向向量不应共线，以避免意外旋转，因为 :ref:`ChainIK3D<class_ChainIK3D>` 不考虑扭转力。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_rotation_axis_vector:

.. rst-class:: classref-method

|void| **set_joint_rotation_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis_vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_rotation_axis_vector>`

设置骨骼链中指定关节的旋转轴向量。

该向量会经过内部处理进行归一化，并代表骨骼链可以围绕其旋转的轴。

如果向量长度为 ``0``\ ，则被视为等同于 :ref:`SkeletonModifier3D.ROTATION_AXIS_ALL<class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_target_node:

.. rst-class:: classref-method

|void| **set_target_node**\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_IterateIK3D_method_set_target_node>`

设置末端骨骼试图到达的目标节点。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
