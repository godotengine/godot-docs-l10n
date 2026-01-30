:github_url: hide

.. _class_LimitAngularVelocityModifier3D:

LimitAngularVelocityModifier3D
==============================

**继承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Limit bone rotation angular velocity.

.. rst-class:: classref-introduction-group

描述
----

This modifier limits bone rotation angular velocity by comparing poses between previous and current frame.

You can add bone chains by specifying their root and end bones, then add the bones between them to a list. Modifier processes either that list or the bones excluding those in the list depending on the option :ref:`exclude<class_LimitAngularVelocityModifier3D_property_exclude>`.

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_LimitAngularVelocityModifier3D_property_chain_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **chain_count** = ``0`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_chain_count>`

.. rst-class:: classref-property-setget

- |void| **set_chain_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_chain_count**\ (\ )

The number of chains.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_exclude:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude** = ``false`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_exclude**\ (\ )

If ``true``, the modifier processes bones not included in the bone list.

If ``false``, the bones processed by the modifier are equal to the bone list.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_joint_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **joint_count** = ``0`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_joint_count>`

The number of joints in the list which created by chains dynamically.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_max_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_angular_velocity** = ``6.2831855`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_max_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_max_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_angular_velocity**\ (\ )

The maximum angular velocity per second.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_LimitAngularVelocityModifier3D_method_clear_chains:

.. rst-class:: classref-method

|void| **clear_chains**\ (\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_clear_chains>`

Clear all chains.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_end_bone>`

返回骨骼链末尾骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_end_bone_name>`

返回骨骼链末尾骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_root_bone>`

返回骨骼链根骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_root_bone_name>`

返回骨骼链根骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_reset>`

Sets the reference pose for angle comparison to the current pose with the influence of constraints removed. This function is automatically triggered when joints change or upon activation.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_end_bone>`

设置骨骼链中末端骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_end_bone_name>`

Sets the end bone name of the bone chain.

\ **Note:** End bone must be the root bone or a child of the root bone.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_root_bone>`

设置骨骼链中根骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_root_bone_name>`

设置骨骼链中根骨骼的名称。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
