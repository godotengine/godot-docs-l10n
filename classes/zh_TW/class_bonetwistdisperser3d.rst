:github_url: hide

.. _class_BoneTwistDisperser3D:

BoneTwistDisperser3D
====================

**繼承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

將子骨骼的扭轉傳播並分散到其父骨骼上的節點。

.. rst-class:: classref-introduction-group

說明
----

此 **BoneTwistDisperser3D** 節點通過將末端骨骼的扭轉分散到父骨骼，來實現多個骨骼間的平滑扭轉插值。它只會改變扭轉角度，而不會改變每個關節的全域位置。

與 :ref:`CopyTransformModifier3D<class_CopyTransformModifier3D>` 和反向動力學（IK）結合使用時，可用於實現骨骼的平滑扭轉效果。

\ **注意：**\ 如果提取的扭轉角度超過 180 度，則會發生翻轉。這一點與 :ref:`ConvertTransformModifier3D<class_ConvertTransformModifier3D>` 類似。

\ **注意：**\ 該類中的大多數方法都接受一個 ``index`` 參數。如果 IK 包含多個條目（例如 ``settings/<index>/root_bone_name``\ ），則該參數用於指定應回傳哪個設定清單條目。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`mutable_bone_axes<class_BoneTwistDisperser3D_property_mutable_bone_axes>` | ``true`` |
   +-------------------------+---------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`setting_count<class_BoneTwistDisperser3D_property_setting_count>`         | ``0``    |
   +-------------------------+---------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`clear_settings<class_BoneTwistDisperser3D_method_clear_settings>`\ (\ )                                                                                                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>`                                   | :ref:`get_damping_curve<class_BoneTwistDisperser3D_method_get_damping_curve>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` | :ref:`get_disperse_mode<class_BoneTwistDisperser3D_method_get_disperse_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_end_bone<class_BoneTwistDisperser3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` | :ref:`get_end_bone_direction<class_BoneTwistDisperser3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_end_bone_name<class_BoneTwistDisperser3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_bone<class_BoneTwistDisperser3D_method_get_joint_bone>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_joint_bone_name<class_BoneTwistDisperser3D_method_get_joint_bone_name>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_count<class_BoneTwistDisperser3D_method_get_joint_count>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_joint_twist_amount<class_BoneTwistDisperser3D_method_get_joint_twist_amount>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_reference_bone<class_BoneTwistDisperser3D_method_get_reference_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_reference_bone_name<class_BoneTwistDisperser3D_method_get_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_root_bone<class_BoneTwistDisperser3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_root_bone_name<class_BoneTwistDisperser3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                         | :ref:`get_twist_from<class_BoneTwistDisperser3D_method_get_twist_from>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                       |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_weight_position<class_BoneTwistDisperser3D_method_get_weight_position>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_end_bone_extended<class_BoneTwistDisperser3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_twist_from_rest<class_BoneTwistDisperser3D_method_is_twist_from_rest>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_damping_curve<class_BoneTwistDisperser3D_method_set_damping_curve>`\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ )                                                      |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_disperse_mode<class_BoneTwistDisperser3D_method_set_disperse_mode>`\ (\ index\: :ref:`int<class_int>`, disperse_mode\: :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>`\ )            |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone<class_BoneTwistDisperser3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_direction<class_BoneTwistDisperser3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_name<class_BoneTwistDisperser3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_extend_end_bone<class_BoneTwistDisperser3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_joint_twist_amount<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, twist_amount\: :ref:`float<class_float>`\ )      |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone<class_BoneTwistDisperser3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                   |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone_name<class_BoneTwistDisperser3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_twist_from<class_BoneTwistDisperser3D_method_set_twist_from>`\ (\ index\: :ref:`int<class_int>`, from\: :ref:`Quaternion<class_Quaternion>`\ )                                                   |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_twist_from_rest<class_BoneTwistDisperser3D_method_set_twist_from_rest>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_weight_position<class_BoneTwistDisperser3D_method_set_weight_position>`\ (\ index\: :ref:`int<class_int>`, weight_position\: :ref:`float<class_float>`\ )                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_BoneTwistDisperser3D_DisperseMode:

