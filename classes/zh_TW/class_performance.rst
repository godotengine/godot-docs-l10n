:github_url: hide

.. _class_Performance:

Performance
===========

**繼承：** :ref:`Object<class_Object>`

公開與效能相關的資料。

.. rst-class:: classref-introduction-group

說明
----

該類提供對許多與效能相關的不同監視器的存取，例如記憶體使用情況、繪製呼叫、和 FPS。這些值與編輯器的\ **除錯器**\ 面板中的\ **監視**\ 分頁中顯示的值相同。通過使用該類的 :ref:`get_monitor()<class_Performance_method_get_monitor>` 方法，你可以從程式碼中存取該資料。

可以使用 :ref:`add_custom_monitor()<class_Performance_method_add_custom_monitor>` 方法新增自訂監視器。在編輯器的\ **除錯器**\ 面板的\ **監視**\ 分頁中，自訂監視器可以與內建監視器一起使用。

\ **注意：**\ 某些內建監視器僅在除錯模式下可用，並且在以發行模式匯出的專案中使用時，將始終返回 ``0``\ 。

\ **注意：**\ 出於效能原因，某些內建監視器不會即時更新，所以在更改之間可能會有長達 1 秒的延遲。

\ **注意：**\ 自訂監視器不支援負值。負值被鉗制為 0。

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

列舉
----

.. _enum_Performance_Monitor:

.. rst-class:: classref-enumeration

enum **Monitor**: :ref:`🔗<enum_Performance_Monitor>`

.. _class_Performance_constant_TIME_FPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_FPS** = ``0``

上一秒渲染的影格數。該指標每秒僅更新一次，與查詢頻率無關。\ *越高越好。*

.. _class_Performance_constant_TIME_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PROCESS** = ``1``

完成一影格所需的時間，單位為秒。\ *越低越好。*

.. _class_Performance_constant_TIME_PHYSICS_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PHYSICS_PROCESS** = ``2``

完成一個物理影格所需的時間，單位為秒。\ *越低越好。*

.. _class_Performance_constant_TIME_NAVIGATION_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_NAVIGATION_PROCESS** = ``3``

完成一個導覽步驟的時間，單位為秒。包括導覽地圖的更新以及代理避障的計算。\ *越低越好。*

.. _class_Performance_constant_MEMORY_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC** = ``4``

目前使用的靜態記憶體，單位為位元組。在發行版本中不可用。\ *越低越好。*

.. _class_Performance_constant_MEMORY_STATIC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC_MAX** = ``5``

可用的靜態記憶體。在發行版本中不可用。\ *越低越好。*

.. _class_Performance_constant_MEMORY_MESSAGE_BUFFER_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_MESSAGE_BUFFER_MAX** = ``6``

訊息佇列緩衝區已使用的最大記憶體量，單位為位元組。訊息佇列用於延遲函式呼叫和通知。\ *越低越好。*

.. _class_Performance_constant_OBJECT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_COUNT** = ``7``

目前產生實體的對象數（包括節點）。\ *越低越好。*

.. _class_Performance_constant_OBJECT_RESOURCE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_RESOURCE_COUNT** = ``8``

目前使用的資源數。\ *越低越好。*

.. _class_Performance_constant_OBJECT_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_NODE_COUNT** = ``9``

目前在場景樹中產生實體的節點數。也包括根節點。\ *越低越好。*

.. _class_Performance_constant_OBJECT_ORPHAN_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_ORPHAN_NODE_COUNT** = ``10``

孤立節點的數量，即父節點不是場景樹節點的節點。\ *越少越好。*\ 

\ **注意：**\ 只在除錯模式中可用，以發佈模式匯出的專案中總會回傳 ``0``\ 。

.. _class_Performance_constant_RENDER_TOTAL_OBJECTS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_OBJECTS_IN_FRAME** = ``11``

在上一個渲染影格中的物件總數。該指標不包括剔除的對象（通過隱藏節點、視錐剔除、或遮擋剔除）。\ *越低越好。*

.. _class_Performance_constant_RENDER_TOTAL_PRIMITIVES_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_PRIMITIVES_IN_FRAME** = ``12``

