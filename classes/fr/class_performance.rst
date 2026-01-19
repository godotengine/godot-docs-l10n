:github_url: hide

.. _class_Performance:

Performance
===========

**Hérite de :** :ref:`Object<class_Object>`

Expose les données relatives aux performances.

.. rst-class:: classref-introduction-group

Description
-----------

This class provides access to a number of different monitors related to performance, such as memory usage, draw calls, and FPS. These are the same as the values displayed in the **Monitor** tab in the editor's **Debugger** panel. By using the :ref:`get_monitor()<class_Performance_method_get_monitor>` method of this class, you can access this data from your code.

You can add custom monitors using the :ref:`add_custom_monitor()<class_Performance_method_add_custom_monitor>` method. Custom monitors are available in **Monitor** tab in the editor's **Debugger** panel together with built-in monitors.

\ **Note:** Some of the built-in monitors are only available in debug mode and will always return ``0`` when used in a project exported in release mode.

\ **Note:** Some of the built-in monitors are not updated in real-time for performance reasons, so there may be a delay of up to 1 second between changes.

\ **Note:** Custom monitors do not support negative values. Negative values are clamped to 0.

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Énumérations
------------------------

.. _enum_Performance_Monitor:

.. rst-class:: classref-enumeration

enum **Monitor**: :ref:`🔗<enum_Performance_Monitor>`

.. _class_Performance_constant_TIME_FPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_FPS** = ``0``

The number of frames rendered in the last second. This metric is only updated once per second, even if queried more often. *Higher is better.*

.. _class_Performance_constant_TIME_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PROCESS** = ``1``

Le temps nécessaire pour compléter une trame, en secondes. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_TIME_PHYSICS_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PHYSICS_PROCESS** = ``2``

Le temps nécessaire pour compléter une trame physique, en secondes. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_TIME_NAVIGATION_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_NAVIGATION_PROCESS** = ``3``

Le temps pour terminer une étape de navigation, en secondes. Cela comprend les mises à jour de la carte de navigation ainsi que les calculs d'évitement des agents. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_MEMORY_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC** = ``4``

La mémoire statique actuellement utilisée, en octets. N'est pas utilisable dans les versions finales. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_MEMORY_STATIC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC_MAX** = ``5``

La mémoire statique disponible. N'est pas utilisable dans les versions finales. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_MEMORY_MESSAGE_BUFFER_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_MESSAGE_BUFFER_MAX** = ``6``

La plus grande quantité de mémoire que le tampon de queue de messages a utilisé, en octets. La queue de messages est utilisée pour les appels et les notifications de fonctions différées. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_OBJECT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_COUNT** = ``7``

Le nombre d'objets actuellement instanciés (nœuds inclus). *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_OBJECT_RESOURCE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_RESOURCE_COUNT** = ``8``

Nombre de ressources actuellement utilisées. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_OBJECT_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_NODE_COUNT** = ``9``

Nombre de nœuds actuellement instanciés dans l'arbre de scène. Cela inclut également le nœud racine. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_OBJECT_ORPHAN_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_ORPHAN_NODE_COUNT** = ``10``

Nombre de nœuds orphelins, c'est-à-dire de nœuds qui ne sont pas parentés à un nœud de l'arbre de scène. *Une valeur faible est souhaitable.*\ 

\ **Note :** Ceci est seulement disponible en mode de débogage et renvoie toujours ``0`` lorsqu'il est utilisé dans un projet exporté en mode release.

.. _class_Performance_constant_RENDER_TOTAL_OBJECTS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_OBJECTS_IN_FRAME** = ``11``

Le nombre total d'objets dans la dernière trame rendue. Cette métrique n'inclut pas les objets éliminés (soit par la dissimulation des nœuds, le frustum culling ou l'occlusion culling). *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_RENDER_TOTAL_PRIMITIVES_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_PRIMITIVES_IN_FRAME** = ``12``

Le nombre total de sommets ou d'indices rendus dans la dernière trame rendue. Cette métrique n'inclut pas les primitives d'objets éliminés (soit par la dissimulation des nœuds, le frustum culling ou l'occlusion culling). À cause de la pré-passe de profondeur et des passes d'ombres, le nombre de primitives est toujours plus élevé que le nombre réel de sommets dans la scène (généralement le double ou le triple du nombre de vertex d'origine). *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_RENDER_TOTAL_DRAW_CALLS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_DRAW_CALLS_IN_FRAME** = ``13``

