:github_url: hide

.. _class_CopyTransformModifier3D:

CopyTransformModifier3D
=======================

**繼承：** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

對骨骼應用變換的 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ ，變換複製自參考骨骼。

.. rst-class:: classref-introduction-group

說明
----

從通過 :ref:`BoneConstraint3D.set_reference_bone()<class_BoneConstraint3D_method_set_reference_bone>` 指定的骨骼上複製變換，將所複製的變換套用至通過 :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` 設定的骨骼上，並可使用一些遮罩和選項對這個過程進行調整。

根據 :ref:`set_relative()<class_CopyTransformModifier3D_method_set_relative>`\ （相對）和 :ref:`set_additive()<class_CopyTransformModifier3D_method_set_additive>`\ （疊加）的組合，有四種方式可以應用該變換：

\ **相對 + 疊加**\ ：

- 提取相對於靜止姿態的參考姿態，並將其新增到目標骨骼的姿態上。

\ **相對 + 非疊加：**\ 

- 提取相對於靜止姿態的參考姿態，並將其新增到目標骨骼的靜止姿態上。

\ **非相對 + 疊加：**\ 

- 提取參考姿態的絕對姿態，並將其新增到目標骨骼的姿態上。

\ **非相對 + 非疊加**\ ：

- 提取參考姿態的絕對姿態，並將其替換目標骨骼的姿態。

\ **注意：**\ 相對選項僅當 :ref:`BoneConstraint3D.get_reference_type()<class_BoneConstraint3D_method_get_reference_type>` 為 :ref:`BoneConstraint3D.REFERENCE_TYPE_BONE<class_BoneConstraint3D_constant_REFERENCE_TYPE_BONE>` 時可用。另見 :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_CopyTransformModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+----------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]           | :ref:`get_axis_flags<class_CopyTransformModifier3D_method_get_axis_flags>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\] | :ref:`get_copy_flags<class_CopyTransformModifier3D_method_get_copy_flags>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]           | :ref:`get_invert_flags<class_CopyTransformModifier3D_method_get_invert_flags>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_additive<class_CopyTransformModifier3D_method_is_additive>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_x_enabled<class_CopyTransformModifier3D_method_is_axis_x_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_x_inverted<class_CopyTransformModifier3D_method_is_axis_x_inverted>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_y_enabled<class_CopyTransformModifier3D_method_is_axis_y_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_y_inverted<class_CopyTransformModifier3D_method_is_axis_y_inverted>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_z_enabled<class_CopyTransformModifier3D_method_is_axis_z_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_z_inverted<class_CopyTransformModifier3D_method_is_axis_z_inverted>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_position_copying<class_CopyTransformModifier3D_method_is_position_copying>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_relative<class_CopyTransformModifier3D_method_is_relative>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_rotation_copying<class_CopyTransformModifier3D_method_is_rotation_copying>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_scale_copying<class_CopyTransformModifier3D_method_is_scale_copying>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_additive<class_CopyTransformModifier3D_method_set_additive>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                               |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_flags<class_CopyTransformModifier3D_method_set_axis_flags>`\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ )           |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_x_enabled<class_CopyTransformModifier3D_method_set_axis_x_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                   |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_x_inverted<class_CopyTransformModifier3D_method_set_axis_x_inverted>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                 |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_y_enabled<class_CopyTransformModifier3D_method_set_axis_y_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                   |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_y_inverted<class_CopyTransformModifier3D_method_set_axis_y_inverted>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                 |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_z_enabled<class_CopyTransformModifier3D_method_set_axis_z_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                   |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_z_inverted<class_CopyTransformModifier3D_method_set_axis_z_inverted>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                 |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_flags<class_CopyTransformModifier3D_method_set_copy_flags>`\ (\ index\: :ref:`int<class_int>`, copy_flags\: |bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\]\ ) |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_position<class_CopyTransformModifier3D_method_set_copy_position>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                     |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_rotation<class_CopyTransformModifier3D_method_set_copy_rotation>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                     |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_scale<class_CopyTransformModifier3D_method_set_copy_scale>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                           |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_invert_flags<class_CopyTransformModifier3D_method_set_invert_flags>`\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ )       |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_relative<class_CopyTransformModifier3D_method_set_relative>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                               |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_CopyTransformModifier3D_TransformFlag:

.. rst-class:: classref-enumeration

flags **TransformFlag**: :ref:`🔗<enum_CopyTransformModifier3D_TransformFlag>`

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_POSITION** = ``1``

如果設定，則會允許複製位置。

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_ROTATION** = ``2``

如果設定，則會允許複製旋轉。

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_SCALE** = ``4``

如果設定，則會允許複製縮放。

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_ALL** = ``7``

如果設定，則會允許複製位置、旋轉、縮放。

.. rst-class:: classref-item-separator

----

.. _enum_CopyTransformModifier3D_AxisFlag:

.. rst-class:: classref-enumeration

flags **AxisFlag**: :ref:`🔗<enum_CopyTransformModifier3D_AxisFlag>`

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_X:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_X** = ``1``

如果設定，則會允許處理 X 軸。

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_Y:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_Y** = ``2``

如果設定，則會允許處理 Y 軸。

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_Z:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_Z** = ``4``

如果設定，則會允許處理 Z 軸。

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_ALL** = ``7``

如果設定，則會允許處理所有軸。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CopyTransformModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_CopyTransformModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

此修改器中的設定項數量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CopyTransformModifier3D_method_get_axis_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\] **get_axis_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_axis_flags>`

