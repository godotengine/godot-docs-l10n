:github_url: hide

.. _class_Performance:

Performance
===========

**继承：** :ref:`Object<class_Object>`

公开与性能相关的数据。

.. rst-class:: classref-introduction-group

描述
----

该类提供对许多与性能相关的不同监视器的访问，例如内存使用情况、绘制调用和 FPS。这些值与编辑器的\ **调试器**\ 面板中的\ **监视**\ 选项卡中显示的值相同。通过使用该类的 :ref:`get_monitor()<class_Performance_method_get_monitor>` 方法，你可以从代码中访问该数据。

可以使用 :ref:`add_custom_monitor()<class_Performance_method_add_custom_monitor>` 方法添加自定义监视器。在编辑器的\ **调试器**\ 面板的\ **监视**\ 选项卡中，自定义监视器可以与内置监视器一起使用。

\ **注意：**\ 某些内置监视器仅在调试模式下可用，并且在以发布模式导出的项目中使用时，将始终返回 ``0``\ 。

\ **注意：**\ 出于性能原因，某些内置监视器不会实时更新，所以在更改之间可能会有长达 1 秒的延迟。

\ **注意：**\ 自定义监视器不支持负值。负值被钳制为 0。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_custom_monitor<class_Performance_method_add_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`, arguments\: :ref:`Array<class_Array>` = [], type\: :ref:`MonitorType<enum_Performance_MonitorType>` = 0\ ) |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_custom_monitor<class_Performance_method_get_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_custom_monitor_names<class_Performance_method_get_custom_monitor_names>`\ (\ )                                                                                                                                                                                    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                  | :ref:`get_custom_monitor_types<class_Performance_method_get_custom_monitor_types>`\ (\ )                                                                                                                                                                                    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_monitor<class_Performance_method_get_monitor>`\ (\ monitor\: :ref:`Monitor<enum_Performance_Monitor>`\ ) |const|                                                                                                                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_monitor_modification_time<class_Performance_method_get_monitor_modification_time>`\ (\ )                                                                                                                                                                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_custom_monitor<class_Performance_method_has_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_custom_monitor<class_Performance_method_remove_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Performance_Monitor:

.. rst-class:: classref-enumeration

enum **Monitor**: :ref:`🔗<enum_Performance_Monitor>`

.. _class_Performance_constant_TIME_FPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_FPS** = ``0``

上一秒渲染的帧数。该指标每秒仅更新一次，与查询频率无关。\ *越高越好。*

.. _class_Performance_constant_TIME_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PROCESS** = ``1``

完成一帧所需的时间，单位为秒。\ *越短越好。*

.. _class_Performance_constant_TIME_PHYSICS_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PHYSICS_PROCESS** = ``2``

完成一个物理帧所需的时间，单位为秒。\ *越短越好。*

.. _class_Performance_constant_TIME_NAVIGATION_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_NAVIGATION_PROCESS** = ``3``

完成一个导航步骤的时间，单位为秒。包括导航地图的更新以及代理避障的计算。\ *越短越好。*

.. _class_Performance_constant_MEMORY_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC** = ``4``

当前使用的静态内存，单位为字节。在发布版本中不可用。\ *越少越好。*

.. _class_Performance_constant_MEMORY_STATIC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC_MAX** = ``5``

可用的静态内存。在发布版本中不可用。\ *越少越好。*

.. _class_Performance_constant_MEMORY_MESSAGE_BUFFER_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_MESSAGE_BUFFER_MAX** = ``6``

消息队列缓冲区曾使用的最大内存量，单位为字节。消息队列用于延迟函数调用和通知。\ *越少越好。*

.. _class_Performance_constant_OBJECT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_COUNT** = ``7``

当前已经实例化的对象数（包括节点）。\ *越少越好。*

.. _class_Performance_constant_OBJECT_RESOURCE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_RESOURCE_COUNT** = ``8``

当前使用的资源数。\ *越少越好。*

.. _class_Performance_constant_OBJECT_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_NODE_COUNT** = ``9``

