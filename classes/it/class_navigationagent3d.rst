:github_url: hide

.. _class_NavigationAgent3D:

NavigationAgent3D
=================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un agente 3D utilizzato per individuare il percorso verso una posizione evitando gli ostacoli.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un agente 3D utilizzato per trovare il percorso verso una posizione evitando ostacoli statici e dinamici. Il calcolo può essere utilizzato dal nodo genitore per spostarlo dinamicamente lungo il percorso. Richiede dati di navigazione per funzionare correttamente.

Gli ostacoli dinamici vengono evitati attraverso l'evitamento delle collisioni RVO. L'evitamento viene calcolata prima della fisica, quindi le informazioni di ricerca del percorso possono essere utilizzate in modo sicuro nella passaggio di fisica.

\ **Nota:** Dopo aver impostato la proprietà :ref:`target_position<class_NavigationAgent3D_property_target_position>`, il metodo :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>` deve essere utilizzato una volta per ogni frame di fisica per aggiornare la logica interna del percorso dell'agente di navigazione. La posizione del vettore che restituisce deve essere utilizzata come posizione successiva del movimento per il nodo genitore dell'agente.

\ **Nota:** Diversi metodi di questa classe, come :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>`, possono attivare un nuovo calcolo del percorso. Chiamarli nel callback al segnale di un agente, come :ref:`waypoint_reached<class_NavigationAgent3D_signal_waypoint_reached>`, può causare una ricorsione infinita. Si consiglia di chiamare questi metodi nel processo di fisica o, in alternativa, ritardarne la chiamata fino alla fine del frame (vedi :ref:`Object.call_deferred()<class_Object_method_call_deferred>` o :ref:`Object.CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>`).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei NavigationAgent <../tutorials/navigation/navigation_using_navigationagents>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Segnali
--------------

.. _class_NavigationAgent3D_signal_link_reached:

.. rst-class:: classref-signal

**link_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_link_reached>`

Segnala che l'agente ha raggiunto un collegamento di navigazione. Emesso quando l'agente si sposta entro :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` dalla posizione successiva del percorso quando tale posizione è un collegamento di navigazione.

Il dizionario dei dettagli può contenere le seguenti chiavi a seconda del valore di :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>`:

- ``position``: la posizione iniziale del collegamento che è stato raggiunto.

- ``type``: sempre :ref:`NavigationPathQueryResult3D.PATH_SEGMENT_TYPE_LINK<class_NavigationPathQueryResult3D_constant_PATH_SEGMENT_TYPE_LINK>`.

- ``rid``: il :ref:`RID<class_RID>` del collegamento.

- ``owner``: l'oggetto che gestisce il collegamento (solitamente :ref:`NavigationLink3D<class_NavigationLink3D>`).

- ``link_entry_position``: se ``owner`` è disponibile e il proprietario è un :ref:`NavigationLink3D<class_NavigationLink3D>`, conterrà la posizione globale del punto del collegamento in cui l'agente sta entrando.

- ``link_exit_position``: se ``owner`` è disponibile e il proprietario è un :ref:`NavigationLink3D<class_NavigationLink3D>`, conterrà la posizione globale del punto del collegamento da cui l'agente sta uscendo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_navigation_finished:

.. rst-class:: classref-signal

**navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_navigation_finished>`

Segnala che la navigazione dell'agente è terminata. Se la destinazione è raggiungibile, la navigazione termina quando la destinazione viene raggiunta. Se la destinazione non è raggiungibile, la navigazione termina quando l'ultimo punto del percorso viene raggiunto. Questo segnale viene emesso una sola volta per percorso caricato.

Questo segnale verrà emesso subito dopo :ref:`target_reached<class_NavigationAgent3D_signal_target_reached>` quando la destinazione è raggiungibile.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_path_changed:

.. rst-class:: classref-signal

**path_changed**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_path_changed>`

Emesso quando l'agente ha dovuto aggiornare il percorso caricato:

- perché il percorso era precedentemente vuoto.

- perché la mappa di navigazione è cambiata.

- perché l'agente si è allontanato dal segmento attuale del percorso rispetto a :ref:`path_max_distance<class_NavigationAgent3D_property_path_max_distance>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_target_reached:

.. rst-class:: classref-signal

