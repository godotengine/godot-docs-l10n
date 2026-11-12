:github_url: hide

.. meta::
	:keywords: trigger

.. _class_Area2D:

Area2D
======

**繼承：** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

2D 空間中的一個區域，能夠偵測到其他 :ref:`CollisionObject2D<class_CollisionObject2D>` 的進入或退出。

.. rst-class:: classref-introduction-group

說明
----

**Area2D** 是 2D 空間中的一個區域，由一個或多個 :ref:`CollisionShape2D<class_CollisionShape2D>` 或 :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 子節點定義，能夠偵測其他 :ref:`CollisionObject2D<class_CollisionObject2D>` 進入或離開，並持續追蹤尚未離開的碰撞物件（亦即仍與其重疊的物件）。

此節點亦可在區域內區域調整或覆寫物理參數（重力、阻尼），並將音訊導向自訂音訊匯流排。

\ **注意：** 以 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 建立的 Area 或剛體可能無法與 **Area2D** 如預期互動，亦可能無法正確發出訊號或追蹤物件。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 Area2D <../tutorials/physics/using_area_2d>`

- `2D Dodge The Creeps 範例 <https://godotengine.org/asset-library/asset/2712>`__

- `2D Pong 範例 <https://godotengine.org/asset-library/asset/2728>`__

- `2D 平台範例 <https://godotengine.org/asset-library/asset/2727>`__

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_Area2D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_entered>`

當接收到的 ``area`` 進入此區域時發出。需將 :ref:`monitoring<class_Area2D_property_monitoring>` 設為 ``true`` 才能觸發。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_exited>`

當接收到的 ``area`` 離開此區域時發出。需將 :ref:`monitoring<class_Area2D_property_monitoring>` 設為 ``true`` 才能觸發。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_entered>`

當接收到的 ``area`` 之 :ref:`Shape2D<class_Shape2D>` 進入本區域的某個形狀時發出。需將 :ref:`monitoring<class_Area2D_property_monitoring>` 設為 ``true`` 才能觸發。

\ ``local_shape_index`` 與 ``area_shape_index`` 分別為本區域與對方區域互動形狀的索引。\ ``area_rid`` 為對方區域的 :ref:`RID<class_RID>`\ 。這些值可搭配 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用。

\ **範例：** 依索引取得對應的 :ref:`CollisionShape2D<class_CollisionShape2D>` 節點：


.. tabs::

 .. code-tab:: gdscript

    var other_shape_owner = area.shape_find_owner(area_shape_index)
    var other_shape_node = area.shape_owner_get_owner(other_shape_owner)

    var local_shape_owner = shape_find_owner(local_shape_index)
    var local_shape_node = shape_owner_get_owner(local_shape_owner)



.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_exited:

.. rst-class:: classref-signal

**area_shape_exited**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_exited>`

當接收到的 ``area`` 之 :ref:`Shape2D<class_Shape2D>` 離開本區域的形狀時發出。需將 :ref:`monitoring<class_Area2D_property_monitoring>` 設為 ``true`` 才能觸發。

另見 :ref:`area_shape_entered<class_Area2D_signal_area_shape_entered>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_entered>`

當接收到的 ``body`` 進入此區域時發出。\ ``body`` 可為 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>`\ 。若 :ref:`TileMap<class_TileMap>` 的 :ref:`TileSet<class_TileSet>` 設定了碰撞形狀亦可被偵測。需將 :ref:`monitoring<class_Area2D_property_monitoring>` 設為 ``true`` 才能觸發。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_exited>`

當接收到的 ``body`` 離開此區域時發出。\ ``body`` 可為 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>`\ 。若 :ref:`TileMap<class_TileMap>` 的 :ref:`TileSet<class_TileSet>` 設定了碰撞形狀亦可被偵測。需將 :ref:`monitoring<class_Area2D_property_monitoring>` 設為 ``true`` 才能觸發。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node2D<class_Node2D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_body_shape_entered>`

當接收到的 ``body`` 之 :ref:`Shape2D<class_Shape2D>` 進入本區域的某個形狀時發出。\ ``body`` 可為 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>`\ 。若 :ref:`TileMap<class_TileMap>` 的 :ref:`TileSet<class_TileSet>` 設定了碰撞形狀亦可被偵測。需將 :ref:`monitoring<class_Area2D_property_monitoring>` 設為 ``true`` 才能觸發。

\ ``local_shape_index`` 與 ``body_shape_index`` 分別為本區域與對應物件互動形狀的索引。\ ``body_rid`` 為該物件的 :ref:`RID<class_RID>`\ 。這些值可搭配 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用。

\ **範例：** 依索引取得對應的 :ref:`CollisionShape2D<class_CollisionShape2D>` 節點：


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

當接收到的 ``body`` 之 :ref:`Shape2D<class_Shape2D>` 離開本區域的形狀時發出。\ ``body`` 可為 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>`\ 。若 :ref:`TileMap<class_TileMap>` 的 :ref:`TileSet<class_TileSet>` 設定了碰撞形狀亦可被偵測。需將 :ref:`monitoring<class_Area2D_property_monitoring>` 設為 ``true`` 才能觸發。