在上一個渲染影格中渲染的頂點或索引的總數。該指標不包括來自被剔除對象的圖元（通過隱藏節點、視錐剔除、或遮擋剔除）。由於預深度階段和陰影階段，圖元的數量總是高於場景中的實際頂點數量（通常是原始頂點數量的兩倍或三倍）。\ *越低越好。*

.. _class_Performance_constant_RENDER_TOTAL_DRAW_CALLS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_DRAW_CALLS_IN_FRAME** = ``13``

在上一個渲染影格中執行的繪製呼叫的總數。該指標不包括剔除對象（通過隱藏節點、視錐剔除、或遮擋剔除），因為它們不會導致繪製呼叫。\ *越低越好。*

.. _class_Performance_constant_RENDER_VIDEO_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_VIDEO_MEM_USED** = ``14``

顯存的使用量（紋理和頂點記憶體之和，單位為位元組）。由於該指標還包括其他雜項分配，因此該值始終大於 :ref:`RENDER_TEXTURE_MEM_USED<class_Performance_constant_RENDER_TEXTURE_MEM_USED>` 和 :ref:`RENDER_BUFFER_MEM_USED<class_Performance_constant_RENDER_BUFFER_MEM_USED>` 的總和。\ *越低越好。*

.. _class_Performance_constant_RENDER_TEXTURE_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TEXTURE_MEM_USED** = ``15``

紋理記憶體的使用量（單位為位元組）。\ *越低越好。*

.. _class_Performance_constant_RENDER_BUFFER_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_BUFFER_MEM_USED** = ``16``

渲染緩衝區記憶體的使用量（單位為位元組）。\ *越低越好。*

.. _class_Performance_constant_PHYSICS_2D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ACTIVE_OBJECTS** = ``17``

遊戲中活躍的 :ref:`RigidBody2D<class_RigidBody2D>` 節點數。\ *越低越好。*

.. _class_Performance_constant_PHYSICS_2D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_COLLISION_PAIRS** = ``18``

2D 物理引擎中碰撞對的數量。\ *越低越好。*

.. _class_Performance_constant_PHYSICS_2D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ISLAND_COUNT** = ``19``

2D 物理引擎中孤島的數量。\ *越低越好。*

.. _class_Performance_constant_PHYSICS_3D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ACTIVE_OBJECTS** = ``20``

遊戲中活躍的 :ref:`RigidBody3D<class_RigidBody3D>` 和 :ref:`VehicleBody3D<class_VehicleBody3D>` 節點數。\ *越低越好。*

.. _class_Performance_constant_PHYSICS_3D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_COLLISION_PAIRS** = ``21``

3D 物理引擎中碰撞對的數量。\ *越低越好。*

.. _class_Performance_constant_PHYSICS_3D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ISLAND_COUNT** = ``22``

3D 物理引擎中孤島的數量。\ *越低越好。*

.. _class_Performance_constant_AUDIO_OUTPUT_LATENCY:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **AUDIO_OUTPUT_LATENCY** = ``23``

:ref:`AudioServer<class_AudioServer>`\ 的輸出延遲。相當於呼叫\ :ref:`AudioServer.get_output_latency()<class_AudioServer_method_get_output_latency>`\ ，不建議每影格呼叫方法。

.. _class_Performance_constant_NAVIGATION_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_ACTIVE_MAPS** = ``24``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中活動導航地圖的數量。這也包括由 :ref:`World2D<class_World2D>` 和 :ref:`World3D<class_World3D>` 實例建立的預設空導航地圖。

.. _class_Performance_constant_NAVIGATION_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_REGION_COUNT** = ``25``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中活動導航區塊的數量。

.. _class_Performance_constant_NAVIGATION_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_AGENT_COUNT** = ``26``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中活動的處理避障的導航代理的數量。

.. _class_Performance_constant_NAVIGATION_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_LINK_COUNT** = ``27``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中活動導航連結的數量。

.. _class_Performance_constant_NAVIGATION_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_POLYGON_COUNT** = ``28``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中導覽網格多邊形的數量。

