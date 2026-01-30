:github_url: hide

.. _class_PhysicalBoneSimulator3D:

PhysicalBoneSimulator3D
=======================

**继承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

可以作为 :ref:`PhysicalBone3D<class_PhysicalBone3D>` 的父节点，并可以将模拟结果应用到 :ref:`Skeleton3D<class_Skeleton3D>` 的节点。

.. rst-class:: classref-introduction-group

描述
----

可以作为 :ref:`PhysicalBone3D<class_PhysicalBone3D>` 的父节点，并可以将模拟结果应用到 :ref:`Skeleton3D<class_Skeleton3D>` 的节点。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_simulating_physics<class_PhysicalBoneSimulator3D_method_is_simulating_physics>`\ (\ ) |const|                                                                                            |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_add_collision_exception<class_PhysicalBoneSimulator3D_method_physical_bones_add_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                               |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_remove_collision_exception<class_PhysicalBoneSimulator3D_method_physical_bones_remove_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                         |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_start_simulation<class_PhysicalBoneSimulator3D_method_physical_bones_start_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_stop_simulation<class_PhysicalBoneSimulator3D_method_physical_bones_stop_simulation>`\ (\ )                                                                                  |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicalBoneSimulator3D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) |const| :ref:`🔗<class_PhysicalBoneSimulator3D_method_is_simulating_physics>`

返回一个布尔值，指示 **PhysicalBoneSimulator3D** 是否正在运行和模拟。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_add_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_add_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_add_collision_exception>`

向物理骨骼添加一个碰撞例外。

就像 :ref:`RigidBody3D<class_RigidBody3D>` 节点一样工作。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_remove_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_remove_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_remove_collision_exception>`

移除物理骨骼的一个碰撞例外。

就像 :ref:`RigidBody3D<class_RigidBody3D>` 节点一样工作。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_start_simulation:

.. rst-class:: classref-method

|void| **physical_bones_start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_start_simulation>`

让 Skeleton 中的 :ref:`PhysicalBone3D<class_PhysicalBone3D>` 节点开始仿真模拟，对物理世界做出反应。

可以传入骨骼名称列表，只对传入的骨骼进行仿真模拟。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_stop_simulation:

.. rst-class:: classref-method

|void| **physical_bones_stop_simulation**\ (\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_stop_simulation>`

让 Skeleton 中的 :ref:`PhysicalBone3D<class_PhysicalBone3D>` 节点停止仿真模拟。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
