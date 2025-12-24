:github_url: hide

.. _class_NavigationAgent2D:

NavigationAgent2D
=================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於尋路至某個位置並且能夠躲避障礙物的 2D 代理。

.. rst-class:: classref-introduction-group

說明
----

A 2D agent used to pathfind to a position while avoiding static and dynamic obstacles. The calculation can be used by the parent node to dynamically move it along the path. Requires navigation data to work correctly.

Dynamic obstacles are avoided using RVO collision avoidance. Avoidance is computed before physics, so the pathfinding information can be used safely in the physics step.

\ **Note:** After setting the :ref:`target_position<class_NavigationAgent2D_property_target_position>` property, the :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>` method must be used once every physics frame to update the internal path logic of the navigation agent. The vector position it returns should be used as the next movement position for the agent's parent node.

\ **Note:** Several methods of this class, such as :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>`, can trigger a new path calculation. Calling these in your callback to an agent's signal, such as :ref:`waypoint_reached<class_NavigationAgent2D_signal_waypoint_reached>`, can cause infinite recursion. It is recommended to call these methods in the physics step or, alternatively, delay their call until the end of the frame (see :ref:`Object.call_deferred()<class_Object_method_call_deferred>` or :ref:`Object.CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>`).

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 NavigationAgent <../tutorials/navigation/navigation_using_navigationagents>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`avoidance_enabled<class_NavigationAgent2D_property_avoidance_enabled>`                       | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`avoidance_layers<class_NavigationAgent2D_property_avoidance_layers>`                         | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>`                             | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`avoidance_priority<class_NavigationAgent2D_property_avoidance_priority>`                     | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`debug_enabled<class_NavigationAgent2D_property_debug_enabled>`                               | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                                                      | :ref:`debug_path_custom_color<class_NavigationAgent2D_property_debug_path_custom_color>`           | ``Color(1, 1, 1, 1)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`debug_path_custom_line_width<class_NavigationAgent2D_property_debug_path_custom_line_width>` | ``-1.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`debug_path_custom_point_size<class_NavigationAgent2D_property_debug_path_custom_point_size>` | ``4.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`debug_use_custom<class_NavigationAgent2D_property_debug_use_custom>`                         | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`max_neighbors<class_NavigationAgent2D_property_max_neighbors>`                               | ``10``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`max_speed<class_NavigationAgent2D_property_max_speed>`                                       | ``100.0``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`navigation_layers<class_NavigationAgent2D_property_navigation_layers>`                       | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`neighbor_distance<class_NavigationAgent2D_property_neighbor_distance>`                       | ``500.0``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>`               | ``20.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_max_distance<class_NavigationAgent2D_property_path_max_distance>`                       | ``100.0``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] | :ref:`path_metadata_flags<class_NavigationAgent2D_property_path_metadata_flags>`                   | ``7``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>`             | :ref:`path_postprocessing<class_NavigationAgent2D_property_path_postprocessing>`                   | ``0``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_length<class_NavigationAgent2D_property_path_return_max_length>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_radius<class_NavigationAgent2D_property_path_return_max_radius>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_search_max_distance<class_NavigationAgent2D_property_path_search_max_distance>`         | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`path_search_max_polygons<class_NavigationAgent2D_property_path_search_max_polygons>`         | ``4096``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>`         | :ref:`pathfinding_algorithm<class_NavigationAgent2D_property_pathfinding_algorithm>`               | ``0``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`radius<class_NavigationAgent2D_property_radius>`                                             | ``10.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`simplify_epsilon<class_NavigationAgent2D_property_simplify_epsilon>`                         | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`simplify_path<class_NavigationAgent2D_property_simplify_path>`                               | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`target_desired_distance<class_NavigationAgent2D_property_target_desired_distance>`           | ``10.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                                                                  | :ref:`target_position<class_NavigationAgent2D_property_target_position>`                           | ``Vector2(0, 0)``     |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`time_horizon_agents<class_NavigationAgent2D_property_time_horizon_agents>`                   | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`time_horizon_obstacles<class_NavigationAgent2D_property_time_horizon_obstacles>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                                                                  | :ref:`velocity<class_NavigationAgent2D_property_velocity>`                                         | ``Vector2(0, 0)``     |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`distance_to_target<class_NavigationAgent2D_method_distance_to_target>`\ (\ ) |const|                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_avoidance_layer_value<class_NavigationAgent2D_method_get_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_avoidance_mask_value<class_NavigationAgent2D_method_get_avoidance_mask_value>`\ (\ mask_number\: :ref:`int<class_int>`\ ) |const|                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                   | :ref:`get_current_navigation_path<class_NavigationAgent2D_method_get_current_navigation_path>`\ (\ ) |const|                                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_current_navigation_path_index<class_NavigationAgent2D_method_get_current_navigation_path_index>`\ (\ ) |const|                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationPathQueryResult2D<class_NavigationPathQueryResult2D>` | :ref:`get_current_navigation_result<class_NavigationAgent2D_method_get_current_navigation_result>`\ (\ ) |const|                                                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                         | :ref:`get_final_position<class_NavigationAgent2D_method_get_final_position>`\ (\ )                                                                                        |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_navigation_layer_value<class_NavigationAgent2D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_navigation_map<class_NavigationAgent2D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                         | :ref:`get_next_path_position<class_NavigationAgent2D_method_get_next_path_position>`\ (\ )                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`get_path_length<class_NavigationAgent2D_method_get_path_length>`\ (\ ) |const|                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_rid<class_NavigationAgent2D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_navigation_finished<class_NavigationAgent2D_method_is_navigation_finished>`\ (\ )                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_target_reachable<class_NavigationAgent2D_method_is_target_reachable>`\ (\ )                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_target_reached<class_NavigationAgent2D_method_is_target_reached>`\ (\ ) |const|                                                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_avoidance_layer_value<class_NavigationAgent2D_method_set_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )   |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_avoidance_mask_value<class_NavigationAgent2D_method_set_avoidance_mask_value>`\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_navigation_layer_value<class_NavigationAgent2D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_navigation_map<class_NavigationAgent2D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_velocity_forced<class_NavigationAgent2D_method_set_velocity_forced>`\ (\ velocity\: :ref:`Vector2<class_Vector2>`\ )                                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_NavigationAgent2D_signal_link_reached:

.. rst-class:: classref-signal

**link_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent2D_signal_link_reached>`