当前已经实例化的在场景树中的节点数。也包括根节点。\ *越少越好。*

.. _class_Performance_constant_OBJECT_ORPHAN_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_ORPHAN_NODE_COUNT** = ``10``

孤立节点的数量，即父节点不是场景树节点的节点。\ *越少越好。*\ 

\ **注意：**\ 只在调试模式中可用，以发布模式导出的项目中总会返回 ``0``\ 。

.. _class_Performance_constant_RENDER_TOTAL_OBJECTS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_OBJECTS_IN_FRAME** = ``11``

在上一个渲染帧中的对象总数。该指标不包括剔除的对象（通过隐藏节点、视锥剔除或遮挡剔除）。\ *越少越好。*

.. _class_Performance_constant_RENDER_TOTAL_PRIMITIVES_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_PRIMITIVES_IN_FRAME** = ``12``

在上一个渲染帧中渲染的顶点或索引的总数。该指标不包括来自被剔除对象的图元（通过隐藏节点、视锥剔除或遮挡剔除）。由于预深度阶段和阴影阶段的影响，图元的数量总是高于场景中的实际顶点数量（典型情况下是原有顶点数量的两倍或三倍）。\ *越少越好。*

.. _class_Performance_constant_RENDER_TOTAL_DRAW_CALLS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_DRAW_CALLS_IN_FRAME** = ``13``

在上一个渲染帧中执行的绘制调用的总数。该指标不包括剔除对象（通过隐藏节点、视锥剔除或遮挡剔除），因为它们不会导致绘制调用。\ *越少越好。*

.. _class_Performance_constant_RENDER_VIDEO_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_VIDEO_MEM_USED** = ``14``

显存的使用量（纹理和顶点内存之和，单位为字节）。由于该指标还包括其他杂项分配，该值始终大于 :ref:`RENDER_TEXTURE_MEM_USED<class_Performance_constant_RENDER_TEXTURE_MEM_USED>` 和 :ref:`RENDER_BUFFER_MEM_USED<class_Performance_constant_RENDER_BUFFER_MEM_USED>` 之和。\ *越少越好。*

.. _class_Performance_constant_RENDER_TEXTURE_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TEXTURE_MEM_USED** = ``15``

纹理内存的使用量（单位为字节）。\ *越少越好。*

.. _class_Performance_constant_RENDER_BUFFER_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_BUFFER_MEM_USED** = ``16``

渲染缓冲区内存的使用量（单位为字节）。\ *越少越好。*

.. _class_Performance_constant_PHYSICS_2D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ACTIVE_OBJECTS** = ``17``

游戏中活跃的 :ref:`RigidBody2D<class_RigidBody2D>` 节点数。\ *越少越好。*

.. _class_Performance_constant_PHYSICS_2D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_COLLISION_PAIRS** = ``18``

2D 物理引擎中碰撞对的数量。\ *越少越好。*

.. _class_Performance_constant_PHYSICS_2D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ISLAND_COUNT** = ``19``

2D 物理引擎中孤岛的数量。\ *越少越好。*

.. _class_Performance_constant_PHYSICS_3D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ACTIVE_OBJECTS** = ``20``

游戏中活跃的 :ref:`RigidBody3D<class_RigidBody3D>` 和 :ref:`VehicleBody3D<class_VehicleBody3D>` 节点数。\ *越少越好。*

.. _class_Performance_constant_PHYSICS_3D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_COLLISION_PAIRS** = ``21``

3D 物理引擎中碰撞对的数量。\ *越少越好。*

.. _class_Performance_constant_PHYSICS_3D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ISLAND_COUNT** = ``22``

3D 物理引擎中孤岛的数量。\ *越少越好。*

.. _class_Performance_constant_AUDIO_OUTPUT_LATENCY:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **AUDIO_OUTPUT_LATENCY** = ``23``

:ref:`AudioServer<class_AudioServer>` 的输出延迟。等同于调用 :ref:`AudioServer.get_output_latency()<class_AudioServer_method_get_output_latency>`\ ，不建议每帧都调用该方法。

