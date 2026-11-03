:github_url: hide

.. meta::
	:keywords: trigger

.. _class_Area3D:

Area3D
======

**繼承：** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D 空間中的一個區域，能夠偵測到其他 :ref:`CollisionObject3D<class_CollisionObject3D>` 的進入或退出。

.. rst-class:: classref-introduction-group

說明
----

**Area3D** 是 3D 空間中的一個區域，可由一個或多個 :ref:`CollisionShape3D<class_CollisionShape3D>` 或 :ref:`CollisionPolygon3D<class_CollisionPolygon3D>` 子節點定義。它能偵測其他 :ref:`CollisionObject3D<class_CollisionObject3D>` 進入或離開此區域，並追蹤仍在區域內（即與其重疊）的碰撞物件。

此節點也可以區域調整或覆寫物理參數（重力、阻尼），並將音訊導向自訂音訊匯流排。

\ **注意：** 以 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 建立的 Area 與剛體可能與 **Area3D** 的互動不如預期，亦可能無法正確發送訊號或追蹤物件。

\ **警告：** 若在本節點的 :ref:`CollisionShape3D<class_CollisionShape3D>` 子節點中使用 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`\ （例如在選取 :ref:`MeshInstance3D<class_MeshInstance3D>` 後於 **Mesh** 功能表選擇 **Create Trimesh Collision Sibling** 建立），因為該碰撞形狀為中空，可能產生非預期結果。如不希望如此，請將其拆分為多個 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 或 :ref:`BoxShape3D<class_BoxShape3D>` 等基礎形狀；某些情況下亦可改用 :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 Area2D <../tutorials/physics/using_area_2d>`

- `3D 平台跳躍示範 <https://godotengine.org/asset-library/asset/2748>`__