.. _class_Performance_constant_NAVIGATION_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_COUNT** = ``29``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中導覽網格多邊形邊緣的數量。

.. _class_Performance_constant_NAVIGATION_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_MERGE_COUNT** = ``30``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中由於邊界重疊而被合併的導覽網格多邊形邊緣的數量。

.. _class_Performance_constant_NAVIGATION_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_CONNECTION_COUNT** = ``31``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中由於邊緣接近而被認為存在連接的多邊形邊緣的數量。

.. _class_Performance_constant_NAVIGATION_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_FREE_COUNT** = ``32``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中無法合併的導覽網格多邊形邊緣的數量。這些邊仍然可以通過邊緣接近或使用連結而被連接。

.. _class_Performance_constant_NAVIGATION_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_OBSTACLE_COUNT** = ``33``

:ref:`NavigationServer2D<class_NavigationServer2D>` 和 :ref:`NavigationServer3D<class_NavigationServer3D>` 中活動導航障礙物的數量。

.. _class_Performance_constant_PIPELINE_COMPILATIONS_CANVAS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_CANVAS** = ``34``

由 2D 畫布渲染器觸發的管線編譯次數。

.. _class_Performance_constant_PIPELINE_COMPILATIONS_MESH:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_MESH** = ``35``

因載入網格而觸發的管線編譯次數。使用者首次執行遊戲且需要該管線時，這些編譯會導致載入時間變長。

.. _class_Performance_constant_PIPELINE_COMPILATIONS_SURFACE:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_SURFACE** = ``36``

因渲染場景前建置表面快取而觸發的管線編譯次數。使用者首次執行遊戲且需要該管線時，這些編譯會導致載入場景時的卡頓。

.. _class_Performance_constant_PIPELINE_COMPILATIONS_DRAW:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_DRAW** = ``37``

因繪製場景而觸發的管線編譯次數。使用者首次執行遊戲且需要該管線時，這些編譯會導致遊戲過程中的卡頓。

.. _class_Performance_constant_PIPELINE_COMPILATIONS_SPECIALIZATION:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_SPECIALIZATION** = ``38``

因最佳化目前場景而觸發的管線編譯次數。這些編譯是在後台進行的，不會導致任何卡頓。

.. _class_Performance_constant_NAVIGATION_2D_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_ACTIVE_MAPS** = ``39``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中活動導航地圖的數量。這也包括由 :ref:`World2D<class_World2D>` 實例建立的預設空導航地圖。

.. _class_Performance_constant_NAVIGATION_2D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_REGION_COUNT** = ``40``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中活動導航區塊的數量。

.. _class_Performance_constant_NAVIGATION_2D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_AGENT_COUNT** = ``41``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中活動的處理避障的導航代理的數量。

.. _class_Performance_constant_NAVIGATION_2D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_LINK_COUNT** = ``42``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中活動導航連結的數量。

.. _class_Performance_constant_NAVIGATION_2D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_POLYGON_COUNT** = ``43``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中導覽網格多邊形的數量。

.. _class_Performance_constant_NAVIGATION_2D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_COUNT** = ``44``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中導覽網格多邊形邊緣的數量。

.. _class_Performance_constant_NAVIGATION_2D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_MERGE_COUNT** = ``45``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中由於邊界重疊而被合併的導覽網格多邊形邊緣的數量。

.. _class_Performance_constant_NAVIGATION_2D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_CONNECTION_COUNT** = ``46``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中由於邊緣接近而被認為存在連接的多邊形邊緣的數量。

.. _class_Performance_constant_NAVIGATION_2D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_FREE_COUNT** = ``47``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中無法合併的導覽網格多邊形邊緣的數量。這些邊仍然可以通過邊緣接近或使用連結而被連接。

.. _class_Performance_constant_NAVIGATION_2D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_OBSTACLE_COUNT** = ``48``

:ref:`NavigationServer2D<class_NavigationServer2D>` 中活動導航障礙物的數量。

.. _class_Performance_constant_NAVIGATION_3D_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_ACTIVE_MAPS** = ``49``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中活動導航地圖的數量。這也包括由 :ref:`World3D<class_World3D>` 實例建立的預設空導航地圖。