.. _class_Performance_constant_NAVIGATION_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_ACTIVE_MAPS** = ``24``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中活动导航地图的数量。这也包括由 :ref:`World2D<class_World2D>` 和 :ref:`World3D<class_World3D>` 实例创建的默认空导航地图。

.. _class_Performance_constant_NAVIGATION_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_REGION_COUNT** = ``25``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中活动导航区块的数量。

.. _class_Performance_constant_NAVIGATION_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_AGENT_COUNT** = ``26``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中活动的处理避障的导航代理的数量。

.. _class_Performance_constant_NAVIGATION_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_LINK_COUNT** = ``27``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中活动导航链接的数量。

.. _class_Performance_constant_NAVIGATION_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_POLYGON_COUNT** = ``28``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中导航网格多边形的数量。

.. _class_Performance_constant_NAVIGATION_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_COUNT** = ``29``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中导航网格多边形边缘的数量。

.. _class_Performance_constant_NAVIGATION_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_MERGE_COUNT** = ``30``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中由于边界重叠而被合并的导航网格多边形边缘的数量。

.. _class_Performance_constant_NAVIGATION_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_CONNECTION_COUNT** = ``31``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中由于边缘接近而被认为存在连接的多边形边缘的数量。

.. _class_Performance_constant_NAVIGATION_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_FREE_COUNT** = ``32``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中无法合并的导航网格多边形边缘的数量。这些边仍然可以通过边缘接近或使用链接而被连接。

.. _class_Performance_constant_NAVIGATION_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_OBSTACLE_COUNT** = ``33``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中活动导航障碍物的数量。

.. _class_Performance_constant_PIPELINE_COMPILATIONS_CANVAS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_CANVAS** = ``34``

由 2D 画布渲染器触发的管线编译次数。

.. _class_Performance_constant_PIPELINE_COMPILATIONS_MESH:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_MESH** = ``35``

因加载网格而触发的管线编译次数。用户首次运行游戏且需要该管线时，这些编译会导致加载时间变长。

.. _class_Performance_constant_PIPELINE_COMPILATIONS_SURFACE:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_SURFACE** = ``36``

因渲染场景前构建表面缓存而触发的管线编译次数。用户首次运行游戏且需要该管线时，这些编译会导致加载场景时的卡顿。

.. _class_Performance_constant_PIPELINE_COMPILATIONS_DRAW:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_DRAW** = ``37``

因绘制场景而触发的管线编译次数。用户首次运行游戏且需要该管线时，这些编译会导致游戏过程中的卡顿。

.. _class_Performance_constant_PIPELINE_COMPILATIONS_SPECIALIZATION:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_SPECIALIZATION** = ``38``

因优化当前场景而触发的管线编译次数。这些编译是在后台进行的，不会导致任何卡顿。

.. _class_Performance_constant_NAVIGATION_2D_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_ACTIVE_MAPS** = ``39``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中活动导航地图的数量。这也包括由 :ref:`World2D<class_World2D>` 实例创建的默认空导航地图。

.. _class_Performance_constant_NAVIGATION_2D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_REGION_COUNT** = ``40``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中活动导航区块的数量。

.. _class_Performance_constant_NAVIGATION_2D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_AGENT_COUNT** = ``41``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中活动的处理避障的导航代理的数量。

.. _class_Performance_constant_NAVIGATION_2D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_LINK_COUNT** = ``42``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中活动导航链接的数量。

.. _class_Performance_constant_NAVIGATION_2D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_POLYGON_COUNT** = ``43``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中导航网格多边形的数量。

.. _class_Performance_constant_NAVIGATION_2D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_COUNT** = ``44``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中导航网格多边形边缘的数量。

.. _class_Performance_constant_NAVIGATION_2D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_MERGE_COUNT** = ``45``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中由于边界重叠而被合并的导航网格多边形边缘的数量。

.. _class_Performance_constant_NAVIGATION_2D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_CONNECTION_COUNT** = ``46``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中由于边缘接近而被认为存在连接的多边形边缘的数量。

