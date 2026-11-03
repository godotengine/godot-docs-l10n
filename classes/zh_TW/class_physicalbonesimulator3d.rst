:github_url: hide

.. _class_PhysicalBoneSimulator3D:

PhysicalBoneSimulator3D
=======================

**繼承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

可以作為 :ref:`PhysicalBone3D<class_PhysicalBone3D>` 的父節點，並可以將模擬結果套用至 :ref:`Skeleton3D<class_Skeleton3D>` 的節點。

.. rst-class:: classref-introduction-group

說明
----

可以作為 :ref:`PhysicalBone3D<class_PhysicalBone3D>` 的父節點，並可以將模擬結果套用至 :ref:`Skeleton3D<class_Skeleton3D>` 的節點。

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

方法說明
--------

.. _class_PhysicalBoneSimulator3D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) |const| :ref:`🔗<class_PhysicalBoneSimulator3D_method_is_simulating_physics>`

回傳一個布林值，指示 **PhysicalBoneSimulator3D** 是否正在執行和模擬。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_add_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_add_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_add_collision_exception>`

向物理骨骼新增一個碰撞例外。

就像 :ref:`RigidBody3D<class_RigidBody3D>` 節點一樣工作。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_remove_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_remove_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_remove_collision_exception>`

移除物理骨骼的一個碰撞例外。

就像 :ref:`RigidBody3D<class_RigidBody3D>` 節點一樣工作。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_start_simulation:

.. rst-class:: classref-method

|void| **physical_bones_start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_start_simulation>`

讓 Skeleton 中的 :ref:`PhysicalBone3D<class_PhysicalBone3D>` 節點開始模擬類比，對物理世界做出反應。

可以傳入骨骼名稱列表，只對傳入的骨骼進行模擬模擬。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_stop_simulation:

.. rst-class:: classref-method

|void| **physical_bones_stop_simulation**\ (\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_stop_simulation>`

讓 Skeleton 中的 :ref:`PhysicalBone3D<class_PhysicalBone3D>` 節點停止模擬模擬。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
