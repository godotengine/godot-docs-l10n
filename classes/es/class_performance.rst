:github_url: hide

.. _class_Performance:

Performance
===========

**Hereda:** :ref:`Object<class_Object>`

Expone los datos relacionados con el rendimiento.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This class provides access to a number of different monitors related to performance, such as memory usage, draw calls, and FPS. These are the same as the values displayed in the **Monitor** tab in the editor's **Debugger** panel. By using the :ref:`get_monitor()<class_Performance_method_get_monitor>` method of this class, you can access this data from your code.

You can add custom monitors using the :ref:`add_custom_monitor()<class_Performance_method_add_custom_monitor>` method. Custom monitors are available in **Monitor** tab in the editor's **Debugger** panel together with built-in monitors.

\ **Note:** Some of the built-in monitors are only available in debug mode and will always return ``0`` when used in a project exported in release mode.

\ **Note:** Some of the built-in monitors are not updated in real-time for performance reasons, so there may be a delay of up to 1 second between changes.

\ **Note:** Custom monitors do not support negative values. Negative values are clamped to 0.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_Performance_Monitor:

.. rst-class:: classref-enumeration

enum **Monitor**: :ref:`🔗<enum_Performance_Monitor>`

.. _class_Performance_constant_TIME_FPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_FPS** = ``0``

El número de fotogramas renderizados en el último segundo. Esta métrica solo se actualiza una vez por segundo, incluso si se consulta con más frecuencia. *Cuanto mayor, mejor.*

.. _class_Performance_constant_TIME_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PROCESS** = ``1``

El tiempo que tomó completar un fotograma, en segundos. *Cuanto menor, mejor.*

.. _class_Performance_constant_TIME_PHYSICS_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PHYSICS_PROCESS** = ``2``

El tiempo que tomó completar un fotograma de la física, en segundos. *Cuanto menor, mejor.*

.. _class_Performance_constant_TIME_NAVIGATION_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_NAVIGATION_PROCESS** = ``3``

Tiempo que tardó en completarse un paso de navegación, en segundos. Esto incluye las actualizaciones del mapa de navegación, así como los cálculos de evitación de agentes. *Cuanto menor, mejor.*

.. _class_Performance_constant_MEMORY_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC** = ``4``

Memoria estática actualmente utilizada, en bytes. No está disponible en las versiones de lanzamiento. *Cuanto menor, mejor.*

.. _class_Performance_constant_MEMORY_STATIC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC_MAX** = ``5``

Memoria estática disponible. No disponible en las versiones de lanzamiento. *Cuanto menor, mejor.*

.. _class_Performance_constant_MEMORY_MESSAGE_BUFFER_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_MESSAGE_BUFFER_MAX** = ``6``

Máxima cantidad de memoria utilizada por el búfer de la cola de mensajes, en bytes. La cola de mensajes se utiliza para llamadas a funciones diferidas y notificaciones. *Cuanto menor, mejor.*

.. _class_Performance_constant_OBJECT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_COUNT** = ``7``

Número de objetos instanciados actualmente (incluidos los nodos). *Cuanto menor, mejor.*

.. _class_Performance_constant_OBJECT_RESOURCE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_RESOURCE_COUNT** = ``8``

Número de recursos utilizados actualmente. *Cuanto menor, mejor.*

.. _class_Performance_constant_OBJECT_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_NODE_COUNT** = ``9``

Número de nodos actualmente instanciados en el árbol de escenas. Esto también incluye el nodo raíz. *Cuanto menor, mejor.*

.. _class_Performance_constant_OBJECT_ORPHAN_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_ORPHAN_NODE_COUNT** = ``10``

Número de nodos huérfanos, es decir, nodos que no están emparentados con un nodo del árbol de la escena. *Cuanto menor, mejor.*\ 

\ **Nota:** Esto solo está disponible en modo de depuración y siempre devolverá ``0`` cuando se use en un proyecto exportado en modo de lanzamiento.

.. _class_Performance_constant_RENDER_TOTAL_OBJECTS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_OBJECTS_IN_FRAME** = ``11``

