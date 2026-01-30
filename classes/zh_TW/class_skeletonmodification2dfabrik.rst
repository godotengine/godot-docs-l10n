:github_url: hide

.. _class_SkeletonModification2DFABRIK:

SkeletonModification2DFABRIK
============================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 FABRIK 操縱一系列 :ref:`Bone2D<class_Bone2D>` 到達某個目標的修改器。

.. rst-class:: classref-introduction-group

說明
----

This :ref:`SkeletonModification2D<class_SkeletonModification2D>` uses an algorithm called Forward And Backward Reaching Inverse Kinematics, or FABRIK, to rotate a bone chain so that it reaches a target.

FABRIK works by knowing the positions and lengths of a series of bones, typically called a "bone chain". It first starts by running a forward pass, which places the final bone at the target's position. Then all other bones are moved towards the tip bone, so they stay at the defined bone length away. Then a backwards pass is performed, where the root/first bone in the FABRIK chain is placed back at the origin. Then all other bones are moved so they stay at the defined bone length away. This positions the bone chain so that it reaches the target when possible, but all of the bones stay the correct length away from each other.

Because of how FABRIK works, it often gives more natural results than those seen in :ref:`SkeletonModification2DCCDIK<class_SkeletonModification2DCCDIK>`.

\ **Note:** The FABRIK modifier has ``fabrik_joints``, which are the data objects that hold the data for each joint in the FABRIK chain. This is different from :ref:`Bone2D<class_Bone2D>` nodes! FABRIK joints hold the data needed for each :ref:`Bone2D<class_Bone2D>` in the bone chain used by FABRIK.

To help control how the FABRIK joints move, a magnet vector can be passed, which can nudge the bones in a certain direction prior to solving, giving a level of control over the final result.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`fabrik_data_chain_length<class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length>` | ``0``            |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DFABRIK_property_target_nodepath>`                   | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_fabrik_joint_bone2d_node<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_fabrik_joint_bone_index<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`get_fabrik_joint_magnet_position<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_fabrik_joint_use_target_rotation<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_bone2d_node<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ )             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_bone_index<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                                |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_magnet_position<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position>`\ (\ joint_idx\: :ref:`int<class_int>`, magnet_position\: :ref:`Vector2<class_Vector2>`\ )       |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_use_target_rotation<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation>`\ (\ joint_idx\: :ref:`int<class_int>`, use_target_rotation\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **fabrik_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_fabrik_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fabrik_data_chain_length**\ (\ )

FABRIK 修改中 FABRIK 關節的數量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DFABRIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

FABRIK 修改器的目標節點的 NodePath。FABRIK 鏈會嘗試將骨骼鏈轉向這個節點。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_fabrik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node>`

返回分配給位於 ``joint_idx`` 的 FABRIK 關節的 :ref:`Bone2D<class_Bone2D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_fabrik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index>`

返回分配給位於 ``joint_idx`` 的 FABRIK 關節的 :ref:`Bone2D<class_Bone2D>` 節點的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_fabrik_joint_magnet_position**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position>`

返回位於 ``joint_idx`` 的關節的磁吸位置向量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_fabrik_joint_use_target_rotation**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation>`

返回關節是否正在使用目標的旋轉，而不是允許 FABRIK 旋轉關節。此選項僅適用於鏈中的末端/最終關節。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_fabrik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node>`

設定分配給位於 ``joint_idx`` 的 FABRIK 關節的 :ref:`Bone2D<class_Bone2D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index:

.. rst-class:: classref-method

|void| **set_fabrik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index>`

設定位於 ``joint_idx`` 的 FABRIK 關節的骨骼索引 ``bone_idx``\ 。可能時，這也會根據連結骨架所提供的資料來更新 FABRIK 關節的 ``bone2d_node``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position:

.. rst-class:: classref-method

|void| **set_fabrik_joint_magnet_position**\ (\ joint_idx\: :ref:`int<class_int>`, magnet_position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position>`

設定位於 ``joint_idx`` 的關節的磁吸位置向量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation:

.. rst-class:: classref-method

|void| **set_fabrik_joint_use_target_rotation**\ (\ joint_idx\: :ref:`int<class_int>`, use_target_rotation\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation>`

設定位於 ``joint_idx`` 的關節是否正在使用目標節點的旋轉，而不是讓 FABRIK 旋轉關節。

\ **注意：**\ 這個選項僅適用於鏈中的末端/最終關節。對於所有其他節點，這個選項將被忽略。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
