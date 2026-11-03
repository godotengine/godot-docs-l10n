:github_url: hide

.. _class_SkeletonModification2DCCDIK:

SkeletonModification2DCCDIK
===========================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 CCDIK 操縱一系列骨骼到達某個 2D 目標的修改器。

.. rst-class:: classref-introduction-group

說明
----

這種 :ref:`SkeletonModification2D<class_SkeletonModification2D>` 使用的是名為迴圈座標下降逆向運動學（Cyclic Coordinate Descent Inverse Kinematics）的演算法，即 CCDIK，能夠對 :ref:`Skeleton2D<class_Skeleton2D>` 中的一條骨骼鏈進行操作，從而抵達指定的目標。

CCDIK 的工作原理是讓一組骨骼圍繞單一軸旋轉，這組骨骼通常稱作“骨骼鏈”。每根骨骼的尖端都會轉向目標（預設），這樣整條骨骼鏈就能夠正確旋轉，從而抵達目標。因為這些骨骼都只圍繞單一軸進行旋轉，CCDIK 看起來\ *能夠*\ 比其他 IK 解算器更加機械。

\ **注意：**\ CCDIK 修改器具有關節屬性 ``ccdik_joints``\ ，裡面是存放 CCDIK 鏈中各個關節資料的資料物件。關節和骨骼是兩碼事！CCDIK 關節存放的是 CCDIK 所使用的骨骼鏈中每根骨骼所需的資料。

CCDIK 還完全支援角度約束，能夠對求解過程進行更多控制。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`ccdik_data_chain_length<class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length>` | ``0``            |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DCCDIK_property_target_nodepath>`                 | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`tip_nodepath<class_SkeletonModification2DCCDIK_property_tip_nodepath>`                       | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_ccdik_joint_bone2d_node<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_ccdik_joint_bone_index<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                     |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_constraint_angle_invert<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_ccdik_joint_constraint_angle_max<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_ccdik_joint_constraint_angle_min<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_enable_constraint<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_rotate_from_joint<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_bone2d_node<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ )        |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_bone_index<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_invert<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>`\ (\ joint_idx\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_max<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max>`\ (\ joint_idx\: :ref:`int<class_int>`, angle_max\: :ref:`float<class_float>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_min<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min>`\ (\ joint_idx\: :ref:`int<class_int>`, angle_min\: :ref:`float<class_float>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_enable_constraint<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint>`\ (\ joint_idx\: :ref:`int<class_int>`, enable_constraint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_rotate_from_joint<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint>`\ (\ joint_idx\: :ref:`int<class_int>`, rotate_from_joint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **ccdik_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_ccdik_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ccdik_data_chain_length**\ (\ )

CCDIK 修改中 CCDIK 關節的數量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

作為 CCDIK 修改目標的節點的 NodePath。該節點是 CCDIK 鏈會嘗試將該骨骼鏈旋轉到的節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_property_tip_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **tip_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_tip_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_tip_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_tip_node**\ (\ )

該 CCDIK 鏈的結束位置。通常，這應該是一個 :ref:`Bone2D<class_Bone2D>` 節點的一個子節點，被附加到 CCDIK 鏈中的最終 :ref:`Bone2D<class_Bone2D>` 上。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_ccdik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node>`

返回分配給位於 ``joint_idx`` 的 CCDIK 關節的 :ref:`Bone2D<class_Bone2D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ccdik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index>`

返回分配給位於 ``joint_idx`` 的 CCDIK 關節的 :ref:`Bone2D<class_Bone2D>` 節點的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_constraint_angle_invert**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert>`

返回索引為 ``joint_idx`` 的 CCDIK 關節是否使用反向關節約束。詳見 :ref:`set_ccdik_joint_constraint_angle_invert()<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_ccdik_joint_constraint_angle_max**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max>`

返回索引為 ``joint_idx`` 的關節的最大角約束。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_ccdik_joint_constraint_angle_min**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min>`

返回索引為 ``joint_idx`` 的關節的最小角約束。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_enable_constraint**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint>`

返回索引為 ``joint_idx`` 的 CCDIK 關節是否啟用角度約束。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_rotate_from_joint**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint>`

返回位於 ``joint_idx`` 的關節是從該關節旋轉，\ ``true``\ ，還是從尖端旋轉，\ ``false``\ 。預設是從尖端旋轉。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_ccdik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node>`

設定分配給位於 ``joint_idx`` 的 CCDIK 關節的 :ref:`Bone2D<class_Bone2D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index:

.. rst-class:: classref-method

|void| **set_ccdik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index>`

設定位於 ``joint_idx`` 的 CCDIK 關節的骨骼索引 ``bone_idx``\ 。可能時，還會根據所連結的骨架提供的資訊來更新 CCDIK 關節的 ``bone2d_node``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_invert**\ (\ joint_idx\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>`

設定索引為 ``joint_idx`` 的 CCDIK 關節是否使用反向關節約束。

反向關節約束只會將該 CCDIK 關節的角度約束在輸入的最大最小角度範圍\ *之外*\ 。因此，它被稱為反向關節約束，因為它將關節約束在輸入值的外部。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_max**\ (\ joint_idx\: :ref:`int<class_int>`, angle_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max>`

設定索引為 ``joint_idx`` 的關節的最大角約束。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_min**\ (\ joint_idx\: :ref:`int<class_int>`, angle_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min>`

設定索引為 ``joint_idx`` 的關節的最小角約束。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint:

.. rst-class:: classref-method

|void| **set_ccdik_joint_enable_constraint**\ (\ joint_idx\: :ref:`int<class_int>`, enable_constraint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint>`

決定是否啟用 ``joint_idx`` 處 CCDIK 關節上的角度約束。為 ``true`` 時將啟用約束，在求解時納入考慮範圍。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint:

.. rst-class:: classref-method

|void| **set_ccdik_joint_rotate_from_joint**\ (\ joint_idx\: :ref:`int<class_int>`, rotate_from_joint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint>`

設定位於 ``joint_idx`` 的關節是設為從關節旋轉，\ ``true``\ ，還是從尖端旋轉，\ ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