.. rst-class:: classref-enumeration

enum **DisperseMode**: :ref:`🔗<enum_BoneTwistDisperser3D_DisperseMode>`

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_EVEN:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_EVEN** = ``0``

分配數值，使其從 ``0.0`` 到 ``1.0`` 單調遞增，並確保所有權重相等。例如，如果有五個關節，從根骨骼開始的數值將依次為 ``0.2``\ 、\ ``0.4``\ 、\ ``0.6``\ 、\ ``0.8`` 和 ``1.0``\ 。

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_WEIGHTED** = ``1``

根據關節節段之間骨骼的長度，分配數值，使其從 ``0.0`` 單調遞增到 ``1.0``\ 。另見 :ref:`set_weight_position()<class_BoneTwistDisperser3D_method_set_weight_position>`\ 。

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_CUSTOM** = ``2``

可以為關節清單分配任意值。另見 :ref:`set_joint_twist_amount()<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`\ 。

當 :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` 為 ``false`` 時，參考骨骼的子骨骼僅用於確定扭轉軸，因此其自訂量完全沒有效果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_BoneTwistDisperser3D_property_mutable_bone_axes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mutable_bone_axes** = ``true`` :ref:`🔗<class_BoneTwistDisperser3D_property_mutable_bone_axes>`

.. rst-class:: classref-property-setget

- |void| **set_mutable_bone_axes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_bone_axes_mutable**\ (\ )

如果為 ``true``\ ，則求解器每影格從骨骼姿態中檢索骨骼軸。

如果為 ``false``\ ，則求解器將從骨骼放鬆中檢索骨骼軸並將其快取。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_BoneTwistDisperser3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

設定的數量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_BoneTwistDisperser3D_method_clear_settings:

.. rst-class:: classref-method

|void| **clear_settings**\ (\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_clear_settings>`

清空所有設定。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_damping_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_damping_curve**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_damping_curve>`

當 :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` 的值為 :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>` 時，回傳阻尼曲線。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_disperse_mode:

.. rst-class:: classref-method

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **get_disperse_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_disperse_mode>`

回傳是使用自動分配還是允許手動分配。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone>`

回傳骨骼鏈末尾骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone_direction>`

當 :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` 為 ``true`` 時，回傳骨骼鏈末端骨骼的尾部方向。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone_name>`

回傳骨骼鏈末尾骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_bone**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_bone>`

回傳骨骼鏈關節清單中位於 ``joint`` 的骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_joint_bone_name**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_bone_name>`

回傳骨骼鏈關節清單中位於 ``joint`` 的骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_count**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_count>`

回傳骨骼鏈關節清單中的關節數量。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_twist_amount:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_joint_twist_amount**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_twist_amount>`

當 :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` 為 :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>` 時，回傳骨骼鏈關節清單中 ``joint`` 處的扭轉量。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_reference_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_reference_bone>`

回傳參考骨骼，以提取 ``index`` 處的設定項的扭曲。

根據 :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>`\ ，該骨骼要麼是鏈的末端，要麼是它的父級。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_reference_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_reference_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_reference_bone_name>`

回傳參考骨骼名稱，以提取 ``index`` 處的設定項的扭曲。

根據 :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>`\ ，該骨骼要麼是鏈的末端，要麼是它的父級。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_root_bone>`

回傳骨骼鏈根骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_root_bone_name>`

回傳骨骼鏈根骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_twist_from:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_twist_from**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_twist_from>`

當 :ref:`is_twist_from_rest()<class_BoneTwistDisperser3D_method_is_twist_from_rest>` 為 ``false`` 時，回傳目前骨骼姿勢在扭轉之前恢復到任意狀態時的旋轉，以便提取扭轉角度。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_weight_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_weight_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_weight_position>`

