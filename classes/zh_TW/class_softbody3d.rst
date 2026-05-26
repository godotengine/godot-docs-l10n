:github_url: hide

.. _class_SoftBody3D:

SoftBody3D
==========

**繼承：** :ref:`MeshInstance3D<class_MeshInstance3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

可形變的 3D 物理網格。

.. rst-class:: classref-introduction-group

說明
----

A deformable 3D physics mesh. Used to create elastic or deformable objects such as cloth, rubber, or other flexible materials.

Additionally, **SoftBody3D** is subject to wind forces defined in :ref:`Area3D<class_Area3D>` (see :ref:`Area3D.wind_source_path<class_Area3D_property_wind_source_path>`, :ref:`Area3D.wind_force_magnitude<class_Area3D_property_wind_force_magnitude>`, and :ref:`Area3D.wind_attenuation_factor<class_Area3D_property_wind_attenuation_factor>`).

\ **Note:** It's recommended to use Jolt Physics when using **SoftBody3D** instead of the default GodotPhysics3D, as Jolt Physics' soft body implementation is faster and more reliable. You can switch the physics engine using the :ref:`ProjectSettings.physics/3d/physics_engine<class_ProjectSettings_property_physics/3d/physics_engine>` project setting.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`SoftBody <../tutorials/physics/soft_body>`

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_SoftBody3D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_SoftBody3D_DisableMode>`

.. _class_SoftBody3D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

當 :ref:`Node.process_mode<class_Node_property_process_mode>` 被設定為 :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>` 時，從物理模擬中移除，停止與此 **SoftBody3D** 的所有物理互動。

當該 :ref:`Node<class_Node>` 再次被處理時，會自動重新加入到物理模擬中。

.. _class_SoftBody3D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``1``

當 :ref:`Node.process_mode<class_Node_property_process_mode>` 被設定為 :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>` 時，不影響物理模擬。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SoftBody3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_SoftBody3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

該 SoftBody3D **所在**\ 的實體層。碰撞物件可以存在於 32 個不同層中的一個或多個層中。另見 :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`\ 。

\ **注意：**\ 只有當物件 B 位於物件 A 掃描的任意層中時，物件 A 才能偵測到與對象 B 的接觸。有關更多資訊，請參閱文件中的\ `《碰撞層與遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_SoftBody3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

該 SoftBody3D **掃描**\ 的實體層。碰撞物件可以掃描 32 個不同層中的一個或多個層。另見 :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`\ 。

\ **注意：**\ 只有當物件 B 位於物件 A 掃描的任何層中時，物件 A 才能偵測到與對象 B 的接觸。有關更多資訊，請參閱文件中的\ `《碰撞層與遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_damping_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_coefficient** = ``0.01`` :ref:`🔗<class_SoftBody3D_property_damping_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_damping_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_coefficient**\ (\ )

The body's damping coefficient. Higher values will slow down the body more noticeably when forces are applied.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_SoftBody3D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_SoftBody3D_DisableMode>`\ )
- :ref:`DisableMode<enum_SoftBody3D_DisableMode>` **get_disable_mode**\ (\ )

Defines the behavior in physics when :ref:`Node.process_mode<class_Node_property_process_mode>` is set to :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_drag_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_coefficient** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_drag_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_drag_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_coefficient**\ (\ )

The body's drag coefficient. Higher values increase this body's air resistance.

\ **Note:** This value is currently unused by Godot's default physics implementation.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_linear_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_stiffness** = ``0.5`` :ref:`🔗<class_SoftBody3D_property_linear_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_linear_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_stiffness**\ (\ )

較高的值會導致身體更僵硬，而較低的值將增加身體的彎曲能力。該值可在\ ``0.0`` 和\ ``1.0 ``\ （包含）。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_parent_collision_ignore:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **parent_collision_ignore** = ``NodePath("")`` :ref:`🔗<class_SoftBody3D_property_parent_collision_ignore>`

.. rst-class:: classref-property-setget

- |void| **set_parent_collision_ignore**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_parent_collision_ignore**\ (\ )

指向 :ref:`CollisionObject3D<class_CollisionObject3D>` 的 :ref:`NodePath<class_NodePath>`\ ，這個 SoftBody3D 應該避免穿過它。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_pressure_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure_coefficient** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_pressure_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_pressure_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure_coefficient**\ (\ )

