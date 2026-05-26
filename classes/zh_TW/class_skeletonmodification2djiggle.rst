:github_url: hide

.. _class_SkeletonModification2DJiggle:

SkeletonModification2DJiggle
============================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

讓 :ref:`Bone2D<class_Bone2D>` 節點在朝某個目標移動的過程中產生搖晃的修改器。

.. rst-class:: classref-introduction-group

說明
----

這種修改器會將一系列的骨骼朝某個目標移動，這些骨骼通常稱作骨骼鏈。這種修改器的特點在於，它會為骨骼鏈中的每一個骨骼計算速度和加速度，並使用輸入值運作一段非常羽量級的類物理計算。這樣這些骨骼就能夠越過目標並來回“搖晃”（Jiggle）。根據配置的不同，可以得到類似彈簧的搖晃，也可以得到類似布料的搖晃。

這種修改器可用於為頭髮、衣服邊緣等新增額外的運動。可以通過不同的設定控制目標移動時關節的移動方式。

\ **注意：**\ Jiggle 修改器的 ``jiggle_joints`` 屬性中保存的是資料對象，記錄 Jiggle 鏈中各個關節的資料。這一點與 :ref:`Bone2D<class_Bone2D>` 節點不同！Jiggle 關節保存了 Jiggle 修改器使用的骨骼鏈中各個 :ref:`Bone2D<class_Bone2D>` 所需的資料。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`damping<class_SkeletonModification2DJiggle_property_damping>`                                   | ``0.75``          |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`gravity<class_SkeletonModification2DJiggle_property_gravity>`                                   | ``Vector2(0, 6)`` |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`           | :ref:`jiggle_data_chain_length<class_SkeletonModification2DJiggle_property_jiggle_data_chain_length>` | ``0``             |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`mass<class_SkeletonModification2DJiggle_property_mass>`                                         | ``0.75``          |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`stiffness<class_SkeletonModification2DJiggle_property_stiffness>`                               | ``3.0``           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DJiggle_property_target_nodepath>`                   | ``NodePath("")``  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`         | :ref:`use_gravity<class_SkeletonModification2DJiggle_property_use_gravity>`                           | ``false``         |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_collision_mask<class_SkeletonModification2DJiggle_method_get_collision_mask>`\ (\ ) |const|                                                                                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_jiggle_joint_bone2d_node<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_jiggle_joint_bone_index<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                          |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_damping<class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`get_jiggle_joint_gravity<class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_mass<class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                      |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_jiggle_joint_override<class_SkeletonModification2DJiggle_method_get_jiggle_joint_override>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_stiffness<class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                            |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_jiggle_joint_use_gravity<class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_use_colliders<class_SkeletonModification2DJiggle_method_get_use_colliders>`\ (\ ) |const|                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`reset<class_SkeletonModification2DJiggle_method_reset>`\ (\ )                                                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_collision_mask<class_SkeletonModification2DJiggle_method_set_collision_mask>`\ (\ collision_mask\: :ref:`int<class_int>`\ )                                                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_bone2d_node<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_bone_index<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_damping<class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping>`\ (\ joint_idx\: :ref:`int<class_int>`, damping\: :ref:`float<class_float>`\ )                   |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_gravity<class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`, gravity\: :ref:`Vector2<class_Vector2>`\ )               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_mass<class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass>`\ (\ joint_idx\: :ref:`int<class_int>`, mass\: :ref:`float<class_float>`\ )                            |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_override<class_SkeletonModification2DJiggle_method_set_jiggle_joint_override>`\ (\ joint_idx\: :ref:`int<class_int>`, override\: :ref:`bool<class_bool>`\ )                  |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_stiffness<class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness>`\ (\ joint_idx\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ )             |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_use_gravity<class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`, use_gravity\: :ref:`bool<class_bool>`\ )         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_use_colliders<class_SkeletonModification2DJiggle_method_set_use_colliders>`\ (\ use_colliders\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SkeletonModification2DJiggle_property_damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping** = ``0.75`` :ref:`🔗<class_SkeletonModification2DJiggle_property_damping>`

.. rst-class:: classref-property-setget

- |void| **set_damping**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping**\ (\ )

未被覆蓋時，Jiggle 關節所受到的預設阻尼大小。值約高，所套用的計算得到的速度也就約多。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_gravity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity** = ``Vector2(0, 6)`` :ref:`🔗<class_SkeletonModification2DJiggle_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity**\ (\ )

未被覆蓋時，Jiggle 關節所受到的預設重力大小。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_jiggle_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **jiggle_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DJiggle_property_jiggle_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_jiggle_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_jiggle_data_chain_length**\ (\ )

該 Jiggle 修改器中的 Jiggle 關節的數量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``0.75`` :ref:`🔗<class_SkeletonModification2DJiggle_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

未被覆蓋時，Jiggle 關節所分配的預設品質大小。值約高，移動速度也就約快，超出的距離也就越大。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **stiffness** = ``3.0`` :ref:`🔗<class_SkeletonModification2DJiggle_property_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stiffness**\ (\ )

未被覆蓋時，Jiggle 關節所分配的預設剛度大小。值約高越像彈簧，會很快到達正確的位置。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DJiggle_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

該 Jiggle 修改器目標節點的 NodePath 路徑。這個節點是 Jiggle 鏈所要旋轉至的目標。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_use_gravity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_gravity** = ``false`` :ref:`🔗<class_SkeletonModification2DJiggle_property_use_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_use_gravity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_gravity**\ (\ )

假設 Jiggle 關節沒有覆蓋預設設定的前提下，是否應該對這些關節施加重力向量 :ref:`gravity<class_SkeletonModification2DJiggle_property_gravity>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SkeletonModification2DJiggle_method_get_collision_mask:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_mask**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_collision_mask>`

返回在啟用碰撞時 Jiggle 修改器所使用的碰撞遮罩。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_jiggle_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node>`

返回 ``joint_idx`` 處 Jiggle 關節所分配的 :ref:`Bone2D<class_Bone2D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_jiggle_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index>`

返回 ``joint_idx`` 處 Jiggle 關節所分配 :ref:`Bone2D<class_Bone2D>` 節點的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_damping**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping>`

返回 ``joint_idx`` 處 Jiggle 關節的阻尼大小。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_jiggle_joint_gravity**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity>`

返回表示 ``joint_idx`` 處 Jiggle 關節所受到的重力的 :ref:`Vector2<class_Vector2>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_mass**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass>`

返回 ``joint_idx`` 處 Jiggle 關節的品質大小。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_jiggle_joint_override**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_override>`

返回表示 ``joint_idx`` 處 Jiggle 關節是否覆蓋修改器中定義的預設 Jiggle 關節資料的布林值。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_stiffness**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness>`

返回 ``joint_idx`` 處 Jiggle 關節的剛度。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_jiggle_joint_use_gravity**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity>`

返回表示 ``joint_idx`` 處 Jiggle 關節是否使用重力的布林值。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_use_colliders:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_colliders**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_use_colliders>`

返回 Jiggle 修改器在求解時是否考慮物理碰撞器。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_reset>`

Resets the internal jiggle simulation state to the current bone positions, clearing velocity, acceleration, and accumulated forces.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_collision_mask:

.. rst-class:: classref-method

|void| **set_collision_mask**\ (\ collision_mask\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_collision_mask>`

在 Jiggle 修改器被設為考慮碰撞器時，設定該 Jiggle 修改器所需作出反應的碰撞器的碰撞遮罩。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_jiggle_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node>`

設定 ``joint_idx`` 處 Jiggle 關節所分配的 :ref:`Bone2D<class_Bone2D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index:

.. rst-class:: classref-method

|void| **set_jiggle_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index>`

設定 ``joint_idx`` 處 Jiggle 關節的骨骼索引 ``bone_idx``\ 。如果適用，還會根據所連結骨架提供的資料來更新 Jiggle 關節的 ``bone2d_node``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping:

.. rst-class:: classref-method

|void| **set_jiggle_joint_damping**\ (\ joint_idx\: :ref:`int<class_int>`, damping\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping>`

設定 ``joint_idx`` 處 Jiggle 關節的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity:

.. rst-class:: classref-method

|void| **set_jiggle_joint_gravity**\ (\ joint_idx\: :ref:`int<class_int>`, gravity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity>`

設定 ``joint_idx`` 處 Jiggle 關節的重力向量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass:

.. rst-class:: classref-method

|void| **set_jiggle_joint_mass**\ (\ joint_idx\: :ref:`int<class_int>`, mass\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass>`

設定 ``joint_idx`` 處 Jiggle 關節的品質。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_override:

.. rst-class:: classref-method

|void| **set_jiggle_joint_override**\ (\ joint_idx\: :ref:`int<class_int>`, override\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_override>`

設定 ``joint_idx`` 處 Jiggle 關節是否應覆蓋預設 Jiggle 關節設定。設定為 ``true`` 會使該關節使用自身的設定，不使用附加至修改器的設定。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness:

.. rst-class:: classref-method

|void| **set_jiggle_joint_stiffness**\ (\ joint_idx\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness>`

設定 ``joint_idx`` 處 Jiggle 關節的剛度。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity:

.. rst-class:: classref-method

|void| **set_jiggle_joint_use_gravity**\ (\ joint_idx\: :ref:`int<class_int>`, use_gravity\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity>`

設定 ``joint_idx`` 處 Jiggle 關節是否應使用重力。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_use_colliders:

.. rst-class:: classref-method

|void| **set_use_colliders**\ (\ use_colliders\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_use_colliders>`

如果為 ``true``\ ，則 Jiggle 修改器將考慮碰撞器，防止它們進入這些碰撞對象。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