回傳當 :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` 為 :ref:`DISPERSE_MODE_WEIGHTED<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED>` 時，在關節之間分割線段以進行權重分配的位置。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_is_end_bone_extended>`

如果末端骨骼被擴充形成尾部，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_is_twist_from_rest:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_twist_from_rest**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_is_twist_from_rest>`

如果能夠從骨骼放鬆姿勢和目前骨骼姿勢之間的差異中提取扭轉量，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_damping_curve:

.. rst-class:: classref-method

|void| **set_damping_curve**\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_damping_curve>`

當 :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` 為 :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>` 時，用於設定阻尼曲線。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_disperse_mode:

.. rst-class:: classref-method

|void| **set_disperse_mode**\ (\ index\: :ref:`int<class_int>`, disperse_mode\: :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_disperse_mode>`

設定是使用自動分配還是允許手動分配。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone>`

設定骨骼鏈中末端骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone_direction>`

當 :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` 為 ``true`` 時，設定骨骼鏈中末端骨骼的尾部方向。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone_name>`

設定骨骼鏈的末端骨骼名稱。

\ **注意：**\ 末端骨骼必須是根骨骼的子骨骼。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_extend_end_bone>`

如果 ``enabled`` 為 ``true``\ ，則會延伸末端骨骼形成尾部。

如果 ``enabled`` 為 ``false``\ ，則 :ref:`get_reference_bone()<class_BoneTwistDisperser3D_method_get_reference_bone>` 會成為末端骨骼的父骨骼，並使用到末端骨骼的向量作為扭轉軸。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_joint_twist_amount:

.. rst-class:: classref-method

|void| **set_joint_twist_amount**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, twist_amount\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`

當 :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` 為 :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>` 時，設定骨骼鏈關節清單中 ``joint`` 處的扭轉量。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_root_bone>`

設定骨骼鏈中根骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_root_bone_name>`

設定骨骼鏈中根骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_twist_from:

.. rst-class:: classref-method

|void| **set_twist_from**\ (\ index\: :ref:`int<class_int>`, from\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_twist_from>`

在扭轉目前骨骼姿勢之前，將旋轉設定為任意狀態，以便在 :ref:`is_twist_from_rest()<class_BoneTwistDisperser3D_method_is_twist_from_rest>` 為 ``false`` 時提取扭轉。

換言之，通過對特定 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` 的 :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>` 呼叫 :ref:`set_twist_from()<class_BoneTwistDisperser3D_method_set_twist_from>`\ ，可以僅提取在該 **BoneTwistDisperser3D** 之前處理的修改器生成的扭轉。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_twist_from_rest:

.. rst-class:: classref-method

|void| **set_twist_from_rest**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_twist_from_rest>`

如果 ``enabled`` 為 ``true``\ ，則從骨骼放鬆姿勢和目前骨骼姿勢之間的差異中提取扭轉量。

如果 ``enabled`` 為 ``false``\ ，則從 :ref:`get_twist_from()<class_BoneTwistDisperser3D_method_get_twist_from>` 和目前骨骼姿勢之間的差異中提取扭轉量。另見 :ref:`set_twist_from()<class_BoneTwistDisperser3D_method_set_twist_from>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_weight_position:

.. rst-class:: classref-method

|void| **set_weight_position**\ (\ index\: :ref:`int<class_int>`, weight_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_weight_position>`

當 :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` 的值為 :ref:`DISPERSE_MODE_WEIGHTED<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED>` 時，設定在關節之間分割線段以進行權重分配的位置。

例如，當 ``weight_position`` 為 ``0.5`` 時，如果三個關節之間存在兩段長度為 ``1.0`` 的骨骼，則從根關節到末端關節，每個關節的權重分配比例分別為 ``0.5``\ 、\ ``1.0`` 和 ``0.5``\ 。然後，最終的權重值將分別變為 ``0.25``\ 、\ ``0.75`` 和 ``1.0``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