The pressure coefficient of this soft body. Simulate pressure build-up from inside this body. Higher values increase the strength of this effect.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_ray_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ray_pickable** = ``true`` :ref:`🔗<class_SoftBody3D_property_ray_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_ray_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ray_pickable**\ (\ )

如果為 ``true``\ ，則該 **SoftBody3D** 會回應 :ref:`RayCast3D<class_RayCast3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_shrinking_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **shrinking_factor** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_shrinking_factor>`

.. rst-class:: classref-property-setget

- |void| **set_shrinking_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shrinking_factor**\ (\ )

Scales the rest lengths of **SoftBody3D**'s edge constraints. Positive values shrink the mesh, while negative values expand it. For example, a value of ``0.1`` shortens the edges of the mesh by 10%, while ``-0.1`` expands the edges by 10%.

\ **Note:** :ref:`shrinking_factor<class_SoftBody3D_property_shrinking_factor>` is best used on surface meshes with pinned points.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_simulation_precision:

.. rst-class:: classref-property

:ref:`int<class_int>` **simulation_precision** = ``5`` :ref:`🔗<class_SoftBody3D_property_simulation_precision>`

.. rst-class:: classref-property-setget

- |void| **set_simulation_precision**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_simulation_precision**\ (\ )

增加這個值會改善模擬結果，但會影響性能。請小心使用。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_total_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_mass** = ``1.0`` :ref:`🔗<class_SoftBody3D_property_total_mass>`

.. rst-class:: classref-property-setget

- |void| **set_total_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_total_mass**\ (\ )

The SoftBody3D's mass.

\ **Note:** When using Jolt Physics, the default value of this property will instead be ``0.0``, which will cause the body to automatically calculate the mass to 1 kg per point. This is a bug, which will be fixed in Godot 4.7.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SoftBody3D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SoftBody3D_method_add_collision_exception_with>`

將一個物體新增到這個物體不能碰撞的物體列表中。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_central_force>`

Distributes and applies a force to all points. A force is time dependent and meant to be applied every physics update.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_central_impulse>`

Distributes and applies an impulse to all points.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_force" functions otherwise).

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ point_index\: :ref:`int<class_int>`, force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_force>`

Applies a force to a point. A force is time dependent and meant to be applied every physics update.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ point_index\: :ref:`int<class_int>`, impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_impulse>`

Applies an impulse to a point.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_force" functions otherwise).

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_SoftBody3D_method_get_collision_exceptions>`

返回該物體的碰撞例外節點陣列。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_collision_layer_value>`

返回 :ref:`collision_layer<class_SoftBody3D_property_collision_layer>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_collision_mask_value>`

返回 :ref:`collision_mask<class_SoftBody3D_property_collision_mask>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_physics_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_physics_rid**\ (\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_physics_rid>`

Returns the internal :ref:`RID<class_RID>` used by the :ref:`PhysicsServer3D<class_PhysicsServer3D>` for this body.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_point_transform:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_transform**\ (\ point_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SoftBody3D_method_get_point_transform>`

返回表面陣列中頂點的局部平移。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_is_point_pinned:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_pinned**\ (\ point_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_is_point_pinned>`

如果頂點設定為固定，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SoftBody3D_method_remove_collision_exception_with>`

將一個物體從該物體不能碰撞的物體列表中移除。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SoftBody3D_method_set_collision_layer_value>`

根據 ``value``\ ，啟用或禁用 :ref:`collision_layer<class_SoftBody3D_property_collision_layer>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SoftBody3D_method_set_collision_mask_value>`

根據 ``value``\ ，啟用或禁用 :ref:`collision_mask<class_SoftBody3D_property_collision_mask>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_point_pinned:

.. rst-class:: classref-method

|void| **set_point_pinned**\ (\ point_index\: :ref:`int<class_int>`, pinned\: :ref:`bool<class_bool>`, attachment_path\: :ref:`NodePath<class_NodePath>` = NodePath(""), insert_at\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SoftBody3D_method_set_point_pinned>`

設定表面頂點的固定狀態。當設定為 ``true`` 時，可選的 ``attachment_path`` 可以定義一個 :ref:`Node3D<class_Node3D>`\ ，該固定頂點將被附加到該節點。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