回傳索引為 ``index`` 的設定的軸標誌。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_get_copy_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\] **get_copy_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_copy_flags>`

回傳索引為 ``index`` 的設定的複製標誌。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_get_invert_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\] **get_invert_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_invert_flags>`

回傳索引為 ``index`` 的設定的翻轉標誌。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_additive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_additive**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_additive>`

如果索引為 ``index`` 的設定啟用了加法選項，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_x_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_x_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_x_enabled>`

如果索引為 ``index`` 的設定的啟用標誌中存在 X 軸對應的標誌，則回傳 ``true``\ 。另見 :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_x_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_x_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_x_inverted>`

如果索引為 ``index`` 的設定的翻轉標誌中存在 X 軸對應的標誌，則回傳 ``true``\ 。另見 :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_y_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_y_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_y_enabled>`

如果索引為 ``index`` 的設定的啟用標誌中存在 Y 軸對應的標誌，則回傳 ``true``\ 。另見 :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_y_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_y_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_y_inverted>`

如果索引為 ``index`` 的設定的翻轉標誌中存在 Y 軸對應的標誌，則回傳 ``true``\ 。另見 :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_z_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_z_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_z_enabled>`

如果索引為 ``index`` 的設定的啟用標誌中存在 Z 軸對應的標誌，則回傳 ``true``\ 。另見 :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_z_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_z_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_z_inverted>`

如果索引為 ``index`` 的設定的翻轉標誌中存在 Z 軸對應的標誌，則回傳 ``true``\ 。另見 :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_position_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_position_copying>`

如果索引為 ``index`` 的設定的複製標誌中存在位置對應的標誌，則回傳 ``true``\ 。另見 :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_relative:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_relative**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_relative>`

如果索引為 ``index`` 的設定啟用了相對選項，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_rotation_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_rotation_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_rotation_copying>`

如果索引為 ``index`` 的設定的複製標誌中存在旋轉對應的標誌，則回傳 ``true``\ 。另見 :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_scale_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_scale_copying>`

如果索引為 ``index`` 的設定的複製標誌中存在縮放對應的標誌，則回傳 ``true``\ 。另見 :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_additive:

.. rst-class:: classref-method

|void| **set_additive**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_additive>`

