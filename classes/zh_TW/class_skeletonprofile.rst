:github_url: hide

.. _class_SkeletonProfile:

SkeletonProfile
===============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>`

用作重定向目標的虛擬骨架的設定檔的基底類別。

.. rst-class:: classref-introduction-group

說明
----

這個資源在 :ref:`EditorScenePostImport<class_EditorScenePostImport>` 中使用。一些參數是指 :ref:`Skeleton3D<class_Skeleton3D>`\ 、\ :ref:`Skin<class_Skin>`\ 、\ :ref:`Animation<class_Animation>` 中的骨骼，還有一些節點是根據 **SkeletonProfile** 中的參數改寫的。

\ **注意：**\ 只有在建立自訂配置時這些參數才需要被設定。在 :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` 中，它們在內部被定義為唯讀值。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`重定向 3D 骨架 <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`               | :ref:`bone_size<class_SkeletonProfile_property_bone_size>`             | ``0``   |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`               | :ref:`group_size<class_SkeletonProfile_property_group_size>`           | ``0``   |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StringName<class_StringName>` | :ref:`root_bone<class_SkeletonProfile_property_root_bone>`             | ``&""`` |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StringName<class_StringName>` | :ref:`scale_base_bone<class_SkeletonProfile_property_scale_base_bone>` | ``&""`` |
   +-------------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`find_bone<class_SkeletonProfile_method_find_bone>`\ (\ bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                       |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_name<class_SkeletonProfile_method_get_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_parent<class_SkeletonProfile_method_get_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                          |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_tail<class_SkeletonProfile_method_get_bone_tail>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_group<class_SkeletonProfile_method_get_group>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_group_name<class_SkeletonProfile_method_get_group_name>`\ (\ group_idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_handle_offset<class_SkeletonProfile_method_get_handle_offset>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                      |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                    | :ref:`get_reference_pose<class_SkeletonProfile_method_get_reference_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TailDirection<enum_SkeletonProfile_TailDirection>` | :ref:`get_tail_direction<class_SkeletonProfile_method_get_tail_direction>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                        | :ref:`get_texture<class_SkeletonProfile_method_get_texture>`\ (\ group_idx\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_required<class_SkeletonProfile_method_is_required>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_name<class_SkeletonProfile_method_set_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_parent<class_SkeletonProfile_method_set_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_parent\: :ref:`StringName<class_StringName>`\ )                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_tail<class_SkeletonProfile_method_set_bone_tail>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_tail\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_group<class_SkeletonProfile_method_set_group>`\ (\ bone_idx\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`\ )                                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_group_name<class_SkeletonProfile_method_set_group_name>`\ (\ group_idx\: :ref:`int<class_int>`, group_name\: :ref:`StringName<class_StringName>`\ )                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_handle_offset<class_SkeletonProfile_method_set_handle_offset>`\ (\ bone_idx\: :ref:`int<class_int>`, handle_offset\: :ref:`Vector2<class_Vector2>`\ )                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_reference_pose<class_SkeletonProfile_method_set_reference_pose>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`Transform3D<class_Transform3D>`\ )                         |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_required<class_SkeletonProfile_method_set_required>`\ (\ bone_idx\: :ref:`int<class_int>`, required\: :ref:`bool<class_bool>`\ )                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_tail_direction<class_SkeletonProfile_method_set_tail_direction>`\ (\ bone_idx\: :ref:`int<class_int>`, tail_direction\: :ref:`TailDirection<enum_SkeletonProfile_TailDirection>`\ ) |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_texture<class_SkeletonProfile_method_set_texture>`\ (\ group_idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                            |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_SkeletonProfile_signal_profile_updated:

.. rst-class:: classref-signal

**profile_updated**\ (\ ) :ref:`🔗<class_SkeletonProfile_signal_profile_updated>`

更改配置中的值時會發出該訊號。這被用於更新 :ref:`BoneMap<class_BoneMap>` 中的鍵名並重繪 :ref:`BoneMap<class_BoneMap>` 編輯器。

\ **注意：**\ 為了簡化引用，這個訊號沒有直接連接到編輯器，而是通過 :ref:`BoneMap<class_BoneMap>` 傳遞給編輯器。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_SkeletonProfile_TailDirection:

.. rst-class:: classref-enumeration

enum **TailDirection**: :ref:`🔗<enum_SkeletonProfile_TailDirection>`

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_AVERAGE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_AVERAGE_CHILDREN** = ``0``

子級骨骼平均座標的方向。

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_SPECIFIC_CHILD:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_SPECIFIC_CHILD** = ``1``

指定子級骨骼座標的方向。

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_END:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_END** = ``2``

不計算方向。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SkeletonProfile_property_bone_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_size** = ``0`` :ref:`🔗<class_SkeletonProfile_property_bone_size>`

.. rst-class:: classref-property-setget

- |void| **set_bone_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_size**\ (\ )

The amount of bones in retargeting section's :ref:`BoneMap<class_BoneMap>` editor. For example, :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` has 56 bones.

The size of elements in :ref:`BoneMap<class_BoneMap>` updates when changing this property in its assigned **SkeletonProfile**.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_group_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **group_size** = ``0`` :ref:`🔗<class_SkeletonProfile_property_group_size>`

.. rst-class:: classref-property-setget

- |void| **set_group_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_group_size**\ (\ )

重定向部分的 :ref:`BoneMap<class_BoneMap>` 編輯器中的骨骼組的數量。例如，\ :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` 有 4 個組。

這個屬性的存在是為了在編輯器中把骨骼列表分成幾個部分。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonProfile_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

會被用作 :ref:`AnimationTree<class_AnimationTree>` 中根骨骼的骨骼名稱。應該是髖部父級的骨骼，位於世界原點。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_scale_base_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **scale_base_bone** = ``&""`` :ref:`🔗<class_SkeletonProfile_property_scale_base_bone>`

.. rst-class:: classref-property-setget

- |void| **set_scale_base_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_scale_base_bone**\ (\ )

骨骼的名稱，將使用模型的高度作為正規化的係數。例如，\ :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` 將其定義為 ``Hips`` 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SkeletonProfile_method_find_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_bone**\ (\ bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_find_bone>`

返回名稱與 ``bone_name`` 配對的骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_name>`

返回位於 ``bone_idx`` 的骨骼的名稱，會成為 :ref:`BoneMap<class_BoneMap>` 中的鍵名。

在重定向過程中，返回的骨骼名稱是目標骨架中的骨骼名稱。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_parent:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_parent>`

返回位於 ``bone_idx`` 的骨骼的父級骨骼的名稱。如果該骨骼沒有父級，則結果為空。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_tail:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_tail**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_tail>`

返回 ``bone_idx`` 處骨骼的尾部骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_group:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_group**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_group>`

返回索引為 ``bone_idx`` 的骨骼的群組。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_group_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_group_name**\ (\ group_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_group_name>`

返回 ``group_idx`` 處的組的名稱，該組將成為 :ref:`BoneMap<class_BoneMap>` 編輯器中的繪製組。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_handle_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_handle_offset**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_handle_offset>`

返回在 ``bone_idx`` 處的骨骼的偏移量，這將是 :ref:`BoneMap<class_BoneMap>` 編輯器中的按鈕位元置。

這是一個偏移量，原點在正方形的左上角。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_reference_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_reference_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_reference_pose>`

返回索引為 ``bone_idx`` 的骨骼的參考姿勢變換。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_tail_direction:

.. rst-class:: classref-method

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **get_tail_direction**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_tail_direction>`

返回索引為 ``bone_idx`` 的骨骼的尾部方向。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ group_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_texture>`

返回 ``group_idx`` 處的組的紋理，該組將作為 :ref:`BoneMap<class_BoneMap>` 編輯器中的繪製組的背景影像。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_is_required:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_required**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_is_required>`

回傳 ``bone_idx`` 處的骨骼是否需要重定目標。

該值由骨骼貼圖編輯器使用。如果該方法回傳 ``true``\ ，且未分配骨骼，則骨骼貼圖編輯器上的控點顏色將為紅色。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_name:

.. rst-class:: classref-method

|void| **set_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_name>`

設定在 ``bone_idx`` 處的骨骼的名稱，這將是 :ref:`BoneMap<class_BoneMap>` 中的鍵名。

在重定向過程中，設定的骨骼名稱是目標骨架的骨骼名稱。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_parent:

.. rst-class:: classref-method

|void| **set_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`, bone_parent\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_parent>`

將名稱為 ``bone_parent`` 的骨骼設定為索引為 ``bone_idx`` 的骨骼的父級。如果傳入的是空字串，則該骨骼沒有父級。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_tail:

.. rst-class:: classref-method

|void| **set_bone_tail**\ (\ bone_idx\: :ref:`int<class_int>`, bone_tail\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_tail>`

將名稱為 ``bone_tail`` 的骨骼設定為索引為 ``bone_idx`` 的骨骼的尾部。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_group:

.. rst-class:: classref-method

|void| **set_group**\ (\ bone_idx\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_group>`

設定索引為 ``bone_idx`` 的骨骼的群組。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_group_name:

.. rst-class:: classref-method

|void| **set_group_name**\ (\ group_idx\: :ref:`int<class_int>`, group_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_group_name>`

設定在 ``group_idx`` 處的組的名稱，這將是 :ref:`BoneMap<class_BoneMap>` 編輯器中的繪製組。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_handle_offset:

.. rst-class:: classref-method

|void| **set_handle_offset**\ (\ bone_idx\: :ref:`int<class_int>`, handle_offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_handle_offset>`

設定在 ``bone_idx`` 處的骨骼的偏移量，這將是 :ref:`BoneMap<class_BoneMap>` 編輯器中的按鈕位元置。

這是原點在正方形左上角的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_reference_pose:

.. rst-class:: classref-method

|void| **set_reference_pose**\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_reference_pose>`

設定骨骼 ``bone_idx`` 的參考姿勢變換。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_required:

.. rst-class:: classref-method

|void| **set_required**\ (\ bone_idx\: :ref:`int<class_int>`, required\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_required>`

將骨骼 ``bone_idx`` 的所需狀態設定為 ``required``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_tail_direction:

.. rst-class:: classref-method

|void| **set_tail_direction**\ (\ bone_idx\: :ref:`int<class_int>`, tail_direction\: :ref:`TailDirection<enum_SkeletonProfile_TailDirection>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_tail_direction>`

設定在 ``bone_idx`` 處的骨骼的尾部方向。

\ **注意：**\ 這裡只規定了計算方法。所需的實際座標應該儲存在外部骨架中，因此計算本身需要在外部完成。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_texture:

.. rst-class:: classref-method

|void| **set_texture**\ (\ group_idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_texture>`

設定在 ``group_idx`` 處的組的紋理，這將是 :ref:`BoneMap<class_BoneMap>` 編輯器中繪製組的背景影像。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
