:github_url: hide

.. _class_NavigationAgent2D:

NavigationAgent2D
=================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于寻路至某个位置并且能够躲避障碍物的 2D 代理。

.. rst-class:: classref-introduction-group

描述
----

用于寻路至某个位置并且能够躲避静态和动态障碍物的 2D 代理。父节点能够使用计算结果沿着路径动态前进。需要有导航数据才能正常工作。

躲避动态障碍物使用的是 RVO 防撞算法。避障的计算发生在物理之前，因此寻路信息能够在物理迭代时安全使用。

\ **注意：**\ 设置 :ref:`target_position<class_NavigationAgent2D_property_target_position>` 属性之后，必须在每个物理帧使用一次 :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>` 函数来更新导航代理的内部路径逻辑。这个函数返回的向量位置应该用作该代理的父节点的下一次移动位置。

\ **注意：**\ 这个类的 :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>` 等方法会触发新的路径计算。在代理的 :ref:`waypoint_reached<class_NavigationAgent2D_signal_waypoint_reached>` 等信号中调用这些方法会造成无限递归。建议在物理步骤中调用这些方法，也可以推迟到当前帧的末尾再调用（见 :ref:`Object.call_deferred()<class_Object_method_call_deferred>` 或 :ref:`Object.CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>`\ ）。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 NavigationAgent <../tutorials/navigation/navigation_using_navigationagents>`

.. rst-class:: classref-reftable-group

属性
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

信号
----

.. _class_NavigationAgent2D_signal_link_reached:

.. rst-class:: classref-signal

**link_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent2D_signal_link_reached>`

表示代理到达导航链接的信号。当代理移动到路径下一个位置的 :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>` 范围内，且该位置是导航链接时发出。

根据 :ref:`path_metadata_flags<class_NavigationAgent2D_property_path_metadata_flags>` 的值，详细信息字典可能包含以下键：

- ``position``\ ：到达的链接的起始位置。

- ``type``\ ：总是 :ref:`NavigationPathQueryResult2D.PATH_SEGMENT_TYPE_LINK<class_NavigationPathQueryResult2D_constant_PATH_SEGMENT_TYPE_LINK>`\ 。

- ``rid``\ ：链接的 :ref:`RID<class_RID>`\ 。

- ``owner``\ ：管理该链接的对象（通常是\ :ref:`NavigationLink2D<class_NavigationLink2D>`\ ）。

- ``link_entry_position``\ ：如果 ``owner`` 可用且该所有者是一个 :ref:`NavigationLink2D<class_NavigationLink2D>`\ ，它将包含代理正在进入时的链接点的全局位置。

- ``link_exit_position``\ ：如果 ``owner`` 可用且该所有者是一个 :ref:`NavigationLink2D<class_NavigationLink2D>`\ ，它将包含代理正在退出时的链接点的全局位置。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_navigation_finished:

.. rst-class:: classref-signal

**navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent2D_signal_navigation_finished>`

表示代理导航完成的信号。如果目标可达，则导航会在抵达目标位置时停止。如果目标不可达，则导航会在抵达最后一个路径点时停止。每次加载的路径只会发出一次这个信号。

目标可达时，信号会在 :ref:`target_reached<class_NavigationAgent2D_signal_target_reached>` 后发出。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_path_changed:

.. rst-class:: classref-signal

**path_changed**\ (\ ) :ref:`🔗<class_NavigationAgent2D_signal_path_changed>`

当该代理必须更新加载的路径时发出：

- 因为路径以前是空的。

- 因为导航地图已经改变。

- 因为代理从当前路径段推得比 :ref:`path_max_distance<class_NavigationAgent2D_property_path_max_distance>` 更远。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_target_reached:

.. rst-class:: classref-signal

**target_reached**\ (\ ) :ref:`🔗<class_NavigationAgent2D_signal_target_reached>`

表示代理到达目标的信号，即代理移到了与 :ref:`target_position<class_NavigationAgent2D_property_target_position>` 相距 :ref:`target_desired_distance<class_NavigationAgent2D_property_target_desired_distance>` 之内的位置。每次加载路径只会发出一次这个信号。

