:github_url: hide

.. _class_NavigationAgent3D:

NavigationAgent3D
=================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於尋路至某個位置並且能夠躲避障礙物的 3D 代理。

.. rst-class:: classref-introduction-group

說明
----

用於尋路至某個位置並且能夠躲避靜態和動態障礙物的 3D 代理。父節點能夠使用計算結果沿著路徑動態前進。需要有導航資料才能正常工作。

躲避動態障礙物使用的是 RVO 防撞算法。避障的計算發生在物理之前，因此尋路資訊能夠在物理迭代時安全使用。

\ **注意：**\ 設定 :ref:`target_position<class_NavigationAgent3D_property_target_position>` 屬性之後，必須在每個物理影格使用一次 :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>` 函式來更新導航代理的內部路徑邏輯。這個函式回傳的向量位置應該用作該代理的父節點的下一次移動位置。

\ **注意：**\ 這個類的 :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>` 等方法會觸發新的路徑計算。在代理的 :ref:`waypoint_reached<class_NavigationAgent3D_signal_waypoint_reached>` 等訊號中呼叫這些方法會造成無限遞歸。建議在物理步驟中呼叫這些方法，也可以推遲到目前影格的末尾再呼叫（見 :ref:`Object.call_deferred()<class_Object_method_call_deferred>` 或 :ref:`Object.CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>`\ ）。

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
   | :ref:`bool<class_bool>`                                                                        | :ref:`avoidance_enabled<class_NavigationAgent3D_property_avoidance_enabled>`                       | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>`                         | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>`                             | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`avoidance_priority<class_NavigationAgent3D_property_avoidance_priority>`                     | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`debug_enabled<class_NavigationAgent3D_property_debug_enabled>`                               | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                                                      | :ref:`debug_path_custom_color<class_NavigationAgent3D_property_debug_path_custom_color>`           | ``Color(1, 1, 1, 1)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`debug_path_custom_point_size<class_NavigationAgent3D_property_debug_path_custom_point_size>` | ``4.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>`                         | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`height<class_NavigationAgent3D_property_height>`                                             | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`keep_y_velocity<class_NavigationAgent3D_property_keep_y_velocity>`                           | ``true``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`max_neighbors<class_NavigationAgent3D_property_max_neighbors>`                               | ``10``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`max_speed<class_NavigationAgent3D_property_max_speed>`                                       | ``10.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>`                       | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`neighbor_distance<class_NavigationAgent3D_property_neighbor_distance>`                       | ``50.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>`               | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_height_offset<class_NavigationAgent3D_property_path_height_offset>`                     | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_max_distance<class_NavigationAgent3D_property_path_max_distance>`                       | ``5.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] | :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>`                   | ``7``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`             | :ref:`path_postprocessing<class_NavigationAgent3D_property_path_postprocessing>`                   | ``0``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_length<class_NavigationAgent3D_property_path_return_max_length>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_radius<class_NavigationAgent3D_property_path_return_max_radius>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_search_max_distance<class_NavigationAgent3D_property_path_search_max_distance>`         | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`path_search_max_polygons<class_NavigationAgent3D_property_path_search_max_polygons>`         | ``4096``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`         | :ref:`pathfinding_algorithm<class_NavigationAgent3D_property_pathfinding_algorithm>`               | ``0``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`radius<class_NavigationAgent3D_property_radius>`                                             | ``0.5``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`simplify_epsilon<class_NavigationAgent3D_property_simplify_epsilon>`                         | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`simplify_path<class_NavigationAgent3D_property_simplify_path>`                               | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>`           | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`target_position<class_NavigationAgent3D_property_target_position>`                           | ``Vector3(0, 0, 0)``  |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`time_horizon_agents<class_NavigationAgent3D_property_time_horizon_agents>`                   | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`time_horizon_obstacles<class_NavigationAgent3D_property_time_horizon_obstacles>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`use_3d_avoidance<class_NavigationAgent3D_property_use_3d_avoidance>`                         | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`velocity<class_NavigationAgent3D_property_velocity>`                                         | ``Vector3(0, 0, 0)``  |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`distance_to_target<class_NavigationAgent3D_method_distance_to_target>`\ (\ ) |const|                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_avoidance_layer_value<class_NavigationAgent3D_method_get_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_avoidance_mask_value<class_NavigationAgent3D_method_get_avoidance_mask_value>`\ (\ mask_number\: :ref:`int<class_int>`\ ) |const|                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`                   | :ref:`get_current_navigation_path<class_NavigationAgent3D_method_get_current_navigation_path>`\ (\ ) |const|                                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_current_navigation_path_index<class_NavigationAgent3D_method_get_current_navigation_path_index>`\ (\ ) |const|                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationPathQueryResult3D<class_NavigationPathQueryResult3D>` | :ref:`get_current_navigation_result<class_NavigationAgent3D_method_get_current_navigation_result>`\ (\ ) |const|                                                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_final_position<class_NavigationAgent3D_method_get_final_position>`\ (\ )                                                                                        |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_navigation_layer_value<class_NavigationAgent3D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_navigation_map<class_NavigationAgent3D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_next_path_position<class_NavigationAgent3D_method_get_next_path_position>`\ (\ )                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`get_path_length<class_NavigationAgent3D_method_get_path_length>`\ (\ ) |const|                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_rid<class_NavigationAgent3D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_navigation_finished<class_NavigationAgent3D_method_is_navigation_finished>`\ (\ )                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_target_reachable<class_NavigationAgent3D_method_is_target_reachable>`\ (\ )                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_target_reached<class_NavigationAgent3D_method_is_target_reached>`\ (\ ) |const|                                                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_avoidance_layer_value<class_NavigationAgent3D_method_set_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )   |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_avoidance_mask_value<class_NavigationAgent3D_method_set_avoidance_mask_value>`\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_navigation_layer_value<class_NavigationAgent3D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_navigation_map<class_NavigationAgent3D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_velocity_forced<class_NavigationAgent3D_method_set_velocity_forced>`\ (\ velocity\: :ref:`Vector3<class_Vector3>`\ )                                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_NavigationAgent3D_signal_link_reached:

.. rst-class:: classref-signal

**link_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_link_reached>`

表示代理到達導航連結的訊號。當代理移動到路徑下一個位置的 :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` 範圍內，且該位置是導航連結時發出。

根據 :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>` 的值，詳細資訊字典可能包含以下鍵：

- ``position``\ ：到達的連結的起始位置。

- ``type``\ ：總是 :ref:`NavigationPathQueryResult3D.PATH_SEGMENT_TYPE_LINK<class_NavigationPathQueryResult3D_constant_PATH_SEGMENT_TYPE_LINK>`\ 。

- ``rid``\ ：連結的 :ref:`RID<class_RID>`\ 。

- ``owner``\ ：管理該連結的物件（通常是\ :ref:`NavigationLink3D<class_NavigationLink3D>`\ ）。

- ``link_entry_position``\ ：如果 ``owner`` 可用且該所有者是一個 :ref:`NavigationLink3D<class_NavigationLink3D>`\ ，它將包含代理正在進入時的連結點的全域位置。

- ``link_exit_position``\ ：如果 ``owner`` 可用且該所有者是一個 :ref:`NavigationLink3D<class_NavigationLink3D>`\ ，它將包含代理正在退出時的連結點的全域位置。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_navigation_finished:

.. rst-class:: classref-signal

**navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_navigation_finished>`

表示代理導航完成的訊號。如果目標可達，則導航會在抵達目標位置時停止。如果目標不可達，則導航會在抵達最後一個路徑點時停止。每次載入的路徑只會發出一次這個訊號。

目標可達時，訊號會在 :ref:`target_reached<class_NavigationAgent3D_signal_target_reached>` 後發出。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_path_changed:

.. rst-class:: classref-signal

**path_changed**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_path_changed>`

當代理程式必須更新已載入的路徑時發出：

- 因為路徑以前是空的。

- 因為導覽地圖已經改變。

- 因為代理推離目前路徑段比 :ref:`path_max_distance<class_NavigationAgent3D_property_path_max_distance>` 更遠。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_target_reached:

.. rst-class:: classref-signal

**target_reached**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_target_reached>`

表示代理到達目標的訊號，即代理移到了與 :ref:`target_position<class_NavigationAgent3D_property_target_position>` 相距 :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` 之內的位置。每次載入路徑只會發出一次這個訊號。

目標可達時，訊號會在 :ref:`navigation_finished<class_NavigationAgent3D_signal_navigation_finished>` 前發出。

並不是每次都能夠到達目標位置，但是每次都能夠到達最終位置。見 :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_velocity_computed:

.. rst-class:: classref-signal

**velocity_computed**\ (\ safe_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_velocity_computed>`

