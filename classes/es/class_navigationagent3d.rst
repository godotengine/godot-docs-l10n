:github_url: hide

.. _class_NavigationAgent3D:

NavigationAgent3D
=================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un agente 3D utilizado para encontrar un trayecto a una posición mientras evita obstáculos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un agente 3D utilizado para encontrar un trayecto a una posición mientras evita obstáculos estáticos y dinámicos. El cálculo puede ser utilizado por el nodo padre para moverlo dinámicamente a lo largo del trayecto. Requiere datos de navegación para funcionar correctamente.

Los obstáculos dinámicos se evitan usando la evitación de colisiones RVO. La evitación se calcula antes de la física, por lo que la información de pathfinding puede ser usada de forma segura en el paso de física.

\ **Nota:** Después de establecer la propiedad :ref:`target_position<class_NavigationAgent3D_property_target_position>`, el método :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>` debe usarse una vez en cada frame de física para actualizar la lógica de trayecto interna del agente de navegación. La posición del vector que devuelve debe usarse como la siguiente posición de movimiento para el nodo padre del agente.

\ **Nota:** Varios métodos de esta clase, como :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>`, pueden desencadenar un nuevo cálculo de trayecto. Llamar a estos en tu callback a una señal del agente, como :ref:`waypoint_reached<class_NavigationAgent3D_signal_waypoint_reached>`, puede causar una recursión infinita. Se recomienda llamar a estos métodos en el paso de física o, alternativamente, retrasar su llamada hasta el final del frame (véase :ref:`Object.call_deferred()<class_Object_method_call_deferred>` o :ref:`Object.CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>`).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Utilizando NavigationAgents <../tutorials/navigation/navigation_using_navigationagents>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_NavigationAgent3D_signal_link_reached:

.. rst-class:: classref-signal

**link_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_link_reached>`

Señaliza que el agente alcanzó un enlace de navegación. Emitida cuando el agente se mueve dentro de :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` de la siguiente posición del trayecto cuando esa posición es un enlace de navegación.

El diccionario de detalles puede contener las siguientes claves, dependiendo del valor de :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>`:

- ``position``: La posición de inicio del enlace que fue alcanzado.

- ``type``: Siempre es :ref:`NavigationPathQueryResult3D.PATH_SEGMENT_TYPE_LINK<class_NavigationPathQueryResult3D_constant_PATH_SEGMENT_TYPE_LINK>`.

- ``rid``: El :ref:`RID<class_RID>` del enlace.

- ``owner``: El objeto que gestiona el enlace (normalmente :ref:`NavigationLink3D<class_NavigationLink3D>`).

- ``link_entry_position``: Si ``owner`` está disponible y el propietario es un :ref:`NavigationLink3D<class_NavigationLink3D>`, contendrá la posición global del punto del enlace al que el agente está entrando.

- ``link_exit_position``: Si ``owner`` está disponible y el propietario es un :ref:`NavigationLink3D<class_NavigationLink3D>`, contendrá la posición global del punto del enlace del que el agente está saliendo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_navigation_finished:

.. rst-class:: classref-signal

**navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_navigation_finished>`

Señala que la navegación del agente ha terminado. Si el objetivo es alcanzable, la navegación termina cuando se alcanza el objetivo. Si el objetivo es inalcanzable, la navegación termina cuando se alcanza el último punto de trayecto de la trayectoria. Esta señal se emite solo una vez por trayectoria cargada.

Esta señal se emitirá justo después de :ref:`target_reached<class_NavigationAgent3D_signal_target_reached>` cuando el objetivo sea alcanzable.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_path_changed:

.. rst-class:: classref-signal

**path_changed**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_path_changed>`

Se emite cuando el agente tuvo que actualizar la trayectoria cargada:

- porque la trayectoria estaba previamente vacía.

- porque el mapa de navegación ha cambiado.

- porque el agente se alejó más del segmento de trayectoria actual de lo que permite :ref:`path_max_distance<class_NavigationAgent3D_property_path_max_distance>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_target_reached:

.. rst-class:: classref-signal

**target_reached**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_target_reached>`

Señala que el agente alcanzó el objetivo, es decir, el agente se movió dentro de :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` de la :ref:`target_position<class_NavigationAgent3D_property_target_position>`. Esta señal se emite solo una vez por trayectoria cargada.

