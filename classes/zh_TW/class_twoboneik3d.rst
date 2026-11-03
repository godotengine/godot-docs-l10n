:github_url: hide

.. _class_TwoBoneIK3D:

TwoBoneIK3D
===========

**繼承：** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基於旋轉的兩圓相交反向動力學求解器。

.. rst-class:: classref-introduction-group

說明
----

這個 :ref:`IKModifier3D<class_IKModifier3D>`\ （3D IK 修改器）需要設定一個極點目標（pole target）。它通過從每個關節和極點目標建置出一個平面，並計算兩個圓（在 3D 空間中實際上是圓盤）的交點，從而提供確定性的計算結果。

這種 IK 可以通過設定極點方向（pole direction）來處理骨骼的扭轉（twist）。如果在每組設定的骨骼之間包含多於一根骨頭，這些中間骨骼的旋轉會被忽略，系統會將連接“根節點-中間節點”和“中間節點-末端節點”的直線視為虛擬骨骼來處理。

\ **注意：** 這個類中的所有方法都帶有一個 ``index``\ （索引）參數。如果該 IK 包含多個條目（例如 ``settings//root_bone_name``\ ），這個參數用來指定要回傳哪一個設定清單項。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_TwoBoneIK3D_property_setting_count>` | ``0`` |
   +-----------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_end_bone<class_TwoBoneIK3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`           | :ref:`get_end_bone_direction<class_TwoBoneIK3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`get_end_bone_length<class_TwoBoneIK3D_method_get_end_bone_length>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_end_bone_name<class_TwoBoneIK3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_middle_bone<class_TwoBoneIK3D_method_get_middle_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_middle_bone_name<class_TwoBoneIK3D_method_get_middle_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` | :ref:`get_pole_direction<class_TwoBoneIK3D_method_get_pole_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_pole_direction_vector<class_TwoBoneIK3D_method_get_pole_direction_vector>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                       | :ref:`get_pole_node<class_TwoBoneIK3D_method_get_pole_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_root_bone<class_TwoBoneIK3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_root_bone_name<class_TwoBoneIK3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                       | :ref:`get_target_node<class_TwoBoneIK3D_method_get_target_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_end_bone_extended<class_TwoBoneIK3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_using_virtual_end<class_TwoBoneIK3D_method_is_using_virtual_end>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone<class_TwoBoneIK3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_direction<class_TwoBoneIK3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_length<class_TwoBoneIK3D_method_set_end_bone_length>`\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ )                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_name<class_TwoBoneIK3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_extend_end_bone<class_TwoBoneIK3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_middle_bone<class_TwoBoneIK3D_method_set_middle_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_middle_bone_name<class_TwoBoneIK3D_method_set_middle_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_direction<class_TwoBoneIK3D_method_set_pole_direction>`\ (\ index\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ )    |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_direction_vector<class_TwoBoneIK3D_method_set_pole_direction_vector>`\ (\ index\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ )                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_node<class_TwoBoneIK3D_method_set_pole_node>`\ (\ index\: :ref:`int<class_int>`, pole_node\: :ref:`NodePath<class_NodePath>`\ )                                                    |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_root_bone<class_TwoBoneIK3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                   |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_root_bone_name<class_TwoBoneIK3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_target_node<class_TwoBoneIK3D_method_set_target_node>`\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ )                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_use_virtual_end<class_TwoBoneIK3D_method_set_use_virtual_end>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TwoBoneIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_TwoBoneIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

設定的數量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TwoBoneIK3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone>`

回傳末端骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_direction>`

當 :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` 為 ``true`` 時，回傳末端骨骼的尾部方向。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_end_bone_length**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_length>`

當 :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` 為 ``true`` 時，回傳骨骼鏈的末端骨骼尾部長度。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_name>`

回傳末端骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_middle_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_middle_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_middle_bone>`

回傳中間骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_middle_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_middle_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_middle_bone_name>`

回傳中間骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_direction:

.. rst-class:: classref-method

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **get_pole_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_direction>`

回傳極點方向。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_direction_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_pole_direction_vector**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_direction_vector>`

回傳極點方向向量。

如果 :ref:`get_pole_direction()<class_TwoBoneIK3D_method_get_pole_direction>` 為 :ref:`SkeletonModifier3D.SECONDARY_DIRECTION_NONE<class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE>`\ ，則該方法回傳 ``Vector3(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_pole_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_node>`

回傳極點目標節點，該節點建置一個平面，所有關節都位於該平面上，並且極點試圖指向該平面。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_root_bone>`

回傳根骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_root_bone_name>`

回傳根骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_target_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_target_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_target_node>`

回傳末端骨骼試圖到達的目標節點。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_is_end_bone_extended>`

如果末端骨骼被擴充形成尾部，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_is_using_virtual_end:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_virtual_end**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_is_using_virtual_end>`

如果末端骨骼作為虛擬骨骼從中間骨骼延伸出來，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone>`

設定末端骨骼索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_direction>`

當 :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` 為 ``true`` 時，設定末端骨骼的尾部方向。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_length:

.. rst-class:: classref-method

|void| **set_end_bone_length**\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_length>`

當 :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` 為 ``true`` 時，設定末端骨骼的尾部長度。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_name>`

設定末端骨骼的名稱。

\ **注意：**\ 末端骨骼必須是中間骨骼的子級。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_extend_end_bone>`

如果 ``enabled`` 為 ``true``\ ，則末端骨骼會延伸出一條尾巴。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_middle_bone:

.. rst-class:: classref-method

|void| **set_middle_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_middle_bone>`

設定中間骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_middle_bone_name:

.. rst-class:: classref-method

|void| **set_middle_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_middle_bone_name>`

設定中間骨骼的名稱。

\ **注意：**\ 中間骨骼必須是根骨骼的子級。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_direction:

.. rst-class:: classref-method

|void| **set_pole_direction**\ (\ index\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_direction>`

設定極點方向。

極點位於中間骨骼上，並指向極點目標。

旋轉軸是一個與該向量和前向向量正交的向量。

\ **注意：**\ 極點方向和前向向量不應共線，以避免意外旋轉。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_direction_vector:

.. rst-class:: classref-method

|void| **set_pole_direction_vector**\ (\ index\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_direction_vector>`

設定極點方向向量。

該向量會經過內部處理進行正規化。

如果向量長度為 ``0``\ ，則被視為與 :ref:`SkeletonModifier3D.SECONDARY_DIRECTION_NONE<class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE>` 同義。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_node:

.. rst-class:: classref-method

|void| **set_pole_node**\ (\ index\: :ref:`int<class_int>`, pole_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_node>`

設定極點目標節點，該節點建置一個平面，所有關節都位於該平面上，極點試圖指向該平面。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_root_bone>`

設定根骨骼索引。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_root_bone_name>`

設定根骨骼名稱。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_target_node:

.. rst-class:: classref-method

|void| **set_target_node**\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_target_node>`

設定末端骨骼試圖到達的目標節點。

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_use_virtual_end:

.. rst-class:: classref-method

|void| **set_use_virtual_end**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_use_virtual_end>`

如果 ``enabled`` 為 ``true``\ ，則末端骨骼將從中間骨骼延伸為虛擬骨骼。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
