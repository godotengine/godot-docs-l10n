:github_url: hide

.. _class_RetargetModifier3D:

RetargetModifier3D
==================

**繼承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A modifier to transfer parent skeleton poses (or global poses) to child skeletons in model space with different rests.

.. rst-class:: classref-introduction-group

說明
----

Retrieves the pose (or global pose) relative to the parent Skeleton's rest in model space and transfers it to the child Skeleton.

This modifier rewrites the pose of the child skeleton directly in the parent skeleton's update process. This means that it overwrites the mapped bone pose set in the normal process on the target skeleton. If you want to set the target skeleton bone pose after retargeting, you will need to add a :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` child to the target skeleton and thereby modify the pose.

\ **Note:** When the :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>` is enabled, even if it is an unmapped bone, it can cause visual problems because the global pose is applied ignoring the parent bone's pose **if it has mapped bone children**. See also :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>`.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+---------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] | :ref:`enable<class_RetargetModifier3D_property_enable>`                   | ``7``     |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`SkeletonProfile<class_SkeletonProfile>`                             | :ref:`profile<class_RetargetModifier3D_property_profile>`                 |           |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>` | ``false`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------+-----------+

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

If set, allows to retarget the position.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_ROTATION** = ``2``

If set, allows to retarget the rotation.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_SCALE** = ``4``

If set, allows to retarget the scale.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_ALL** = ``7``

If set, allows to retarget the position/rotation/scale.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RetargetModifier3D_property_enable:

.. rst-class:: classref-property

|bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] **enable** = ``7`` :ref:`🔗<class_RetargetModifier3D_property_enable>`

.. rst-class:: classref-property-setget

- |void| **set_enable_flags**\ (\ value\: |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\]\ )
- |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] **get_enable_flags**\ (\ )

Flags to control the process of the transform elements individually when :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>` is disabled.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_profile:

.. rst-class:: classref-property

:ref:`SkeletonProfile<class_SkeletonProfile>` **profile** :ref:`🔗<class_RetargetModifier3D_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_profile**\ (\ value\: :ref:`SkeletonProfile<class_SkeletonProfile>`\ )
- :ref:`SkeletonProfile<class_SkeletonProfile>` **get_profile**\ (\ )

:ref:`SkeletonProfile<class_SkeletonProfile>` for retargeting bones with names matching the bone list.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_use_global_pose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_global_pose** = ``false`` :ref:`🔗<class_RetargetModifier3D_property_use_global_pose>`

.. rst-class:: classref-property-setget

- |void| **set_use_global_pose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_global_pose**\ (\ )

If ``false``, in case the target skeleton has fewer bones than the source skeleton, the source bone parent's transform will be ignored.

Instead, it is possible to retarget between models with different body shapes, and position, rotation, and scale can be retargeted separately.

If ``true``, retargeting is performed taking into account global pose.

In case the target skeleton has fewer bones than the source skeleton, the source bone parent's transform is taken into account. However, bone length between skeletons must match exactly, if not, the bones will be forced to expand or shrink.

This is useful for using dummy bone with length ``0`` to match postures when retargeting between models with different number of bones.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RetargetModifier3D_method_is_position_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_position_enabled>`

Returns ``true`` if :ref:`enable<class_RetargetModifier3D_property_enable>` has :ref:`TRANSFORM_FLAG_POSITION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_is_rotation_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_rotation_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_rotation_enabled>`

Returns ``true`` if :ref:`enable<class_RetargetModifier3D_property_enable>` has :ref:`TRANSFORM_FLAG_ROTATION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_is_scale_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_scale_enabled>`

Returns ``true`` if :ref:`enable<class_RetargetModifier3D_property_enable>` has :ref:`TRANSFORM_FLAG_SCALE<class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_position_enabled:

.. rst-class:: classref-method

|void| **set_position_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_position_enabled>`

Sets :ref:`TRANSFORM_FLAG_POSITION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION>` into :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_rotation_enabled:

.. rst-class:: classref-method

|void| **set_rotation_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_rotation_enabled>`

Sets :ref:`TRANSFORM_FLAG_ROTATION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION>` into :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_scale_enabled:

.. rst-class:: classref-method

|void| **set_scale_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_scale_enabled>`

Sets :ref:`TRANSFORM_FLAG_SCALE<class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE>` into :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
