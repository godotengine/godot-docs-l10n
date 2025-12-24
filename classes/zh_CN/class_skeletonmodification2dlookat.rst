:github_url: hide

.. _class_SkeletonModification2DLookAt:

SkeletonModification2DLookAt
============================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

对 :ref:`Bone2D<class_Bone2D>` 节点进行旋转，让它看向某个目标的修改器。

.. rst-class:: classref-introduction-group

描述
----

这种 :ref:`SkeletonModification2D<class_SkeletonModification2D>` 会对骨骼进行旋转，让它看向某个目标。适合让角色的头部看向玩家、让炮塔看向目标以及其他需要让骨骼朝某个东西快速旋转的情况。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`bone2d_node<class_SkeletonModification2DLookAt_property_bone2d_node>`         | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`bone_index<class_SkeletonModification2DLookAt_property_bone_index>`           | ``-1``           |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DLookAt_property_target_nodepath>` | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_additional_rotation<class_SkeletonModification2DLookAt_method_get_additional_rotation>`\ (\ ) |const|                                   |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_constraint_angle_invert<class_SkeletonModification2DLookAt_method_get_constraint_angle_invert>`\ (\ ) |const|                           |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_constraint_angle_max<class_SkeletonModification2DLookAt_method_get_constraint_angle_max>`\ (\ ) |const|                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_constraint_angle_min<class_SkeletonModification2DLookAt_method_get_constraint_angle_min>`\ (\ ) |const|                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_enable_constraint<class_SkeletonModification2DLookAt_method_get_enable_constraint>`\ (\ ) |const|                                       |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_additional_rotation<class_SkeletonModification2DLookAt_method_set_additional_rotation>`\ (\ rotation\: :ref:`float<class_float>`\ )     |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_invert<class_SkeletonModification2DLookAt_method_set_constraint_angle_invert>`\ (\ invert\: :ref:`bool<class_bool>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_max<class_SkeletonModification2DLookAt_method_set_constraint_angle_max>`\ (\ angle_max\: :ref:`float<class_float>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_min<class_SkeletonModification2DLookAt_method_set_constraint_angle_min>`\ (\ angle_min\: :ref:`float<class_float>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_enable_constraint<class_SkeletonModification2DLookAt_method_set_enable_constraint>`\ (\ enable_constraint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SkeletonModification2DLookAt_property_bone2d_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **bone2d_node** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DLookAt_property_bone2d_node>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_bone2d_node**\ (\ )

要修改的 :ref:`Bone2D<class_Bone2D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_property_bone_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_index** = ``-1`` :ref:`🔗<class_SkeletonModification2DLookAt_property_bone_index>`

.. rst-class:: classref-property-setget

- |void| **set_bone_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_index**\ (\ )

要执行修改的 :ref:`Bone2D<class_Bone2D>` 节点的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DLookAt_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

作为 LookAt 修改目标的节点的 NodePath。该节点是该修改将 :ref:`Bone2D<class_Bone2D>` 旋转到的节点。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SkeletonModification2DLookAt_method_get_additional_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_additional_rotation**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_additional_rotation>`

返回执行 LookAt 修改后被应用的额外旋转的量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_invert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_constraint_angle_invert**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_invert>`

返回该修改的约束是否反转。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constraint_angle_max**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_max>`

返回该约束允许的最大角度。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constraint_angle_min**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_min>`

返回该约束允许的最小角度。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_enable_constraint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_enable_constraint**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_enable_constraint>`

如果该 LookAt 修改器正在使用约束，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_additional_rotation:

.. rst-class:: classref-method

|void| **set_additional_rotation**\ (\ rotation\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_additional_rotation>`

设置执行该修改后要被应用的额外旋转的量。这允许将结果偏移输入的旋转量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_invert:

.. rst-class:: classref-method

|void| **set_constraint_angle_invert**\ (\ invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_invert>`

当为 ``true`` 时，修改将使用一个反转的关节约束。

反转的关节约束仅将该 :ref:`Bone2D<class_Bone2D>` 约束到输入的最小角度和最大角度\ *之外*\ 的角度。出于这个原因，它被称为反向关节约束，因为它将关节约束在输入值的外部。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_max:

.. rst-class:: classref-method

|void| **set_constraint_angle_max**\ (\ angle_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_max>`

设置该约束允许的最大角度。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_min:

.. rst-class:: classref-method

|void| **set_constraint_angle_min**\ (\ angle_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_min>`

设置该约束允许的最小角度。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_enable_constraint:

.. rst-class:: classref-method

|void| **set_enable_constraint**\ (\ enable_constraint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_enable_constraint>`

设置此修改器是否使用约束。为 ``true`` 时，会在求解 LookAt 修改器时应用约束。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
