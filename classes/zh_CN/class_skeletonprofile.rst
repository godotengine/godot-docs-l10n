:github_url: hide

.. _class_SkeletonProfile:

SkeletonProfile
===============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>`

用作重定向目标的虚拟骨架的配置文件的基类。

.. rst-class:: classref-introduction-group

描述
----

这个资源在 :ref:`EditorScenePostImport<class_EditorScenePostImport>` 中使用。一些参数是指 :ref:`Skeleton3D<class_Skeleton3D>`\ 、\ :ref:`Skin<class_Skin>`\ 、\ :ref:`Animation<class_Animation>` 中的骨骼，还有一些节点是根据 **SkeletonProfile** 中的参数改写的。

\ **注意：**\ 只有在创建自定义配置时这些参数才需要被设置。在 :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` 中，它们在内部被定义为只读值。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`重定向 3D 骨架 <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`               | :ref:`bone_size<class_SkeletonProfile_property_bone_size>`             | ``0``   |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`               | :ref:`group_size<class_SkeletonProfile_property_group_size>`           | ``0``   |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StringName<class_StringName>` | :ref:`root_bone<class_SkeletonProfile_property_root_bone>`             | ``&""`` |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StringName<class_StringName>` | :ref:`scale_base_bone<class_SkeletonProfile_property_scale_base_bone>` | ``&""`` |
   +-------------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`find_bone<class_SkeletonProfile_method_find_bone>`\ (\ bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                       |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_name<class_SkeletonProfile_method_get_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_parent<class_SkeletonProfile_method_get_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                          |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_tail<class_SkeletonProfile_method_get_bone_tail>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_group<class_SkeletonProfile_method_get_group>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_group_name<class_SkeletonProfile_method_get_group_name>`\ (\ group_idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_handle_offset<class_SkeletonProfile_method_get_handle_offset>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                      |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                    | :ref:`get_reference_pose<class_SkeletonProfile_method_get_reference_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TailDirection<enum_SkeletonProfile_TailDirection>` | :ref:`get_tail_direction<class_SkeletonProfile_method_get_tail_direction>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                        | :ref:`get_texture<class_SkeletonProfile_method_get_texture>`\ (\ group_idx\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_required<class_SkeletonProfile_method_is_required>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_name<class_SkeletonProfile_method_set_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_parent<class_SkeletonProfile_method_set_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_parent\: :ref:`StringName<class_StringName>`\ )                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_tail<class_SkeletonProfile_method_set_bone_tail>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_tail\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_group<class_SkeletonProfile_method_set_group>`\ (\ bone_idx\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`\ )                                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_group_name<class_SkeletonProfile_method_set_group_name>`\ (\ group_idx\: :ref:`int<class_int>`, group_name\: :ref:`StringName<class_StringName>`\ )                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_handle_offset<class_SkeletonProfile_method_set_handle_offset>`\ (\ bone_idx\: :ref:`int<class_int>`, handle_offset\: :ref:`Vector2<class_Vector2>`\ )                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_reference_pose<class_SkeletonProfile_method_set_reference_pose>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`Transform3D<class_Transform3D>`\ )                         |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_required<class_SkeletonProfile_method_set_required>`\ (\ bone_idx\: :ref:`int<class_int>`, required\: :ref:`bool<class_bool>`\ )                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_tail_direction<class_SkeletonProfile_method_set_tail_direction>`\ (\ bone_idx\: :ref:`int<class_int>`, tail_direction\: :ref:`TailDirection<enum_SkeletonProfile_TailDirection>`\ ) |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_texture<class_SkeletonProfile_method_set_texture>`\ (\ group_idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                            |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_SkeletonProfile_signal_profile_updated:

.. rst-class:: classref-signal

**profile_updated**\ (\ ) :ref:`🔗<class_SkeletonProfile_signal_profile_updated>`

更改配置中的值时会发出该信号。这被用于更新 :ref:`BoneMap<class_BoneMap>` 中的键名并重绘 :ref:`BoneMap<class_BoneMap>` 编辑器。

\ **注意：**\ 为了简化引用，这个信号没有直接连接到编辑器，而是通过 :ref:`BoneMap<class_BoneMap>` 传递给编辑器。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_SkeletonProfile_TailDirection:

.. rst-class:: classref-enumeration

enum **TailDirection**: :ref:`🔗<enum_SkeletonProfile_TailDirection>`

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_AVERAGE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_AVERAGE_CHILDREN** = ``0``

子级骨骼平均坐标的方向。

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_SPECIFIC_CHILD:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_SPECIFIC_CHILD** = ``1``

指定子级骨骼坐标的方向。

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_END:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_END** = ``2``

不计算方向。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SkeletonProfile_property_bone_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_size** = ``0`` :ref:`🔗<class_SkeletonProfile_property_bone_size>`

.. rst-class:: classref-property-setget

- |void| **set_bone_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_size**\ (\ )

重定向部分的 :ref:`BoneMap<class_BoneMap>` 编辑器中的骨骼数量。例如，\ :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` 有 56 块骨头。

\ :ref:`BoneMap<class_BoneMap>` 中元素的大小在其分配的 **SkeletonProfile** 中更改该属性时更新。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_group_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **group_size** = ``0`` :ref:`🔗<class_SkeletonProfile_property_group_size>`

.. rst-class:: classref-property-setget

- |void| **set_group_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_group_size**\ (\ )

重定向部分的 :ref:`BoneMap<class_BoneMap>` 编辑器中的骨骼组的数量。例如，\ :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` 有 4 个组。

这个属性的存在是为了在编辑器中把骨骼列表分成几个部分。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonProfile_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

会被用作 :ref:`AnimationTree<class_AnimationTree>` 中根骨骼的骨骼名称。应该是髋部父级的骨骼，位于世界原点。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_scale_base_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **scale_base_bone** = ``&""`` :ref:`🔗<class_SkeletonProfile_property_scale_base_bone>`

.. rst-class:: classref-property-setget

- |void| **set_scale_base_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_scale_base_bone**\ (\ )

骨骼的名称，将使用模型的高度作为归一化的系数。例如，\ :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` 将其定义为 ``Hips`` 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SkeletonProfile_method_find_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_bone**\ (\ bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_find_bone>`

返回名称与 ``bone_name`` 匹配的骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_name>`

返回位于 ``bone_idx`` 的骨骼的名称，会成为 :ref:`BoneMap<class_BoneMap>` 中的键名。

在重定向过程中，返回的骨骼名称是目标骨架中的骨骼名称。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_parent:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_parent>`

返回位于 ``bone_idx`` 的骨骼的父级骨骼的名称。如果该骨骼没有父级，则结果为空。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_tail:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_tail**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_tail>`

返回 ``bone_idx`` 处骨骼的尾部骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_group:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_group**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_group>`

返回索引为 ``bone_idx`` 的骨骼的分组。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_group_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_group_name**\ (\ group_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_group_name>`

返回 ``group_idx`` 处的组的名称，该组将成为 :ref:`BoneMap<class_BoneMap>` 编辑器中的绘制组。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_handle_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_handle_offset**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_handle_offset>`

返回在 ``bone_idx`` 处的骨骼的偏移量，这将是 :ref:`BoneMap<class_BoneMap>` 编辑器中的按钮位置。

这是一个偏移量，原点在正方形的左上角。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_reference_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_reference_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_reference_pose>`

返回索引为 ``bone_idx`` 的骨骼的参考姿势变换。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_tail_direction:

.. rst-class:: classref-method

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **get_tail_direction**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_tail_direction>`

返回索引为 ``bone_idx`` 的骨骼的尾部方向。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ group_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_texture>`

返回 ``group_idx`` 处的组的纹理，该组将作为 :ref:`BoneMap<class_BoneMap>` 编辑器中的绘制组的背景图像。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_is_required:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_required**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_is_required>`

返回 ``bone_idx`` 处的骨骼是否需要重定目标。

该值由骨骼贴图编辑器使用。如果该方法返回 ``true``\ ，且未分配骨骼，则骨骼贴图编辑器上的控制柄颜色将为红色。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_name:

.. rst-class:: classref-method

|void| **set_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_name>`

设置在 ``bone_idx`` 处的骨骼的名称，这将是 :ref:`BoneMap<class_BoneMap>` 中的键名。

在重定向过程中，设置的骨骼名称是目标骨架的骨骼名称。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_parent:

.. rst-class:: classref-method

|void| **set_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`, bone_parent\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_parent>`

将名称为 ``bone_parent`` 的骨骼设置为索引为 ``bone_idx`` 的骨骼的父级。如果传入的是空字符串，则该骨骼没有父级。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_tail:

.. rst-class:: classref-method

|void| **set_bone_tail**\ (\ bone_idx\: :ref:`int<class_int>`, bone_tail\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_tail>`

将名称为 ``bone_tail`` 的骨骼设置为索引为 ``bone_idx`` 的骨骼的尾部。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_group:

.. rst-class:: classref-method

|void| **set_group**\ (\ bone_idx\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_group>`

设置索引为 ``bone_idx`` 的骨骼的分组。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_group_name:

.. rst-class:: classref-method

|void| **set_group_name**\ (\ group_idx\: :ref:`int<class_int>`, group_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_group_name>`

设置在 ``group_idx`` 处的组的名称，这将是 :ref:`BoneMap<class_BoneMap>` 编辑器中的绘制组。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_handle_offset:

.. rst-class:: classref-method

|void| **set_handle_offset**\ (\ bone_idx\: :ref:`int<class_int>`, handle_offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_handle_offset>`

设置在 ``bone_idx`` 处的骨骼的偏移量，这将是 :ref:`BoneMap<class_BoneMap>` 编辑器中的按钮位置。

这是原点在正方形左上角的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_reference_pose:

.. rst-class:: classref-method

|void| **set_reference_pose**\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_reference_pose>`

设置骨骼 ``bone_idx`` 的参考姿势变换。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_required:

.. rst-class:: classref-method

|void| **set_required**\ (\ bone_idx\: :ref:`int<class_int>`, required\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_required>`

将骨骼 ``bone_idx`` 的所需状态设置为 ``required``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_tail_direction:

.. rst-class:: classref-method

|void| **set_tail_direction**\ (\ bone_idx\: :ref:`int<class_int>`, tail_direction\: :ref:`TailDirection<enum_SkeletonProfile_TailDirection>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_tail_direction>`

设置在 ``bone_idx`` 处的骨骼的尾部方向。

\ **注意：**\ 这里只规定了计算方法。所需的实际坐标应该存储在外部骨架中，因此计算本身需要在外部完成。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_texture:

.. rst-class:: classref-method

|void| **set_texture**\ (\ group_idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_texture>`

设置在 ``group_idx`` 处的组的纹理，这将是 :ref:`BoneMap<class_BoneMap>` 编辑器中绘制组的背景图像。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