目标可达时，信号会在 :ref:`navigation_finished<class_NavigationAgent2D_signal_navigation_finished>` 前发出。

并不是每次都能够到达目标位置，但是每次都能够到达最终位置。见 :ref:`get_final_position()<class_NavigationAgent2D_method_get_final_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_velocity_computed:

.. rst-class:: classref-signal

**velocity_computed**\ (\ safe_velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationAgent2D_signal_velocity_computed>`

计算出避障速度时发出通知。只要 :ref:`avoidance_enabled<class_NavigationAgent2D_property_avoidance_enabled>` 为 ``true`` 并且代理存在导航地图，就会在每次更新时发出。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_waypoint_reached:

.. rst-class:: classref-signal

**waypoint_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent2D_signal_waypoint_reached>`

表示代理已到达航路点的信号。当代理移动到路径下一个位置的 :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>` 范围内时发出。

根据 :ref:`path_metadata_flags<class_NavigationAgent2D_property_path_metadata_flags>` 的值，详细信息字典可能包含以下键：

- ``position``\ ：到达的路标点的位置。

- ``type``\ ：包含该路标的导航基元（区块或链接）的类型。

- ``rid``\ ：包含的导航基元（区块或链接）的 :ref:`RID<class_RID>`\ 。

- ``owner``\ ：管理包含的导航基元（区块或链接）的对象。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_NavigationAgent2D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

如果为 ``true``\ ，该代理会在 :ref:`NavigationServer2D<class_NavigationServer2D>` 上注册 RVO 避障回调。当使用 :ref:`velocity<class_NavigationAgent2D_property_velocity>` 并且处理完成时，会通过与 :ref:`velocity_computed<class_NavigationAgent2D_signal_velocity_computed>` 的信号连接接收到安全速度 ``safe_velocity`` Vector2。注册的代理过多会为避障处理带来显著的性能开销，应该仅在需要它的代理上启用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

决定该 NavigationAgent 避障层的位域。\ :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>` 中该位域存在交集的其他代理会躲避这个代理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_avoidance_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_mask** = ``1`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_mask>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_mask**\ (\ )

决定该 NavigationAgent 会躲避那些代理和障碍物的位域，需要该位域与对方的 :ref:`avoidance_layers<class_NavigationAgent2D_property_avoidance_layers>` 存在至少一个共同的比特位。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_avoidance_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **avoidance_priority** = ``1.0`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_priority>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_avoidance_priority**\ (\ )

该代理不会针对 :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>` 存在匹配但 :ref:`avoidance_priority<class_NavigationAgent2D_property_avoidance_priority>` 更低的代理调整速度。相应地，优先级更低的代理则会对其速度进行更大的调整，从而避免与这个代理发生碰撞。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_enabled** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_debug_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_debug_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_enabled**\ (\ )

如果为 ``true``\ ，则为该代理显示调试内容。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_path_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_path_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_NavigationAgent2D_property_debug_path_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_path_custom_color**\ (\ )

如果 :ref:`debug_use_custom<class_NavigationAgent2D_property_debug_use_custom>` 为 ``true``\ ，则该代理使用该颜色，不使用全局颜色。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_path_custom_line_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **debug_path_custom_line_width** = ``-1.0`` :ref:`🔗<class_NavigationAgent2D_property_debug_path_custom_line_width>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_line_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_debug_path_custom_line_width**\ (\ )

如果 :ref:`debug_use_custom<class_NavigationAgent2D_property_debug_use_custom>` 为 ``true``\ ，则该代理使用该线宽进行路径的渲染，不使用全局线宽。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_path_custom_point_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **debug_path_custom_point_size** = ``4.0`` :ref:`🔗<class_NavigationAgent2D_property_debug_path_custom_point_size>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_point_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_debug_path_custom_point_size**\ (\ )

