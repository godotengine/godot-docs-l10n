:github_url: hide

.. _class_SkeletonModification2DTwoBoneIK:

SkeletonModification2DTwoBoneIK
===============================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

這種修改器會讓兩個骨骼按照餘弦定理進行旋轉，最終抵達目標。

.. rst-class:: classref-introduction-group

說明
----

這種 :ref:`SkeletonModification2D<class_SkeletonModification2D>` 所使用的演算法一般稱之為 TwoBoneIK。這種演算法的原理是利用餘弦定理和骨骼的長度來推算骨骼目前的旋轉量和構成三角形所需的旋轉量，三角形由第一根骨骼、第二根骨骼以及目標構成。因為這種演算法的原理是構成三角形，所以僅能對兩根骨骼進行操作。

TwoBoneIK 適用於手臂、腿部，其實任何能夠用兩根骨頭彎向某個目標來代表的關節均能使用。求解器比 :ref:`SkeletonModification2DFABRIK<class_SkeletonModification2DFABRIK>` 更輕量，但也能得到類似的比較自然的結果。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_bend_direction<class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction>`         | ``false``        |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`target_maximum_distance<class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance>` | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`target_minimum_distance<class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance>` | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DTwoBoneIK_property_target_nodepath>`                 | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_joint_one_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node>`\ (\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_joint_one_bone_idx<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx>`\ (\ ) |const|                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_joint_two_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node>`\ (\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_joint_two_bone_idx<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx>`\ (\ ) |const|                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_one_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node>`\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_one_bone_idx<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_two_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node>`\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_two_bone_idx<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_bend_direction** = ``false`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction>`

.. rst-class:: classref-property-setget

- |void| **set_flip_bend_direction**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_bend_direction**\ (\ )

If ``true``, the bones in the modification will bend outward as opposed to inwards when contracting. If ``false``, the bones will bend inwards when contracting.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_maximum_distance** = ``0.0`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_maximum_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_maximum_distance**\ (\ )

該目標可以到達的最大距離。如果目標比這個距離更遠，則該修改將如同它就在這個最大距離處一樣求解。當設定為 ``0`` 時，則該修改將不受距離限制地求解。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_minimum_distance** = ``0.0`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_minimum_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_minimum_distance**\ (\ )

該目標可以到達的最小距離。如果目標比這個距離更近，則該修改將如同它就在這個最小距離處一樣求解。當設定為 ``0`` 時，則該修改將不受距離限制地求解。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

作為 TwoBoneIK 修改目標的節點的 NodePath。該節點是彎曲 :ref:`Bone2D<class_Bone2D>` 節點時該修改將使用的節點。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_joint_one_bone2d_node**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node>`

返回 TwoBoneIK 修改器中作為第一個骨骼的 :ref:`Bone2D<class_Bone2D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_one_bone_idx**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx>`

返回 TwoBoneIK 修改器中作為第一個骨骼的 :ref:`Bone2D<class_Bone2D>` 節點的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_joint_two_bone2d_node**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node>`

返回 TwoBoneIK 修改器中作為第二個骨骼的 :ref:`Bone2D<class_Bone2D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_two_bone_idx**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx>`

返回 TwoBoneIK 修改器中作為第二個骨骼的 :ref:`Bone2D<class_Bone2D>` 節點的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node:

.. rst-class:: classref-method

|void| **set_joint_one_bone2d_node**\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node>`

設定 TwoBoneIK 修改器中作為第一個骨骼的 :ref:`Bone2D<class_Bone2D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx:

.. rst-class:: classref-method

|void| **set_joint_one_bone_idx**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx>`

設定 TwoBoneIK 修改器中作為第一個骨骼的 :ref:`Bone2D<class_Bone2D>` 節點的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node:

.. rst-class:: classref-method

|void| **set_joint_two_bone2d_node**\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node>`

設定 TwoBoneIK 修改器中作為第二個骨骼的 :ref:`Bone2D<class_Bone2D>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx:

.. rst-class:: classref-method

|void| **set_joint_two_bone_idx**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx>`

設定 TwoBoneIK 修改器中作為第二個骨骼的 :ref:`Bone2D<class_Bone2D>` 節點的索引。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
