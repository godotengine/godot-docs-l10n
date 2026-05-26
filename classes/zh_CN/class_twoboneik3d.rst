:github_url: hide

.. _class_TwoBoneIK3D:

TwoBoneIK3D
===========

**继承：** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基于旋转的两圆相交反向动力学求解器。

.. rst-class:: classref-introduction-group

描述
----

This :ref:`IKModifier3D<class_IKModifier3D>` requires a pole target. It provides deterministic results by constructing a plane from each joint and pole target and finding the intersection of two circles (disks in 3D).

This IK can handle twist by setting the pole direction. If there are more than one bone between each set bone, their rotations are ignored, and the straight line connecting the root-middle and middle-end joints are treated as virtual bones.

\ **Note:** All the methods in this class take an ``index`` parameter. This parameter specifies which setting list entry to return if the IK has multiple entries (e.g. ``settings/<index>/root_bone_name``).

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_TwoBoneIK3D_property_setting_count>` | ``0`` |
   +-----------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_end_bone<class_TwoBoneIK3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`           | :ref:`get_end_bone_direction<class_TwoBoneIK3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`get_end_bone_length<class_TwoBoneIK3D_method_get_end_bone_length>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_end_bone_name<class_TwoBoneIK3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_middle_bone<class_TwoBoneIK3D_method_get_middle_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_middle_bone_name<class_TwoBoneIK3D_method_get_middle_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` | :ref:`get_pole_direction<class_TwoBoneIK3D_method_get_pole_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_pole_direction_vector<class_TwoBoneIK3D_method_get_pole_direction_vector>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                       | :ref:`get_pole_node<class_TwoBoneIK3D_method_get_pole_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_root_bone<class_TwoBoneIK3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_root_bone_name<class_TwoBoneIK3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                       | :ref:`get_target_node<class_TwoBoneIK3D_method_get_target_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_end_bone_extended<class_TwoBoneIK3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_using_virtual_end<class_TwoBoneIK3D_method_is_using_virtual_end>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone<class_TwoBoneIK3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_direction<class_TwoBoneIK3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_length<class_TwoBoneIK3D_method_set_end_bone_length>`\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ )                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_name<class_TwoBoneIK3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_extend_end_bone<class_TwoBoneIK3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_middle_bone<class_TwoBoneIK3D_method_set_middle_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_middle_bone_name<class_TwoBoneIK3D_method_set_middle_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_direction<class_TwoBoneIK3D_method_set_pole_direction>`\ (\ index\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ )    |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_direction_vector<class_TwoBoneIK3D_method_set_pole_direction_vector>`\ (\ index\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ )                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_node<class_TwoBoneIK3D_method_set_pole_node>`\ (\ index\: :ref:`int<class_int>`, pole_node\: :ref:`NodePath<class_NodePath>`\ )                                                    |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_root_bone<class_TwoBoneIK3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                   |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_root_bone_name<class_TwoBoneIK3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_target_node<class_TwoBoneIK3D_method_set_target_node>`\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ )                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_use_virtual_end<class_TwoBoneIK3D_method_set_use_virtual_end>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TwoBoneIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_TwoBoneIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

设置的数量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TwoBoneIK3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone>`

返回末端骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_direction>`

当 :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` 为 ``true`` 时，返回末端骨骼的尾部方向。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_end_bone_length**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_length>`

当 :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` 为 ``true`` 时，返回骨骼链的末端骨骼尾部长度。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_name>`

返回末端骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_middle_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_middle_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_middle_bone>`

返回中间骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_middle_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_middle_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_middle_bone_name>`

返回中间骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_direction:

.. rst-class:: classref-method

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **get_pole_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_direction>`

返回极点方向。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_direction_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_pole_direction_vector**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_direction_vector>`

返回极点方向向量。

如果 :ref:`get_pole_direction()<class_TwoBoneIK3D_method_get_pole_direction>` 为 :ref:`SkeletonModifier3D.SECONDARY_DIRECTION_NONE<class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE>`\ ，则该方法返回 ``Vector3(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_pole_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_node>`

返回极点目标节点，该节点构建一个平面，所有关节都位于该平面上，并且极点试图指向该平面。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_root_bone>`

返回根骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_root_bone_name>`

返回根骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_target_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_target_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_target_node>`

返回末端骨骼试图到达的目标节点。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_is_end_bone_extended>`

如果末端骨骼被扩展形成尾部，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_is_using_virtual_end:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_virtual_end**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_is_using_virtual_end>`

如果末端骨骼作为虚拟骨骼从中间骨骼延伸出来，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone>`

设置末端骨骼索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_direction>`

当 :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` 为 ``true`` 时，设置末端骨骼的尾部方向。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_length:

.. rst-class:: classref-method

|void| **set_end_bone_length**\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_length>`

当 :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` 为 ``true`` 时，设置末端骨骼的尾部长度。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_name>`

设置末端骨骼的名称。

\ **注意：**\ 末端骨骼必须是中间骨骼的子级。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_extend_end_bone>`

如果 ``enabled`` 为 ``true``\ ，则末端骨骼会延伸出一条尾巴。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_middle_bone:

.. rst-class:: classref-method

|void| **set_middle_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_middle_bone>`

设置中间骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_middle_bone_name:

.. rst-class:: classref-method

|void| **set_middle_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_middle_bone_name>`

设置中间骨骼的名称。

\ **注意：**\ 中间骨骼必须是根骨骼的子级。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_direction:

.. rst-class:: classref-method

|void| **set_pole_direction**\ (\ index\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_direction>`

设置极点方向。

极点位于中间骨骼上，并指向极点目标。

旋转轴是一个与该向量和前向向量正交的向量。

\ **注意：**\ 极点方向和前向向量不应共线，以避免意外旋转。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_direction_vector:

.. rst-class:: classref-method

|void| **set_pole_direction_vector**\ (\ index\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_direction_vector>`

设置极点方向向量。

该向量会经过内部处理进行归一化。

如果向量长度为 ``0``\ ，则被视为与 :ref:`SkeletonModifier3D.SECONDARY_DIRECTION_NONE<class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE>` 同义。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_node:

.. rst-class:: classref-method

|void| **set_pole_node**\ (\ index\: :ref:`int<class_int>`, pole_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_node>`

设置极点目标节点，该节点构建一个平面，所有关节都位于该平面上，极点试图指向该平面。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_root_bone>`

设置根骨骼索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_root_bone_name>`

设置根骨骼名称。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_target_node:

.. rst-class:: classref-method

|void| **set_target_node**\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_target_node>`

设置末端骨骼试图到达的目标节点。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_use_virtual_end:

.. rst-class:: classref-method

|void| **set_use_virtual_end**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_use_virtual_end>`

如果 ``enabled`` 为 ``true``\ ，则末端骨骼将从中间骨骼延伸为虚拟骨骼。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