.. _class_Performance_constant_NAVIGATION_3D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_REGION_COUNT** = ``50``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中活動導覽地區的數量。

.. _class_Performance_constant_NAVIGATION_3D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_AGENT_COUNT** = ``51``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中正在處理避障的活動導覽代理的數量。

.. _class_Performance_constant_NAVIGATION_3D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_LINK_COUNT** = ``52``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中活動導覽連結的數量。

.. _class_Performance_constant_NAVIGATION_3D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_POLYGON_COUNT** = ``53``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中導覽網格多邊形的數量。

.. _class_Performance_constant_NAVIGATION_3D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_COUNT** = ``54``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中導覽網格多邊形邊緣的數量。

.. _class_Performance_constant_NAVIGATION_3D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_MERGE_COUNT** = ``55``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中由於邊鍵重疊而被合併的導覽網格多邊形的邊的數量。

.. _class_Performance_constant_NAVIGATION_3D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_CONNECTION_COUNT** = ``56``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中由邊緣接近而被認為已連接的多邊形的邊的數量。

.. _class_Performance_constant_NAVIGATION_3D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_FREE_COUNT** = ``57``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中無法合併的導覽網格多邊形的邊的數量。這些邊仍然可以通過邊緣接近或使用連結而被連接。

.. _class_Performance_constant_NAVIGATION_3D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_OBSTACLE_COUNT** = ``58``

:ref:`NavigationServer3D<class_NavigationServer3D>` 中活動導航障礙物的數量。

.. _class_Performance_constant_RENDER_STREAMING_TEXTURE_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_STREAMING_TEXTURE_MEM_USED** = ``59``

The amount of memory used by texture streaming (in bytes). This represents the current VRAM usage of streamed textures at their currently loaded mipmap levels.

.. _class_Performance_constant_MONITOR_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MONITOR_MAX** = ``60``

代表 :ref:`Monitor<enum_Performance_Monitor>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Performance_MonitorType:

.. rst-class:: classref-enumeration

enum **MonitorType**: :ref:`🔗<enum_Performance_MonitorType>`

.. _class_Performance_constant_MONITOR_TYPE_QUANTITY:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_QUANTITY** = ``0``

顯示器輸出格式化為整數值。

.. _class_Performance_constant_MONITOR_TYPE_MEMORY:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_MEMORY** = ``1``

顯示器輸出格式化為電腦記憶體格式。提交的值應代表位元組數。

.. _class_Performance_constant_MONITOR_TYPE_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_TIME** = ``2``

顯示器輸出格式化為毫秒級時間。提交的值應表示以秒（而不是毫秒）為單位的時間。

.. _class_Performance_constant_MONITOR_TYPE_PERCENTAGE:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_PERCENTAGE** = ``3``

顯示器輸出格式化為百分比。提交的值應表示分數，而不是直接表示百分比，例如 ``0.5`` 表示 ``50.00%``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Performance_method_add_custom_monitor:

.. rst-class:: classref-method

|void| **add_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`, arguments\: :ref:`Array<class_Array>` = [], type\: :ref:`MonitorType<enum_Performance_MonitorType>` = 0\ ) :ref:`🔗<class_Performance_method_add_custom_monitor>`