Signals that the agent reached a navigation link. Emitted when the agent moves within :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>` of the next position of the path when that position is a navigation link.

The details dictionary may contain the following keys depending on the value of :ref:`path_metadata_flags<class_NavigationAgent2D_property_path_metadata_flags>`:

- ``position``: The start position of the link that was reached.

- ``type``: Always :ref:`NavigationPathQueryResult2D.PATH_SEGMENT_TYPE_LINK<class_NavigationPathQueryResult2D_constant_PATH_SEGMENT_TYPE_LINK>`.

- ``rid``: The :ref:`RID<class_RID>` of the link.

- ``owner``: The object which manages the link (usually :ref:`NavigationLink2D<class_NavigationLink2D>`).

- ``link_entry_position``: If ``owner`` is available and the owner is a :ref:`NavigationLink2D<class_NavigationLink2D>`, it will contain the global position of the link's point the agent is entering.

- ``link_exit_position``: If ``owner`` is available and the owner is a :ref:`NavigationLink2D<class_NavigationLink2D>`, it will contain the global position of the link's point which the agent is exiting.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_navigation_finished:

.. rst-class:: classref-signal

**navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent2D_signal_navigation_finished>`

Signals that the agent's navigation has finished. If the target is reachable, navigation ends when the target is reached. If the target is unreachable, navigation ends when the last waypoint of the path is reached. This signal is emitted only once per loaded path.

This signal will be emitted just after :ref:`target_reached<class_NavigationAgent2D_signal_target_reached>` when the target is reachable.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_path_changed:

.. rst-class:: classref-signal

**path_changed**\ (\ ) :ref:`🔗<class_NavigationAgent2D_signal_path_changed>`

當代理程式必須更新已載入的路徑時發出：

- 因為路徑以前是空的。

- 因為導覽地圖已經改變。

