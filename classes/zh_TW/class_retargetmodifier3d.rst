:github_url: hide

.. _class_RetargetModifier3D:

RetargetModifier3D
==================

**繼承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

修改器，能夠將父骨架的姿勢（或全域姿勢）轉移給在模型空間中具有不同放鬆姿勢的子骨架。

.. rst-class:: classref-introduction-group

說明
----

取得模型空間中相對於父骨架放鬆姿勢的姿勢（或全域姿勢）並將其轉移給子 Skeleton。

修改器會在父骨架的更新過程中直接重寫子骨架的姿勢。這意味著它會覆蓋目標骨架上正常處理過程中設定的映射骨骼姿勢。如果你想要在重新定向後設定目標骨架的骨骼姿勢，則需要向目標骨架新增一個 :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` 子節點才能修改姿勢。

\ **注意：**\ 啟用 :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>` 時，即便是未映射的骨骼也可能導致視覺問題，因為\ **如果父骨骼存在映射的子骨骼**\ ，那麼應用全域姿勢時會忽略父骨骼的姿勢。另見 :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`copy_bone_skin_scale<class_RetargetModifier3D_property_copy_bone_skin_scale>` | ``true``  |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] | :ref:`enable<class_RetargetModifier3D_property_enable>`                             | ``7``     |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`SkeletonProfile<class_SkeletonProfile>`                             | :ref:`profile<class_RetargetModifier3D_property_profile>`                           |           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>`           | ``false`` |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_position_enabled<class_RetargetModifier3D_method_is_position_enabled>`\ (\ ) |const|                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_rotation_enabled<class_RetargetModifier3D_method_is_rotation_enabled>`\ (\ ) |const|                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_scale_enabled<class_RetargetModifier3D_method_is_scale_enabled>`\ (\ ) |const|                                    |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_position_enabled<class_RetargetModifier3D_method_set_position_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_rotation_enabled<class_RetargetModifier3D_method_set_rotation_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_scale_enabled<class_RetargetModifier3D_method_set_scale_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ )       |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_RetargetModifier3D_TransformFlag:

.. rst-class:: classref-enumeration

flags **TransformFlag**: :ref:`🔗<enum_RetargetModifier3D_TransformFlag>`

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_POSITION** = ``1``

如果設定，則允許重新導向位置。

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_ROTATION** = ``2``

如果設定，則允許重新導向旋轉。

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_SCALE** = ``4``

如果設定，則允許重新導向縮放。

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_ALL** = ``7``

如果設定，則允許重新導向位置、旋轉、位置。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RetargetModifier3D_property_copy_bone_skin_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **copy_bone_skin_scale** = ``true`` :ref:`🔗<class_RetargetModifier3D_property_copy_bone_skin_scale>`

.. rst-class:: classref-property-setget

- |void| **set_copy_bone_skin_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_copying_bone_skin_scale**\ (\ )

If ``true``, copies :ref:`Skeleton3D.get_bone_skin_scale()<class_Skeleton3D_method_get_bone_skin_scale>` of the source skeleton's bones to the child skeletons' mapped bones.

If ``false``, the skin scale of the child skeletons' mapped bones are reset to ``Vector3(1, 1, 1)`` once and will not be overwritten after that.

\ **Note:** If you want to use :ref:`Skeleton3D.set_bone_skin_scale()<class_Skeleton3D_method_set_bone_skin_scale>` on a child skeleton's mapped bone, set this to ``false``. Even if you are not using :ref:`Skeleton3D.set_bone_skin_scale()<class_Skeleton3D_method_set_bone_skin_scale>` with parent skeleton, ``Vector3(1, 1, 1)`` will always be set for the child skeletons' mapped bones.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_enable:

.. rst-class:: classref-property

|bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] **enable** = ``7`` :ref:`🔗<class_RetargetModifier3D_property_enable>`

.. rst-class:: classref-property-setget

- |void| **set_enable_flags**\ (\ value\: |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\]\ )
- |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] **get_enable_flags**\ (\ )

停用 :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>` 時，用於單獨控制變換元素過程的標誌。

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_profile:

.. rst-class:: classref-property

:ref:`SkeletonProfile<class_SkeletonProfile>` **profile** :ref:`🔗<class_RetargetModifier3D_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_profile**\ (\ value\: :ref:`SkeletonProfile<class_SkeletonProfile>`\ )
- :ref:`SkeletonProfile<class_SkeletonProfile>` **get_profile**\ (\ )

用於重新導向與骨骼清單中名稱匹配骨骼的 :ref:`SkeletonProfile<class_SkeletonProfile>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_use_global_pose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_global_pose** = ``false`` :ref:`🔗<class_RetargetModifier3D_property_use_global_pose>`

.. rst-class:: classref-property-setget

- |void| **set_use_global_pose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_global_pose**\ (\ )

如果為 ``false``\ ，則在目標骨架的骨骼數量少於源骨架時，源骨架父級的變換將被忽略。

這樣可以在不同體型的模型之間進行重新導向，位置、旋轉和縮放都可以單獨重新導向。

如果為 ``true``\ ，則在重新導向時會考慮全域姿勢。

在目標骨架的骨骼數量少於源骨架的情況下，會考慮源骨架父級的變換。然而，骨架之間的骨骼長度必須完全匹配，否則骨骼將被強制擴充或縮小。

適用於在骨骼數量不同的模型之間進行重新導向時使用長度為 ``0`` 的虛設骨骼來匹配姿勢。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RetargetModifier3D_method_is_position_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_position_enabled>`

如果 :ref:`enable<class_RetargetModifier3D_property_enable>` 中有 :ref:`TRANSFORM_FLAG_POSITION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION>` 則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_is_rotation_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_rotation_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_rotation_enabled>`

如果 :ref:`enable<class_RetargetModifier3D_property_enable>` 中有 :ref:`TRANSFORM_FLAG_ROTATION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION>` 則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_is_scale_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_scale_enabled>`

如果 :ref:`enable<class_RetargetModifier3D_property_enable>` 中有 :ref:`TRANSFORM_FLAG_SCALE<class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE>` 則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_position_enabled:

.. rst-class:: classref-method

|void| **set_position_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_position_enabled>`

在 :ref:`enable<class_RetargetModifier3D_property_enable>` 中設定 :ref:`TRANSFORM_FLAG_POSITION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_rotation_enabled:

.. rst-class:: classref-method

|void| **set_rotation_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_rotation_enabled>`

在 :ref:`enable<class_RetargetModifier3D_property_enable>` 中設定 :ref:`TRANSFORM_FLAG_ROTATION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_scale_enabled:

.. rst-class:: classref-method

|void| **set_scale_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_scale_enabled>`

在 :ref:`enable<class_RetargetModifier3D_property_enable>` 中設定 :ref:`TRANSFORM_FLAG_SCALE<class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