El número total de objetos en el último fotograma renderizado. Esta métrica no incluye objetos eliminados (ya sea ocultando nodos, culling de frustum o culling de oclusión). *Cuanto menor, mejor.*

.. _class_Performance_constant_RENDER_TOTAL_PRIMITIVES_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_PRIMITIVES_IN_FRAME** = ``12``

El número total de vértices o índices renderizados en el último fotograma renderizado. Esta métrica no incluye primitivas de objetos eliminados (ya sea ocultando nodos, culling de frustum o culling de oclusión). Debido a la pre-pasada de profundidad y las pasadas de sombra, el número de primitivas es siempre mayor que el número real de vértices en la escena (típicamente el doble o triple del recuento de vértices original). *Cuanto menor, mejor.*

.. _class_Performance_constant_RENDER_TOTAL_DRAW_CALLS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_DRAW_CALLS_IN_FRAME** = ``13``

El número total de llamadas de dibujado realizadas en el último fotograma renderizado. Esta métrica no incluye objetos eliminados (ya sea ocultando nodos, culling de frustum o culling de oclusión), ya que no resultan en llamadas de dibujado. *Cuanto menor, mejor.*

.. _class_Performance_constant_RENDER_VIDEO_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_VIDEO_MEM_USED** = ``14``

La cantidad de memoria de vídeo utilizada (memoria de texturas y vértices combinada, en bytes). Dado que esta métrica también incluye asignaciones varias, este valor es siempre mayor que la suma de :ref:`RENDER_TEXTURE_MEM_USED<class_Performance_constant_RENDER_TEXTURE_MEM_USED>` y :ref:`RENDER_BUFFER_MEM_USED<class_Performance_constant_RENDER_BUFFER_MEM_USED>`. *Cuanto menor, mejor.*

.. _class_Performance_constant_RENDER_TEXTURE_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TEXTURE_MEM_USED** = ``15``

La cantidad de memoria de textura utilizada (en bytes). *Cuanto menor, mejor.*

.. _class_Performance_constant_RENDER_BUFFER_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_BUFFER_MEM_USED** = ``16``

La cantidad de memoria de búfer de renderizado utilizada (en bytes). *Cuanto menor, mejor.*

.. _class_Performance_constant_PHYSICS_2D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ACTIVE_OBJECTS** = ``17``

Número de nodos :ref:`RigidBody2D<class_RigidBody2D>` activos en el juego. *Cuanto menor, mejor.*

.. _class_Performance_constant_PHYSICS_2D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_COLLISION_PAIRS** = ``18``

Número de pares de colisión en el motor de física 2D. *Cuanto menor, mejor.*

.. _class_Performance_constant_PHYSICS_2D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ISLAND_COUNT** = ``19``

Número de islas en el motor de física 2D. *Cuanto menor, mejor.*

.. _class_Performance_constant_PHYSICS_3D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ACTIVE_OBJECTS** = ``20``

Número de nodos activos de :ref:`RigidBody3D<class_RigidBody3D>` y :ref:`VehicleBody3D<class_VehicleBody3D>` en el juego. *Cuanto menor, mejor.*

.. _class_Performance_constant_PHYSICS_3D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_COLLISION_PAIRS** = ``21``

Número de pares de colisión en el motor de física 3D. *Cuanto menor, mejor.*

.. _class_Performance_constant_PHYSICS_3D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ISLAND_COUNT** = ``22``

Número de islas en el motor de física 3D. *Cuanto menor, mejor.*

.. _class_Performance_constant_AUDIO_OUTPUT_LATENCY:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **AUDIO_OUTPUT_LATENCY** = ``23``

Latencia de salida del :ref:`AudioServer<class_AudioServer>`. Equivalente a llamar a :ref:`AudioServer.get_output_latency()<class_AudioServer_method_get_output_latency>`. No se recomienda llamar a esto en cada fotograma.

.. _class_Performance_constant_NAVIGATION_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_ACTIVE_MAPS** = ``24``