計算出避障速度時發出通知。只要 :ref:`avoidance_enabled<class_NavigationAgent3D_property_avoidance_enabled>` 為 ``true`` 並且代理存在導航地圖，就會在每次更新時發出。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_waypoint_reached:

.. rst-class:: classref-signal

**waypoint_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_waypoint_reached>`

表示代理已到達航路點的訊號。當代理移動到路徑下一個位置的 :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` 範圍內時發出。

根據 :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>` 的值，詳細資訊字典可能包含以下鍵：

- ``position``\ ：到達的路標點的位置。

- ``type``\ ：包含該路標的導航基元（區塊或連結）的型別。

- ``rid``\ ：包含的導航基元（區塊或連結）的 :ref:`RID<class_RID>`\ 。

- ``owner``\ ：管理包含的導航基元（區塊或連結）的物件。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_NavigationAgent3D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

如果為 ``true``\ ，該代理會在 :ref:`NavigationServer3D<class_NavigationServer3D>` 上註冊 RVO 避障回呼。當設定 :ref:`velocity<class_NavigationAgent3D_property_velocity>` 並且處理完成時，會通過與 :ref:`velocity_computed<class_NavigationAgent3D_signal_velocity_computed>` 的訊號連接接收到安全速度 ``safe_velocity`` Vector3。註冊的代理過多會為避障處理帶來顯著的效能開銷，應該僅在需要它的代理上啟用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

決定該 NavigationAgent 避障層的位域。\ :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` 中該位域存在交集的其他代理會躲避這個代理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_mask** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_mask>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_mask**\ (\ )

決定該 NavigationAgent 會躲避那些代理和障礙物的位元域，需要該位元域與對方的 :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>` 存在至少一個共同的位元位。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **avoidance_priority** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_priority>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_avoidance_priority**\ (\ )

該代理不會針對 :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` 存在配對但 :ref:`avoidance_priority<class_NavigationAgent3D_property_avoidance_priority>` 更低的代理調整速度。相應地，優先順序更低的代理則會對其速度進行更大的調整，從而避免與這個代理發生碰撞。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_enabled** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_debug_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_debug_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_enabled**\ (\ )

如果為 ``true``\ ，則為該代理顯示除錯內容。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_path_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_path_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_NavigationAgent3D_property_debug_path_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_path_custom_color**\ (\ )

如果 :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>` 為 ``true``\ ，則該代理使用該顏色，不使用全域顏色。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_path_custom_point_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **debug_path_custom_point_size** = ``4.0`` :ref:`🔗<class_NavigationAgent3D_property_debug_path_custom_point_size>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_point_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_debug_path_custom_point_size**\ (\ )

如果 :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>` 為 ``true``\ ，則該代理使用該柵格化點尺寸進行路徑點的渲染，不使用全域點尺寸。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_use_custom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_use_custom** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_debug_use_custom>`

.. rst-class:: classref-property-setget

- |void| **set_debug_use_custom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_use_custom**\ (\ )

如果為 ``true``\ ，則該代理使用 :ref:`debug_path_custom_color<class_NavigationAgent3D_property_debug_path_custom_color>` 中定義的顏色，不使用全域顏色。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

避障代理的高度。2D 避障時，代理會忽略位於其上方或低於目前位置 + 高度的其他代理或障礙物。3D 避障時只使用半徑球體，該設定無效。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_keep_y_velocity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_y_velocity** = ``true`` :ref:`🔗<class_NavigationAgent3D_property_keep_y_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_keep_y_velocity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_keep_y_velocity**\ (\ )

如果為 ``true``\ ，並且代理使用 2D 避障，它將記住設定的 y 軸速度並在避障步進後重新應用它。雖然 2D 避障沒有 y 軸並在平坦平面上進行模擬，但該設定可以協助柔化不均勻 3D 幾何體上最明顯的裁剪。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_max_neighbors:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_neighbors** = ``10`` :ref:`🔗<class_NavigationAgent3D_property_max_neighbors>`

.. rst-class:: classref-property-setget

- |void| **set_max_neighbors**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_neighbors**\ (\ )

該代理所需考慮的最大鄰居數。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_max_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_speed** = ``10.0`` :ref:`🔗<class_NavigationAgent3D_property_max_speed>`

.. rst-class:: classref-property-setget

- |void| **set_max_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_speed**\ (\ )

代理所能達到的最大移動速度。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

決定該代理計算路徑所使用的導覽地區導覽層的位元域。運作時進行修改會清空目前的導航路徑，並根據新的導覽層生成一條新的路徑。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_neighbor_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **neighbor_distance** = ``50.0`` :ref:`🔗<class_NavigationAgent3D_property_neighbor_distance>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_neighbor_distance**\ (\ )

