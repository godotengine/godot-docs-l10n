:github_url: hide

.. _class_ShapeCast3D:

ShapeCast3D
===========

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D 形状，会扫描空间中某个区域，用于检测 :ref:`CollisionObject3D<class_CollisionObject3D>`\ 。

.. rst-class:: classref-introduction-group

描述
----

形状投射会将其 :ref:`shape<class_ShapeCast3D_property_shape>` 沿着 :ref:`target_position<class_ShapeCast3D_property_target_position>` 确定的投射方向进行扫描，能够检测到碰撞对象。类似于 :ref:`RayCast3D<class_RayCast3D>`\ ，但是能够扫描空间中的一个区域，而不仅仅是一条直线。\ **ShapeCast3D** 能够检测到多个碰撞对象。可用于实现较宽的激光射线，或者将简单的形状吸附到地面。

要立即检测碰撞重叠，可以将 :ref:`target_position<class_ShapeCast3D_property_target_position>` 设置为 ``Vector3(0, 0, 0)``\ ，并在同一个物理帧中调用 :ref:`force_shapecast_update()<class_ShapeCast3D_method_force_shapecast_update>`\ 。这样就能够克服 :ref:`Area3D<class_Area3D>` 在进行连续区域检测时的局限性，因为它无法立即获取碰撞信息。

\ **注意：**\ 形状投射比射线投射的计算量更大。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_ShapeCast3D_property_collide_with_areas>`             | ``false``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_ShapeCast3D_property_collide_with_bodies>`           | ``true``              |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_ShapeCast3D_property_collision_mask>`                     | ``1``                 |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Array<class_Array>`     | :ref:`collision_result<class_ShapeCast3D_property_collision_result>`                 | ``[]``                |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_shape_custom_color<class_ShapeCast3D_property_debug_shape_custom_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_ShapeCast3D_property_enabled>`                                   | ``true``              |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_ShapeCast3D_property_exclude_parent>`                     | ``true``              |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`margin<class_ShapeCast3D_property_margin>`                                     | ``0.0``               |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`max_results<class_ShapeCast3D_property_max_results>`                           | ``32``                |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Shape3D<class_Shape3D>` | :ref:`shape<class_ShapeCast3D_property_shape>`                                       |                       |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`target_position<class_ShapeCast3D_property_target_position>`                   | ``Vector3(0, -1, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_ShapeCast3D_method_add_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                                    |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_ShapeCast3D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_ShapeCast3D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_shapecast_update<class_ShapeCast3D_method_force_shapecast_update>`\ (\ )                                                                            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_safe_fraction<class_ShapeCast3D_method_get_closest_collision_safe_fraction>`\ (\ ) |const|                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_unsafe_fraction<class_ShapeCast3D_method_get_closest_collision_unsafe_fraction>`\ (\ ) |const|                                      |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_ShapeCast3D_method_get_collider>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_ShapeCast3D_method_get_collider_rid>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_ShapeCast3D_method_get_collider_shape>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_ShapeCast3D_method_get_collision_count>`\ (\ ) |const|                                                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_ShapeCast3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_normal<class_ShapeCast3D_method_get_collision_normal>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_point<class_ShapeCast3D_method_get_collision_point>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_ShapeCast3D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_ShapeCast3D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                              |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_ShapeCast3D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`resource_changed<class_ShapeCast3D_method_resource_changed>`\ (\ resource\: :ref:`Resource<class_Resource>`\ )                                            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_ShapeCast3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ShapeCast3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_ShapeCast3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

如果为 ``true``\ ，则会报告与 :ref:`Area3D<class_Area3D>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_ShapeCast3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

如果为 ``true``\ ，则会报告与 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_ShapeCast3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

形状的碰撞掩码。只有至少启用了一个在该掩码中的碰撞层的对象才会被检测到。有关详细信息，请参阅文档中的\ `《碰撞层和掩码》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_collision_result:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **collision_result** = ``[]`` :ref:`🔗<class_ShapeCast3D_property_collision_result>`

.. rst-class:: classref-property-setget

- :ref:`Array<class_Array>` **get_collision_result**\ (\ )

从碰撞扫描返回完整的碰撞信息。返回的数据与 :ref:`PhysicsDirectSpaceState3D.get_rest_info()<class_PhysicsDirectSpaceState3D_method_get_rest_info>` 方法中的数据相同。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_debug_shape_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_shape_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ShapeCast3D_property_debug_shape_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_shape_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_shape_custom_color**\ (\ )

如果在\ **调试**\ 菜单中启用了\ **可见碰撞形状**\ ，则用于在编辑器中和运行时中绘制形状的自定义颜色。如果 **ShapeCast3D** 与某物发生碰撞，该颜色将在运行时突出显示。

如果设置为 ``Color(0.0, 0.0, 0.0)``\ （默认值），则使用 :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>` 中设置的颜色。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_ShapeCast3D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