.. _class_Performance_constant_NAVIGATION_2D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_FREE_COUNT** = ``47``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中无法合并的导航网格多边形边缘的数量。这些边仍然可以通过边缘接近或使用链接而被连接。

.. _class_Performance_constant_NAVIGATION_2D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_OBSTACLE_COUNT** = ``48``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中活动导航障碍物的数量。

.. _class_Performance_constant_NAVIGATION_3D_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_ACTIVE_MAPS** = ``49``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中活动导航地图的数量。这也包括由 :ref:`World3D<class_World3D>` 实例创建的默认空导航地图。

.. _class_Performance_constant_NAVIGATION_3D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_REGION_COUNT** = ``50``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中活动导航地区的数量。

.. _class_Performance_constant_NAVIGATION_3D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_AGENT_COUNT** = ``51``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中正在处理避障的活动导航代理的数量。

.. _class_Performance_constant_NAVIGATION_3D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_LINK_COUNT** = ``52``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中活动导航链接的数量。

.. _class_Performance_constant_NAVIGATION_3D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_POLYGON_COUNT** = ``53``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中导航网格多边形的数量。

.. _class_Performance_constant_NAVIGATION_3D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_COUNT** = ``54``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中导航网格多边形边缘的数量。

.. _class_Performance_constant_NAVIGATION_3D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_MERGE_COUNT** = ``55``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中由于边键重叠而被合并的导航网格多边形的边的数量。

.. _class_Performance_constant_NAVIGATION_3D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_CONNECTION_COUNT** = ``56``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中由边缘接近而被认为已连接的多边形的边的数量。

.. _class_Performance_constant_NAVIGATION_3D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_FREE_COUNT** = ``57``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中无法合并的导航网格多边形的边的数量。这些边仍然可以通过边缘接近或使用链接而被连接。

.. _class_Performance_constant_NAVIGATION_3D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_OBSTACLE_COUNT** = ``58``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中活动导航障碍物的数量。

.. _class_Performance_constant_MONITOR_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MONITOR_MAX** = ``59``

代表 :ref:`Monitor<enum_Performance_Monitor>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Performance_MonitorType:

.. rst-class:: classref-enumeration

enum **MonitorType**: :ref:`🔗<enum_Performance_MonitorType>`

.. _class_Performance_constant_MONITOR_TYPE_QUANTITY:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_QUANTITY** = ``0``

显示器输出格式化为整数值。

.. _class_Performance_constant_MONITOR_TYPE_MEMORY:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_MEMORY** = ``1``

显示器输出格式化为计算机内存格式。提交的值应代表字节数。

.. _class_Performance_constant_MONITOR_TYPE_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_TIME** = ``2``

显示器输出格式化为毫秒级时间。提交的值应表示以秒（而不是毫秒）为单位的时间。

.. _class_Performance_constant_MONITOR_TYPE_PERCENTAGE:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_PERCENTAGE** = ``3``

显示器输出格式化为百分比。提交的值应表示分数，而不是直接表示百分比，例如 ``0.5`` 表示 ``50.00%``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Performance_method_add_custom_monitor:

.. rst-class:: classref-method

|void| **add_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`, arguments\: :ref:`Array<class_Array>` = [], type\: :ref:`MonitorType<enum_Performance_MonitorType>` = 0\ ) :ref:`🔗<class_Performance_method_add_custom_monitor>`