Esta señal se emitirá justo antes de :ref:`navigation_finished<class_NavigationAgent3D_signal_navigation_finished>` cuando el objetivo sea alcanzable.

Puede que no siempre sea posible alcanzar el objetivo, pero siempre debería ser posible alcanzar la posición final. Véase :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_velocity_computed:

.. rst-class:: classref-signal

**velocity_computed**\ (\ safe_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_velocity_computed>`

Notifica cuando se calcula la velocidad de evitación de colisiones. Se emite en cada actualización siempre que :ref:`avoidance_enabled<class_NavigationAgent3D_property_avoidance_enabled>` sea ``true`` y el agente tenga un mapa de navegación.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_waypoint_reached:

.. rst-class:: classref-signal

**waypoint_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_waypoint_reached>`

Señala que el agente alcanzó un punto de trayecto. Se emite cuando el agente se mueve dentro de :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` de la siguiente posición del trayecto.

El diccionario de detalles puede contener las siguientes claves dependiendo del valor de :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>`:

- ``position``: La posición del punto de trayecto que se alcanzó.

- ``type``: El tipo de primitiva de navegación (región o enlace) que contiene este punto de trayecto.

- ``rid``: El :ref:`RID<class_RID>` de la primitiva de navegación contenedora (región o enlace).

- ``owner``: El objeto que gestiona la primitiva de navegación contenedora (región o enlace).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_NavigationAgent3D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

Si es ``true``, el agente se registra para una llamada de retorno de evitación RVO en el :ref:`NavigationServer3D<class_NavigationServer3D>`. Cuando se establece :ref:`velocity<class_NavigationAgent3D_property_velocity>` y se completa el procesamiento, se recibe un Vector3 ``safe_velocity`` con una conexión de señal a :ref:`velocity_computed<class_NavigationAgent3D_signal_velocity_computed>`. El procesamiento de evitación con muchos agentes registrados tiene un costo de rendimiento significativo y solo debe habilitarse en agentes que actualmente lo requieran.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

A bitfield determining the avoidance layers for this NavigationAgent. Other agents with a matching bit on the :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` will avoid this agent.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_mask** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_mask>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_mask**\ (\ )

A bitfield determining what other avoidance agents and obstacles this NavigationAgent will avoid when a bit matches at least one of their :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **avoidance_priority** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_priority>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_avoidance_priority**\ (\ )

The agent does not adjust the velocity for other agents that would match the :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` but have a lower :ref:`avoidance_priority<class_NavigationAgent3D_property_avoidance_priority>`. This in turn makes the other agents with lower priority adjust their velocities even more to avoid collision with this agent.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_enabled** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_debug_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_debug_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_enabled**\ (\ )

If ``true`` shows debug visuals for this agent.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_path_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_path_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_NavigationAgent3D_property_debug_path_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_path_custom_color**\ (\ )

If :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>` is ``true`` uses this color for this agent instead of global color.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_path_custom_point_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **debug_path_custom_point_size** = ``4.0`` :ref:`🔗<class_NavigationAgent3D_property_debug_path_custom_point_size>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_point_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_debug_path_custom_point_size**\ (\ )

If :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>` is ``true`` uses this rasterized point size for rendering path points for this agent instead of global point size.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_use_custom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_use_custom** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_debug_use_custom>`

.. rst-class:: classref-property-setget

- |void| **set_debug_use_custom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_use_custom**\ (\ )

If ``true`` uses the defined :ref:`debug_path_custom_color<class_NavigationAgent3D_property_debug_path_custom_color>` for this agent instead of global color.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

La altura del agente de evitación. Los agentes ignorarán a otros agentes u obstáculos que estén por encima o por debajo de su posición actual + altura en la evitación 2D. No hace nada en la evitación 3D, que usa solo esferas de radio.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_keep_y_velocity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_y_velocity** = ``true`` :ref:`🔗<class_NavigationAgent3D_property_keep_y_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_keep_y_velocity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_keep_y_velocity**\ (\ )

Si es ``true``, y el agente usa evitación 2D, recordará la velocidad establecida en el eje Y y la volverá a aplicar después del paso de evitación. Aunque la evitación 2D no tiene eje Y y simula en un plano plano, esta configuración puede ayudar a suavizar el recorte más obvio en geometría 3D irregular.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_max_neighbors:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_neighbors** = ``10`` :ref:`🔗<class_NavigationAgent3D_property_max_neighbors>`

.. rst-class:: classref-property-setget

- |void| **set_max_neighbors**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_neighbors**\ (\ )

The maximum number of neighbors for the agent to consider.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_max_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_speed** = ``10.0`` :ref:`🔗<class_NavigationAgent3D_property_max_speed>`

.. rst-class:: classref-property-setget

- |void| **set_max_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_speed**\ (\ )

La velocidad máxima a la que un agente se puede mover.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

A bitfield determining which navigation layers of navigation regions this agent will use to calculate a path. Changing it during runtime will clear the current navigation path and generate a new one, according to the new navigation layers.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_neighbor_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **neighbor_distance** = ``50.0`` :ref:`🔗<class_NavigationAgent3D_property_neighbor_distance>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_neighbor_distance**\ (\ )

La distancia para buscar otros agentes.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_desired_distance** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_path_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_desired_distance**\ (\ )

The distance threshold before a path point is considered to be reached. This allows agents to not have to hit a path point on the path exactly, but only to reach its general area. If this value is set too high, the NavigationAgent will skip points on the path, which can lead to it leaving the navigation mesh. If this value is set too low, the NavigationAgent will be stuck in a repath loop because it will constantly overshoot the distance to the next point on each physics frame update.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_height_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_height_offset** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_height_offset>`

.. rst-class:: classref-property-setget

- |void| **set_path_height_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_height_offset**\ (\ )

El desplazamiento de altura se resta del valor del eje Y de cualquier posición de trayecto vectorial para este NavigationAgent. El desplazamiento de altura del NavigationAgent no cambia ni influye en la malla de navegación ni en el resultado de la consulta de búsqueda de rutas. Se requieren mapas de navegación adicionales que utilicen regiones con mallas de navegación que el desarrollador haya procesado con baking con los valores de radio o altura del agente apropiados para admitir agentes de diferentes tamaños.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_max_distance** = ``5.0`` :ref:`🔗<class_NavigationAgent3D_property_path_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_max_distance**\ (\ )

The maximum distance the agent is allowed away from the ideal path to the final position. This can happen due to trying to avoid collisions. When the maximum distance is exceeded, it recalculates the ideal path.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **path_metadata_flags** = ``7`` :ref:`🔗<class_NavigationAgent3D_property_path_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_path_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **get_path_metadata_flags**\ (\ )

Additional information to return with the navigation path.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationAgent3D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

The path postprocessing applied to the raw path corridor found by the :ref:`pathfinding_algorithm<class_NavigationAgent3D_property_pathfinding_algorithm>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

The maximum allowed length of the returned path in world units. A path will be clipped when going over this length.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

The maximum allowed radius in world units that the returned path can be from the path start. The path will be clipped when going over this radius. Compared to :ref:`path_return_max_length<class_NavigationAgent3D_property_path_return_max_length>`, this allows the agent to go that much further, if they need to walk around a corner.

\ **Note:** This will perform a sphere clip considering only the actual navigation mesh path points with the first path position being the sphere's center.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

The maximum distance a searched polygon can be away from the start polygon before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of ``0`` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationAgent3D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

The maximum number of polygons that are searched before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of ``0`` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationAgent3D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

The pathfinding algorithm used in the path query.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_NavigationAgent3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

El radio del agente de evitación. Este es el "cuerpo" del agente de evitación y no el radio de inicio de la maniobra de evitación (que se controla mediante :ref:`neighbor_distance<class_NavigationAgent3D_property_neighbor_distance>`).

No afecta la búsqueda normal de trayectos. Para cambiar el radio de búsqueda de trayectos de un actor, hornea recursos :ref:`NavigationMesh<class_NavigationMesh>` con una propiedad :ref:`NavigationMesh.agent_radius<class_NavigationMesh_property_agent_radius>` diferente y usa diferentes mapas de navegación para cada tamaño de actor.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

The path simplification amount in worlds units.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

Si es ``true``, se devolverá una versión simplificada del trayecto con menos puntos críticos de trayectos eliminados. La cantidad de simplificación se controla mediante :ref:`simplify_epsilon<class_NavigationAgent3D_property_simplify_epsilon>`. La simplificación utiliza una variante del algoritmo Ramer-Douglas-Peucker para la diezma de puntos de curva.

La simplificación de trayectos puede ser útil para mitigar varios problemas de seguimiento de trayectos que pueden surgir con ciertos tipos de agentes y comportamientos de script. Por ejemplo, agentes de "dirección" o evitación en "campos abiertos".

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_target_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_desired_distance** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_target_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_desired_distance**\ (\ )

El umbral de distancia antes de que se considere alcanzado el objetivo. Al alcanzar el objetivo, se emite :ref:`target_reached<class_NavigationAgent3D_signal_target_reached>` y la navegación termina (véase :ref:`is_navigation_finished()<class_NavigationAgent3D_method_is_navigation_finished>` y :ref:`navigation_finished<class_NavigationAgent3D_signal_navigation_finished>`).

Puedes hacer que la navegación termine antes estableciendo esta propiedad a un valor mayor que :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` (la navegación terminará antes de alcanzar el último punto de paso).

También puedes hacer que la navegación termine más cerca del objetivo que cada posición de trayecto individual estableciendo esta propiedad a un valor menor que :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` (la navegación no terminará inmediatamente al alcanzar el último punto de paso). Sin embargo, si el valor establecido es demasiado bajo, el agente se quedará atascado en un bucle de repath porque constantemente superará la distancia al objetivo en cada actualización del frame de física.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationAgent3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

Si se establece, se solicita un nuevo camino de navegación desde la posición actual del agente hasta la :ref:`target_position<class_NavigationAgent3D_property_target_position>` al NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_time_horizon_agents:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_agents** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_time_horizon_agents>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_agents**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_agents**\ (\ )

La cantidad mínima de tiempo durante la cual las velocidades de este agente, que se calculan con el algoritmo de evitación de colisiones, son seguras con respecto a otros agentes. Cuanto mayor sea el número, antes responderá el agente a otros agentes, pero tendrá menos libertad para elegir sus velocidades. Un valor demasiado alto ralentizará considerablemente el movimiento de los agentes. Debe ser positivo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_time_horizon_obstacles:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_obstacles** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_time_horizon_obstacles>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_obstacles**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_obstacles**\ (\ )

La cantidad mínima de tiempo durante la cual las velocidades de este agente, calculadas con el algoritmo de evitación de colisiones, son seguras con respecto a los obstáculos de evitación estáticos. Cuanto mayor sea el número, antes responderá el agente a los obstáculos de evitación estáticos, pero tendrá menos libertad para elegir sus velocidades. Un valor demasiado alto ralentizará considerablemente el movimiento de los agentes. Debe ser positivo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_use_3d_avoidance:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_3d_avoidance** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_use_3d_avoidance>`

.. rst-class:: classref-property-setget

- |void| **set_use_3d_avoidance**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_3d_avoidance**\ (\ )

Si es ``true``, el agente calcula las velocidades de evasión en 3D omnidireccionalmente, por ejemplo, para juegos que tienen lugar en el aire, bajo el agua o en el espacio. Los agentes que usan evasión en 3D solo evitan a otros agentes que usan evasión en 3D, y reaccionan a obstáculos de evasión basados en un radio. Ignoran cualquier obstáculo basado en vértices.

Si es ``false``, el agente calcula las velocidades de evasión en 2D a lo largo de los ejes X y Z, ignorando el eje Y. Los agentes que usan evasión en 2D solo evitan a otros agentes que usan evasión en 2D, y reaccionan a obstáculos de evasión basados en radio u obstáculos de evasión basados en vértices. Otros agentes que usan evasión en 2D que están por debajo o por encima de su posición actual, incluyendo :ref:`height<class_NavigationAgent3D_property_height>`, son ignorados.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationAgent3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

Establece la nueva velocidad deseada para el agente. La simulación de evitación intentará cumplir esta velocidad si es posible, pero la modificará para evitar colisiones con otros agentes y obstáculos. Cuando un agente es teletransportado a una nueva posición, usa también :ref:`set_velocity_forced()<class_NavigationAgent3D_method_set_velocity_forced>` para restablecer la velocidad de simulación interna.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_NavigationAgent3D_method_distance_to_target:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to_target**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_distance_to_target>`

Devuelve la distancia a la posición objetivo, utilizando la posición global del agente. El usuario debe configurar :ref:`target_position<class_NavigationAgent3D_property_target_position>` para que sea precisa.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_avoidance_layer_value>`

Returns whether or not the specified layer of the :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>` bitmask is enabled, given a ``layer_number`` between 1 and 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_avoidance_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_avoidance_mask_value>`

Returns whether or not the specified mask of the :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` bitmask is enabled, given a ``mask_number`` between 1 and 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_path:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_current_navigation_path**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_path>`

Returns this agent's current path from start to finish in global coordinates. The path only updates when the target position is changed or the agent requires a repath. The path array is not intended to be used in direct path movement as the agent has its own internal path logic that would get corrupted by changing the path array manually. Use the intended :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>` once every physics frame to receive the next path point for the agents movement as this function also updates the internal path logic.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_path_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_navigation_path_index**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_path_index>`

Devuelve el índice en el que se encuentra actualmente el agente en el :ref:`PackedVector3Array<class_PackedVector3Array>` del trayecto de navegación.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_result:

.. rst-class:: classref-method

:ref:`NavigationPathQueryResult3D<class_NavigationPathQueryResult3D>` **get_current_navigation_result**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_result>`

Devuelve el resultado de la consulta de la ruta que el agente está siguiendo actualmente.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_final_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_final_position**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_get_final_position>`

Devuelve la posición final alcanzable de la ruta de navegación actual en coordenadas globales. Esta posición puede cambiar si el agente necesita actualizar la ruta de navegación, lo que hace que el agente emita la señal :ref:`path_changed<class_NavigationAgent3D_signal_path_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_navigation_layer_value>`

Devuelve si la capa especificada de la máscara de bits :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>` está habilitada, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_navigation_map>`

Devuelve el :ref:`RID<class_RID>` del mapa de navegación para este nodo NavigationAgent. Esta función siempre devuelve el mapa establecido en el nodo NavigationAgent y no el mapa del agente abstracto en el NavigationServer. Si el mapa del agente se cambia directamente con la API de NavigationServer, el nodo NavigationAgent no estará al tanto del cambio de mapa. Utiliza :ref:`set_navigation_map()<class_NavigationAgent3D_method_set_navigation_map>` para cambiar el mapa de navegación para NavigationAgent y también actualizar el agente en el NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_next_path_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_next_path_position**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_get_next_path_position>`

Devuelve la siguiente posición en coordenadas globales a la que se puede mover, asegurándose de que no haya objetos estáticos en el camino. Si el agente no tiene una ruta de navegación, devolverá la posición del nodo padre del agente. El uso de esta función una vez cada frame de física es necesario para actualizar la lógica interna de la ruta del NavigationAgent.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_path_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_path_length**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_path_length>`

Devuelve la longitud de la ruta calculada actualmente. El valor devuelto es ``0.0`` si la ruta aún se está calculando o aún no se ha solicitado ningún cálculo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_rid>`

Devuelve el :ref:`RID<class_RID>` de este agente en el :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_navigation_finished:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_is_navigation_finished>`

Returns ``true`` if the agent's navigation has finished. If the target is reachable, navigation ends when the target is reached. If the target is unreachable, navigation ends when the last waypoint of the path is reached.

\ **Note:** While ``true`` prefer to stop calling update functions like :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>`. This avoids jittering the standing agent due to calling repeated path updates.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_target_reachable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reachable**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_is_target_reachable>`

Returns ``true`` if :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>` is within :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` of the :ref:`target_position<class_NavigationAgent3D_property_target_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_target_reached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reached**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_is_target_reached>`

Returns ``true`` if the agent reached the target, i.e. the agent moved within :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` of the :ref:`target_position<class_NavigationAgent3D_property_target_position>`. It may not always be possible to reach the target but it should always be possible to reach the final position. See :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_avoidance_layer_value>`

Based on ``value``, enables or disables the specified layer in the :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>` bitmask, given a ``layer_number`` between 1 and 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_avoidance_mask_value:

.. rst-class:: classref-method

|void| **set_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_avoidance_mask_value>`

Based on ``value``, enables or disables the specified mask in the :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` bitmask, given a ``mask_number`` between 1 and 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_navigation_layer_value>`

Based on ``value``, enables or disables the specified layer in the :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>` bitmask, given a ``layer_number`` between 1 and 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_navigation_map>`

Sets the :ref:`RID<class_RID>` of the navigation map this NavigationAgent node should use and also updates the ``agent`` on the NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_velocity_forced:

.. rst-class:: classref-method

|void| **set_velocity_forced**\ (\ velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_velocity_forced>`

Replaces the internal velocity in the collision avoidance simulation with ``velocity``. When an agent is teleported to a new position this function should be used in the same frame. If called frequently this function can get agents stuck.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