Número de mapas de navegación activos en :ref:`NavigationServer2D<class_NavigationServer2D>` y :ref:`NavigationServer3D<class_NavigationServer3D>`. Esto también incluye los mapas de navegación por defecto vacíos creados por instancias de :ref:`World2D<class_World2D>` y :ref:`World3D<class_World3D>`.

.. _class_Performance_constant_NAVIGATION_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_REGION_COUNT** = ``25``

Número de regiones de navegación activas en :ref:`NavigationServer2D<class_NavigationServer2D>` y :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_AGENT_COUNT** = ``26``

Número de agentes de navegación activos procesando evasión en :ref:`NavigationServer2D<class_NavigationServer2D>` y :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_LINK_COUNT** = ``27``

Número de enlaces de navegación activos en :ref:`NavigationServer2D<class_NavigationServer2D>` y :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_POLYGON_COUNT** = ``28``

Número de polígonos de malla de navegación en :ref:`NavigationServer2D<class_NavigationServer2D>` y :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_COUNT** = ``29``

Número de aristas de polígonos de malla de navegación en :ref:`NavigationServer2D<class_NavigationServer2D>` y :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_MERGE_COUNT** = ``30``

Número de aristas de polígono de la malla de navegación que se fusionaron debido a la superposición de claves de aristas en :ref:`NavigationServer2D<class_NavigationServer2D>` y :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_CONNECTION_COUNT** = ``31``

Número de aristas de polígono que se consideran conectadas por proximidad de aristas :ref:`NavigationServer2D<class_NavigationServer2D>` y :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_FREE_COUNT** = ``32``

Número de aristas de polígono de la malla de navegación que no se pudieron fusionar en :ref:`NavigationServer2D<class_NavigationServer2D>` y :ref:`NavigationServer3D<class_NavigationServer3D>`. Las aristas aún pueden estar conectadas por proximidad de aristas o con enlaces.

.. _class_Performance_constant_NAVIGATION_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_OBSTACLE_COUNT** = ``33``

Número de obstáculos de navegación activos en :ref:`NavigationServer2D<class_NavigationServer2D>` y :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_CANVAS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_CANVAS** = ``34``

Número de compilaciones de canalización activadas por el renderizador del lienzo 2D.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_MESH:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_MESH** = ``35``

El número de compilaciones de canalización activadas al cargar mallas. Estas compilaciones se traducirán en tiempos de carga más largos la primera vez que el usuario ejecute el juego y se requiera la canalización.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_SURFACE:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_SURFACE** = ``36``

Number of pipeline compilations that were triggered by building the surface cache before rendering the scene. These compilations will show up as a stutter when loading a scene the first time a user runs the game and the pipeline is required.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_DRAW:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_DRAW** = ``37``

Number of pipeline compilations that were triggered while drawing the scene. These compilations will show up as stutters during gameplay the first time a user runs the game and the pipeline is required.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_SPECIALIZATION:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_SPECIALIZATION** = ``38``

Number of pipeline compilations that were triggered to optimize the current scene. These compilations are done in the background and should not cause any stutters whatsoever.

.. _class_Performance_constant_NAVIGATION_2D_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_ACTIVE_MAPS** = ``39``

Número de mapas de navegación activos en el :ref:`NavigationServer2D<class_NavigationServer2D>`. Esto también incluye los mapas de navegación predeterminados vacíos creados por instancias de :ref:`World2D<class_World2D>`.

.. _class_Performance_constant_NAVIGATION_2D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_REGION_COUNT** = ``40``

Número de regiones de navegación activas en el :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_AGENT_COUNT** = ``41``

Número de agentes de navegación activos procesando la evitación en el :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_LINK_COUNT** = ``42``

Número de enlaces de navegación activos en el :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_POLYGON_COUNT** = ``43``

Número de polígonos de malla de navegación en el :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_COUNT** = ``44``

Número de aristas de polígono de malla de navegación en el :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_MERGE_COUNT** = ``45``

Número de aristas de polígono de la malla de navegación que se fusionaron debido a la superposición de claves de aristas en el :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_CONNECTION_COUNT** = ``46``

Número de bordes de polígono que se consideran conectados por proximidad de borde :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_FREE_COUNT** = ``47``