如果为 ``true``\ ，将报告碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_ShapeCast3D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

如果为 ``true``\ ，父节点将被排除在碰撞检测之外。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_ShapeCast3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

该形状的碰撞边距。较大的边距有助于更一致地检测碰撞，但代价是牺牲精度。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_max_results:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_results** = ``32`` :ref:`🔗<class_ShapeCast3D_property_max_results>`

.. rst-class:: classref-property-setget

- |void| **set_max_results**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_results**\ (\ )

可以使用这个参数来限制相交点的数量，减少处理时间。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_shape:

.. rst-class:: classref-property

:ref:`Shape3D<class_Shape3D>` **shape** :ref:`🔗<class_ShapeCast3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape3D<class_Shape3D>`\ )
- :ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ )

用于碰撞查询的形状。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_ShapeCast3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

形状的目标点，相对于该节点的 :ref:`Node3D.position<class_Node3D_property_position>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ShapeCast3D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_ShapeCast3D_method_add_exception>`

添加碰撞例外，使该形状不汇报与指定节点的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast3D_method_add_exception_rid>`

添加碰撞例外，使该形状不汇报与指定 :ref:`RID<class_RID>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_ShapeCast3D_method_clear_exceptions>`

移除该形状的所有碰撞例外。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_force_shapecast_update:

.. rst-class:: classref-method

|void| **force_shapecast_update**\ (\ ) :ref:`🔗<class_ShapeCast3D_method_force_shapecast_update>`

立即更新形状的碰撞信息，不等待下一次的 ``_physics_process`` 调用。例如，请在形状或其父级更改状态后使用该方法。

\ **注意：**\ 不将 :ref:`enabled<class_ShapeCast3D_property_enabled>` 设置为 ``true`` 也可以生效。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_closest_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_closest_collision_safe_fraction>`

返回从投射原点到 :ref:`target_position<class_ShapeCast3D_property_target_position>` 之间的分数，形状在不触发碰撞的情况下能够移动多远，是一个 ``0.0`` 到 ``1.0`` 之间的值。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_closest_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_closest_collision_unsafe_fraction>`

返回从投射原点到 :ref:`target_position<class_ShapeCast3D_property_target_position>` 之间的分数，形状移动多远才能够触发碰撞，是一个 ``0.0`` 到 ``1.0`` 之间的值。

在理想条件下与 :ref:`get_closest_collision_safe_fraction()<class_ShapeCast3D_method_get_closest_collision_safe_fraction>` 相同，但是形状投射是分步骤计算的，因此精确的碰撞点可能发生在两个计算位置之间。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collider>`

返回 ``index`` 处多次碰撞之一的碰撞 :ref:`Object<class_Object>`\ ，如果没有对象与形状相交（即 :ref:`is_colliding()<class_ShapeCast3D_method_is_colliding>` 返回 ``false``\ ），则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collider_rid>`

返回 ``index`` 处多次碰撞之一的碰撞对象的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collider_shape>`

返回 ``index`` 处多次碰撞之一的碰撞形状的形状 ID，如果没有对象与该形状相交（即 :ref:`is_colliding()<class_ShapeCast3D_method_is_colliding>` 返回 ``false``\ ），则返回 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_count>`

在撞击点检测到的碰撞次数。使用它来迭代由 :ref:`get_collider()<class_ShapeCast3D_method_get_collider>`\ 、\ :ref:`get_collider_shape()<class_ShapeCast3D_method_get_collider_shape>`\ 、\ :ref:`get_collision_point()<class_ShapeCast3D_method_get_collision_point>` 和 :ref:`get_collision_normal()<class_ShapeCast3D_method_get_collision_normal>` 方法提供的多个碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_mask_value>`

返回 :ref:`collision_mask<class_ShapeCast3D_property_collision_mask>` 中是否启用了指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_normal**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_normal>`

返回相交对象 ``index`` 处多次碰撞之一的法线。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_point**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_point>`

返回形状与碰撞对象相交的 ``index`` 处多次碰撞之一的碰撞点。

\ **注意：**\ 这个点使用\ **全局**\ 坐标系。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_is_colliding>`

返回是否有任何对象与形状的向量相交（考虑向量长度）。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_ShapeCast3D_method_remove_exception>`

移除碰撞例外，使该形状能够汇报与指定节点的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast3D_method_remove_exception_rid>`

移除碰撞例外，使该形状能够汇报与指定 :ref:`RID<class_RID>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ShapeCast3D_method_resource_changed>`

**已弃用：** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

这个方法什么也不做。

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ShapeCast3D_method_set_collision_mask_value>`

根据 ``value``\ ，启用或禁用 :ref:`collision_mask<class_ShapeCast3D_property_collision_mask>` 中指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
