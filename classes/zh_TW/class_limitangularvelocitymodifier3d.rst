:github_url: hide

.. _class_LimitAngularVelocityModifier3D:

LimitAngularVelocityModifier3D
==============================

**繼承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

限制骨骼旋轉角速度。

.. rst-class:: classref-introduction-group

說明
----

這個修飾器通過對比上一影格和目前影格的骨骼姿態，來限制骨骼旋轉的角速度。

你可以通過指定根骨骼和末端骨骼來新增骨骼鏈，然後將它們之間的骨骼新增到一個清單中。根據 :ref:`exclude<class_LimitAngularVelocityModifier3D_property_exclude>`\ （排除）選項的設定，修飾器會處理這個清單中的骨骼，或者處理除了該清單之外的其他骨骼。

\ **注意：** 這個類中的大多數方法都帶有一個 ``index``\ （索引）參數。這個參數用來指定當 IK（反向運動學）包含多個設定項時，具體回傳哪一個（比如 ``settings//root_bone_name``\ ）。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`chain_count<class_LimitAngularVelocityModifier3D_property_chain_count>`                   | ``0``         |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`   | :ref:`exclude<class_LimitAngularVelocityModifier3D_property_exclude>`                           | ``false``     |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`joint_count<class_LimitAngularVelocityModifier3D_property_joint_count>`                   | ``0``         |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`max_angular_velocity<class_LimitAngularVelocityModifier3D_property_max_angular_velocity>` | ``6.2831855`` |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_chains<class_LimitAngularVelocityModifier3D_method_clear_chains>`\ (\ )                                                                                     |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_end_bone<class_LimitAngularVelocityModifier3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                              |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_end_bone_name<class_LimitAngularVelocityModifier3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_root_bone<class_LimitAngularVelocityModifier3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                            |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_root_bone_name<class_LimitAngularVelocityModifier3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                  |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`reset<class_LimitAngularVelocityModifier3D_method_reset>`\ (\ )                                                                                                   |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_end_bone<class_LimitAngularVelocityModifier3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                        |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_end_bone_name<class_LimitAngularVelocityModifier3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )   |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_root_bone<class_LimitAngularVelocityModifier3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                      |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_root_bone_name<class_LimitAngularVelocityModifier3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_LimitAngularVelocityModifier3D_property_chain_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **chain_count** = ``0`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_chain_count>`

.. rst-class:: classref-property-setget

- |void| **set_chain_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_chain_count**\ (\ )

鏈數。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_exclude:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude** = ``false`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_exclude**\ (\ )

如果為 ``true``\ ，則修改器會處理骨骼清單中未包含的骨骼。

如果為 ``false``\ ，則修改器處理的骨骼與骨骼清單中的骨骼相同。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_joint_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **joint_count** = ``0`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_joint_count>`

鏈式結構動態建立的清單中的關節數。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_max_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_angular_velocity** = ``6.2831855`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_max_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_max_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_angular_velocity**\ (\ )

每秒最大角速度。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_LimitAngularVelocityModifier3D_method_clear_chains:

.. rst-class:: classref-method

|void| **clear_chains**\ (\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_clear_chains>`

清除所有鏈。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_end_bone>`

回傳骨骼鏈末尾骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_end_bone_name>`

回傳骨骼鏈末尾骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_root_bone>`

回傳骨骼鏈根骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_root_bone_name>`

回傳骨骼鏈根骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_reset>`

設定參考姿態，用於與目前姿態進行角度比較，並去除約束的影響。當關節發生變化或啟用時，該函式會自動觸發。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_end_bone>`

設定骨骼鏈中末端骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_end_bone_name>`

設定骨骼鏈中末端骨骼的名稱。

\ **注意：**\ 末端骨骼必須是根骨骼或根骨骼的子骨骼。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_root_bone>`

設定骨骼鏈中根骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_root_bone_name>`

設定骨骼鏈中根骨骼的名稱。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