另見 :ref:`body_shape_entered<class_Area2D_signal_body_shape_entered>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Area2D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area2D_SpaceOverride>`

.. _class_Area2D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

此區域不影響重力／阻尼。

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

此區域會將自己的重力／阻尼值累加至目前已計算的值（依 :ref:`priority<class_Area2D_property_priority>` 順序）。

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

此區域會將自己的重力／阻尼值累加至目前已計算的值（依 :ref:`priority<class_Area2D_property_priority>` 順序），並忽略較低優先權的區域。

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

此區域會取代目前的重力／阻尼（包含預設值），並忽略所有較低優先權的區域。

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

此區域會取代至今為止所計算的重力／阻尼（依 :ref:`priority<class_Area2D_property_priority>` 順序），但仍會繼續計算其他區域。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Area2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``1.0`` :ref:`🔗<class_Area2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

物體在此區域停止旋轉的速率，代表每秒損失的角速度。

詳細說明請參考 :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

此區域內的角阻尼計算的覆蓋模式。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area2D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

此區域使用的音訊匯流排名稱。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area2D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

若為 ``true``\ ，此區域的音訊匯流排將覆寫預設匯流排。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``980.0`` :ref:`🔗<class_Area2D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

此區域的重力強度（單位：像素／秒²）。該值會乘於重力方向向量，可在不改變方向的情況下調整重力大小。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_direction**\ (\ )

此區域的重力向量（未正規化）。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area2D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

若為 ``true``\ ，重力將以 :ref:`gravity_point_center<class_Area2D_property_gravity_point_center>` 指定的點為中心進行計算。另見 :ref:`gravity_space_override<class_Area2D_property_gravity_space_override>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_point_center** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_point_center**\ (\ )

若重力為點狀（參見 :ref:`gravity_point<class_Area2D_property_gravity_point>`\ ），則此為吸引點。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area2D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

The distance at which the gravity strength is equal to :ref:`gravity<class_Area2D_property_gravity>`. For example, on a planet 100 pixels in radius with a surface gravity of 4.0 px/s², set the :ref:`gravity<class_Area2D_property_gravity>` to 4.0 and the unit distance to 100.0. The gravity will have falloff according to the inverse square law, so in the example, at 200 pixels from the center the gravity will be 1.0 px/s² (twice the distance, 1/4th the gravity), at 50 pixels it will be 16.0 px/s² (half the distance, 4× the gravity), and so on.

The above is true only when the unit distance is a positive number. When this is set to 0.0, the gravity will be constant regardless of distance.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area2D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

該區域內重力計算的覆蓋模式。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area2D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

物體在此區域停止移動的速率，代表每秒損失的線速度。

詳細說明請參考 :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

該區域內線性阻尼計算的覆蓋模式。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area2D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

若為 ``true``\ ，其他處於監測狀態的區域可偵測到此區域。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area2D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

若為 ``true``\ ，此區域會偵測物體或其他區域的進入與離開。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area2D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

區域優先權。優先權數值越高越先處理。\ :ref:`World2D<class_World2D>` 的全域物理總在所有區域之後處理。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Area2D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area2D<class_Area2D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_areas>`

傳回與本區域相交的 **Area2D** 清單。重疊區域的 :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` 必須包含於本區域的 :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` 之中才能被偵測。

基於效能考量（碰撞會在同一時間批次處理），此清單僅會於每次物理步驟更新一次，而非物件移動後立即更新。建議改用訊號。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_bodies>`

傳回與本區域相交的 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 與 :ref:`TileMap<class_TileMap>` 清單。重疊物件的 :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` 必須包含於本區域的 :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` 之中才能被偵測。

基於效能考量（碰撞會在同一時間批次處理），此清單僅會於每次物理步驟更新一次，而非物件移動後立即更新。建議改用訊號。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_areas>`

若與任一 **Area2D** 相交則回傳 ``true``\ ，否則回傳 ``false``\ 。重疊區域的 :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` 必須包含於本區域的 :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` 之中才能被偵測。

基於效能考量（碰撞會在同一時間批次處理），重疊區域清單僅會於每次物理步驟更新一次，而非物件移動後立即更新。建議改用訊號。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_bodies>`

若與任一 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 相交則回傳 ``true``\ ，否則回傳 ``false``\ 。重疊物件的 :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` 必須包含於本區域的 :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` 之中才能被偵測。

基於效能考量（碰撞會在同一時間批次處理），重疊物件清單僅會於每次物理步驟更新一次，而非物件移動後立即更新。建議改用訊號。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_area>`

若指定的 **Area2D** 與本區域相交或重疊則回傳 ``true``\ ，否則回傳 ``false``\ 。

\ **注意：** 測試結果並非物件移動後立即更新。基於效能，本區域的重疊清單於每影格且物理步驟之前僅更新一次。建議改用訊號。

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_body>`

若指定的物理物件與本區域相交或重疊則回傳 ``true``\ ，否則回傳 ``false``\ 。

\ **注意：** 測試結果並非物件移動後立即更新。基於效能，重疊清單於每影格且物理步驟之前僅更新一次。建議改用訊號。

\ ``body`` 可為 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 實例。雖然 TileMap 本身不是物理物件，但其含碰撞形狀的圖塊會註冊為虛擬物理物件。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