搜尋其他代理的距離。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_desired_distance** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_path_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_desired_distance**\ (\ )

距離閾值，用於確定是否已到達某個路徑點。使用這個值，代理就不必精確地到達某個路徑點，只需到達該路徑點的大致區域內即可。如果這個值設得太大，該 NavigationAgent 會跳過路徑上的點，這可能導致它離開該導覽網格。如果這個值設得太小，該 NavigationAgent 會陷入重新尋路的死循環，因為它會在每次物理影格更新後都會超過下一個點。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_height_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_height_offset** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_height_offset>`

.. rst-class:: classref-property-setget

- |void| **set_path_height_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_height_offset**\ (\ )

這個 NavigationAgent 的任何向量路徑位置的 Y 座標值都會減去這個高度偏移量。NavigationAgent 的高度偏移量既不會改變也不會影響導覽網格和尋路結果。要支援不同大小的代理，需要提供其他使用了帶有導覽網格區塊的導覽地圖，並且開發者使用合適的代理半徑或高度對其進行了烘焙。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_max_distance** = ``5.0`` :ref:`🔗<class_NavigationAgent3D_property_path_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_max_distance**\ (\ )

允許代理偏離通往最終位置的理想路徑的最大距離。可能為了防撞而產生偏離。超出最大距離時，會重新計算理想路徑。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **path_metadata_flags** = ``7`` :ref:`🔗<class_NavigationAgent3D_property_path_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_path_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **get_path_metadata_flags**\ (\ )

與導覽路徑一起返回的附加資訊。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationAgent3D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

對 :ref:`pathfinding_algorithm<class_NavigationAgent3D_property_pathfinding_algorithm>` 找到的原始路徑走廊套用的路徑後期處理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

返迴路徑允許的最大長度，單位為世界單位。路徑超出該長度後會被截斷。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

返迴路徑從起點開始所允許的最大半徑，單位為世界單位。路徑超出該半徑後會被截斷。與 :ref:`path_return_max_length<class_NavigationAgent3D_property_path_return_max_length>` 相比，當代理需要繞過拐角時，該屬效能夠允許代理走得更遠。

\ **注意：**\ 該屬性會執行球面裁剪，只會考慮實際的導覽網格路徑點，路徑上的第一個位置是球體中心。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

搜尋通往目的位置多邊形的路徑時（可能不可達或非常遠），取消尋路前能夠搜尋的多邊形的最大距離。取消時，尋路會重設，建置出的路徑從起始多邊形開始，通往目前所找到的最接近目的位置的多邊形。小於等於 ``0`` 表示不限制數量，尋路時會搜尋與起始多邊形相連的所有多邊形，直到發現目的位置多邊形或已經查過所有待查的多邊形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationAgent3D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

搜尋通往目的位置多邊形的路徑時（可能不可達或非常遠），取消尋路前能夠搜尋的最大多邊形數。取消時，尋路會重設，建置出的路徑從起始多邊形開始，通往目前所找到的最接近目的位置的多邊形。小於等於 ``0`` 表示不限制數量，尋路時會搜尋與起始多邊形相連的所有多邊形，直到發現目的位置多邊形或已經查過所有待查的多邊形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationAgent3D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

路徑查詢中使用的尋路演算法。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_NavigationAgent3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

該避障代理的半徑。這是該避障代理的“身體”，不是避障機制的起始半徑（由 :ref:`neighbor_distance<class_NavigationAgent3D_property_neighbor_distance>` 控制）。

不會影響正常的尋路。要修改角色的尋路半徑，請在烘焙 :ref:`NavigationMesh<class_NavigationMesh>` 資源時使用不同的 :ref:`NavigationMesh.agent_radius<class_NavigationMesh_property_agent_radius>` 屬性，針對不同的角色大小使用不同的導覽地圖。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

The path simplification amount in world units.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

如果為 ``true``\ ，將返迴路徑的簡化版本，其中移除了不太重要的路徑點。簡化量由 :ref:`simplify_epsilon<class_NavigationAgent3D_property_simplify_epsilon>` 控制。簡化使用 Ramer-Douglas-Peucker 算法的變體進行曲線點抽取。

路徑簡化有助於緩解使用某些代理型別和腳本行為可能出現的各種路徑追蹤問題。例如“開放場”中的“轉向”代理或避讓。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_target_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_desired_distance** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_target_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_desired_distance**\ (\ )

與目標的距離閾值，小於該閾值時會認為已抵達目標位置。已抵達目標位置時會發出 :ref:`target_reached<class_NavigationAgent3D_signal_target_reached>` 並結束導航（見 :ref:`is_navigation_finished()<class_NavigationAgent3D_method_is_navigation_finished>` 和 :ref:`navigation_finished<class_NavigationAgent3D_signal_navigation_finished>`\ ）。

將這個屬性設定為大於 :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` 的值可以提前結束導航（導航會在到達最後一個路徑點之前停止）。

