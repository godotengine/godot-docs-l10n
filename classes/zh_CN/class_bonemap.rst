:github_url: hide

.. _class_BoneMap:

BoneMap
=======

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

描述骨骼名称的映射，用于将 :ref:`Skeleton3D<class_Skeleton3D>` 重定向至 :ref:`SkeletonProfile<class_SkeletonProfile>` 中定义的通用名称。

.. rst-class:: classref-introduction-group

描述
----

这个类中有一个字典，使用 :ref:`SkeletonProfile<class_SkeletonProfile>` 中的骨骼名称作为键名。

将实际的 :ref:`Skeleton3D<class_Skeleton3D>` 骨骼名称赋为键值后，就会将 :ref:`Skeleton3D<class_Skeleton3D>` 映射到 :ref:`SkeletonProfile<class_SkeletonProfile>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`重定向 3D 骨架 <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------+
   | :ref:`SkeletonProfile<class_SkeletonProfile>` | :ref:`profile<class_BoneMap_property_profile>` |
   +-----------------------------------------------+------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`find_profile_bone_name<class_BoneMap_method_find_profile_bone_name>`\ (\ skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_skeleton_bone_name<class_BoneMap_method_get_skeleton_bone_name>`\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                   |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_skeleton_bone_name<class_BoneMap_method_set_skeleton_bone_name>`\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`, skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_BoneMap_signal_bone_map_updated:

.. rst-class:: classref-signal

**bone_map_updated**\ (\ ) :ref:`🔗<class_BoneMap_signal_bone_map_updated>`

**BoneMap** 中的键值发生改变时发出此信号。用于验证映射和更新 **BoneMap** 编辑器。

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_signal_profile_updated:

.. rst-class:: classref-signal

**profile_updated**\ (\ ) :ref:`🔗<class_BoneMap_signal_profile_updated>`

配置中的值发生改变或配置的引用发生改变时发出此信号。用于更新 **BoneMap** 中的键名、重绘 **BoneMap** 编辑器。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_BoneMap_property_profile:

.. rst-class:: classref-property

:ref:`SkeletonProfile<class_SkeletonProfile>` **profile** :ref:`🔗<class_BoneMap_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_profile**\ (\ value\: :ref:`SkeletonProfile<class_SkeletonProfile>`\ )
- :ref:`SkeletonProfile<class_SkeletonProfile>` **get_profile**\ (\ )

映射目标的 :ref:`SkeletonProfile<class_SkeletonProfile>`\ 。\ **BoneMap** 中的键名与此同步。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_BoneMap_method_find_profile_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_profile_bone_name**\ (\ skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_BoneMap_method_find_profile_bone_name>`

返回具有 ``skeleton_bone_name`` 的轮廓骨骼名称。如果没有找到，将返回一个空的 :ref:`StringName<class_StringName>`\ 。

在重定向过程中，返回的骨骼名称是目标骨架的骨骼名称。

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_method_get_skeleton_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_skeleton_bone_name**\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_BoneMap_method_get_skeleton_bone_name>`

返回与配置中的某个骨骼名称 ``profile_bone_name`` 映射的骨架中的骨骼名称。

在重定向过程中，设置的骨骼名称是源骨架中骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_BoneMap_method_set_skeleton_bone_name:

.. rst-class:: classref-method

|void| **set_skeleton_bone_name**\ (\ profile_bone_name\: :ref:`StringName<class_StringName>`, skeleton_bone_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_BoneMap_method_set_skeleton_bone_name>`

将骨架中的某个骨骼名称映射到配置中的骨骼名称 ``profile_bone_name``\ 。

在重定向过程中，设置的骨骼名称是源骨架中骨骼的名称。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
