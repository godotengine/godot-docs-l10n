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

這種 :ref:`SkeletonModification2D<class_SkeletonModification2D>` 使用的是名為前後延伸反向動力學（Forward And Backward Reaching Inverse Kinematics）的算法，即 FABRIK，能夠對一條骨骼鏈進行旋轉，從而抵達目標。

FABRIK 需要先拿到一系列骨骼的位置和長度，這組骨骼通常稱作“骨骼鏈”。它首先會做一次向前處理，將最終的骨骼放置在目標的位置。然後讓所有其他骨骼朝尖端骨骼移動，恢復原有的骨骼長度。然後再做一次向後處理，將 FABRIK 鏈中的根/第一根骨骼放回原點。然後移動所有其他骨骼，恢復原有的骨骼長度。這樣就盡可能地讓骨骼鏈抵達了目標，並且所有骨骼之間的長度仍然為正確的長度。

由於 FABRIK 的工作原理，它通常比 :ref:`SkeletonModification2DCCDIK<class_SkeletonModification2DCCDIK>` 得到的結果更加自然。

\ **注意：**\ FABRIK 修改器具有關節屬性 ``fabrik_joints``\ ，裡面是存放 FABRIK 鏈中各個關節資料的資料物件。關節和 :ref:`Bone2D<class_Bone2D>` 是兩碼事！FABRIK 關節存放的是 FABRIK 所使用的骨骼鏈中每根 :ref:`Bone2D<class_Bone2D>` 所需的資料。

可以傳入磁鐵向量來協助控制 FABRIK 關節的移動，會在求解前讓骨骼朝某個方向做略微的移動，對最終結果進行微調。

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