Le nombre total de draw calls effectués dans la dernière trame rendue. Cette métrique ne comprend pas les objets éliminés (soit par la dissimulation de nœuds, le frustum culling ou l'occlusion culling), car ils ne se traduisent pas par des draw calls. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_RENDER_VIDEO_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_VIDEO_MEM_USED** = ``14``

La quantité de mémoire vidéo utilisée (mémoire des sommets et des textures combinés, en octets). Étant donné que cette mesure comprend également des allocations diverses, cette valeur est toujours supérieure à la somme de :ref:`RENDER_TEXTURE_MEM_USED<class_Performance_constant_RENDER_TEXTURE_MEM_USED>` et :ref:`RENDER_BUFFER_MEM_USED<class_Performance_constant_RENDER_BUFFER_MEM_USED>`. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_RENDER_TEXTURE_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TEXTURE_MEM_USED** = ``15``

La quantité de mémoire utilisée pour les textures (en octets). *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_RENDER_BUFFER_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_BUFFER_MEM_USED** = ``16``

La quantité de mémoire de tampon de rendu utilisée (en octets). *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_PHYSICS_2D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ACTIVE_OBJECTS** = ``17``

Le nombre de nœuds :ref:`RigidBody2D<class_RigidBody2D>` actifs dans le jeu. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_PHYSICS_2D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_COLLISION_PAIRS** = ``18``

Le nombre de paires de collision dans le moteur physique 2D. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_PHYSICS_2D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ISLAND_COUNT** = ``19``

Le nombre d'îles dans le moteur physique 2D. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_PHYSICS_3D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ACTIVE_OBJECTS** = ``20``

Le nombre de nœuds :ref:`RigidBody3D<class_RigidBody3D>` et :ref:`VehicleBody3D<class_VehicleBody3D>` actifs dans le jeu. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_PHYSICS_3D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_COLLISION_PAIRS** = ``21``

Le nombre de paires de collisions dans le moteur physique 3D. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_PHYSICS_3D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ISLAND_COUNT** = ``22``

Le nombre d'îles dans le moteur physique 3D. *Plus c'est bas, mieux c'est.*

.. _class_Performance_constant_AUDIO_OUTPUT_LATENCY:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **AUDIO_OUTPUT_LATENCY** = ``23``

Output latency of the :ref:`AudioServer<class_AudioServer>`. Equivalent to calling :ref:`AudioServer.get_output_latency()<class_AudioServer_method_get_output_latency>`, it is not recommended to call this every frame.

.. _class_Performance_constant_NAVIGATION_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_ACTIVE_MAPS** = ``24``

Number of active navigation maps in :ref:`NavigationServer2D<class_NavigationServer2D>` and :ref:`NavigationServer3D<class_NavigationServer3D>`. This also includes the empty default navigation maps created by :ref:`World2D<class_World2D>` and :ref:`World3D<class_World3D>` instances.

.. _class_Performance_constant_NAVIGATION_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_REGION_COUNT** = ``25``

Number of active navigation regions in :ref:`NavigationServer2D<class_NavigationServer2D>` and :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_AGENT_COUNT** = ``26``

Number of active navigation agents processing avoidance in :ref:`NavigationServer2D<class_NavigationServer2D>` and :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_LINK_COUNT** = ``27``

Number of active navigation links in :ref:`NavigationServer2D<class_NavigationServer2D>` and :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_POLYGON_COUNT** = ``28``

Number of navigation mesh polygons in :ref:`NavigationServer2D<class_NavigationServer2D>` and :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_COUNT** = ``29``

Number of navigation mesh polygon edges in :ref:`NavigationServer2D<class_NavigationServer2D>` and :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_MERGE_COUNT** = ``30``

Number of navigation mesh polygon edges that were merged due to edge key overlap in :ref:`NavigationServer2D<class_NavigationServer2D>` and :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_CONNECTION_COUNT** = ``31``

Number of polygon edges that are considered connected by edge proximity :ref:`NavigationServer2D<class_NavigationServer2D>` and :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_FREE_COUNT** = ``32``

Number of navigation mesh polygon edges that could not be merged in :ref:`NavigationServer2D<class_NavigationServer2D>` and :ref:`NavigationServer3D<class_NavigationServer3D>`. The edges still may be connected by edge proximity or with links.

.. _class_Performance_constant_NAVIGATION_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_OBSTACLE_COUNT** = ``33``

Number of active navigation obstacles in the :ref:`NavigationServer2D<class_NavigationServer2D>` and :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_CANVAS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_CANVAS** = ``34``

Number of pipeline compilations that were triggered by the 2D canvas renderer.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_MESH:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_MESH** = ``35``

Number of pipeline compilations that were triggered by loading meshes. These compilations will show up as longer loading times the first time a user runs the game and the pipeline is required.

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

Number of active navigation maps in the :ref:`NavigationServer2D<class_NavigationServer2D>`. This also includes the empty default navigation maps created by :ref:`World2D<class_World2D>` instances.

.. _class_Performance_constant_NAVIGATION_2D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_REGION_COUNT** = ``40``

Number of active navigation regions in the :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_AGENT_COUNT** = ``41``

Number of active navigation agents processing avoidance in the :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_LINK_COUNT** = ``42``

Number of active navigation links in the :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_POLYGON_COUNT** = ``43``

Number of navigation mesh polygons in the :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_COUNT** = ``44``

Number of navigation mesh polygon edges in the :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_MERGE_COUNT** = ``45``

Number of navigation mesh polygon edges that were merged due to edge key overlap in the :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_CONNECTION_COUNT** = ``46``

Number of polygon edges that are considered connected by edge proximity :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_FREE_COUNT** = ``47``

Number of navigation mesh polygon edges that could not be merged in the :ref:`NavigationServer2D<class_NavigationServer2D>`. The edges still may be connected by edge proximity or with links.

.. _class_Performance_constant_NAVIGATION_2D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_OBSTACLE_COUNT** = ``48``

Number of active navigation obstacles in the :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_3D_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_ACTIVE_MAPS** = ``49``

Number of active navigation maps in the :ref:`NavigationServer3D<class_NavigationServer3D>`. This also includes the empty default navigation maps created by :ref:`World3D<class_World3D>` instances.

.. _class_Performance_constant_NAVIGATION_3D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_REGION_COUNT** = ``50``

Number of active navigation regions in the :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_AGENT_COUNT** = ``51``

Number of active navigation agents processing avoidance in the :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_LINK_COUNT** = ``52``

Number of active navigation links in the :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_POLYGON_COUNT** = ``53``

Number of navigation mesh polygons in the :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_COUNT** = ``54``

Number of navigation mesh polygon edges in the :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_MERGE_COUNT** = ``55``

Number of navigation mesh polygon edges that were merged due to edge key overlap in the :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_CONNECTION_COUNT** = ``56``

Number of polygon edges that are considered connected by edge proximity :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_FREE_COUNT** = ``57``

Number of navigation mesh polygon edges that could not be merged in the :ref:`NavigationServer3D<class_NavigationServer3D>`. The edges still may be connected by edge proximity or with links.

.. _class_Performance_constant_NAVIGATION_3D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_OBSTACLE_COUNT** = ``58``

Number of active navigation obstacles in the :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_MONITOR_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MONITOR_MAX** = ``59``

Représente la taille de l'énumération :ref:`Monitor<enum_Performance_Monitor>`.

.. rst-class:: classref-item-separator

----

.. _enum_Performance_MonitorType:

.. rst-class:: classref-enumeration

enum **MonitorType**: :ref:`🔗<enum_Performance_MonitorType>`

.. _class_Performance_constant_MONITOR_TYPE_QUANTITY:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_QUANTITY** = ``0``

Monitor output is formatted as an integer value.

.. _class_Performance_constant_MONITOR_TYPE_MEMORY:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_MEMORY** = ``1``

Monitor output is formatted as computer memory. Submitted values should represent a number of bytes.

.. _class_Performance_constant_MONITOR_TYPE_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_TIME** = ``2``

Monitor output is formatted as time in milliseconds. Submitted values should represent a time in seconds (not milliseconds).

.. _class_Performance_constant_MONITOR_TYPE_PERCENTAGE:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_PERCENTAGE** = ``3``

Monitor output is formatted as a percentage. Submitted values should represent a fractional value rather than the percentage directly, e.g. ``0.5`` for ``50.00%``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

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

Returns the value of custom monitor with given ``id``. The callable is called to get the value of custom monitor. See also :ref:`has_custom_monitor()<class_Performance_method_has_custom_monitor>`. Prints an error if the given ``id`` is absent.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_custom_monitor_names**\ (\ ) :ref:`🔗<class_Performance_method_get_custom_monitor_names>`

Returns the names of active custom monitors in an :ref:`Array<class_Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor_types:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_custom_monitor_types**\ (\ ) :ref:`🔗<class_Performance_method_get_custom_monitor_types>`

Returns the :ref:`MonitorType<enum_Performance_MonitorType>` values of active custom monitors in an :ref:`Array<class_Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_monitor**\ (\ monitor\: :ref:`Monitor<enum_Performance_Monitor>`\ ) |const| :ref:`🔗<class_Performance_method_get_monitor>`

Returns the value of one of the available built-in monitors. You should provide one of the :ref:`Monitor<enum_Performance_Monitor>` constants as the argument, like this:


.. tabs::

 .. code-tab:: gdscript

    print(Performance.get_monitor(Performance.TIME_FPS)) # Prints the FPS to the console.

 .. code-tab:: csharp

    GD.Print(Performance.GetMonitor(Performance.Monitor.TimeFps)); // Prints the FPS to the console.



See :ref:`get_custom_monitor()<class_Performance_method_get_custom_monitor>` to query custom performance monitors' values.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor_modification_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_monitor_modification_time**\ (\ ) :ref:`🔗<class_Performance_method_get_monitor_modification_time>`

Returns the last tick in which custom monitor was added/removed (in microseconds since the engine started). This is set to :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>` when the monitor is updated.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_has_custom_monitor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_has_custom_monitor>`

Returns ``true`` if custom monitor with the given ``id`` is present, ``false`` otherwise.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_remove_custom_monitor:

.. rst-class:: classref-method

|void| **remove_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_remove_custom_monitor>`

Removes the custom monitor with given ``id``. Prints an error if the given ``id`` is already absent.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
