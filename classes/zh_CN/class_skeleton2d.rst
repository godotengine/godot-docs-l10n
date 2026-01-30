:github_url: hide

.. _class_Skeleton2D:

Skeleton2D
==========

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

:ref:`Bone2D<class_Bone2D>` 层级结构的父节点，用于创建 2D 骨骼动画。

.. rst-class:: classref-introduction-group

描述
----

**Skeleton2D** 是 :ref:`Bone2D<class_Bone2D>` 节点层级结构的父节点，持有对每个 :ref:`Bone2D<class_Bone2D>` 的放松姿势的引用，充当其骨骼的单一访问点。

要为给定的 Skeleton2D 设置不同类型的反向运动学机制，应当创建一个 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。增加 :ref:`SkeletonModificationStack2D.modification_count<class_SkeletonModificationStack2D_property_modification_count>` 并创建所需数量的修改器即可应用反向运动学机制。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`2D 骨架 <../tutorials/animation/2d_skeletons>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`execute_modifications<class_Skeleton2D_method_execute_modifications>`\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ )                                                                                                         |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Bone2D<class_Bone2D>`                                           | :ref:`get_bone<class_Skeleton2D_method_get_bone>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                                                                 |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_bone_count<class_Skeleton2D_method_get_bone_count>`\ (\ ) |const|                                                                                                                                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`                                 | :ref:`get_bone_local_pose_override<class_Skeleton2D_method_get_bone_local_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                                    |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_modification_stack<class_Skeleton2D_method_get_modification_stack>`\ (\ ) |const|                                                                                                                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_skeleton<class_Skeleton2D_method_get_skeleton>`\ (\ ) |const|                                                                                                                                                                                              |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_bone_local_pose_override<class_Skeleton2D_method_set_bone_local_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`, override_pose\: :ref:`Transform2D<class_Transform2D>`, strength\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_modification_stack<class_Skeleton2D_method_set_modification_stack>`\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ )                                                                                      |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_Skeleton2D_signal_bone_setup_changed:

.. rst-class:: classref-signal

**bone_setup_changed**\ (\ ) :ref:`🔗<class_Skeleton2D_signal_bone_setup_changed>`

当附加到该骨架的 :ref:`Bone2D<class_Bone2D>` 设置更改时发出。这主要在骨架内部使用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Skeleton2D_method_execute_modifications:

.. rst-class:: classref-method

|void| **execute_modifications**\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_execute_modifications>`

如果该 Skeleton2D 分配有 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ，则执行其中的所有修改。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone:

.. rst-class:: classref-method

:ref:`Bone2D<class_Bone2D>` **get_bone**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_get_bone>`

从由 Skeleton2D 为父节点的节点层次结构中返回 :ref:`Bone2D<class_Bone2D>`\ 。要返回的对象由参数 ``idx`` 标识。骨骼通过从上到下降低节点层次结构来索引，在移动到下一个同级节点之前添加每个分支的子节点。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_bone_count>`

返回由 Skeleton2D 为父节点的节点层次结构中 :ref:`Bone2D<class_Bone2D>` 节点的数量。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone_local_pose_override:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_bone_local_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_get_bone_local_pose_override>`

返回骨骼 ``bone_idx`` 的局部姿势覆盖变换。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_modification_stack**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_modification_stack>`

如果存在，则返回附加到此骨架的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_skeleton>`

返回 Skeleton2D 实例的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_set_bone_local_pose_override:

.. rst-class:: classref-method

|void| **set_bone_local_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`, override_pose\: :ref:`Transform2D<class_Transform2D>`, strength\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Skeleton2D_method_set_bone_local_pose_override>`

为 ``bone_idx`` 处的骨骼设置局部姿势变换 ``override_pose``\ 。

\ ``strength`` 是应用姿势时将使用的插值强度，\ ``persistent`` 决定是否会保持应用的姿势。

\ **注意：**\ 姿势变换需要是相对于 ``bone_idx`` 处的 :ref:`Bone2D<class_Bone2D>` 节点的局部变换！

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_set_modification_stack:

.. rst-class:: classref-method

|void| **set_modification_stack**\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) :ref:`🔗<class_Skeleton2D_method_set_modification_stack>`

设置附加到此骨架的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