Número de bordes de polígonos de malla de navegación que no se pudieron fusionar en :ref:`NavigationServer2D<class_NavigationServer2D>`. Los bordes aún pueden estar conectados por proximidad o mediante enlaces.

.. _class_Performance_constant_NAVIGATION_2D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_OBSTACLE_COUNT** = ``48``

Número de obstáculos de navegación activos en el :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_3D_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_ACTIVE_MAPS** = ``49``

Número de mapas de navegación activos en el :ref:`NavigationServer3D<class_NavigationServer3D>`. Esto también incluye los mapas de navegación predeterminados vacíos creados por instancias de :ref:`World3D<class_World3D>`.

.. _class_Performance_constant_NAVIGATION_3D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_REGION_COUNT** = ``50``

Número de regiones de navegación activas en el :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_AGENT_COUNT** = ``51``

Número de agentes de navegación activos procesando la evitación en el :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_LINK_COUNT** = ``52``

Número de enlaces de navegación activos en el :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_POLYGON_COUNT** = ``53``

Número de polígonos de malla de navegación en el :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_COUNT** = ``54``

Número de aristas de polígono de la malla de navegación en el :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_MERGE_COUNT** = ``55``

Número de aristas de polígono de la malla de navegación que se fusionaron debido a la superposición de claves de aristas en el :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_CONNECTION_COUNT** = ``56``

Número de aristas de polígono que se consideran conectadas por proximidad de aristas :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_FREE_COUNT** = ``57``

Número de aristas de polígono de la malla de navegación que no se pudieron fusionar en el :ref:`NavigationServer3D<class_NavigationServer3D>`. Las aristas aún pueden estar conectadas por proximidad de aristas o con enlaces.

.. _class_Performance_constant_NAVIGATION_3D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_OBSTACLE_COUNT** = ``58``

Número de obstáculos de navegación activos en el :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_MONITOR_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MONITOR_MAX** = ``59``

Representa el tamaño del enum :ref:`Monitor<enum_Performance_Monitor>`.

.. rst-class:: classref-item-separator

----

.. _enum_Performance_MonitorType:

.. rst-class:: classref-enumeration

enum **MonitorType**: :ref:`🔗<enum_Performance_MonitorType>`

.. _class_Performance_constant_MONITOR_TYPE_QUANTITY:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_QUANTITY** = ``0``

La salida del monitor tiene el formato de un valor entero.

.. _class_Performance_constant_MONITOR_TYPE_MEMORY:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_MEMORY** = ``1``

La salida del monitor está formateada como memoria de ordenador. Los valores enviados deben representar un número de bytes.

.. _class_Performance_constant_MONITOR_TYPE_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_TIME** = ``2``

La salida del monitor está formateada como tiempo en milisegundos. Los valores enviados deben representar un tiempo en segundos (no milisegundos).

.. _class_Performance_constant_MONITOR_TYPE_PERCENTAGE:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_PERCENTAGE** = ``3``

La salida del monitor está formateada como un porcentaje. Los valores enviados deben representar un valor fraccional en lugar del porcentaje directamente, p. ej. ``0.5`` para ``50.00%``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Performance_method_add_custom_monitor:

.. rst-class:: classref-method

