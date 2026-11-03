:github_url: hide

.. _class_Skeleton2D:

Skeleton2D
==========

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

:ref:`Bone2D<class_Bone2D>` 層級結構的父節點，用於建立 2D 骨骼動畫。

.. rst-class:: classref-introduction-group

說明
----

**Skeleton2D** 是 :ref:`Bone2D<class_Bone2D>` 節點層級結構的父節點，持有對每個 :ref:`Bone2D<class_Bone2D>` 的放鬆姿勢的引用，充當其骨骼的單一存取點。

要為給定的 Skeleton2D 設定不同型別的反向運動學機制，應當建立一個 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。增加 :ref:`SkeletonModificationStack2D.modification_count<class_SkeletonModificationStack2D_property_modification_count>` 並建立所需數量的修改器即可套用反向運動學機制。

.. rst-class:: classref-introduction-group

教學
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

訊號
----

.. _class_Skeleton2D_signal_bone_setup_changed:

.. rst-class:: classref-signal

**bone_setup_changed**\ (\ ) :ref:`🔗<class_Skeleton2D_signal_bone_setup_changed>`

當附加到該骨架的 :ref:`Bone2D<class_Bone2D>` 設定更改時發出。這主要在骨架內部使用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Skeleton2D_method_execute_modifications:

.. rst-class:: classref-method

|void| **execute_modifications**\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_execute_modifications>`

如果該 Skeleton2D 分配有 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ，則執行其中的所有修改。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone:

.. rst-class:: classref-method

:ref:`Bone2D<class_Bone2D>` **get_bone**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_get_bone>`

從由 Skeleton2D 為父節點的節點層次結構中返回 :ref:`Bone2D<class_Bone2D>`\ 。要返回的對象由參數 ``idx`` 標識。骨骼通過從上到下降低節點層次結構來索引，在移動到下一個兄弟節點之前新增每個分支的子節點。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_bone_count>`

返回由 Skeleton2D 為父節點的節點層次結構中 :ref:`Bone2D<class_Bone2D>` 節點的數量。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone_local_pose_override:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_bone_local_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_get_bone_local_pose_override>`

返回骨骼 ``bone_idx`` 的區域姿勢覆蓋變換。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_modification_stack**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_modification_stack>`

如果存在，則返回附加到此骨架的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_skeleton>`

返回 Skeleton2D 實例的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_set_bone_local_pose_override:

.. rst-class:: classref-method

|void| **set_bone_local_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`, override_pose\: :ref:`Transform2D<class_Transform2D>`, strength\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Skeleton2D_method_set_bone_local_pose_override>`

為 ``bone_idx`` 處的骨骼設定區域姿勢變換 ``override_pose``\ 。

\ ``strength`` 是套用姿勢時將使用的插值強度，\ ``persistent`` 決定是否會保持套用的姿勢。

\ **注意：**\ 姿勢變換需要是相對於 ``bone_idx`` 處的 :ref:`Bone2D<class_Bone2D>` 節點的區域變換！

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_set_modification_stack:

.. rst-class:: classref-method

|void| **set_modification_stack**\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) :ref:`🔗<class_Skeleton2D_method_set_modification_stack>`

設定附加到此骨架的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