- 因為代理推離目前路徑段比 :ref:`path_max_distance<class_NavigationAgent2D_property_path_max_distance>` 更遠。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_target_reached:

.. rst-class:: classref-signal

**target_reached**\ (\ ) :ref:`🔗<class_NavigationAgent2D_signal_target_reached>`

Signals that the agent reached the target, i.e. the agent moved within :ref:`target_desired_distance<class_NavigationAgent2D_property_target_desired_distance>` of the :ref:`target_position<class_NavigationAgent2D_property_target_position>`. This signal is emitted only once per loaded path.

This signal will be emitted just before :ref:`navigation_finished<class_NavigationAgent2D_signal_navigation_finished>` when the target is reachable.

It may not always be possible to reach the target but it should always be possible to reach the final position. See :ref:`get_final_position()<class_NavigationAgent2D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_velocity_computed:

.. rst-class:: classref-signal

**velocity_computed**\ (\ safe_velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationAgent2D_signal_velocity_computed>`

Notifies when the collision avoidance velocity is calculated. Emitted every update as long as :ref:`avoidance_enabled<class_NavigationAgent2D_property_avoidance_enabled>` is ``true`` and the agent has a navigation map.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_waypoint_reached:

.. rst-class:: classref-signal

**waypoint_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent2D_signal_waypoint_reached>`

Signals that the agent reached a waypoint. Emitted when the agent moves within :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>` of the next position of the path.

The details dictionary may contain the following keys depending on the value of :ref:`path_metadata_flags<class_NavigationAgent2D_property_path_metadata_flags>`:

- ``position``: The position of the waypoint that was reached.

- ``type``: The type of navigation primitive (region or link) that contains this waypoint.

- ``rid``: The :ref:`RID<class_RID>` of the containing navigation primitive (region or link).

- ``owner``: The object which manages the containing navigation primitive (region or link).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_NavigationAgent2D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

如果為 ``true``\ ，該代理會在 :ref:`NavigationServer2D<class_NavigationServer2D>` 上註冊 RVO 避障回調。當使用 :ref:`velocity<class_NavigationAgent2D_property_velocity>` 並且處理完成時，會通過與 :ref:`velocity_computed<class_NavigationAgent2D_signal_velocity_computed>` 的訊號連接接收到安全速度 ``safe_velocity`` Vector2。註冊的代理過多會為避障處理帶來顯著的性能開銷，應該僅在需要它的代理上啟用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

決定該 NavigationAgent 避障層的位域。\ :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>` 中該位域存在交集的其他代理會躲避這個代理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_avoidance_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_mask** = ``1`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_mask>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_mask**\ (\ )

決定該 NavigationAgent 會躲避那些代理和障礙物的位元域，需要該位元域與對方的 :ref:`avoidance_layers<class_NavigationAgent2D_property_avoidance_layers>` 存在至少一個共同的比特位。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_avoidance_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **avoidance_priority** = ``1.0`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_priority>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_avoidance_priority**\ (\ )

該代理不會針對 :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>` 存在配對但 :ref:`avoidance_priority<class_NavigationAgent2D_property_avoidance_priority>` 更低的代理調整速度。相應地，優先順序更低的代理則會對其速度進行更大的調整，從而避免與這個代理發生碰撞。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_enabled** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_debug_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_debug_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_enabled**\ (\ )

如果為 ``true``\ ，則為該代理顯示除錯內容。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_path_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_path_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_NavigationAgent2D_property_debug_path_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_path_custom_color**\ (\ )

如果 :ref:`debug_use_custom<class_NavigationAgent2D_property_debug_use_custom>` 為 ``true``\ ，則該代理使用該顏色，不使用全域顏色。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_path_custom_line_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **debug_path_custom_line_width** = ``-1.0`` :ref:`🔗<class_NavigationAgent2D_property_debug_path_custom_line_width>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_line_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_debug_path_custom_line_width**\ (\ )

如果 :ref:`debug_use_custom<class_NavigationAgent2D_property_debug_use_custom>` 為 ``true``\ ，則該代理使用該線寬進行路徑的算繪，不使用全域線寬。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_path_custom_point_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **debug_path_custom_point_size** = ``4.0`` :ref:`🔗<class_NavigationAgent2D_property_debug_path_custom_point_size>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_point_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_debug_path_custom_point_size**\ (\ )