|void| **add_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`, arguments\: :ref:`Array<class_Array>` = [], type\: :ref:`MonitorType<enum_Performance_MonitorType>` = 0\ ) :ref:`🔗<class_Performance_method_add_custom_monitor>`

Adds a custom monitor with the name ``id``. You can specify the category of the monitor using slash delimiters in ``id`` (for example: ``"Game/NumberOfNPCs"``). If there is more than one slash delimiter, then the default category is used. The default category is ``"Custom"``. Prints an error if given ``id`` is already present.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var monitor_value = Callable(self, "get_monitor_value")

        # Adds monitor with name "MyName" to category "MyCategory".
        Performance.add_custom_monitor("MyCategory/MyMonitor", monitor_value)

        # Adds monitor with name "MyName" to category "Custom".
        # Note: "MyCategory/MyMonitor" and "MyMonitor" have same name but different IDs, so the code is valid.
        Performance.add_custom_monitor("MyMonitor", monitor_value)

        # Adds monitor with name "MyName" to category "Custom".
        # Note: "MyMonitor" and "Custom/MyMonitor" have same name and same category but different IDs, so the code is valid.
        Performance.add_custom_monitor("Custom/MyMonitor", monitor_value)

        # Adds monitor with name "MyCategoryOne/MyCategoryTwo/MyMonitor" to category "Custom".
        Performance.add_custom_monitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitor_value)

    func get_monitor_value():
        return randi() % 25

 .. code-tab:: csharp

    public override void _Ready()
    {
        var monitorValue = new Callable(this, MethodName.GetMonitorValue);

        // Adds monitor with name "MyName" to category "MyCategory".
        Performance.AddCustomMonitor("MyCategory/MyMonitor", monitorValue);
        // Adds monitor with name "MyName" to category "Custom".
        // Note: "MyCategory/MyMonitor" and "MyMonitor" have same name but different ids so the code is valid.
        Performance.AddCustomMonitor("MyMonitor", monitorValue);

        // Adds monitor with name "MyName" to category "Custom".
        // Note: "MyMonitor" and "Custom/MyMonitor" have same name and same category but different ids so the code is valid.
        Performance.AddCustomMonitor("Custom/MyMonitor", monitorValue);

        // Adds monitor with name "MyCategoryOne/MyCategoryTwo/MyMonitor" to category "Custom".
        Performance.AddCustomMonitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitorValue);
    }

    public int GetMonitorValue()
    {
        return GD.Randi() % 25;
    }



The debugger calls the callable to get the value of custom monitor. The callable must return a zero or positive integer or floating-point number.

Callables are called with arguments supplied in argument array.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_get_custom_monitor>`

Devuelve el valor del monitor personalizado con el ``id`` dado. Se llama al invocable para obtener el valor del monitor personalizado. Véase también :ref:`has_custom_monitor()<class_Performance_method_has_custom_monitor>`. Imprime un error si el ``id`` dado está ausente.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_custom_monitor_names**\ (\ ) :ref:`🔗<class_Performance_method_get_custom_monitor_names>`

Devuelve los nombres de los monitores personalizados activos en un :ref:`Array<class_Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor_types:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_custom_monitor_types**\ (\ ) :ref:`🔗<class_Performance_method_get_custom_monitor_types>`

Devuelve los valores :ref:`MonitorType<enum_Performance_MonitorType>` de los monitores personalizados activos en un :ref:`Array<class_Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_monitor**\ (\ monitor\: :ref:`Monitor<enum_Performance_Monitor>`\ ) |const| :ref:`🔗<class_Performance_method_get_monitor>`

Devuelve el valor de uno de los monitores integrados disponibles. Se debe proporcionar una de los constantes :ref:`Monitor<enum_Performance_Monitor>` como argumento, de la siguiente manera:


.. tabs::

 .. code-tab:: gdscript

    print(Performance.get_monitor(Performance.TIME_FPS)) # Imprime los FPS en la consola.

 .. code-tab:: csharp

    GD.Print(Performance.GetMonitor(Performance.Monitor.TimeFps)); // Imprime los FPS en la consola.



Véase :ref:`get_custom_monitor()<class_Performance_method_get_custom_monitor>` para obtener los valores de los monitores de rendimiento personalizados.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor_modification_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_monitor_modification_time**\ (\ ) :ref:`🔗<class_Performance_method_get_monitor_modification_time>`

Devuelve el último tick en el que se añadió/eliminó el monitor personalizado (en microsegundos desde que se inició el motor). Esto se establece en :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>` cuando el monitor se actualiza.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_has_custom_monitor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_has_custom_monitor>`

Devuelve ``true`` si el monitor personalizado con el ``id`` dado está presente, ``false`` en caso contrario.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_remove_custom_monitor:

.. rst-class:: classref-method

|void| **remove_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_remove_custom_monitor>`

Elimina el monitor personalizado con el ``id`` dado. Imprime un error si el ``id`` dado ya está ausente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