將這個屬性設定為小於 :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` 的值則會讓導航在更接近目標位置的地方結束（導航在抵達最後一個路徑點後不會立即停止）。不過如果設得太小，代理就會陷入重新移動的循環，因為每次物理影格更新時移動的距離都會超過與目標的實際距離。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationAgent3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

設定後，會向 NavigationServer 請求一條新的從目前代理位置到 :ref:`target_position<class_NavigationAgent3D_property_target_position>` 的導覽路徑。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_time_horizon_agents:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_agents** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_time_horizon_agents>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_agents**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_agents**\ (\ )

The minimal amount of time for which this agent's velocities, that are computed with the collision avoidance algorithm, are safe with respect to other agents. The larger the number, the sooner the agent will respond to other agents, but less freedom in choosing its velocities. A too high value will slow down agent movement considerably. Must be positive.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_time_horizon_obstacles:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_obstacles** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_time_horizon_obstacles>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_obstacles**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_obstacles**\ (\ )

The minimal amount of time for which this agent's velocities, that are computed with the collision avoidance algorithm, are safe with respect to static avoidance obstacles. The larger the number, the sooner the agent will respond to static avoidance obstacles, but less freedom in choosing its velocities. A too high value will slow down agent movement considerably. Must be positive.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_use_3d_avoidance:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_3d_avoidance** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_use_3d_avoidance>`

.. rst-class:: classref-property-setget

- |void| **set_use_3d_avoidance**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_3d_avoidance**\ (\ )

如果為 ``true``\ ，則代理會在 3D 空間中計算全向的避障速度，例如發生在空中、水下、太空中的遊戲。使用 3D 避障的代理只會躲避其他使用 3D 避障的代理、對基於半徑的障礙物作出反應。會忽略基於頂點的障礙物。

如果為 ``false``\ ，則代理會在 2D 空間中沿 X 和 Z 軸計算避障速度，忽略 Y 軸。使用 2D 避障的代理只會躲避其他使用 2D 避障的代理、對基於半徑和基於頂點的障礙物作出反應。其他使用 2D 避障的代理如果在該代理之下，或者高於該代理目前位置與 :ref:`height<class_NavigationAgent3D_property_height>` 之和則會被忽略。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationAgent3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

為代理設定新的需求速度。避障模擬會盡可能嘗試滿足這個速度，但為了躲避與其他代理和障礙物的碰撞也會對它進行修改。將代理傳送至新的位置時，請使用 :ref:`set_velocity_forced()<class_NavigationAgent3D_method_set_velocity_forced>` 重設內部模擬速度。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_NavigationAgent3D_method_distance_to_target:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to_target**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_distance_to_target>`

返回與目標位置的距離，使用的是代理的全域位置。使用者必須設定 :ref:`target_position<class_NavigationAgent3D_property_target_position>` 才能獲得精確結果。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_avoidance_layer_value>`

