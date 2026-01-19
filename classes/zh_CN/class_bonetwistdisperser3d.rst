:github_url: hide

.. _class_BoneTwistDisperser3D:

BoneTwistDisperser3D
====================

**继承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A node that propagates and disperses the child bone's twist to the parent bones.

.. rst-class:: classref-introduction-group

描述
----

This **BoneTwistDisperser3D** allows for smooth twist interpolation between multiple bones by dispersing the end bone's twist to the parents. This only changes the twist without changing the global position of each joint.

This is useful for smoothly twisting bones in combination with :ref:`CopyTransformModifier3D<class_CopyTransformModifier3D>` and IK.

\ **Note:** If an extracted twist is greater than 180 degrees, flipping occurs. This is similar to :ref:`ConvertTransformModifier3D<class_ConvertTransformModifier3D>`.

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_BoneTwistDisperser3D_DisperseMode:

.. rst-class:: classref-enumeration

enum **DisperseMode**: :ref:`🔗<enum_BoneTwistDisperser3D_DisperseMode>`

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_EVEN:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_EVEN** = ``0``

分配数值，使其从 ``0.0`` 到 ``1.0`` 单调递增，并确保所有权重相等。例如，如果有五个关节，从根骨骼开始的数值将依次为 ``0.2``\ 、\ ``0.4``\ 、\ ``0.6``\ 、\ ``0.8`` 和 ``1.0``\ 。

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_WEIGHTED** = ``1``

Assign amounts so that they monotonically increase from ``0.0`` to ``1.0``, based on the length of the bones between joint segments. See also :ref:`set_weight_position()<class_BoneTwistDisperser3D_method_set_weight_position>`.

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_CUSTOM** = ``2``

You can assign arbitrary amounts to the joint list. See also :ref:`set_joint_twist_amount()<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`.

When :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` is ``false``, a child of the reference bone exists solely to determine the twist axis, so its custom amount has absolutely no effect at all.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_BoneTwistDisperser3D_property_mutable_bone_axes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mutable_bone_axes** = ``true`` :ref:`🔗<class_BoneTwistDisperser3D_property_mutable_bone_axes>`

.. rst-class:: classref-property-setget

- |void| **set_mutable_bone_axes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_bone_axes_mutable**\ (\ )

If ``true``, the solver retrieves the bone axis from the bone pose every frame.

If ``false``, the solver retrieves the bone axis from the bone rest and caches it.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_BoneTwistDisperser3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

设置的数量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_BoneTwistDisperser3D_method_clear_settings:

.. rst-class:: classref-method

|void| **clear_settings**\ (\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_clear_settings>`

清空所有设置。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_damping_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_damping_curve**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_damping_curve>`

Returns the damping curve when :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` is :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_disperse_mode:

.. rst-class:: classref-method

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **get_disperse_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_disperse_mode>`

Returns whether to use automatic amount assignment or to allow manual assignment.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone>`

返回骨骼链末尾骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone_direction>`

Returns the tail direction of the end bone of the bone chain when :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone_name>`

返回骨骼链末尾骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_bone**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_bone>`

返回骨骼链关节列表中位于 ``joint`` 的骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_joint_bone_name**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_bone_name>`

返回骨骼链关节列表中位于 ``joint`` 的骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_count**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_count>`

返回骨骼链关节列表中的关节数量。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_twist_amount:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_joint_twist_amount**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_twist_amount>`

Returns the twist amount at ``joint`` in the bone chain's joint list when :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` is :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_reference_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_reference_bone>`

Returns the reference bone to extract twist of the setting at ``index``.

This bone is either the end of the chain or its parent, depending on :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_reference_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_reference_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_reference_bone_name>`

Returns the reference bone name to extract twist of the setting at ``index``.

This bone is either the end of the chain or its parent, depending on :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_root_bone>`

返回骨骼链根骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_root_bone_name>`

返回骨骼链根骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_twist_from:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_twist_from**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_twist_from>`

Returns the rotation to an arbitrary state before twisting for the current bone pose to extract the twist when :ref:`is_twist_from_rest()<class_BoneTwistDisperser3D_method_is_twist_from_rest>` is ``false``.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_weight_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_weight_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_weight_position>`

Returns the position at which to divide the segment between joints for weight assignment when :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` is :ref:`DISPERSE_MODE_WEIGHTED<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_is_end_bone_extended>`

Returns ``true`` if the end bone is extended to have a tail.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_is_twist_from_rest:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_twist_from_rest**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_is_twist_from_rest>`

Returns ``true`` if extracting the twist amount from the difference between the bone rest and the current bone pose.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_damping_curve:

.. rst-class:: classref-method

|void| **set_damping_curve**\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_damping_curve>`

Sets the damping curve when :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` is :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_disperse_mode:

.. rst-class:: classref-method

|void| **set_disperse_mode**\ (\ index\: :ref:`int<class_int>`, disperse_mode\: :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_disperse_mode>`

Sets whether to use automatic amount assignment or to allow manual assignment.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone>`

设置骨骼链中末端骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone_direction>`

当 :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` 为 ``true`` 时，设置骨骼链中末端骨骼的尾部方向。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone_name>`

Sets the end bone name of the bone chain.

\ **Note:** The end bone must be a child of the root bone.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_extend_end_bone>`

如果 ``enabled`` 为 ``true``\ ，则会延伸末端骨骼形成尾部。

如果 ``enabled`` 为 ``false``\ ，则 :ref:`get_reference_bone()<class_BoneTwistDisperser3D_method_get_reference_bone>` 会成为末端骨骼的父骨骼，并使用到末端骨骼的向量作为扭转轴。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_joint_twist_amount:

.. rst-class:: classref-method

|void| **set_joint_twist_amount**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, twist_amount\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`

Sets the twist amount at ``joint`` in the bone chain's joint list when :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` is :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_root_bone>`

设置骨骼链中根骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_root_bone_name>`

设置骨骼链中根骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_twist_from:

.. rst-class:: classref-method

|void| **set_twist_from**\ (\ index\: :ref:`int<class_int>`, from\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_twist_from>`

Sets the rotation to an arbitrary state before twisting for the current bone pose to extract the twist when :ref:`is_twist_from_rest()<class_BoneTwistDisperser3D_method_is_twist_from_rest>` is ``false``.

In other words, by calling :ref:`set_twist_from()<class_BoneTwistDisperser3D_method_set_twist_from>` by :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>` of a specific :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, you can extract only the twists generated by modifiers processed after that but before this **BoneTwistDisperser3D**.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_twist_from_rest:

.. rst-class:: classref-method

|void| **set_twist_from_rest**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_twist_from_rest>`

If ``enabled`` is ``true``, it extracts the twist amount from the difference between the bone rest and the current bone pose.

If ``enabled`` is ``false``, it extracts the twist amount from the difference between :ref:`get_twist_from()<class_BoneTwistDisperser3D_method_get_twist_from>` and the current bone pose. See also :ref:`set_twist_from()<class_BoneTwistDisperser3D_method_set_twist_from>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_weight_position:

.. rst-class:: classref-method

|void| **set_weight_position**\ (\ index\: :ref:`int<class_int>`, weight_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_weight_position>`

Sets the position at which to divide the segment between joints for weight assignment when :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` is :ref:`DISPERSE_MODE_WEIGHTED<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED>`.

For example, when ``weight_position`` is ``0.5``, if two bone segments with a length of ``1.0`` exist between three joints, weights are assigned to each joint from root to end at ratios of ``0.5``, ``1.0``, and ``0.5``. Then amounts become ``0.25``, ``0.75``, and ``1.0`` respectively.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
