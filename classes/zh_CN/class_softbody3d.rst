:github_url: hide

.. _class_SoftBody3D:

SoftBody3D
==========

**继承：** :ref:`MeshInstance3D<class_MeshInstance3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

可形变的 3D 物理网格。

.. rst-class:: classref-introduction-group

描述
----

可形变的 3D 物理网格。用于创建弹性或可形变的对象，例如布料、橡胶或其他柔性材质。

此外，\ **SoftBody3D** 受 :ref:`Area3D<class_Area3D>` 中定义的风力影响（参见 :ref:`Area3D.wind_source_path<class_Area3D_property_wind_source_path>`\ 、\ :ref:`Area3D.wind_force_magnitude<class_Area3D_property_wind_force_magnitude>` 和 :ref:`Area3D.wind_attenuation_factor<class_Area3D_property_wind_attenuation_factor>`\ ）。

\ **注意：**\ 使用 **SoftBody3D** 时建议使用 Jolt Physics，不要使用默认的 GodotPhysics3D，因为 Jolt Physics 的柔体实现更快更可靠。你可以使用 :ref:`ProjectSettings.physics/3d/physics_engine<class_ProjectSettings_property_physics/3d/physics_engine>` 项目设置来切换物理引擎。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`SoftBody <../tutorials/physics/soft_body>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`                 | ``1``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`                   | ``1``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`damping_coefficient<class_SoftBody3D_property_damping_coefficient>`         | ``0.01``         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`DisableMode<enum_SoftBody3D_DisableMode>` | :ref:`disable_mode<class_SoftBody3D_property_disable_mode>`                       | ``0``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`drag_coefficient<class_SoftBody3D_property_drag_coefficient>`               | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_stiffness<class_SoftBody3D_property_linear_stiffness>`               | ``0.5``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`parent_collision_ignore<class_SoftBody3D_property_parent_collision_ignore>` | ``NodePath("")`` |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`pressure_coefficient<class_SoftBody3D_property_pressure_coefficient>`       | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`                         | :ref:`ray_pickable<class_SoftBody3D_property_ray_pickable>`                       | ``true``         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`shrinking_factor<class_SoftBody3D_property_shrinking_factor>`               | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`simulation_precision<class_SoftBody3D_property_simulation_precision>`       | ``5``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`total_mass<class_SoftBody3D_property_total_mass>`                           | ``1.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`add_collision_exception_with<class_SoftBody3D_method_add_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                          |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_central_force<class_SoftBody3D_method_apply_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                     |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_central_impulse<class_SoftBody3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                               |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_force<class_SoftBody3D_method_apply_force>`\ (\ point_index\: :ref:`int<class_int>`, force\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_impulse<class_SoftBody3D_method_apply_impulse>`\ (\ point_index\: :ref:`int<class_int>`, impulse\: :ref:`Vector3<class_Vector3>`\ )                                                                                                          |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] | :ref:`get_collision_exceptions<class_SoftBody3D_method_get_collision_exceptions>`\ (\ )                                                                                                                                                                  |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_collision_layer_value<class_SoftBody3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_collision_mask_value<class_SoftBody3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                    |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                  | :ref:`get_physics_rid<class_SoftBody3D_method_get_physics_rid>`\ (\ ) |const|                                                                                                                                                                            |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_point_transform<class_SoftBody3D_method_get_point_transform>`\ (\ point_index\: :ref:`int<class_int>`\ )                                                                                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`is_point_pinned<class_SoftBody3D_method_is_point_pinned>`\ (\ point_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_collision_exception_with<class_SoftBody3D_method_remove_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                    |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_collision_layer_value<class_SoftBody3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_collision_mask_value<class_SoftBody3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                           |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_point_pinned<class_SoftBody3D_method_set_point_pinned>`\ (\ point_index\: :ref:`int<class_int>`, pinned\: :ref:`bool<class_bool>`, attachment_path\: :ref:`NodePath<class_NodePath>` = NodePath(""), insert_at\: :ref:`int<class_int>` = -1\ ) |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_SoftBody3D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_SoftBody3D_DisableMode>`

.. _class_SoftBody3D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

当 :ref:`Node.process_mode<class_Node_property_process_mode>` 被设置为 :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>` 时，从物理仿真中移除，停止与此 **SoftBody3D** 的所有物理交互。

当该 :ref:`Node<class_Node>` 再次被处理时，会自动重新加入到物理仿真中。

.. _class_SoftBody3D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``1``

当 :ref:`Node.process_mode<class_Node_property_process_mode>` 被设置为 :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>` 时，不影响物理仿真。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SoftBody3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_SoftBody3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

该 SoftBody3D **所在**\ 的物理层。碰撞对象可以存在于 32 个不同层中的一个或多个层中。另见 :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`\ 。

\ **注意：**\ 只有当对象 B 位于对象 A 扫描的任意层中时，对象 A 才能检测到与对象 B 的接触。有关更多信息，请参阅文档中的\ `《碰撞层与掩码》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_SoftBody3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

该 SoftBody3D **扫描**\ 的物理层。碰撞对象可以扫描 32 个不同层中的一个或多个层。另见 :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`\ 。

\ **注意：**\ 只有当对象 B 位于对象 A 扫描的任何层中时，对象 A 才能检测到与对象 B 的接触。有关更多信息，请参阅文档中的\ `《碰撞层与掩码》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_damping_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_coefficient** = ``0.01`` :ref:`🔗<class_SoftBody3D_property_damping_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_damping_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_coefficient**\ (\ )

物体的阻尼系数。当施加力时，较高的值会更明显地减慢物体的速度。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_SoftBody3D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_SoftBody3D_DisableMode>`\ )
- :ref:`DisableMode<enum_SoftBody3D_DisableMode>` **get_disable_mode**\ (\ )

定义 :ref:`Node.process_mode<class_Node_property_process_mode>` 为 :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>` 时的物理行为。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_drag_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_coefficient** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_drag_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_drag_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_coefficient**\ (\ )

物体的阻力系数。较高的值会增加该物体的空气阻力。

\ **注意：**\ Godot 的默认物理实现当前未使用该值。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_linear_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_stiffness** = ``0.5`` :ref:`🔗<class_SoftBody3D_property_linear_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_linear_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_stiffness**\ (\ )

值越大得到的物体约坚硬，较低的值会提高物体的弯曲能力。取值范围为 ``0.0`` 到 ``1.0`` 之间（含端点）。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_parent_collision_ignore:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **parent_collision_ignore** = ``NodePath("")`` :ref:`🔗<class_SoftBody3D_property_parent_collision_ignore>`

.. rst-class:: classref-property-setget

- |void| **set_parent_collision_ignore**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_parent_collision_ignore**\ (\ )

指向 :ref:`CollisionObject3D<class_CollisionObject3D>` 的 :ref:`NodePath<class_NodePath>`\ ，这个 SoftBody3D 应该避免穿过它。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_pressure_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure_coefficient** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_pressure_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_pressure_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure_coefficient**\ (\ )

该软体的压力系数。模拟物体内部的压力积聚。较高的值会增加该效果的强度。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_ray_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ray_pickable** = ``true`` :ref:`🔗<class_SoftBody3D_property_ray_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_ray_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ray_pickable**\ (\ )

如果为 ``true``\ ，则该 **SoftBody3D** 会响应 :ref:`RayCast3D<class_RayCast3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_shrinking_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **shrinking_factor** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_shrinking_factor>`

.. rst-class:: classref-property-setget

- |void| **set_shrinking_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shrinking_factor**\ (\ )

缩放 **SoftBody3D** 的边约束的剩余长度。正值会收缩网格，负值会扩展网格。例如，值为 ``0.1`` 会将网格的边缩短 10%，而 ``-0.1`` 则会将边扩展 10%。

\ **注意：**\ :ref:`shrinking_factor<class_SoftBody3D_property_shrinking_factor>` 最适用于存在钉固点的表面网格。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_simulation_precision:

.. rst-class:: classref-property

:ref:`int<class_int>` **simulation_precision** = ``5`` :ref:`🔗<class_SoftBody3D_property_simulation_precision>`

.. rst-class:: classref-property-setget

- |void| **set_simulation_precision**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_simulation_precision**\ (\ )

增加这个值会改善模拟结果，但会影响性能。请小心使用。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_total_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_mass** = ``1.0`` :ref:`🔗<class_SoftBody3D_property_total_mass>`

.. rst-class:: classref-property-setget

- |void| **set_total_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_total_mass**\ (\ )

该 SoftBody3D 的质量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SoftBody3D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SoftBody3D_method_add_collision_exception_with>`

将一个物体添加到这个物体不能碰撞的物体列表中。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_central_force>`

将力分配并施加到所有点上。力是时间相关的，应在每次物理更新时施加。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_central_impulse>`

将冲量分配并施加到所有点上。

冲量与时间无关！如果每帧都施加冲量会得到与帧率相关的力。因此只应在模拟一次性冲击时使用（否则请使用“_force”函数）。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ point_index\: :ref:`int<class_int>`, force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_force>`

将力施加到某个点上。力是时间相关的，应在每次物理更新时施加。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ point_index\: :ref:`int<class_int>`, impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_impulse>`

将冲量施加到某个点上。

冲量与时间无关！如果每帧都施加冲量会得到与帧率相关的力。因此只应在模拟一次性冲击时使用（否则请使用“_force”函数）。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_SoftBody3D_method_get_collision_exceptions>`

返回该物体的碰撞例外节点数组。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_collision_layer_value>`

返回 :ref:`collision_layer<class_SoftBody3D_property_collision_layer>` 中是否启用了指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_collision_mask_value>`

返回 :ref:`collision_mask<class_SoftBody3D_property_collision_mask>` 中是否启用了指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_physics_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_physics_rid**\ (\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_physics_rid>`

返回 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 用于该实体的内部 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_point_transform:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_transform**\ (\ point_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SoftBody3D_method_get_point_transform>`

返回表面数组中顶点的局部平移。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_is_point_pinned:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_pinned**\ (\ point_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_is_point_pinned>`

如果顶点设置为固定，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SoftBody3D_method_remove_collision_exception_with>`

将一个物体从该物体不能碰撞的物体列表中移除。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SoftBody3D_method_set_collision_layer_value>`

根据 ``value``\ ，启用或禁用 :ref:`collision_layer<class_SoftBody3D_property_collision_layer>` 中指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SoftBody3D_method_set_collision_mask_value>`

根据 ``value``\ ，启用或禁用 :ref:`collision_mask<class_SoftBody3D_property_collision_mask>` 中指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_point_pinned:

.. rst-class:: classref-method

|void| **set_point_pinned**\ (\ point_index\: :ref:`int<class_int>`, pinned\: :ref:`bool<class_bool>`, attachment_path\: :ref:`NodePath<class_NodePath>` = NodePath(""), insert_at\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SoftBody3D_method_set_point_pinned>`

设置表面顶点的固定状态。当设置为 ``true`` 时，可选的 ``attachment_path`` 可以定义一个 :ref:`Node3D<class_Node3D>`\ ，该固定顶点将被附加到该节点。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