如果 :ref:`debug_use_custom<class_NavigationAgent2D_property_debug_use_custom>` 為 ``true``\ ，則該代理使用該柵格化點尺寸進行路徑點的算繪，不使用全域點尺寸。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_use_custom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_use_custom** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_debug_use_custom>`

.. rst-class:: classref-property-setget

- |void| **set_debug_use_custom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_use_custom**\ (\ )

如果為 ``true``\ ，則該代理使用 :ref:`debug_path_custom_color<class_NavigationAgent2D_property_debug_path_custom_color>` 中定義的顏色，不使用全域顏色。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_max_neighbors:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_neighbors** = ``10`` :ref:`🔗<class_NavigationAgent2D_property_max_neighbors>`

.. rst-class:: classref-property-setget

- |void| **set_max_neighbors**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_neighbors**\ (\ )

該代理所需考慮的最大鄰居數。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_max_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_speed** = ``100.0`` :ref:`🔗<class_NavigationAgent2D_property_max_speed>`

.. rst-class:: classref-property-setget

- |void| **set_max_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_speed**\ (\ )

代理所能達到的最大移動速度。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationAgent2D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

決定該代理計算路徑所使用的導覽地區導覽層的位元域。運作時進行修改會清空目前的導航路徑，並根據新的導覽層生成一條新的路徑。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_neighbor_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **neighbor_distance** = ``500.0`` :ref:`🔗<class_NavigationAgent2D_property_neighbor_distance>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_neighbor_distance**\ (\ )

搜索其他代理的距離。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_desired_distance** = ``20.0`` :ref:`🔗<class_NavigationAgent2D_property_path_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_desired_distance**\ (\ )

The distance threshold before a path point is considered to be reached. This allows agents to not have to hit a path point on the path exactly, but only to reach its general area. If this value is set too high, the NavigationAgent will skip points on the path, which can lead to it leaving the navigation mesh. If this value is set too low, the NavigationAgent will be stuck in a repath loop because it will constantly overshoot the distance to the next point on each physics frame update.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_max_distance** = ``100.0`` :ref:`🔗<class_NavigationAgent2D_property_path_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_max_distance**\ (\ )

允許代理偏離通往最終位置的理想路徑的最大距離。可能為了防撞而產生偏離。超出最大距離時，會重新計算理想路徑。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] **path_metadata_flags** = ``7`` :ref:`🔗<class_NavigationAgent2D_property_path_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_path_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] **get_path_metadata_flags**\ (\ )

與導覽路徑一起返回的附加資訊。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationAgent2D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

對 :ref:`pathfinding_algorithm<class_NavigationAgent2D_property_pathfinding_algorithm>` 找到的原始路徑走廊套用的路徑後期處理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

The maximum allowed length of the returned path in world units. A path will be clipped when going over this length.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

The maximum allowed radius in world units that the returned path can be from the path start. The path will be clipped when going over this radius. Compared to :ref:`path_return_max_length<class_NavigationAgent2D_property_path_return_max_length>`, this allows the agent to go that much further, if they need to walk around a corner.

\ **Note:** This will perform a sphere clip considering only the actual navigation mesh path points with the first path position being the sphere's center.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

The maximum distance a searched polygon can be away from the start polygon before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of ``0`` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationAgent2D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

The maximum number of polygons that are searched before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of ``0`` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationAgent2D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

路徑查詢中使用的尋路演算法。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_NavigationAgent2D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

The radius of the avoidance agent. This is the "body" of the avoidance agent and not the avoidance maneuver starting radius (which is controlled by :ref:`neighbor_distance<class_NavigationAgent2D_property_neighbor_distance>`).

Does not affect normal pathfinding. To change an actor's pathfinding radius bake :ref:`NavigationPolygon<class_NavigationPolygon>` resources with a different :ref:`NavigationPolygon.agent_radius<class_NavigationPolygon_property_agent_radius>` property and use different navigation maps for each actor size.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

The path simplification amount in worlds units.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

If ``true`` a simplified version of the path will be returned with less critical path points removed. The simplification amount is controlled by :ref:`simplify_epsilon<class_NavigationAgent2D_property_simplify_epsilon>`. The simplification uses a variant of Ramer-Douglas-Peucker algorithm for curve point decimation.

Path simplification can be helpful to mitigate various path following issues that can arise with certain agent types and script behaviors. E.g. "steering" agents or avoidance in "open fields".

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_target_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_desired_distance** = ``10.0`` :ref:`🔗<class_NavigationAgent2D_property_target_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_desired_distance**\ (\ )