新增一個名為 ``id`` 的自訂監視器。可以在 ``id`` 中使用斜線分隔符號指定監視器的類別（例如：\ ``"Game/NumberOfNPCs"``\ ）。如果有多個斜線分隔符，則使用預設的類別。預設類別是 ``"Custom"``\ 。如果給定的 ``id`` 已經存在，則列印一個錯誤。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var monitor_value = Callable(self, "get_monitor_value")

        # 將名稱為“MyName”的監視器新增到類別“MyCategory”。
        Performance.add_custom_monitor("MyCategory/MyMonitor", monitor_value)

        # 將名稱為“MyName”的監視器新增到類別“Custom”。
        # 注意：“MyCategory/MyMonitor”和“MyMonitor”同名但不同 ID，所以程式碼有效。
        Performance.add_custom_monitor("MyMonitor", monitor_value)

        # 將名稱為“MyName”的監視器新增到類別“Custom”。
        # 注意：“MyMonitor”和“Custom/MyMonitor”名稱相同，類別相同，但 ID 不同，所以程式碼有效。
        Performance.add_custom_monitor("Custom/MyMonitor", monitor_value)

        # 將名稱為“MyCategoryOne/MyCategoryTwo/MyMonitor”的監視器新增到類別“Custom”。
        Performance.add_custom_monitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitor_value)

    func get_monitor_value():
        return randi() % 25

 .. code-tab:: csharp

    public override void _Ready()
    {
        var monitorValue = new Callable(this, MethodName.GetMonitorValue);

        // 將名稱為“MyName”的監視器新增到類別“MyCategory”。
        Performance.AddCustomMonitor("MyCategory/MyMonitor", monitorValue);
        // 將名稱為“MyName”的監視器新增到類別“Custom”。
        // 注意：“MyCategory/MyMonitor”和“MyMonitor”同名但不同 ID，所以程式碼有效。
        Performance.AddCustomMonitor("MyMonitor", monitorValue);

        // 將名稱為“MyName”的監視器新增到類別“Custom”。
        // 注意：“MyMonitor”和“Custom/MyMonitor”名稱相同，類別相同，但 ID 不同，所以程式碼有效。
        Performance.AddCustomMonitor("Custom/MyMonitor", monitorValue);

        // 將名稱為“MyCategoryOne/MyCategoryTwo/MyMonitor”的監視器新增到類別“Custom”。
        Performance.AddCustomMonitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitorValue);
    }

    public int GetMonitorValue()
    {
        return GD.Randi() % 25;
    }



除錯器呼叫可呼叫物件來取得自訂監視器的值。可呼叫物件必須返回一個零或正整數或浮點數。

使用參數陣列中提供的參數來呼叫可呼叫物件。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_get_custom_monitor>`

返回具有給定 ``id`` 的自訂監視器的值。呼叫這個可呼叫物件以取得自訂監視器的值。另請參閱 :ref:`has_custom_monitor()<class_Performance_method_has_custom_monitor>`\ 。如果給定的 ``id`` 不存在，則列印一個錯誤。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_custom_monitor_names**\ (\ ) :ref:`🔗<class_Performance_method_get_custom_monitor_names>`

以一個 :ref:`Array<class_Array>`\ ，返回活動自訂監視器的名稱。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor_types:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_custom_monitor_types**\ (\ ) :ref:`🔗<class_Performance_method_get_custom_monitor_types>`

以一個陣列回傳活動自訂監視器的 :ref:`MonitorType<enum_Performance_MonitorType>` 值。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_monitor**\ (\ monitor\: :ref:`Monitor<enum_Performance_Monitor>`\ ) |const| :ref:`🔗<class_Performance_method_get_monitor>`

返回任一可用的內建監視器的值。應該提供任一 :ref:`Monitor<enum_Performance_Monitor>` 常數作為參數，如下所示：


.. tabs::

 .. code-tab:: gdscript

    print(Performance.get_monitor(Performance.TIME_FPS)) # 將 FPS 列印到控制台。

 .. code-tab:: csharp

    GD.Print(Performance.GetMonitor(Performance.Monitor.TimeFps)); // 將 FPS 列印到控制台。



請參閱 :ref:`get_custom_monitor()<class_Performance_method_get_custom_monitor>`\ ，以查詢自訂效能監視器的值。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor_modification_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_monitor_modification_time**\ (\ ) :ref:`🔗<class_Performance_method_get_monitor_modification_time>`

返回自訂監視器被新增/刪除時的最後一個刻度（自引擎啟動以來的微秒數）。當該監視器更新時，它被設定為 :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_has_custom_monitor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_has_custom_monitor>`

如果存在具有給定 ``id`` 的自訂監視器，則返回 ``true``\ ，否則返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_remove_custom_monitor:

.. rst-class:: classref-method

|void| **remove_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_remove_custom_monitor>`

移除具有給定 ``id`` 的自訂監視器。如果給定的 ``id`` 已經不存在，則列印一個錯誤。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