- `3D 檢視埠 GUI 範例 <https://godotengine.org/asset-library/asset/2807>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_Area3D_property_angular_damp>`                               | ``0.1``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`angular_damp_space_override<class_Area3D_property_angular_damp_space_override>` | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`audio_bus_name<class_Area3D_property_audio_bus_name>`                           | ``&"Master"``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`audio_bus_override<class_Area3D_property_audio_bus_override>`                   | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity<class_Area3D_property_gravity>`                                         | ``9.8``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`gravity_direction<class_Area3D_property_gravity_direction>`                     | ``Vector3(0, -1, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`gravity_point<class_Area3D_property_gravity_point>`                             | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`gravity_point_center<class_Area3D_property_gravity_point_center>`               | ``Vector3(0, -1, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_point_unit_distance<class_Area3D_property_gravity_point_unit_distance>` | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`gravity_space_override<class_Area3D_property_gravity_space_override>`           | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_Area3D_property_linear_damp>`                                 | ``0.1``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`linear_damp_space_override<class_Area3D_property_linear_damp_space_override>`   | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitorable<class_Area3D_property_monitorable>`                                 | ``true``              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitoring<class_Area3D_property_monitoring>`                                   | ``true``              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                           | :ref:`priority<class_Area3D_property_priority>`                                       | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`reverb_bus_amount<class_Area3D_property_reverb_bus_amount>`                     | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`reverb_bus_enabled<class_Area3D_property_reverb_bus_enabled>`                   | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`reverb_bus_name<class_Area3D_property_reverb_bus_name>`                         | ``&"Master"``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`reverb_bus_uniformity<class_Area3D_property_reverb_bus_uniformity>`             | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`wind_attenuation_factor<class_Area3D_property_wind_attenuation_factor>`         | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`wind_force_magnitude<class_Area3D_property_wind_force_magnitude>`               | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`wind_source_path<class_Area3D_property_wind_source_path>`                       | ``NodePath("")``      |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Area3D<class_Area3D>`\] | :ref:`get_overlapping_areas<class_Area3D_method_get_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] | :ref:`get_overlapping_bodies<class_Area3D_method_get_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_areas<class_Area3D_method_has_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_bodies<class_Area3D_method_has_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_area<class_Area3D_method_overlaps_area>`\ (\ area\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_body<class_Area3D_method_overlaps_body>`\ (\ body\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_Area3D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_entered>`

當接收到的 ``area`` 進入此區域時發出。需將 :ref:`monitoring<class_Area3D_property_monitoring>` 設為 ``true`` 才能觸發。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_exited>`

當接收到的 ``area`` 離開此區域時發出。需將 :ref:`monitoring<class_Area3D_property_monitoring>` 設為 ``true`` 才能觸發。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area3D<class_Area3D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_area_shape_entered>`

當接收到的 ``area`` 中的某個 :ref:`Shape3D<class_Shape3D>` 進入此區域的某個形狀時觸發。必須將 :ref:`monitoring<class_Area3D_property_monitoring>` 設為 ``true``\ 。

\ ``local_shape_index`` 與 ``area_shape_index`` 分別為此區域與對方區域中互動形狀的索引；\ ``area_rid`` 為對方區域的 :ref:`RID<class_RID>`\ 。這些值可與 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 配合使用。

\ **範例：** 依形狀索引取得 :ref:`CollisionShape3D<class_CollisionShape3D>` 節點：


.. tabs::

 .. code-tab:: gdscript

    var other_shape_owner = area.shape_find_owner(area_shape_index)
    var other_shape_node = area.shape_owner_get_owner(other_shape_owner)

    var local_shape_owner = shape_find_owner(local_shape_index)
    var local_shape_node = shape_owner_get_owner(local_shape_owner)



.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_shape_exited:

.. rst-class:: classref-signal

**area_shape_exited**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area3D<class_Area3D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_area_shape_exited>`

當接收的 ``area`` 的 :ref:`Shape3D<class_Shape3D>` 退出此區域的形狀時發出。需要 :ref:`monitoring<class_Area3D_property_monitoring>` 被設定為 ``true``\ 。

另見 :ref:`area_shape_entered<class_Area3D_signal_area_shape_entered>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_entered>`

當接收到的 ``body``\ （物體）進入該區域時，將會發出此訊號。\ ``body`` 可以是一個 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ （3D物理剛體）、\ :ref:`SoftBody3D<class_SoftBody3D>`\ （3D軟體）或 :ref:`GridMap<class_GridMap>`\ （3D網格地圖）。如果 :ref:`GridMap<class_GridMap>` 的 :ref:`MeshLibrary<class_MeshLibrary>`\ （網格庫）中設定了碰撞形狀，它也能被檢測到。此功能需要將 :ref:`monitoring<class_Area3D_property_monitoring>`\ （監控）屬性設為 ``true`` 才會生效。

\ **注意：** Godot Physics（Godot 自帶的物理引擎）不支援報告與 :ref:`SoftBody3D<class_SoftBody3D>` 的重疊狀態，因此在這種情況下不會發出此訊號。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_exited>`

當接收到的 ``body`` 離開該區域時觸發（發射）此訊號。\ ``body`` 可以是 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ 、\ :ref:`SoftBody3D<class_SoftBody3D>` 或 :ref:`GridMap<class_GridMap>`\ 。如果 :ref:`GridMap<class_GridMap>` 的 :ref:`MeshLibrary<class_MeshLibrary>` 設定了碰撞形狀，它們也會被檢測到。需要將 :ref:`monitoring<class_Area3D_property_monitoring>` 屬性設定為 ``true`` 才能生效。

\ **注意：** Godot Physics（Godot自帶的物理引擎）不支援報告與 :ref:`SoftBody3D<class_SoftBody3D>` 的重疊情況，因此在這種情況下不會觸發此訊號。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node3D<class_Node3D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_body_shape_entered>`

當接收到的 ``body``\ （物體）的某個 :ref:`Shape3D<class_Shape3D>`\ （3D碰撞形狀）進入該區域的某個形狀時，將會發出此訊號。\ ``body`` 可以是一個 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ （3D物理剛體）、\ :ref:`SoftBody3D<class_SoftBody3D>`\ （3D軟體）或 :ref:`GridMap<class_GridMap>`\ （3D網格地圖）。如果 :ref:`GridMap<class_GridMap>` 的 :ref:`MeshLibrary<class_MeshLibrary>`\ （網格庫）中設定了碰撞形狀，它也能被檢測到。此功能需要將 :ref:`monitoring<class_Area3D_property_monitoring>`\ （監控）屬性設為 ``true`` 才會生效。

\ ``local_shape_index`` 和 ``body_shape_index`` 分別包含了該區域與發生互動的物體之間，互相碰撞的碰撞形狀的索引。\ ``body_rid`` 包含了該物體的 :ref:`RID<class_RID>`\ （資源ID）。這些值可以配合 :ref:`PhysicsServer3D<class_PhysicsServer3D>`\ （3D物理伺服器）來使用。

\ **注意：** Godot Physics（Godot 自帶的物理引擎）不支援報告與 :ref:`SoftBody3D<class_SoftBody3D>` 的重疊狀態，因此在這種情況下不會發出此訊號。

\ **範例：** 通過形狀索引取得對應的 :ref:`CollisionShape3D<class_CollisionShape3D>`\ （3D碰撞形狀）節點：


.. tabs::

 .. code-tab:: gdscript

    var body_shape_owner = body.shape_find_owner(body_shape_index)
    var body_shape_node = body.shape_owner_get_owner(body_shape_owner)

    var local_shape_owner = shape_find_owner(local_shape_index)
    var local_shape_node = shape_owner_get_owner(local_shape_owner)



.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node3D<class_Node3D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_body_shape_exited>`

當接收到的 ``body`` 的某個 :ref:`Shape3D<class_Shape3D>`\ （3D形狀）離開該區域的一個形狀時，觸發（發射）此訊號。\ ``body`` 可以是 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ 、\ :ref:`SoftBody3D<class_SoftBody3D>` 或 :ref:`GridMap<class_GridMap>`\ 。如果 :ref:`GridMap<class_GridMap>` 的 :ref:`MeshLibrary<class_MeshLibrary>` 設定了碰撞形狀，它們也會被檢測到。需要將 :ref:`monitoring<class_Area3D_property_monitoring>` 屬性設定為 ``true`` 才能生效。

另請參閱 :ref:`body_shape_entered<class_Area3D_signal_body_shape_entered>`\ （即剛才那個訊號）。

\ **注意：** Godot Physics（Godot自帶的物理引擎）不支援報告與 :ref:`SoftBody3D<class_SoftBody3D>` 的重疊情況，因此在這種情況下不會觸發此訊號。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Area3D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area3D_SpaceOverride>`

.. _class_Area3D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

此區域不影響重力／阻尼。

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

此區域會將自己的重力／阻尼值累加至目前已計算的值（依 :ref:`priority<class_Area3D_property_priority>` 順序）。

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

此區域會將自己的重力／阻尼值累加至目前已計算的值（依 :ref:`priority<class_Area3D_property_priority>` 順序），並忽略較低優先權的區域。

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

此區域會取代目前的重力／阻尼（包含預設值），並忽略所有較低優先權的區域。

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

此區域會取代至今為止所計算的重力／阻尼（依 :ref:`priority<class_Area3D_property_priority>` 順序），但仍會繼續計算其他區域。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Area3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

物體在此區域停止旋轉的速度。代表每秒損失的角速度.

關於阻尼的更多細節，見 :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

此區域內的角阻尼計算的覆蓋模式。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

此區域使用的音訊匯流排名稱。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area3D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

若為 ``true``\ ，此區域的音訊匯流排將覆寫預設匯流排。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``9.8`` :ref:`🔗<class_Area3D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

該區域的重力強度（以米每平方秒為單位）。這個值是重力向量的倍數。這對於改變重力大小而不改變其方向很有用。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_direction** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_direction**\ (\ )

此區域的重力向量（未正規化）。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area3D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

若為 ``true``\ ，重力將以 :ref:`gravity_point_center<class_Area3D_property_gravity_point_center>` 指定的點為中心進行計算。另見 :ref:`gravity_space_override<class_Area3D_property_gravity_space_override>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_point_center** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_point_center**\ (\ )

若重力為點狀（參見 :ref:`gravity_point<class_Area3D_property_gravity_point>`\ ），則此為吸引點。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area3D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

重力強度等於 :ref:`gravity<class_Area3D_property_gravity>` 的距離。例如，在一個半徑為 100 米、表面重力為 4.0 m/s² 的行星上，將 :ref:`gravity<class_Area3D_property_gravity>` 設定為 4.0，將單位距離設定為 100.0。重力會根據平方反比定律衰減，因此在該範例中，距中心 200 米處的重力將為 1.0 m/s²（距離的兩倍，重力的 1/4），在 50 米處為 16.0 m/s²（距離的一半，重力的 4 倍），依此類推。

僅當單位距離為正數時，上述情況才成立。當該屬性被設定為 0.0 時，無論距離如何，重力都將保持不變。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area3D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

該區域內重力計算的覆蓋模式。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

實體在此區域減速的速率。代表每秒損失的線速度。

關於阻尼的更多細節，見\ :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

該區域內線性阻尼計算的覆蓋模式。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area3D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

若為 ``true``\ ，其他處於監測狀態的區域可偵測到此區域。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area3D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

若為 ``true``\ ，此區域會偵測物體或其他區域的進入與離開。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area3D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

該區域的優先順序。將優先處理優先順序較高的區域。\ :ref:`World3D<class_World3D>` 的物理始終在所有區域之後處理。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_amount** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_amount>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_amount**\ (\ )

該區域對其相關音訊套用混響的程度。範圍從 ``0`` 到 ``1``\ ，精度為 ``0.1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverb_bus_enabled** = ``false`` :ref:`🔗<class_Area3D_property_reverb_bus_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_use_reverb_bus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_reverb_bus**\ (\ )

如果為 ``true``\ ，該區域會將混響套用於其關聯音訊。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **reverb_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_reverb_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_reverb_bus_name**\ (\ )

用於該區域關聯音訊的混響匯流排的名稱。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_uniformity:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_uniformity** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_uniformity>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_uniformity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_uniformity**\ (\ )

該區域的混響效果均勻的程度。範圍從 ``0`` 到 ``1``\ ，精度為 ``0.1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_attenuation_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_attenuation_factor** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_attenuation_factor>`

.. rst-class:: classref-property-setget

- |void| **set_wind_attenuation_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_attenuation_factor**\ (\ )

風力隨與源點距離增加而呈指數遞減的速率。

\ **注意：** 風力僅作用於 :ref:`SoftBody3D<class_SoftBody3D>` 節點，其他物理物體目前不受影響。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_force_magnitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_force_magnitude** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_force_magnitude>`

.. rst-class:: classref-property-setget

- |void| **set_wind_force_magnitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_force_magnitude**\ (\ )

此區域專屬風力的強度大小。

\ **注意：** 風力僅作用於 :ref:`SoftBody3D<class_SoftBody3D>` 節點，其他物理物體目前不受影響。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_source_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **wind_source_path** = ``NodePath("")`` :ref:`🔗<class_Area3D_property_wind_source_path>`

.. rst-class:: classref-property-setget

- |void| **set_wind_source_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_wind_source_path**\ (\ )

用以指定此區域風力方向與來源的 :ref:`Node3D<class_Node3D>`\ 。風向與該節點區域轉換的 z 軸相反，風源則位於其區域原點。

\ **注意：** 風力僅作用於 :ref:`SoftBody3D<class_SoftBody3D>` 節點，其他物理物體目前不受影響。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Area3D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area3D<class_Area3D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_areas>`

返回相交的 **Area3D** 的列表。重疊區域的 :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` 必須是該區域的 :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` 的一部分才能被偵測到。

出於效能原因（同時處理所有碰撞），此列表在物理步驟期間修改一次，而不是在實體被移動後立即修改。可考慮改用訊號。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_bodies>`

回傳一個包含與之相交的 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ （3D物理剛體）、\ :ref:`SoftBody3D<class_SoftBody3D>`\ （3D軟體）和 :ref:`GridMap<class_GridMap>`\ （網格地圖）的清單。只有當重疊物體的 :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>`\ （碰撞層）屬於該區域的 :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>`\ （碰撞遮罩）時，才能被檢測到。

出於效能考慮（所有碰撞都在同一時間統一處理），這個清單每影格只會在物理步驟中更新一次，而不會在物體移動後立即更新。因此，建議考慮使用訊號（signals）來代替。

\ **注意：** Godot Physics（Godot自帶的物理引擎）不支援報告與 :ref:`SoftBody3D<class_SoftBody3D>` 的重疊情況，因此不會回傳任何此類物體。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_areas>`

如果與其他 **Area3D** 相交，則返回 ``true``\ ，否則返回 ``false``\ 。重疊區域的 :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` 必須是該區域 :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` 的一部分，才能被偵測到。

出於效能原因（所有碰撞都是一起處理的），重疊區域的列表只會在每次物理反覆運算時發生一次更改，不會在對象移動後立即更改。請考慮使用訊號。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_bodies>`

如果與任意 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ （3D物理剛體）、\ :ref:`SoftBody3D<class_SoftBody3D>`\ （3D軟體）或 :ref:`GridMap<class_GridMap>`\ （3D網格地圖）發生重疊，則回傳 ``true``\ ，否則回傳 ``false``\ 。只有當發生重疊的物體的 :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>`\ （碰撞層）包含在該區域的 :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>`\ （碰撞遮罩）範圍內時，才會被檢測到。

出於效能原因（所有的碰撞都會在同一個時間點統一處理），重疊物體的清單是在物理影格（physics step）中統一更新一次的，而不是在物體移動後立刻更新。因此，建議考慮使用訊號（signals）來替代輪詢。

\ **注意：** Godot Physics（Godot 自帶的物理引擎）不支援報告與 :ref:`SoftBody3D<class_SoftBody3D>` 的重疊狀態，因此不會將軟體納入檢測範圍。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_area>`

如果給定的 **Area3D** 與此 **Area3D** 相交或重疊，則返回 ``true``\ ，否則返回 ``false``\ 。

\ **注意：**\ 測試結果不反映物件移動後的即時狀態。出於效能原因，重疊列表每影格只會在物理反覆運算前更新一次。請考慮使用訊號。

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_body>`

如果指定的物理剛體與該 **Area3D** 相交或重疊，則回傳 ``true``\ ，否則回傳 ``false``\ 。

\ ``body`` 參數可以是 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ 、\ :ref:`SoftBody3D<class_SoftBody3D>` 或 :ref:`GridMap<class_GridMap>` 的實例。雖然 GridMap 本身不是物理剛體，但它會將自己帶有碰撞形狀的圖塊作為一個虛擬的物理剛體進行注冊。

\ **注意：** 在移動物體後，此測試的結果不會立即更新。出於效能考慮，重疊清單每影格更新一次，並且是在物理步驟之前。因此，建議考慮使用訊號（signals）來代替。

\ **注意：** Godot Physics（Godot自帶的物理引擎）不支援報告與 :ref:`SoftBody3D<class_SoftBody3D>` 的重疊情況，因此在這種情況下會回傳 ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