如果 :ref:`debug_use_custom<class_NavigationAgent2D_property_debug_use_custom>` 为 ``true``\ ，则该代理使用该栅格化点尺寸进行路径点的渲染，不使用全局点尺寸。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_use_custom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_use_custom** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_debug_use_custom>`

.. rst-class:: classref-property-setget

- |void| **set_debug_use_custom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_use_custom**\ (\ )

如果为 ``true``\ ，则该代理使用 :ref:`debug_path_custom_color<class_NavigationAgent2D_property_debug_path_custom_color>` 中定义的颜色，不使用全局颜色。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_max_neighbors:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_neighbors** = ``10`` :ref:`🔗<class_NavigationAgent2D_property_max_neighbors>`

.. rst-class:: classref-property-setget

- |void| **set_max_neighbors**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_neighbors**\ (\ )

该代理所需考虑的最大邻居数。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_max_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_speed** = ``100.0`` :ref:`🔗<class_NavigationAgent2D_property_max_speed>`

.. rst-class:: classref-property-setget

- |void| **set_max_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_speed**\ (\ )

代理所能达到的最大移动速度。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationAgent2D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

决定该代理计算路径所使用的导航地区导航层的位域。运行时进行修改会清空当前的导航路径，并根据新的导航层生成一条新的路径。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_neighbor_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **neighbor_distance** = ``500.0`` :ref:`🔗<class_NavigationAgent2D_property_neighbor_distance>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_neighbor_distance**\ (\ )

搜索其他代理的距离。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_desired_distance** = ``20.0`` :ref:`🔗<class_NavigationAgent2D_property_path_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_desired_distance**\ (\ )

距离阈值，用于确定是否已到达某个路径点。使用这个值，代理就不必精确地到达某个路径点，只需到达该路径点的大致区域内即可。如果这个值设得太大，该 NavigationAgent 会跳过路径上的点，这可能导致它离开该导航网格。如果这个值设得太小，该 NavigationAgent 会陷入重新寻路的死循环，因为它会在每次物理帧更新后都会超过下一个点。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_max_distance** = ``100.0`` :ref:`🔗<class_NavigationAgent2D_property_path_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_max_distance**\ (\ )

允许代理偏离通往最终位置的理想路径的最大距离。可能为了防撞而产生偏离。超出最大距离时，会重新计算理想路径。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] **path_metadata_flags** = ``7`` :ref:`🔗<class_NavigationAgent2D_property_path_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_path_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] **get_path_metadata_flags**\ (\ )

与导航路径一起返回的附加信息。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationAgent2D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

对 :ref:`pathfinding_algorithm<class_NavigationAgent2D_property_pathfinding_algorithm>` 找到的原始路径走廊应用的路径后期处理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

返回路径允许的最大长度，单位为世界单位。路径超出该长度后会被截断。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

返回路径从起点开始所允许的最大半径，单位为世界单位。路径超出该半径后会被截断。与 :ref:`path_return_max_length<class_NavigationAgent2D_property_path_return_max_length>` 相比，当代理需要绕过拐角时，该属性能够允许代理走得更远。

\ **注意：**\ 该属性会执行球面裁剪，只会考虑实际的导航网格路径点，路径上的第一个位置是球体中心。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

搜索通往目的位置多边形的路径时（可能不可达或非常远），取消寻路前能够搜索的多边形的最大距离。取消时，寻路会重置，构建出的路径从起始多边形开始，通往目前所找到的最接近目的位置的多边形。小于等于 ``0`` 表示不限制数量，寻路时会搜索与起始多边形相连的所有多边形，直到发现目的位置多边形或已经查过所有待查的多边形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationAgent2D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

搜索通往目的位置多边形的路径时（可能不可达或非常远），取消寻路前能够搜索的最大多边形数。取消时，寻路会重置，构建出的路径从起始多边形开始，通往目前所找到的最接近目的位置的多边形。小于等于 ``0`` 表示不限制数量，寻路时会搜索与起始多边形相连的所有多边形，直到发现目的位置多边形或已经查过所有待查的多边形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationAgent2D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

路径查询中使用的寻路算法。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_NavigationAgent2D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

避障代理的半径。这是该避障代理的“身体”，不是避障机制的起始半径（由 :ref:`neighbor_distance<class_NavigationAgent2D_property_neighbor_distance>` 控制）。

不会影响正常的寻路。要修改角色的寻路半径，请在烘焙 :ref:`NavigationPolygon<class_NavigationPolygon>` 资源时使用不同的 :ref:`NavigationPolygon.agent_radius<class_NavigationPolygon_property_agent_radius>` 属性，针对不同的角色大小使用不同的导航地图。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

以世界单位表示的路径简化量。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

如果为 ``true``\ ，将返回路径的简化版本，其中移除了不太重要的路径点。简化量由 :ref:`simplify_epsilon<class_NavigationAgent2D_property_simplify_epsilon>` 控制。简化使用 Ramer-Douglas-Peucker 算法的变体进行曲线点抽取。

路径简化有助于缓解使用某些代理类型和脚本行为可能出现的各种路径跟踪问题。例如“开放场”中的“转向”代理或避让。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_target_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_desired_distance** = ``10.0`` :ref:`🔗<class_NavigationAgent2D_property_target_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_desired_distance**\ (\ )