返回 :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>` 位元遮罩中指定的層是否啟用，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_avoidance_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_avoidance_mask_value>`

返回 :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` 位元遮罩中指定的遮罩是否啟用，給定的 ``mask_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_path:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_current_navigation_path**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_path>`

Returns this agent's current path from start to finish in global coordinates. The path only updates when the target position is changed or the agent requires a repath. The path array is not intended to be used in direct path movement as the agent has its own internal path logic that would get corrupted by changing the path array manually. Use the intended :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>` once every physics frame to receive the next path point for the agent's movement as this function also updates the internal path logic.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_path_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_navigation_path_index**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_path_index>`

返回該代理目前位於導覽路徑 :ref:`PackedVector3Array<class_PackedVector3Array>` 中的哪一個索引。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_result:

.. rst-class:: classref-method

:ref:`NavigationPathQueryResult3D<class_NavigationPathQueryResult3D>` **get_current_navigation_result**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_result>`

返回該代理目前正在使用的路徑所對應的路徑查詢結果。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_final_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_final_position**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_get_final_position>`

回傳目前導航路徑上可到達的最終位置的全域座標。如果該代理需要更新導航路徑，從而使該代理髮出 :ref:`path_changed<class_NavigationAgent3D_signal_path_changed>` 訊號，則該位置可能會發生變化。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_navigation_layer_value>`

返回 :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>` 位元遮罩中指定的層是否啟用，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_navigation_map>`

返回這個 NavigationAgent 節點的導覽地圖的 :ref:`RID<class_RID>`\ 。這個函式返回的始終是在 NavigationAgent 上設定的地圖，不是 NavigationServer 上的抽象代理所使用的地圖。如果通過 NavigationServer API 修改了代理的地圖，該 NavigationAgent 節點是不會感知到地圖的變化的。請使用 :ref:`set_navigation_map()<class_NavigationAgent3D_method_set_navigation_map>` 修改該 NavigationAgent 的導覽地圖，能夠同時在 NavigationServer 上的代理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_next_path_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_next_path_position**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_get_next_path_position>`

返回可以移動至的下一個位置，使用全域座標，確保中途沒有靜態物件的阻擋。如果該代理沒有導覽路徑，則會返回該代理父節點的位置。這個函式每個物理影格都必須呼叫一次，更新 NavigationAgent 內部的路徑邏輯。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_path_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_path_length**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_path_length>`

回傳目前計算得到的路徑的長度。如果仍在計算路徑或尚未請求計算，則回傳值為 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_rid>`

返回這個代理在 :ref:`NavigationServer3D<class_NavigationServer3D>` 上的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_navigation_finished:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_is_navigation_finished>`

如果代理的導航已完成，則回傳 ``true``\ 。如果目標可達，則導航將在達到目標時結束。如果目標不可達，則導航將在到達路徑的最後一個航路點時結束。

\ **注意：**\ 雖然 ``true`` 更喜歡停止呼叫更新函式，例如 :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>`\ 。這避免了由於呼叫重複的路徑更新而使常設代理抖動。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_target_reachable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reachable**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_is_target_reachable>`

如果 :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>` 位於 :ref:`target_position<class_NavigationAgent3D_property_target_position>` 的 :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` 範圍內，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_target_reached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reached**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_is_target_reached>`

如果代理到達目標，即代理移動到 :ref:`target_position<class_NavigationAgent3D_property_target_position>` 的 :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` 範圍內，則回傳 ``true``\ 。不一定總能到達目標，但應總能到達最終位置。請參閱 :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_avoidance_layer_value>`

根據 ``value`` 啟用或停用 :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>` 位元遮罩中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_avoidance_mask_value:

.. rst-class:: classref-method

|void| **set_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_avoidance_mask_value>`

根據 ``value`` 啟用或停用 :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` 位元遮罩中指定的遮罩，給定的 ``mask_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_navigation_layer_value>`

根據 ``value``\ ，啟用或停用 :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>` 位元遮罩中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_navigation_map>`

設定這個 NavigationAgent 節點所應使用的導覽地圖的 :ref:`RID<class_RID>`\ ，同時還會更新 NavigationServer 上的代理 ``agent``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_velocity_forced:

.. rst-class:: classref-method

|void| **set_velocity_forced**\ (\ velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_velocity_forced>`

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