將索引為 ``index`` 的設定的疊加選項設定為 ``enabled``\ 。主要影響對 :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` 施加變換的過程。

如果將 ``enabled`` 設定為 ``true``\ ，則會將處理後的變換疊加到目前應用骨骼的姿勢之上。

如果將 ``enabled`` 設定為 ``false``\ ，則會將目前應用骨骼的姿勢替換為處理後的變換。不過如果將 :ref:`set_relative()<class_CopyTransformModifier3D_method_set_relative>` 設為 ``true``\ ，則該變換是相對於放鬆姿勢的。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_flags:

.. rst-class:: classref-method

|void| **set_axis_flags**\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_flags>`

設定複製軸標誌。如果標誌有效，則會複製對應的軸。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_x_enabled:

.. rst-class:: classref-method

|void| **set_axis_x_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_x_enabled>`

如果 ``enabled`` 為 ``true``\ ，則會複製 X 軸。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_x_inverted:

.. rst-class:: classref-method

|void| **set_axis_x_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_x_inverted>`

如果 ``enabled`` 為 ``true``\ ，則會翻轉 X 軸。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_y_enabled:

.. rst-class:: classref-method

|void| **set_axis_y_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_y_enabled>`

如果 ``enabled`` 為 ``true``\ ，則會複製 Y 軸。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_y_inverted:

.. rst-class:: classref-method

|void| **set_axis_y_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_y_inverted>`

如果 ``enabled`` 為 ``true``\ ，則會翻轉 Y 軸。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_z_enabled:

.. rst-class:: classref-method

|void| **set_axis_z_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_z_enabled>`

如果 ``enabled`` 為 ``true``\ ，則會複製 Z 軸。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_z_inverted:

.. rst-class:: classref-method

|void| **set_axis_z_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_z_inverted>`

如果 ``enabled`` 為 ``true``\ ，則會翻轉 Z 軸。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_flags:

.. rst-class:: classref-method

|void| **set_copy_flags**\ (\ index\: :ref:`int<class_int>`, copy_flags\: |bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_flags>`

設定處理變換操作的標誌。如果標誌有效，則會處理變換操作。

\ **注意：**\ 如果旋轉僅對一個軸有效，就會考慮有效軸的滾轉值。如果旋轉對兩個軸有效，就會丟棄無效軸的滾轉值。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_position:

.. rst-class:: classref-method

|void| **set_copy_position**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_position>`

如果 ``enabled`` 為 ``true``\ ，則會複製位置。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_rotation:

.. rst-class:: classref-method

|void| **set_copy_rotation**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_rotation>`

如果 ``enabled`` 為 ``true``\ ，則會複製旋轉。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_scale:

.. rst-class:: classref-method

|void| **set_copy_scale**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_scale>`

如果 ``enabled`` 為 ``true``\ ，則會複製縮放。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_invert_flags:

.. rst-class:: classref-method

|void| **set_invert_flags**\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_invert_flags>`

設定翻轉軸的標誌。如果標誌有效，則會複製該軸。

\ **注意：**\ 縮放翻轉意味著對數值取倒數，並不是負數縮放。例如將 ``2.0`` 翻轉就是 ``0.5``\ 。

\ **注意：**\ 旋轉翻轉會翻轉四元數的元素。例如，雙軸反轉會翻轉每個軸的滾轉，而三軸反轉會翻轉最終朝向。不過請注意，僅翻轉一個軸可能會導致未翻轉軸的意外旋轉，這是由於四元數的特性所導致的。

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_relative:

.. rst-class:: classref-method

|void| **set_relative**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_relative>`

將索引為 ``index`` 的設定的相對選項設定為 ``enabled``\ 。

如果將 ``enabled`` 設定為 ``true``\ ，則提取並應用的變換是相對於放鬆姿勢的。

如果將 ``enabled`` 設定為 ``false``\ ，則提取到的變換是絕對的。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
