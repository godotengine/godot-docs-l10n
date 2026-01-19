:github_url: hide

.. _class_SkeletonModification2DPhysicalBones:

SkeletonModification2DPhysicalBones
===================================

**實驗性：** Physical bones may be changed in the future to perform the position update of :ref:`Bone2D<class_Bone2D>` on their own, without needing this resource.

**繼承：** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

將 :ref:`PhysicalBone2D<class_PhysicalBone2D>` 節點的變換套用到 :ref:`Bone2D<class_Bone2D>` 節點的修改器。

.. rst-class:: classref-introduction-group

說明
----

This modification takes the transforms of :ref:`PhysicalBone2D<class_PhysicalBone2D>` nodes and applies them to :ref:`Bone2D<class_Bone2D>` nodes. This allows the :ref:`Bone2D<class_Bone2D>` nodes to react to physics thanks to the linked :ref:`PhysicalBone2D<class_PhysicalBone2D>` nodes.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`physical_bone_chain_length<class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length>` | ``0`` |
   +-----------------------+------------------------------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`fetch_physical_bones<class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones>`\ (\ )                                                                                               |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_physical_bone_node<class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_physical_bone_node<class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node>`\ (\ joint_idx\: :ref:`int<class_int>`, physicalbone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`start_simulation<class_SkeletonModification2DPhysicalBones_method_start_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ )                        |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`stop_simulation<class_SkeletonModification2DPhysicalBones_method_stop_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ )                          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **physical_bone_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_physical_bone_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physical_bone_chain_length**\ (\ )

在這個修改器中連結的 :ref:`PhysicalBone2D<class_PhysicalBone2D>` 節點的數量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones:

.. rst-class:: classref-method

|void| **fetch_physical_bones**\ (\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones>`

清空 :ref:`PhysicalBone2D<class_PhysicalBone2D>` 節點列表，並使用該 :ref:`Skeleton2D<class_Skeleton2D>` 節點的所有 :ref:`PhysicalBone2D<class_PhysicalBone2D>` 子節點填充該列表。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_physical_bone_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node>`

返回位於 ``joint_idx`` 的 :ref:`PhysicalBone2D<class_PhysicalBone2D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node:

.. rst-class:: classref-method

|void| **set_physical_bone_node**\ (\ joint_idx\: :ref:`int<class_int>`, physicalbone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node>`

設定位於 ``joint_idx`` 的 :ref:`PhysicalBone2D<class_PhysicalBone2D>` 節點。

\ **注意：**\ 這個索引只適用於這個修改器，不是 :ref:`Skeleton2D<class_Skeleton2D>` 使用的骨骼索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_start_simulation:

.. rst-class:: classref-method

|void| **start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_start_simulation>`

讓 :ref:`PhysicalBone2D<class_PhysicalBone2D>` 節點開始類比，開始與物理世界進行互動。

還可以把骨骼名稱陣列傳給這個函式，會導致只有這些名稱的 :ref:`PhysicalBone2D<class_PhysicalBone2D>` 節點開始模擬。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_stop_simulation:

.. rst-class:: classref-method

|void| **stop_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_stop_simulation>`

讓 :ref:`PhysicalBone2D<class_PhysicalBone2D>` 節點停止類比，不再與物理世界進行互動。

還可以把骨骼名稱陣列傳給這個函式，會導致只有這些名稱的 :ref:`PhysicalBone2D<class_PhysicalBone2D>` 節點停止模擬。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