添加一个名为 ``id`` 的自定义监视器。可以在 ``id`` 中使用斜线分隔符指定监视器的类别（例如：\ ``"Game/NumberOfNPCs"``\ ）。如果有多个斜线分隔符，则使用默认的类别。默认类别是 ``"Custom"``\ 。如果给定的 ``id`` 已经存在，则打印一个错误。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var monitor_value = Callable(self, "get_monitor_value")

        # 将名称为“MyName”的监视器添加到类别“MyCategory”。
        Performance.add_custom_monitor("MyCategory/MyMonitor", monitor_value)

        # 将名称为“MyName”的监视器添加到类别“Custom”。
        # 注意：“MyCategory/MyMonitor”和“MyMonitor”同名但不同 ID，所以代码有效。
        Performance.add_custom_monitor("MyMonitor", monitor_value)

        # 将名称为“MyName”的监视器添加到类别“Custom”。
        # 注意：“MyMonitor”和“Custom/MyMonitor”名称相同，类别相同，但 ID 不同，所以代码有效。
        Performance.add_custom_monitor("Custom/MyMonitor", monitor_value)

        # 将名称为“MyCategoryOne/MyCategoryTwo/MyMonitor”的监视器添加到类别“Custom”。
        Performance.add_custom_monitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitor_value)

    func get_monitor_value():
        return randi() % 25

 .. code-tab:: csharp

    public override void _Ready()
    {
        var monitorValue = new Callable(this, MethodName.GetMonitorValue);

        // 将名称为“MyName”的监视器添加到类别“MyCategory”。
        Performance.AddCustomMonitor("MyCategory/MyMonitor", monitorValue);
        // 将名称为“MyName”的监视器添加到类别“Custom”。
        // 注意：“MyCategory/MyMonitor”和“MyMonitor”同名但不同 ID，所以代码有效。
        Performance.AddCustomMonitor("MyMonitor", monitorValue);

        // 将名称为“MyName”的监视器添加到类别“Custom”。
        // 注意：“MyMonitor”和“Custom/MyMonitor”名称相同，类别相同，但 ID 不同，所以代码有效。
        Performance.AddCustomMonitor("Custom/MyMonitor", monitorValue);

        // 将名称为“MyCategoryOne/MyCategoryTwo/MyMonitor”的监视器添加到类别“Custom”。
        Performance.AddCustomMonitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitorValue);
    }

    public int GetMonitorValue()
    {
        return GD.Randi() % 25;
    }



调试器调用可调用对象来获取自定义监视器的值。可调用对象必须返回一个零或正整数或浮点数。

使用参数数组中提供的参数来调用可调用对象。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_get_custom_monitor>`

返回具有给定 ``id`` 的自定义监视器的值。调用这个可调用对象以获取自定义监视器的值。另见 :ref:`has_custom_monitor()<class_Performance_method_has_custom_monitor>`\ 。如果给定的 ``id`` 不存在，则打印一个错误。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_custom_monitor_names**\ (\ ) :ref:`🔗<class_Performance_method_get_custom_monitor_names>`

以一个 :ref:`Array<class_Array>`\ ，返回活动自定义监视器的名称。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor_types:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_custom_monitor_types**\ (\ ) :ref:`🔗<class_Performance_method_get_custom_monitor_types>`

以一个数组返回活动自定义监视器的 :ref:`MonitorType<enum_Performance_MonitorType>` 值。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_monitor**\ (\ monitor\: :ref:`Monitor<enum_Performance_Monitor>`\ ) |const| :ref:`🔗<class_Performance_method_get_monitor>`

返回任一可用的内置监视器的值。应该提供任一 :ref:`Monitor<enum_Performance_Monitor>` 常量作为参数，如下所示：


.. tabs::

 .. code-tab:: gdscript

    print(Performance.get_monitor(Performance.TIME_FPS)) # 将 FPS 打印到控制台。

 .. code-tab:: csharp

    GD.Print(Performance.GetMonitor(Performance.Monitor.TimeFps)); // 将 FPS 打印到控制台。



请参阅 :ref:`get_custom_monitor()<class_Performance_method_get_custom_monitor>`\ ，以查询自定义性能监视器的值。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor_modification_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_monitor_modification_time**\ (\ ) :ref:`🔗<class_Performance_method_get_monitor_modification_time>`

返回自定义监视器被添加/删除时的最后一个刻度（自引擎启动以来的微秒数）。当该监视器更新时，它被设置为 :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_has_custom_monitor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_has_custom_monitor>`

如果存在具有给定 ``id`` 的自定义监视器，则返回 ``true``\ ，否则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_remove_custom_monitor:

.. rst-class:: classref-method

|void| **remove_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_remove_custom_monitor>`

移除具有给定 ``id`` 的自定义监视器。如果给定的 ``id`` 已经不存在，则打印一个错误。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
