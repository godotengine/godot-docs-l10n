:github_url: hide

.. meta::
	:keywords: trigger

.. _class_Area2D:

Area2D
======

**继承：** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

2D 空间中的一个区域，能够检测到其他 :ref:`CollisionObject2D<class_CollisionObject2D>` 的进入或退出。

.. rst-class:: classref-introduction-group

描述
----

**Area2D** 是 2D 空间中的一个区域，由一个或多个 :ref:`CollisionShape2D<class_CollisionShape2D>` 或 :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 子节点定义，能够检测到其他 :ref:`CollisionObject2D<class_CollisionObject2D>` 进入或退出该区域，同时也会记录哪些碰撞对象尚未退出（即哪些对象与其存在重叠）。

这个节点也可以在局部修改或覆盖物理参数（重力、阻尼），将音频引导至自定义音频总线。

\ **注意：**\ 使用 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 创建的区域和物体可能无法按预期与 **Area2D** 交互，并且可能无法正确发出信号或跟踪对象。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 Area2D <../tutorials/physics/using_area_2d>`

- `2D Dodge The Creeps 演示 <https://godotengine.org/asset-library/asset/2712>`__

- `2D Pong 演示 <https://godotengine.org/asset-library/asset/2728>`__

- `2D 平台跳跃演示 <https://godotengine.org/asset-library/asset/2727>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_Area2D_property_angular_damp>`                               | ``1.0``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`angular_damp_space_override<class_Area2D_property_angular_damp_space_override>` | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`audio_bus_name<class_Area2D_property_audio_bus_name>`                           | ``&"Master"``     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`audio_bus_override<class_Area2D_property_audio_bus_override>`                   | ``false``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity<class_Area2D_property_gravity>`                                         | ``980.0``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                   | :ref:`gravity_direction<class_Area2D_property_gravity_direction>`                     | ``Vector2(0, 1)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`gravity_point<class_Area2D_property_gravity_point>`                             | ``false``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                   | :ref:`gravity_point_center<class_Area2D_property_gravity_point_center>`               | ``Vector2(0, 1)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_point_unit_distance<class_Area2D_property_gravity_point_unit_distance>` | ``0.0``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`gravity_space_override<class_Area2D_property_gravity_space_override>`           | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_Area2D_property_linear_damp>`                                 | ``0.1``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`linear_damp_space_override<class_Area2D_property_linear_damp_space_override>`   | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitorable<class_Area2D_property_monitorable>`                                 | ``true``          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitoring<class_Area2D_property_monitoring>`                                   | ``true``          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                           | :ref:`priority<class_Area2D_property_priority>`                                       | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Area2D<class_Area2D>`\] | :ref:`get_overlapping_areas<class_Area2D_method_get_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] | :ref:`get_overlapping_bodies<class_Area2D_method_get_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_areas<class_Area2D_method_has_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_bodies<class_Area2D_method_has_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_area<class_Area2D_method_overlaps_area>`\ (\ area\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_body<class_Area2D_method_overlaps_body>`\ (\ body\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_Area2D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_entered>`

当接收的 ``area`` 进入此区域时发出。需要 :ref:`monitoring<class_Area2D_property_monitoring>` 被设置为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_exited>`

当接收的 ``area`` 退出此区域时发出。需要 :ref:`monitoring<class_Area2D_property_monitoring>` 被设置为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_entered>`

当收到的 ``area`` 的 :ref:`Shape2D<class_Shape2D>` 进入这个区域的形状时发出。要求 :ref:`monitoring<class_Area2D_property_monitoring>` 被设置为 ``true`` 。

\ ``local_shape_index`` 和 ``area_shape_index`` 分别包含来自这个区域和另一个区域的交互形状的索引。\ ``area_rid`` 包含另一个区域的 :ref:`RID<class_RID>`\ 。这些值可以与 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 一起使用。

\ **示例：**\ 根据形状索引获取 :ref:`CollisionShape2D<class_CollisionShape2D>` 节点：


.. tabs::

 .. code-tab:: gdscript

    var other_shape_owner = area.shape_find_owner( area_shape_index)
    var other_shape_node = area.shape_owner_get_owner(other_shape_owner)

    var local_shape_owner = shape_find_owner(local_shape_index)
    var local_shape_node = shape_owner_get_owner(local_shape_owner)



.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_exited:

.. rst-class:: classref-signal

**area_shape_exited**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_exited>`

当接收的 ``area`` 的 :ref:`Shape2D<class_Shape2D>` 退出此区域的形状时发出。需要 :ref:`monitoring<class_Area2D_property_monitoring>` 被设置为 ``true``\ 。

另见 :ref:`area_shape_entered<class_Area2D_signal_area_shape_entered>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_entered>`

当接收到的 ``body`` 进入这个区域时发出的。\ ``body`` 可能是 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 也可能是 :ref:`TileMap<class_TileMap>`\ 。\ :ref:`TileMap<class_TileMap>` 的 :ref:`TileSet<class_TileSet>` 配置了碰撞形状就能够被检测到。需要将 :ref:`monitoring<class_Area2D_property_monitoring>` 设置为 ``true`` 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_exited>`

当接收到的 ``body`` 离开这个区域时发出的。\ ``body`` 可能是 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 也可能是 :ref:`TileMap<class_TileMap>`\ 。\ :ref:`TileMap<class_TileMap>` 的 :ref:`TileSet<class_TileSet>` 配置了碰撞形状就能够被检测到。要求 :ref:`monitoring<class_Area2D_property_monitoring>` 被设置为 ``true`` 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node2D<class_Node2D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_body_shape_entered>`

当收到的 ``body`` 的 :ref:`Shape2D<class_Shape2D>` 进入这个区域的形状时发出。\ ``body`` 可能是 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 也可能是 :ref:`TileMap<class_TileMap>`\ 。\ :ref:`TileMap<class_TileMap>` 的 :ref:`TileSet<class_TileSet>` 配置了碰撞形状就能够被检测到。要求 :ref:`monitoring<class_Area2D_property_monitoring>` 被设置为 ``true`` 。

\ ``local_shape_index`` 和 ``body_shape_index`` 分别包含来自这个区域和交互体的交互形状的指数。\ ``body_rid`` 包含体的 :ref:`RID<class_RID>`\ 。这些值可以与 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 一起使用。

\ **示例：**\ 根据形状索引获取 :ref:`CollisionShape2D<class_CollisionShape2D>` 节点：


.. tabs::

 .. code-tab:: gdscript

    var body_shape_owner = body.shape_find_owner(body_shape_index)
    var body_shape_node = body.shape_owner_get_owner(body_shape_owner)

    var local_shape_owner = shape_find_owner(local_shape_index)
    var local_shape_node = shape_owner_get_owner(local_shape_owner)



.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node2D<class_Node2D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_body_shape_exited>`

当收到的 ``body`` 的 :ref:`Shape2D<class_Shape2D>` 退出这个区域的形状时发出。\ ``body`` 可能是 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 也可能是 :ref:`TileMap<class_TileMap>`\ 。\ :ref:`TileMap<class_TileMap>` 的 :ref:`TileSet<class_TileSet>` 配置了碰撞形状就能够被检测到。要求 :ref:`monitoring<class_Area2D_property_monitoring>` 被设置为 ``true`` 。

另见 :ref:`body_shape_entered<class_Area2D_signal_body_shape_entered>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Area2D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area2D_SpaceOverride>`

.. _class_Area2D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

该区域不影响重力/阻尼。

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

该区域将其重力/阻尼值加到目前已经计算出的结果上（按 :ref:`priority<class_Area2D_property_priority>` 顺序）。

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

该区域将其重力/阻尼值加到目前已经计算出的结果上（按 :ref:`priority<class_Area2D_property_priority>` 顺序），将忽略任何较低优先级的区域。

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

该区域将替换所有重力/阻尼，甚至是默认值，将忽略任何较低优先级的区域。

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

该区域将替换目前已经计算出的任何重力/阻尼（按 :ref:`priority<class_Area2D_property_priority>` 顺序），但仍将继续计算其余区域。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Area2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``1.0`` :ref:`🔗<class_Area2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

物体在此区域停止旋转的速度。代表每秒损失的角速度。

关于阻尼的更多细节见 :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

此区域内的角阻尼计算的覆盖模式。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area2D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

该区域音频总线的名称。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area2D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

如果为 ``true``\ ，该区域的音频总线将覆盖默认的音频总线。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``980.0`` :ref:`🔗<class_Area2D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

该区域的重力强度（以像素每平方秒为单位）。这个值是重力向量的倍数。这对于改变重力大小而不改变其方向很有用。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_direction**\ (\ )

该区域的重力向量（未归一化）。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area2D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

如果为 ``true``\ ，则从一个点（通过 :ref:`gravity_point_center<class_Area2D_property_gravity_point_center>` 设置）计算重力。参阅 :ref:`gravity_space_override<class_Area2D_property_gravity_space_override>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_point_center** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_point_center**\ (\ )

如果重力是一个点（参见 :ref:`gravity_point<class_Area2D_property_gravity_point>`\ ），这将是吸引力点。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area2D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

重力强度等于 :ref:`gravity<class_Area2D_property_gravity>` 的距离。例如，在一个半径为 100 像素、表面重力为 4.0 px/s² 的行星上，将 :ref:`gravity<class_Area2D_property_gravity>` 设置为 4.0，将单位距离设置为 100.0。重力将根据平方反比定律衰减，因此在该示例中，距离中心 200 像素处的重力将为 1.0 px/s²（距离的两倍，重力的 1/4），距离 50 像素处为 16.0 px/s²（距离的一半，重力的 4 倍），依此类推。

仅当单位距离为正数时，上述情况才成立。当该属性被设置为 0.0 时，无论距离如何，重力都将保持不变。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area2D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

该区域内重力计算的覆盖模式。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area2D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

物体在此区域停止运动的速度。代表每秒损失的线速度。

关于阻尼的更多细节见 :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

该区域内线性阻尼计算的覆盖模式。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area2D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

如果为 ``true``\ ，其他监测区域可以检测到这个区域。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area2D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

为 ``true`` 时，该区域能够检测到进入和退出该区域的实体或区域。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area2D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

该区域的优先级。将优先处理优先级较高的区域。\ :ref:`World2D<class_World2D>` 的物理始终在所有区域之后处理。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Area2D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area2D<class_Area2D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_areas>`

返回相交的 **Area2D** 的列表。重叠区域的 :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` 必须是这个区域 :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` 的一部分，这样才能被检测到。

出于性能的考虑（所有碰撞都是一起处理的），这个列表会在物理迭代时进行一次修改，而不是在物体被移动后立即修改。可考虑改用信号。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_bodies>`

返回相交的 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 和 :ref:`TileMap<class_TileMap>`\ 。重叠物体的 :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` 必须是该区域 :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` 的一部分，才能被检测到。

出于性能原因（所有碰撞都是一起处理的），这个列表只会在每次物理迭代时发生一次更改，不会在对象移动后立即更改。请考虑使用信号。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_areas>`

如果与其他 **Area2D** 相交，则返回 ``true``\ ，否则返回 ``false``\ 。重叠区域的 :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` 必须是该区域 :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` 的一部分，才能被检测到。

出于性能原因（所有碰撞都是一起处理的），重叠区域的列表只会在每次物理迭代时发生一次更改，不会在对象移动后立即更改。请考虑使用信号。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_bodies>`

如果与其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 相交，则返回 ``true``\ ，否则返回 ``false``\ 。重叠物体的 :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` 必须是该区域 :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` 的一部分，才能被检测到。

出于性能原因（所有碰撞都是一起处理的），重叠物体的列表只会在每次物理迭代时发生一次更改，不会在对象移动后立即更改。请考虑使用信号。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_area>`

如果给定的 **Area2D** 与此 **Area2D** 相交或重叠，则返回 ``true``\ ，否则返回 ``false``\ 。

\ **注意：**\ 测试结果不反映对象移动后的即时状态。出于性能原因，重叠列表每帧只会在物理迭代前更新一次。请考虑使用信号。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_body>`

如果给定的物理物体与此 **Area2D** 相交或重叠，则返回 ``true``\ ，否则返回 ``false``\ 。

\ **注意：**\ 测试结果不反映对象移动后的即时状态。出于性能原因，重叠列表每帧只会在物理迭代前更新一次。请考虑使用信号。

参数 ``body`` 可以是 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 实例，也可以是 :ref:`TileMap<class_TileMap>` 实例。TileMap 虽然不是物理物体，但会把图块的碰撞形状注册为虚拟物理物体。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