**target_reached**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_target_reached>`

Segnala che l'agente ha raggiunto la destinazione, ovvero che l'agente si è spostato entro :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` da :ref:`target_position<class_NavigationAgent3D_property_target_position>`. Questo segnale viene emesso una sola volta per percorso caricato.

Questo segnale verrà emesso appena prima di :ref:`navigation_finished<class_NavigationAgent3D_signal_navigation_finished>` quando la destinazione è raggiungibile.

Potrebbe non essere sempre possibile raggiungere la destinazione, ma dovrebbe essere sempre possibile raggiungere la posizione finale. Vedi :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_velocity_computed:

.. rst-class:: classref-signal

**velocity_computed**\ (\ safe_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_velocity_computed>`

Notifica quando viene calcolata la velocità di evitamento delle collisioni. Emesso a ogni aggiornamento fin quando :ref:`avoidance_enabled<class_NavigationAgent3D_property_avoidance_enabled>` è ``true`` e l'agente ha una mappa di navigazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_waypoint_reached:

.. rst-class:: classref-signal

**waypoint_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_waypoint_reached>`

Segnala che l'agente ha raggiunto un punto. Emesso quando l'agente si sposta entro :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` dalla posizione successiva del percorso.

Il dizionario dei dettagli potrebbe contenere le seguenti chiavi a seconda del valore di :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>`:

- ``position``: la posizione del punto che è stato raggiunto.

- ``type``: il tipo della primitiva di navigazione (regione o collegamento) che contiene questo punto.

- ``rid``: il :ref:`RID<class_RID>` della primitiva di navigazione (regione o collegamento) che lo contiene.

- ``owner``: l'oggetto che gestisce il primitivo di navigazione contenitore (regione o collegamento).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_NavigationAgent3D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

Se ``true`` l'agente è registrato per un callback di evitamento RVO su :ref:`NavigationServer3D<class_NavigationServer3D>`. Quando :ref:`velocity<class_NavigationAgent3D_property_velocity>` è utilizzato e l'elaborazione è completata, un Vector3 ``safe_velocity`` viene ricevuto con una connessione di segnale a :ref:`velocity_computed<class_NavigationAgent3D_signal_velocity_computed>`. L'elaborazione dell'evitamento con molti agenti registrati ha un impatto notevole sulle prestazioni e dovrebbe essere abilitata solo sugli agenti che la richiedono al momento.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

Un campo di bit che determina gli strati di evitamento per questo NavigationAgent. Altri agenti con un bit corrispondente sulla :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` eviteranno questo agente.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_mask** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_mask>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_mask**\ (\ )

Un campo di bit che determina quali altri agenti di evitamento e ostacoli questo NavigationAgent eviterà quando un bit corrisponde ad almeno uno dei suoi :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **avoidance_priority** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_priority>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_avoidance_priority**\ (\ )

L'agente non regola la velocità per altri agenti che corrisponderebbero a :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` ma hanno una :ref:`avoidance_priority<class_NavigationAgent3D_property_avoidance_priority>` inferiore. Ciò a sua volta causa gli altri agenti con priorità inferiore a regolare ulteriormente le loro velocità per evitare collisioni con questo agente.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_enabled** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_debug_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_debug_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_enabled**\ (\ )

Se ``true`` mostra visuali di debug per questo agente.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_path_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_path_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_NavigationAgent3D_property_debug_path_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_path_custom_color**\ (\ )

Se :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>` è ``true`` utilizza questo colore per questo agente invece del colore globale.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_path_custom_point_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **debug_path_custom_point_size** = ``4.0`` :ref:`🔗<class_NavigationAgent3D_property_debug_path_custom_point_size>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_point_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_debug_path_custom_point_size**\ (\ )

Se :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>` è ``true``, è utilizzata questa dimensione di punto rasterizzato per renderizzare i punti del percorso per questo agente anziché la dimensione di punto globale.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_use_custom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_use_custom** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_debug_use_custom>`

.. rst-class:: classref-property-setget

- |void| **set_debug_use_custom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_use_custom**\ (\ )

Se ``true`` utilizza il colore :ref:`debug_path_custom_color<class_NavigationAgent3D_property_debug_path_custom_color>` definito per questo agente invece del colore globale.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

L'altezza dell'agente di evitamento. Gli agenti ignoreranno altri agenti o ostacoli che si trovano sopra o sotto la loro posizione attuale, più altezza nell'evitamento 2D. Non fa nulla nell'evitamento 3D, il quale utilizza solo sfere di raggio.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_keep_y_velocity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_y_velocity** = ``true`` :ref:`🔗<class_NavigationAgent3D_property_keep_y_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_keep_y_velocity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_keep_y_velocity**\ (\ )

Se ``true`` e l'agente usa l'evitamento 2D, ricorderà la velocità impostata sull'asse y e la riapplicherà dopo il passaggio di evitamento. Sebbene l'evitamento 2D non ha un asse y e viene simulata su un piano piatto, questa impostazione può aiutare ad attenuare il clipping più notevole su una geometria 3D irregolare.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_max_neighbors:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_neighbors** = ``10`` :ref:`🔗<class_NavigationAgent3D_property_max_neighbors>`

.. rst-class:: classref-property-setget

- |void| **set_max_neighbors**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_neighbors**\ (\ )

Il numero massimo di vicini che l'agente può prendere in considerazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_max_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_speed** = ``10.0`` :ref:`🔗<class_NavigationAgent3D_property_max_speed>`

.. rst-class:: classref-property-setget

- |void| **set_max_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_speed**\ (\ )

La velocità massima alla quale un agente può muoversi.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

Un campo di bit che determina quali strati di navigazione delle regioni di navigazione questo agente utilizzerà per calcolare un percorso. Modificandolo in fase d'esecuzione, il percorso di navigazione attuale sarà cancellato e uno nuovo ne verrà generato, in base ai nuovi strati di navigazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_neighbor_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **neighbor_distance** = ``50.0`` :ref:`🔗<class_NavigationAgent3D_property_neighbor_distance>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_neighbor_distance**\ (\ )

La distanza per cercare altri agenti.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_desired_distance** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_path_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_desired_distance**\ (\ )

La soglia di distanza prima che un punto del percorso sia considerato raggiunto. Ciò permette agli agenti di non dover raggiungere esattamente un punto sul percorso, ma solo di raggiungere la sua area generale. Se questo valore è impostato troppo alto, il NavigationAgent ignorerà i punti sul percorso, il che può portarlo ad abbandonare la mesh di navigazione. Se questo valore è impostato troppo basso, il NavigationAgent rimarrà bloccato in un ciclo di cambio del percorso perché supererà costantemente la distanza dal punto successivo a ogni aggiornamento nel frame di fisica.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_height_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_height_offset** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_height_offset>`

.. rst-class:: classref-property-setget

- |void| **set_path_height_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_height_offset**\ (\ )

Lo scostamento dell'altezza è sottratto dal valore dell'asse y di qualsiasi posizione vettoriale del percorso per questo NavigationAgent. Lo scostamento dell'altezza di NavigationAgent non modifica o influenza la mesh di navigazione o il risultato della ricerca del percorso. Sono necessarie ulteriori mappe di navigazione che utilizzano regioni con mesh di navigazione che lo sviluppatore ha elaborato con valori appropriati di raggio o altezza dell'agente per supportare agenti di dimensioni diverse.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_max_distance** = ``5.0`` :ref:`🔗<class_NavigationAgent3D_property_path_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_max_distance**\ (\ )

La distanza massima consentita all'agente dal percorso ideale alla posizione finale. Ciò può accadere tentando di evitare le collisioni. Quando la distanza massima viene superata, l'agente ricalcola il percorso ideale.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **path_metadata_flags** = ``7`` :ref:`🔗<class_NavigationAgent3D_property_path_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_path_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **get_path_metadata_flags**\ (\ )

Informazioni aggiuntive da restituire con il percorso di navigazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationAgent3D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

Post-elaborazione del percorso applicata al corridoio del percorso grezzo trovato dall':ref:`pathfinding_algorithm<class_NavigationAgent3D_property_pathfinding_algorithm>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

La lunghezza massima consentita del percorso restituito in unità mondiali. Un percorso verrà troncato quando supera questa lunghezza.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

Il raggio massimo consentito in unità mondiali che il percorso restituito può avere dall'inizio del percorso. Il percorso verrà troncato quando supera questo raggio. Rispetto a :ref:`path_return_max_length<class_NavigationAgent3D_property_path_return_max_length>`, questo consente all'agente di andare molto più lontano, se ha bisogno di aggirare un angolo.

\ **Nota:** Questo eseguirà un ritaglio sferico, considerando solo i punti effettivi del percorso della mesh di navigazione, con la prima posizione del percorso che corrisponde al centro della sfera.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

La distanza massima che un poligono cercato può avere dal poligono di partenza, prima che il pathfinding annulli la ricerca di un percorso verso il poligono di destinazione (potenzialmente irraggiungibile o molto lontano). In questo caso, il pathfinding si azzera e crea un percorso dal poligono di partenza al poligono trovato più vicino alla posizione di destinazione fino a quel momento. Un valore pari o inferiore a ``0`` è considerato illimitato. In caso di valore illimitato, il pathfinding cercherà in tutti i poligoni collegati al poligono di partenza finché non verrà trovato il poligono di destinazione o finché non saranno esaurite tutte le opzioni di ricerca disponibili.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationAgent3D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

Il numero massimo di poligoni ricercati, prima che il pathfinding annulli la ricerca di un percorso verso il poligono di destinazione (potenzialmente irraggiungibile o molto lontano). In questo caso, il pathfinding si azzera e crea un percorso dal poligono di partenza al poligono trovato più vicino alla posizione di destinazione fino a quel momento. Un valore pari o inferiore a ``0`` è considerato illimitato. In caso di valore illimitato, il pathfinding cercherà in tutti i poligoni collegati al poligono di partenza finché non verrà trovato il poligono di destinazione o finché non saranno esaurite tutte le opzioni di ricerca poligonale disponibili.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationAgent3D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

Algoritmo di ricerca del percorso utilizzato nella ricerca del percorso.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_NavigationAgent3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio dell'agente di evitamento. Questo è il "corpo" dell'agente di evitamento e non il raggio di partenza della manovra di evitamento (che è controllato da :ref:`neighbor_distance<class_NavigationAgent3D_property_neighbor_distance>`).

Non influisce sulla ricerca normale del percorso. Per modificare il raggio di ricerca del percorso di un attore, prepara le risorse :ref:`NavigationMesh<class_NavigationMesh>` con una proprietà :ref:`NavigationMesh.agent_radius<class_NavigationMesh_property_agent_radius>` diversa e utilizza mappe di navigazione diverse per ogni dimensione dell'attore.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

La quantità di semplificazione del percorso in unità mondiali.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

Se ``true`` una versione semplificata del percorso sarà restituita, con i punti meno critici rimossi. La quantità di semplificazione è controllata da :ref:`simplify_epsilon<class_NavigationAgent3D_property_simplify_epsilon>`. La semplificazione utilizza una variazione dell'algoritmo Ramer-Douglas-Peucker per decimare i punti della curva.

La semplificazione del percorso può aiutare a mitigare vari problemi di seguimento del percorso che possono sorgere con certi tipi di agenti e comportamenti di script. Ad esempio, agenti che "sterzano" o evitamento in "campi aperti".

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_target_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_desired_distance** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_target_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_desired_distance**\ (\ )

La soglia di distanza prima che la destinazione sia considerata raggiunta. Al raggiungimento della destinazione, :ref:`target_reached<class_NavigationAgent3D_signal_target_reached>` viene emesso e la navigazione termina (vedi :ref:`is_navigation_finished()<class_NavigationAgent3D_method_is_navigation_finished>` e :ref:`navigation_finished<class_NavigationAgent3D_signal_navigation_finished>`).

È possibile terminare la navigazione in anticipo impostando questa proprietà su un valore maggiore di :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` (la navigazione terminerà prima di raggiungere l'ultimo punto).

È inoltre possibile terminare la navigazione più vicino alla destinazione rispetto a ogni singola posizione nel percorso impostando questa proprietà su un valore inferiore a :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` (la navigazione non terminerà subito dopo aver raggiunto l'ultimo punto). Tuttavia, se il valore impostato è troppo basso, l'agente rimarrà bloccato in un ciclo di cambio del percorso perché supererà costantemente la distanza dalla destinazione a ogni aggiornamento nel frame di fisica.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationAgent3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

Se impostato, viene richiesto un nuovo percorso di navigazione dalla posizione attuale dell'agente a :ref:`target_position<class_NavigationAgent3D_property_target_position>` dal NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_time_horizon_agents:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_agents** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_time_horizon_agents>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_agents**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_agents**\ (\ )

La quantità minima di tempo per cui le velocità di questo agente, calcolate con l'algoritmo di evitamento delle collisioni, sono sicure rispetto ad altri agenti. Maggiore è il numero, più presto l'agente risponderà ad altri agenti, ma minore sarà la libertà nella scelta delle sue velocità. Un valore troppo alto rallenterà notevolmente il movimento degli agenti. Deve essere positivo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_time_horizon_obstacles:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_obstacles** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_time_horizon_obstacles>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_obstacles**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_obstacles**\ (\ )

La quantità minima di tempo per cui le velocità di questo agente, calcolate con l'algoritmo di evitamento delle collisioni, sono sicure rispetto agli ostacoli di evitamento statici. Maggiore è il numero, più presto l'agente risponderà agli ostacoli di evitamento statici, ma minore sarà la libertà nella scelta delle sue velocità. Un valore troppo alto rallenterà notevolmente il movimento degli agenti. Deve essere positivo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_use_3d_avoidance:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_3d_avoidance** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_use_3d_avoidance>`

.. rst-class:: classref-property-setget

- |void| **set_use_3d_avoidance**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_3d_avoidance**\ (\ )

Se ``true``, l'agente calcola le velocità di evitamento in 3D in modo omnidirezionale, ad esempio per i giochi che si svolgono in aria, sott'acqua o nello spazio. Gli agenti che utilizzano l'evitamento 3D evitano solo gli altri agenti che utilizzano l'evitamento 3D e reagiscono agli ostacoli di evitamento basati sul raggio. Ignorano tutti gli ostacoli basati sui vertici.

Se ``false``, l'agente calcola le velocità di evitamento in 2D lungo gli assi x e z, ignorando l'asse y. Gli agenti che utilizzano l'evitamento 2D evitano solo gli altri agenti che utilizzano l'evitamento 2D e reagiscono agli ostacoli di evitamento basati sul raggio o agli ostacoli di evitamento basati sui vertici. Gli altri agenti che utilizzano l'evitamento 2D che si trovano al di sotto o al di sopra della loro posizione attuale, inclusa :ref:`height<class_NavigationAgent3D_property_height>`, sono ignorati.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationAgent3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

Imposta la nuova velocità desiderata per l'agente. La simulazione dell'evitamento cercherà di soddisfare questa velocità se possibile, ma la modificherà per evitare collisioni con altri agenti e ostacoli. Quando un agente viene teletrasportato in una nuova posizione, usa anche :ref:`set_velocity_forced()<class_NavigationAgent3D_method_set_velocity_forced>` per reimpostare la velocità interna di simulazione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_NavigationAgent3D_method_distance_to_target:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to_target**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_distance_to_target>`

Restituisce la distanza dalla posizione di destinazione, utilizzando la posizione globale dell'agente. È necessario impostare :ref:`target_position<class_NavigationAgent3D_property_target_position>` affinché questo valore sia accurato.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_avoidance_layer_value>`

Restituisce se lo strato specificato di :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>` è abilitato, fornito un ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_avoidance_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_avoidance_mask_value>`

Restituisce se la maschera specificata di :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` è abilitata, fornito un ``mask_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_path:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_current_navigation_path**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_path>`

Restituisce il percorso attuale di questo agente dall'inizio alla fine in coordinate globali. Il percorso si aggiorna solo quando la posizione di destinazione viene modificata o l'agente richiede di cambiare il percorso. L'array del percorso non si dovrebbe utilizzare nel movimento diretto del percorso, in quanto l'agente ha la sua logica interna del percorso che verrebbe danneggiata se si modifica manualmente l'array del percorso. Utilizza il metodo previsto :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>` una volta per ogni frame di fisica per ricevere il punto successivo del percorso per il movimento dell'agente poiché tale funzione aggiorna anche la logica interna del percorso.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_path_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_navigation_path_index**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_path_index>`

Restituisce l'indice sul quale l'agente è attualmente in corso nel :ref:`PackedVector3Array<class_PackedVector3Array>` del percorso di navigazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_result:

.. rst-class:: classref-method

:ref:`NavigationPathQueryResult3D<class_NavigationPathQueryResult3D>` **get_current_navigation_result**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_result>`

Restituisce il risultato della richiesta sul percorso per il percorso che l'agente sta attualmente seguendo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_final_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_final_position**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_get_final_position>`

Restituisce la posizione finale raggiungibile del percorso di navigazione attuale in coordinate globali. Questa posizione può cambiare se l'agente deve aggiornare il percorso di navigazione, il che provoca l'agente a emettere il segnale :ref:`path_changed<class_NavigationAgent3D_signal_path_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_navigation_layer_value>`

Restituisce se lo strato specificato della maschera di bit :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>` è abilitato o meno, fornito un ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_navigation_map>`

Restituisce il :ref:`RID<class_RID>` della mappa di navigazione per questo nodo NavigationAgent. Questa funzione restituisce sempre la mappa impostata sul nodo NavigationAgent e non la mappa dell'agente astratto sul NavigationServer. Se la mappa dell'agente viene modificata direttamente con l'API del NavigationServer, il nodo NavigationAgent non sarà a conoscenza della modifica della mappa. Utilizza :ref:`set_navigation_map()<class_NavigationAgent3D_method_set_navigation_map>` per modificare la mappa di navigazione per NavigationAgent e aggiornare anche l'agente sul NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_next_path_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_next_path_position**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_get_next_path_position>`

Restituisce la posizione successiva in coordinate globali in cui è possibile muoversi, assicurandosi che non vi siano oggetti statici nella via. Se l'agente non ha un percorso di navigazione, restituirà la posizione del genitore dell'agente. È necessario usare questa funzione una volta ogni frame di fisica per aggiornare la logica interna del percorso del NavigationAgent.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_path_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_path_length**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_path_length>`

Restituisce la lunghezza del percorso attualmente calcolato. Il valore restituito è ``0.0``, se il percorso è ancora in fase di calcolo o nessun calcolo è stato ancora richiesto.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_rid>`

Restituisce il :ref:`RID<class_RID>` di questo agente sul :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_navigation_finished:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_is_navigation_finished>`

Restituisce ``true`` se la navigazione dell'agente è terminata. Se la destinazione è raggiungibile, la navigazione termina quando la destinazione viene raggiunta. Se la destinazione non è raggiungibile, la navigazione termina quando viene raggiunto l'ultimo punto del percorso.

\ **Nota:** Quando è ``true`` è ideale interrompere la chiamata di funzioni di aggiornamento come :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>`. Ciò evita di far tremare l'agente a causa di chiamate ripetute per aggiornare il percorso.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_target_reachable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reachable**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_is_target_reachable>`

Restituisce ``true`` se il risultato di :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>` è all'interno di :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` di :ref:`target_position<class_NavigationAgent3D_property_target_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_target_reached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reached**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_is_target_reached>`

Restituisce ``true`` se l'agente ha raggiunto la sua destinazione, ovvero l'agente si è spostato all'interno di :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` del :ref:`target_position<class_NavigationAgent3D_property_target_position>`. Potrebbe non essere sempre possibile raggiungere la destinazione, ma dovrebbe essere sempre possibile raggiungere la posizione finale. Vedi :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_avoidance_layer_value>`

In base a ``value``, attiva o disattiva lo strato specificato in :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>`, fornito un ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_avoidance_mask_value:

.. rst-class:: classref-method

|void| **set_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_avoidance_mask_value>`

In base a ``value``, attiva o disattiva la maschera specificata in :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>`, fornito un ``mask_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_navigation_layer_value>`

In base al ``value``, abilita o disabilita lo strato specificato nella maschera di bit :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_navigation_map>`

Imposta il :ref:`RID<class_RID>` della mappa di navigazione che questo nodo NavigationAgent dovrebbe utilizzare e aggiorna anche l'``agent`` sul NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_velocity_forced:

.. rst-class:: classref-method

|void| **set_velocity_forced**\ (\ velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_velocity_forced>`

Sostituisce la velocità interna nella simulazione di evitamento delle collisioni con ``velocity``. Quando un agente viene teletrasportato in una nuova posizione, questa funzione si dovrebbe usare nello stesso frame. Se chiamata spesso, questa funzione può bloccare gli agenti.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