与目标的距离阈值，小于该阈值时会认为已抵达目标位置。已抵达目标位置时会发出 :ref:`target_reached<class_NavigationAgent2D_signal_target_reached>` 并结束导航（见 :ref:`is_navigation_finished()<class_NavigationAgent2D_method_is_navigation_finished>` 和 :ref:`navigation_finished<class_NavigationAgent2D_signal_navigation_finished>`\ ）。

将这个属性设置为大于 :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>` 的值可以提前结束导航（导航会在到达最后一个路径点之前停止）。

将这个属性设置为小于 :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>` 的值则会让导航在更接近目标位置的地方结束（导航在抵达最后一个路径点后不会立即停止）。不过如果设得太小，代理就会陷入重新移动的循环，因为每次物理帧更新时移动的距离都会超过与目标的实际距离。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationAgent2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

设置后，会向 NavigationServer 请求一条新的从当前代理位置到 :ref:`target_position<class_NavigationAgent2D_property_target_position>` 的导航路径。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_time_horizon_agents:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_agents** = ``1.0`` :ref:`🔗<class_NavigationAgent2D_property_time_horizon_agents>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_agents**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_agents**\ (\ )

考虑其他代理的前提下，该代理的速度的最短安全时间，这个速度是通过碰撞躲避算法计算的。数值越大，代理响应其他代理的速度就越快，但选择速度的自由度也就越小。太高的取值会大大降低代理的移动速度。必须为正数。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_time_horizon_obstacles:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_obstacles** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_time_horizon_obstacles>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_obstacles**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_obstacles**\ (\ )

考虑静态避障障碍物的前提下，该代理的速度的最短安全时间，这个速度是通过碰撞躲避算法计算的。数值越大，代理响应静态避障障碍物的速度就越快，但选择速度的自由度也就越小。太高的取值会大大降低代理的移动速度。必须为正数。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationAgent2D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

为代理设置新的需求速度。避障仿真会尽可能尝试满足这个速度，但为了躲避与其他代理和障碍物的碰撞也会对它进行修改。将代理传送至新的位置时，请使用 :ref:`set_velocity_forced()<class_NavigationAgent2D_method_set_velocity_forced>` 重置内部仿真速度。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_NavigationAgent2D_method_distance_to_target:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to_target**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_distance_to_target>`

返回与目标位置的距离，使用的是代理的全局位置。用户必须设置 :ref:`target_position<class_NavigationAgent2D_property_target_position>` 才能获得精确结果。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_avoidance_layer_value>`

返回 :ref:`avoidance_layers<class_NavigationAgent2D_property_avoidance_layers>` 位掩码中指定的层是否启用，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_avoidance_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_avoidance_mask_value>`

返回 :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>` 位掩码中指定的掩码是否启用，给定的 ``mask_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_current_navigation_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_current_navigation_path**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_current_navigation_path>`

返回这个代理从起点到终点的当前路径，使用全局坐标。该路径只会在目标位置发生变化，或者代理要求重新计算路径时更新。路径数组不应用于直接路径移动，因为代理有自己的内部路径逻辑，手动更改路径数组可能会破坏该逻辑。每个物理帧上使用一次预期的 :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>`\ ，来接收用于该代理移动的下一个路径点，因为该函数还会更新内部路径逻辑。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_current_navigation_path_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_navigation_path_index**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_current_navigation_path_index>`

返回该代理当前位于导航路径 :ref:`PackedVector2Array<class_PackedVector2Array>` 中的哪一个索引。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_current_navigation_result:

.. rst-class:: classref-method

:ref:`NavigationPathQueryResult2D<class_NavigationPathQueryResult2D>` **get_current_navigation_result**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_current_navigation_result>`

返回该代理目前正在使用的路径所对应的路径查询结果。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_final_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_final_position**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_get_final_position>`

返回当前导航路径上可到达的最终位置的全局坐标。如果该代理需要更新导航路径，从而使该代理发出 :ref:`path_changed<class_NavigationAgent2D_signal_path_changed>` 信号，则该位置可能会发生变化。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_navigation_layer_value>`

返回 :ref:`navigation_layers<class_NavigationAgent2D_property_navigation_layers>` 位掩码中指定的层是否启用，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_navigation_map>`

返回这个 NavigationAgent 节点的导航地图的 :ref:`RID<class_RID>`\ 。这个函数返回的始终是在 NavigationAgent 上设置的地图，不是 NavigationServer 上的抽象代理所使用的地图。如果通过 NavigationServer API 修改了代理的地图，该 NavigationAgent 节点是不会感知到地图的变化的。请使用 :ref:`set_navigation_map()<class_NavigationAgent2D_method_set_navigation_map>` 修改该 NavigationAgent 的导航地图，能够同时在 NavigationServer 上的代理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_next_path_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_next_path_position**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_get_next_path_position>`

返回可以移动至的下一个位置，使用全局坐标，确保中途没有静态对象的阻挡。如果该代理没有导航路径，则会返回该代理父节点的位置。这个函数每个物理帧都必须调用一次，更新 NavigationAgent 内部的路径逻辑。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_path_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_path_length**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_path_length>`

返回当前计算得到的路径的长度。如果仍在计算路径或尚未请求计算，则返回值为 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_rid>`

返回这个代理在 :ref:`NavigationServer2D<class_NavigationServer2D>` 上的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_is_navigation_finished:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_is_navigation_finished>`

如果代理的导航已完成，则返回 ``true``\ 。如果目标可达，则导航将在达到目标时结束。如果目标不可达，则导航将在到达路径的最后一个航路点时结束。

\ **注意：**\ 虽然 ``true`` 更喜欢停止调用更新函数，例如 :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>`\ 。这避免了由于调用重复的路径更新而使常设代理抖动。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_is_target_reachable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reachable**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_is_target_reachable>`

如果 :ref:`get_final_position()<class_NavigationAgent2D_method_get_final_position>` 位于 :ref:`target_position<class_NavigationAgent2D_property_target_position>` 的 :ref:`target_desired_distance<class_NavigationAgent2D_property_target_desired_distance>` 范围内，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_is_target_reached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reached**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_is_target_reached>`

如果代理到达目标，即代理移动到 :ref:`target_position<class_NavigationAgent2D_property_target_position>` 的 :ref:`target_desired_distance<class_NavigationAgent2D_property_target_desired_distance>` 范围内，则返回 ``true``\ 。不一定总能到达目标，但应总能到达最终位置。请参阅 :ref:`get_final_position()<class_NavigationAgent2D_method_get_final_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_avoidance_layer_value>`

根据 ``value`` 启用或禁用 :ref:`avoidance_layers<class_NavigationAgent2D_property_avoidance_layers>` 位掩码中指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_avoidance_mask_value:

.. rst-class:: classref-method

|void| **set_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_avoidance_mask_value>`

根据 ``value`` 启用或禁用 :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>` 位掩码中指定的掩码，给定的 ``mask_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_navigation_layer_value>`

根据 ``value``\ ，启用或禁用 :ref:`navigation_layers<class_NavigationAgent2D_property_navigation_layers>` 位掩码中指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_navigation_map>`

设置这个 NavigationAgent 节点所应使用的导航地图的 :ref:`RID<class_RID>`\ ，同时还会更新 NavigationServer 上的代理 ``agent``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_velocity_forced:

.. rst-class:: classref-method

|void| **set_velocity_forced**\ (\ velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_velocity_forced>`

将防撞仿真的内部速度替换为 ``velocity``\ 。代理传送到新的位置之后，应该在同一帧里使用这个函数。如果频繁调用这个函数，可能会让代理卡住。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