The distance threshold before the target is considered to be reached. On reaching the target, :ref:`target_reached<class_NavigationAgent2D_signal_target_reached>` is emitted and navigation ends (see :ref:`is_navigation_finished()<class_NavigationAgent2D_method_is_navigation_finished>` and :ref:`navigation_finished<class_NavigationAgent2D_signal_navigation_finished>`).

You can make navigation end early by setting this property to a value greater than :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>` (navigation will end before reaching the last waypoint).

You can also make navigation end closer to the target than each individual path position by setting this property to a value lower than :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>` (navigation won't immediately end when reaching the last waypoint). However, if the value set is too low, the agent will be stuck in a repath loop because it will constantly overshoot the distance to the target on each physics frame update.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationAgent2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

設定後，會向 NavigationServer 請求一條新的從目前代理位置到 :ref:`target_position<class_NavigationAgent2D_property_target_position>` 的導覽路徑。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_time_horizon_agents:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_agents** = ``1.0`` :ref:`🔗<class_NavigationAgent2D_property_time_horizon_agents>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_agents**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_agents**\ (\ )

考慮其他代理的前提下，該代理的速度的最短安全時間，這個速度是通過碰撞躲避演算法計算的。數值越大，代理回應其他代理的速度就越快，但選擇速度的自由度也就越小。太高的取值會大大降低代理的移動速度。必須為正數。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_time_horizon_obstacles:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_obstacles** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_time_horizon_obstacles>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_obstacles**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_obstacles**\ (\ )

考慮靜態避障障礙物的前提下，該代理的速度的最短安全時間，這個速度是通過碰撞躲避演算法計算的。數值越大，代理回應靜態避障障礙物的速度就越快，但選擇速度的自由度也就越小。太高的取值會大大降低代理的移動速度。必須為正數。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationAgent2D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

為代理設定新的需求速度。避障模擬會盡可能嘗試滿足這個速度，但為了躲避與其他代理和障礙物的碰撞也會對它進行修改。將代理傳送至新的位置時，請使用 :ref:`set_velocity_forced()<class_NavigationAgent2D_method_set_velocity_forced>` 重設內部模擬速度。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_NavigationAgent2D_method_distance_to_target:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to_target**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_distance_to_target>`

返回與目標位置的距離，使用的是代理的全域位置。使用者必須設定 :ref:`target_position<class_NavigationAgent2D_property_target_position>` 才能獲得精確結果。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_avoidance_layer_value>`

返回 :ref:`avoidance_layers<class_NavigationAgent2D_property_avoidance_layers>` 位元遮罩中指定的層是否啟用，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_avoidance_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_avoidance_mask_value>`

返回 :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>` 位元遮罩中指定的遮罩是否啟用，給定的 ``mask_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_current_navigation_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_current_navigation_path**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_current_navigation_path>`

返回這個代理從起點到終點的目前路徑，使用全域座標。該路徑只會在目標位置發生變化，或者代理要求重新計算路徑時更新。路徑陣列不套用於直接路徑移動，因為代理有自己的內部路徑邏輯，手動更改路徑陣列可能會破壞該邏輯。每個物理影格上使用一次預期的 :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>`\ ，來接收用於該代理移動的下一個路徑點，因為該函式還會更新內部路徑邏輯。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_current_navigation_path_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_navigation_path_index**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_current_navigation_path_index>`

返回該代理目前位於導覽路徑 :ref:`PackedVector2Array<class_PackedVector2Array>` 中的哪一個索引。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_current_navigation_result:

.. rst-class:: classref-method

:ref:`NavigationPathQueryResult2D<class_NavigationPathQueryResult2D>` **get_current_navigation_result**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_current_navigation_result>`

返回該代理目前正在使用的路徑所對應的路徑查詢結果。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_final_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_final_position**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_get_final_position>`

返回目前導覽路徑上可到達的最終位置的全域座標。如果導覽路徑由於任何原因發生改變，這個位置也可能發生變化。因此，最好每一影格都檢查一下。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_navigation_layer_value>`

返回 :ref:`navigation_layers<class_NavigationAgent2D_property_navigation_layers>` 位元遮罩中指定的層是否啟用，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_navigation_map>`

返回這個 NavigationAgent 節點的導覽地圖的 :ref:`RID<class_RID>`\ 。這個函式返回的始終是在 NavigationAgent 上設定的地圖，不是 NavigationServer 上的抽象代理所使用的地圖。如果通過 NavigationServer API 修改了代理的地圖，該 NavigationAgent 節點是不會感知到地圖的變化的。請使用 :ref:`set_navigation_map()<class_NavigationAgent2D_method_set_navigation_map>` 修改該 NavigationAgent 的導覽地圖，能夠同時在 NavigationServer 上的代理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_next_path_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_next_path_position**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_get_next_path_position>`

返回可以移動至的下一個位置，使用全域座標，確保中途沒有靜態物件的阻擋。如果該代理沒有導覽路徑，則會返回該代理父節點的位置。這個函式每個物理影格都必須呼叫一次，更新 NavigationAgent 內部的路徑邏輯。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_path_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_path_length**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_path_length>`

Returns the length of the currently calculated path. The returned value is ``0.0``, if the path is still calculating or no calculation has been requested yet.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_rid>`

返回這個代理在 :ref:`NavigationServer2D<class_NavigationServer2D>` 上的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_is_navigation_finished:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_is_navigation_finished>`

Returns ``true`` if the agent's navigation has finished. If the target is reachable, navigation ends when the target is reached. If the target is unreachable, navigation ends when the last waypoint of the path is reached.

\ **Note:** While ``true`` prefer to stop calling update functions like :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>`. This avoids jittering the standing agent due to calling repeated path updates.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_is_target_reachable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reachable**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_is_target_reachable>`

如果可到達 :ref:`target_position<class_NavigationAgent2D_property_target_position>`\ ，則返回 true。目標位置由 :ref:`target_position<class_NavigationAgent2D_property_target_position>` 設定。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_is_target_reached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reached**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_is_target_reached>`

Returns ``true`` if the agent reached the target, i.e. the agent moved within :ref:`target_desired_distance<class_NavigationAgent2D_property_target_desired_distance>` of the :ref:`target_position<class_NavigationAgent2D_property_target_position>`. It may not always be possible to reach the target but it should always be possible to reach the final position. See :ref:`get_final_position()<class_NavigationAgent2D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_avoidance_layer_value>`

根據 ``value`` 啟用或禁用 :ref:`avoidance_layers<class_NavigationAgent2D_property_avoidance_layers>` 位元遮罩中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_avoidance_mask_value:

.. rst-class:: classref-method

|void| **set_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_avoidance_mask_value>`

根據 ``value`` 啟用或禁用 :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>` 位元遮罩中指定的遮罩，給定的 ``mask_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_navigation_layer_value>`

根據 ``value``\ ，啟用或禁用 :ref:`navigation_layers<class_NavigationAgent2D_property_navigation_layers>` 位元遮罩中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_navigation_map>`

設定這個 NavigationAgent 節點所應使用的導覽地圖的 :ref:`RID<class_RID>`\ ，同時還會更新 NavigationServer 上的代理 ``agent``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_velocity_forced:

.. rst-class:: classref-method

|void| **set_velocity_forced**\ (\ velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_velocity_forced>`

將防撞模擬的內部速度替換為 ``velocity``\ 。代理傳送到新的位置之後，應該在同一影格裡使用這個函式。如果頻繁呼叫這個函式，可能會讓代理卡住。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
