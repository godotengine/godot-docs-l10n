:github_url: hide

.. _class_ConvertTransformModifier3D:

ConvertTransformModifier3D
==========================

**繼承：** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` that apply transform to the bone which converted from reference.

.. rst-class:: classref-introduction-group

說明
----

Apply the copied transform of the bone set by :ref:`BoneConstraint3D.set_reference_bone()<class_BoneConstraint3D_method_set_reference_bone>` to the bone set by :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` about the specific axis with remapping it with some options.

There are 4 ways to apply the transform, depending on the combination of :ref:`set_relative()<class_ConvertTransformModifier3D_method_set_relative>` and :ref:`set_additive()<class_ConvertTransformModifier3D_method_set_additive>`.

\ **Relative + Additive:**\ 

- Extract reference pose relative to the rest and add it to the apply bone's pose.

\ **Relative + Not Additive:**\ 

- Extract reference pose relative to the rest and add it to the apply bone's rest.

\ **Not Relative + Additive:**\ 

- Extract reference pose absolutely and add it to the apply bone's pose.

\ **Not Relative + Not Additive:**\ 

- Extract reference pose absolutely and the apply bone's pose is replaced with it.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_ConvertTransformModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+-------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                      | :ref:`get_apply_axis<class_ConvertTransformModifier3D_method_get_apply_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                           |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_apply_range_max<class_ConvertTransformModifier3D_method_get_apply_range_max>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_apply_range_min<class_ConvertTransformModifier3D_method_get_apply_range_min>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` | :ref:`get_apply_transform_mode<class_ConvertTransformModifier3D_method_get_apply_transform_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                       |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                      | :ref:`get_reference_axis<class_ConvertTransformModifier3D_method_get_reference_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                   |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_reference_range_max<class_ConvertTransformModifier3D_method_get_reference_range_max>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_reference_range_min<class_ConvertTransformModifier3D_method_get_reference_range_min>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` | :ref:`get_reference_transform_mode<class_ConvertTransformModifier3D_method_get_reference_transform_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`is_additive<class_ConvertTransformModifier3D_method_is_additive>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`is_relative<class_ConvertTransformModifier3D_method_is_relative>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_additive<class_ConvertTransformModifier3D_method_set_additive>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_axis<class_ConvertTransformModifier3D_method_set_apply_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )                                                                            |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_range_max<class_ConvertTransformModifier3D_method_set_apply_range_max>`\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ )                                                                  |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_range_min<class_ConvertTransformModifier3D_method_set_apply_range_min>`\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ )                                                                  |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_transform_mode<class_ConvertTransformModifier3D_method_set_apply_transform_mode>`\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ )         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_axis<class_ConvertTransformModifier3D_method_set_reference_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_range_max<class_ConvertTransformModifier3D_method_set_reference_range_max>`\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_range_min<class_ConvertTransformModifier3D_method_set_reference_range_min>`\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_transform_mode<class_ConvertTransformModifier3D_method_set_reference_transform_mode>`\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_relative<class_ConvertTransformModifier3D_method_set_relative>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_ConvertTransformModifier3D_TransformMode:

.. rst-class:: classref-enumeration

enum **TransformMode**: :ref:`🔗<enum_ConvertTransformModifier3D_TransformMode>`

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_POSITION** = ``0``

Convert with position. Transfer the difference.

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_ROTATION** = ``1``

Convert with rotation. The angle is the roll for the specified axis.

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_SCALE** = ``2``

Convert with scale. Transfers the ratio, not the difference.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ConvertTransformModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_ConvertTransformModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

此修改器中的設定項數量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ConvertTransformModifier3D_method_get_apply_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_apply_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_axis>`

Returns the axis of the remapping destination transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_range_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_apply_range_max**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_range_max>`

Returns the maximum value of the remapping destination range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_range_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_apply_range_min**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_range_min>`

Returns the minimum value of the remapping destination range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_transform_mode:

.. rst-class:: classref-method

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **get_apply_transform_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_transform_mode>`

Returns the operation of the remapping destination transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_reference_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_axis>`

Returns the axis of the remapping source transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_range_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_reference_range_max**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_range_max>`

Returns the maximum value of the remapping source range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_range_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_reference_range_min**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_range_min>`

Returns the minimum value of the remapping source range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_transform_mode:

.. rst-class:: classref-method

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **get_reference_transform_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_transform_mode>`

Returns the operation of the remapping source transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_is_additive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_additive**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_is_additive>`

Returns ``true`` if the additive option is enabled in the setting at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_is_relative:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_relative**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_is_relative>`

Returns ``true`` if the relative option is enabled in the setting at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_additive:

.. rst-class:: classref-method

|void| **set_additive**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_additive>`

Sets additive option in the setting at ``index`` to ``enabled``. This mainly affects the process of applying transform to the :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>`.

If sets ``enabled`` to ``true``, the processed transform is added to the pose of the current apply bone.

If sets ``enabled`` to ``false``, the pose of the current apply bone is replaced with the processed transform. However, if set :ref:`set_relative()<class_ConvertTransformModifier3D_method_set_relative>` to ``true``, the transform is relative to rest.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_axis:

.. rst-class:: classref-method

|void| **set_apply_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_axis>`

Sets the axis of the remapping destination transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_range_max:

.. rst-class:: classref-method

|void| **set_apply_range_max**\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_range_max>`

Sets the maximum value of the remapping destination range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_range_min:

.. rst-class:: classref-method

|void| **set_apply_range_min**\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_range_min>`

Sets the minimum value of the remapping destination range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_transform_mode:

.. rst-class:: classref-method

|void| **set_apply_transform_mode**\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_transform_mode>`

Sets the operation of the remapping destination transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_axis:

.. rst-class:: classref-method

|void| **set_reference_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_axis>`

Sets the axis of the remapping source transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_range_max:

.. rst-class:: classref-method

|void| **set_reference_range_max**\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_range_max>`

Sets the maximum value of the remapping source range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_range_min:

.. rst-class:: classref-method

|void| **set_reference_range_min**\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_range_min>`

Sets the minimum value of the remapping source range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_transform_mode:

.. rst-class:: classref-method

|void| **set_reference_transform_mode**\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_transform_mode>`

Sets the operation of the remapping source transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_relative:

.. rst-class:: classref-method

|void| **set_relative**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_relative>`

Sets relative option in the setting at ``index`` to ``enabled``.

If sets ``enabled`` to ``true``, the extracted and applying transform is relative to the rest.

If sets ``enabled`` to ``false``, the extracted transform is absolute.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
