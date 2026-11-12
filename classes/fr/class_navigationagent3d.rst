:github_url: hide

.. _class_NavigationAgent3D:

NavigationAgent3D
=================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un agent 3D utiliser pour trouver un chemin vers une position en évitant des obstacles.

.. rst-class:: classref-introduction-group

Description
-----------

A 3D agent used to pathfind to a position while avoiding static and dynamic obstacles. The calculation can be used by the parent node to dynamically move it along the path. Requires navigation data to work correctly.

Dynamic obstacles are avoided using RVO collision avoidance. Avoidance is computed before physics, so the pathfinding information can be used safely in the physics step.

\ **Note:** After setting the :ref:`target_position<class_NavigationAgent3D_property_target_position>` property, the :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>` method must be used once every physics frame to update the internal path logic of the navigation agent. The vector position it returns should be used as the next movement position for the agent's parent node.

\ **Note:** Several methods of this class, such as :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>`, can trigger a new path calculation. Calling these in your callback to an agent's signal, such as :ref:`waypoint_reached<class_NavigationAgent3D_signal_waypoint_reached>`, can cause infinite recursion. It is recommended to call these methods in the physics step or, alternatively, delay their call until the end of the frame (see :ref:`Object.call_deferred()<class_Object_method_call_deferred>` or :ref:`Object.CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>`).

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation des NavigationAgents <../tutorials/navigation/navigation_using_navigationagents>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Méthodes
----------------

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

Signaux
--------------

.. _class_NavigationAgent3D_signal_link_reached:

.. rst-class:: classref-signal

**link_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_link_reached>`

Signale que l'agent a atteint un lien de navigation. Émis lorsque l'agent se déplace à une distance inférieure à :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` de la position suivante du chemin lorsque cette position est un lien de navigation.

Le dictionnaire de détails peut contenir les clés suivantes selon la valeur de :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>`\  :

- ``position``\  : La position de départ du lien qui a été atteint.

- ``type``\  : Toujours :ref:`NavigationPathQueryResult3D.PATH_SEGMENT_TYPE_LINK<class_NavigationPathQueryResult3D_constant_PATH_SEGMENT_TYPE_LINK>`.

- ``rid``\  : Le :ref:`RID<class_RID>` du lien.

- ``owner``\  : L'objet qui gère le lien (généralement :ref:`NavigationLink3D<class_NavigationLink3D>`).

- ``link_entry_position``\  : Si ``owner`` est disponible et que le propriétaire est un :ref:`NavigationLink3D<class_NavigationLink3D>`, il contiendra la position globale du point de lien où l'agent entre.

- ``link_exit_position``\  : Si ``owner`` est disponible et que le propriétaire est un :ref:`NavigationLink3D<class_NavigationLink3D>`, il contiendra la position globale du point de lien que l'agent quitte.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_navigation_finished:

.. rst-class:: classref-signal

**navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_navigation_finished>`

Signale que la navigation de l'agent est finie. Si la cible est atteinte, la navigation se termine lorsque la cible est atteinte. Si la cible est inatteignable, la navigation se termine lorsque le dernier point du chemin est atteint. Ce signal n'est émis qu'une fois par chemin chargé.

Ce signal sera émis juste après :ref:`target_reached<class_NavigationAgent3D_signal_target_reached>` lorsque la cible est atteignable.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_path_changed:

.. rst-class:: classref-signal

**path_changed**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_path_changed>`

Émis lorsque l'agent a dû mettre à jour le chemin chargé :

- parce que le chemin était précédemment vide.

- parce que la carte de navigation a changé.

- parce que l'agent s'est éloigné du segment de chemin actuel de plus que :ref:`path_max_distance<class_NavigationAgent3D_property_path_max_distance>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_target_reached:

.. rst-class:: classref-signal

**target_reached**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_target_reached>`

Signale que l'agent a atteint la cible, c'est-à-dire que l'agent s'est déplacé à une distance inférieure à :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` de la position cible :ref:`target_position<class_NavigationAgent3D_property_target_position>`. Ce signal n'est émis qu'une fois par chemin chargé.

Ce signal sera émis juste avant :ref:`navigation_finished<class_NavigationAgent3D_signal_navigation_finished>` lorsque la cible est atteignable.

Il peut ne pas toujours être possible d'atteindre la cible mais il devrait toujours être possible d'atteindre la position finale. Voir :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_velocity_computed:

.. rst-class:: classref-signal

**velocity_computed**\ (\ safe_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_velocity_computed>`

Notifie quand la vitesse d'évitement de collision est calculée. Émise à chaque mise à jour tant que :ref:`avoidance_enabled<class_NavigationAgent3D_property_avoidance_enabled>` vuat ``true`` et que l'agent a une carte de navigation.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_waypoint_reached:

.. rst-class:: classref-signal

**waypoint_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_waypoint_reached>`

Signale que l'agent a atteint un point du chemin. Émis lorsque l'agent se déplace à une distance inférieure à\ :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` de la position suivante du chemin.

Le dictionnaire de détails peut contenir les clés suivantes selon la valeur de :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>`\  :

- ``position``\  : La position du point du chemin qui a été atteint.

- ``type``\  : Le type de primitive de navigation (région ou lien) qui contient ce point du chemin.

- ``rid``\  : Le :ref:`RID<class_RID>` de la primitive de navigation qui contient le point (région ou lien).

- ``owner``\  : L'objet qui gère le la primitive de navigation qui contient le point (région ou lien).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_NavigationAgent3D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

Si ``true`` l'agent est enregistré pour un rappel d'évitement RVO sur le :ref:`NavigationServer3D<class_NavigationServer3D>`. Lorsque :ref:`velocity<class_NavigationAgent3D_property_velocity>` est utilisé et que le traitement est terminé, un Vector3 ``safe_velocity`` est reçu avec une connexion du signal :ref:`velocity_computed<class_NavigationAgent3D_signal_velocity_computed>`. Le traitement de l'évitement avec de nombreux agents enregistrés a un coût de performance important et ne devrait être activé que pour les agents qui en ont actuellement besoin.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

Un champ de bits déterminant les couches d'évitement pour ce NavigationAgent. D'autres agents avec un bit correspondant sur leur :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` éviteront cet agent.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_mask** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_mask>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_mask**\ (\ )

Un champ de bits déterminant quels autres agents et obstacles d'évitement ce NavigationAgent évitera lorsqu'un bit correspond à au moins un de leurs :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **avoidance_priority** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_priority>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_avoidance_priority**\ (\ )

L'agent n'ajuste pas la vitesse pour d'autres agents qui correspondraient au :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>`, mais ayant un :ref:`avoidance_priority<class_NavigationAgent3D_property_avoidance_priority>` inférieur. Cela fait que les autres agents de plus basse priorité ajusteront leurs vitesses encore plus pour éviter la collision avec cet agent.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_enabled** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_debug_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_debug_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_enabled**\ (\ )

Si ``true``, affiche des visuels de débogage pour cet agent.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_path_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_path_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_NavigationAgent3D_property_debug_path_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_path_custom_color**\ (\ )

Si :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>` vaut ``true``, utilise cette couleur pour cet agent au lieu de la couleur globale.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_path_custom_point_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **debug_path_custom_point_size** = ``4.0`` :ref:`🔗<class_NavigationAgent3D_property_debug_path_custom_point_size>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_point_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_debug_path_custom_point_size**\ (\ )

Si :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>` vaut ``true``, utilise cette taille de point rasterisée pour rendre les points du chemin pour cet agent au lieu de la taille de point globale.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_use_custom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_use_custom** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_debug_use_custom>`

.. rst-class:: classref-property-setget

- |void| **set_debug_use_custom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_use_custom**\ (\ )

Si ``true``, utilise la couleur :ref:`debug_path_custom_color<class_NavigationAgent3D_property_debug_path_custom_color>` définie pour cet agent au lieu de la couleur globale.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

La hauteur de l'agent d'évitement. Les agents ignoreront les autres agents ou obstacles qui sont au dessus ou en dessous de leur position actuelle + hauteur dans l'évitement 2D. Ne fait rien dans l'évitement 3D qui utilise seulement des rayons de sphère.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_keep_y_velocity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_y_velocity** = ``true`` :ref:`🔗<class_NavigationAgent3D_property_keep_y_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_keep_y_velocity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_keep_y_velocity**\ (\ )

If ``true``, and the agent uses 2D avoidance, it will remember the set y-axis velocity and reapply it after the avoidance step. While 2D avoidance has no y-axis and simulates on a flat plane this setting can help to soften the most obvious clipping on uneven 3D geometry.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_max_neighbors:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_neighbors** = ``10`` :ref:`🔗<class_NavigationAgent3D_property_max_neighbors>`

.. rst-class:: classref-property-setget

- |void| **set_max_neighbors**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_neighbors**\ (\ )

Le nombre maximum de voisins à considérer par l'agent.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_max_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_speed** = ``10.0`` :ref:`🔗<class_NavigationAgent3D_property_max_speed>`

.. rst-class:: classref-property-setget

- |void| **set_max_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_speed**\ (\ )

La vitesse maximale à laquelle un agent peut se déplacer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

Un masque de bits déterminant quelles couches de navigation des régions de navigation cet agent utilisera pour calculer un chemin. Le modifier durant l'exécution permettra de vider le chemin de navigation actuel et d'en générer un nouveau, correspondant aux nouvelles couches de navigation.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_neighbor_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **neighbor_distance** = ``50.0`` :ref:`🔗<class_NavigationAgent3D_property_neighbor_distance>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_neighbor_distance**\ (\ )

La distance pour chercher d'autres agents.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_desired_distance** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_path_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_desired_distance**\ (\ )

Le seuil de distance avant qu'un point du chemin soit considéré comme atteint. Cela permettra à un agent de ne pas avoir à atteindre un point du chemin exactement sur le chemin, mais uniquement un zone autour. Si cette valeur est trop élevée, le NavigationAgent sautera des points sur le chemin ce qui peut conduire à quitter le maillage de navigation. Si cette valeur est trop faible, le NavigationAgent sera coincé dans une boucle parce qu'il va constamment dépasser la distance jusqu'au point suivant à chaque mise à jour de trame de physique.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_height_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_height_offset** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_height_offset>`

.. rst-class:: classref-property-setget

- |void| **set_path_height_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_height_offset**\ (\ )

Le décalage de hauteur est soustrait de la valeur de l'axe y de toute position vectorielle de chemin pour ce NavigationAgent. Le décalage de hauteur du NavigationAgent ne change pas ou n'influence pas le maillage de navigation ou le résultat de la requête de recherche de chemin. Des cartes de navigation supplémentaires qui utilisent des régions avec des maillages de navigation que le développeur a pré-calculé avec un rayon d'agent ou des valeurs de hauteur appropriés sont nécessaires pour supporter des agents de tailles différentes.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_max_distance** = ``5.0`` :ref:`🔗<class_NavigationAgent3D_property_path_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_max_distance**\ (\ )

La distance maximale du chemin idéal vers la position finale dont l'agent est autorisé de s'éloigner. Cela peut arriver en essayant d'éviter des collisions. Lorsque la distance maximale est dépassée, il recalcule le chemin idéal.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **path_metadata_flags** = ``7`` :ref:`🔗<class_NavigationAgent3D_property_path_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_path_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **get_path_metadata_flags**\ (\ )

Informations supplémentaires à renvoyer avec le chemin de navigation.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationAgent3D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

Le post-traitement du chemin appliqué au couloir de chemin brut trouvé par :ref:`pathfinding_algorithm<class_NavigationAgent3D_property_pathfinding_algorithm>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

La longueur maximale autorisée du chemin renvoyé en unités globales. Un chemin sera coupé s'il dépasse cette longueur.

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

L'algorithme de recherche de chemin utilisé dans la recherche de chemin.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_NavigationAgent3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Le rayon de l'agent d'évitement. C'est le "corps" de l'agent d'évitement et non le rayon de départ de la manœuvre d'évitement (qui est contrôlée par :ref:`neighbor_distance<class_NavigationAgent3D_property_neighbor_distance>`).

N'affecte pas la recherche de chemin normale. Pour changer le rayon de recherche de chemin d'un acteur, pré-calculez :ref:`NavigationMesh<class_NavigationMesh>` avec une propriété :ref:`NavigationMesh.agent_radius<class_NavigationMesh_property_agent_radius>` différente et utilisez différentes cartes de navigation pour chaque taille d'acteur.

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

If ``true`` a simplified version of the path will be returned with less critical path points removed. The simplification amount is controlled by :ref:`simplify_epsilon<class_NavigationAgent3D_property_simplify_epsilon>`. The simplification uses a variant of Ramer-Douglas-Peucker algorithm for curve point decimation.

Path simplification can be helpful to mitigate various path following issues that can arise with certain agent types and script behaviors. E.g. "steering" agents or avoidance in "open fields".

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_target_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_desired_distance** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_target_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_desired_distance**\ (\ )

Le seuil de distance avant que la cible soit considérée comme atteinte. En atteignant la cible, :ref:`target_reached<class_NavigationAgent3D_signal_target_reached>` est émis et la navigation se finit (voir :ref:`is_navigation_finished()<class_NavigationAgent3D_method_is_navigation_finished>` et :ref:`navigation_finished<class_NavigationAgent3D_signal_navigation_finished>`).

Vous pouvez faire que la navigation se termine tôt en définissant cette propriété à une valeur supérieure à :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` (la navigation se terminera avant d'atteindre le dernier point du chemin).

Vous pouvez également faire que la navigation se termine plus proche de la cible que n'importe quelle position de chemin individuelle en définissant cette propriété à une valeur inférieure à :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` (la navigation ne se terminera pas immédiatement en atteignant le dernier point du chemin). Cependant, si la valeur définie est trop basse, l'agent sera coincé dans une boucle parce qu'il va constamment dépasser la distance jusqu'à la cible à chaque mise à jour de trame de physique.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationAgent3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

Si elle est définie, un nouveau chemin de navigation de la position actuelle de l'agent vers la position cible :ref:`target_position<class_NavigationAgent3D_property_target_position>` est demandé au NavigationServer.

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

Si ``true``, l'agent calcule les vitesses d'évitement en 3D omni-directionnellement, par exemple pour les jeux qui se déroulent dans l'air, sous l'eau ou dans l'espace. Les agents utilisant l'évitement 3D n'évitent que les autres agents utilisant l'évitement 3D, et réagissent aux obstacles d'évitement basés sur le rayon. Ils ignorent tous les obstacles à base de sommets.

Si ``false``, l'agent calcule les vitesses d'évitement en 2D le long des axes x et z, en ignorant l'axe y. Les agents utilisant l'évitement 2D n'évitent que d'autres agents utilisant l'évitement 2D, et réagissent aux obstacles d'évitement basés sur le rayon ou aux obstacles d'évitement à base de sommets. Les autres agents utilisant l'évitement 2D qui sont inférieurs ou supérieurs à leur position actuelle, y compris :ref:`height<class_NavigationAgent3D_property_height>`, sont ignorés.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationAgent3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

Définit la nouvelle vitesse désirée pour l'agent. La simulation d'évitement tentera d'atteindre cette vitesse si possible, mais la modifiera pour éviter toute collision avec d'autres agents et obstacles. Lorsqu'un agent est téléporté à une nouvelle position, utilisez aussi :ref:`set_velocity_forced()<class_NavigationAgent3D_method_set_velocity_forced>` pour réinitialiser la vitesse de simulation interne.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_NavigationAgent3D_method_distance_to_target:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to_target**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_distance_to_target>`

Renvoie la distance jusqu'à l'emplacement cible, en utilisant la position globale de l'agent. L'utilisateur doit définir la position cible avec :ref:`target_position<class_NavigationAgent3D_property_target_position>` afin que ceci soit précis.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_avoidance_layer_value>`

Renvoie si la couche spécifiée du masque de bits :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>` est activée, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_avoidance_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_avoidance_mask_value>`

Renvoie si le masque spécifié du masque de bits :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>` est activée, selon un numéro de masque ``mask_number`` donné entre 1 et 32.

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

Renvoie l'index sur lequel l'agent est actuellement dans le :ref:`PackedVector3Array<class_PackedVector3Array>` du chemin de navigation.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_result:

.. rst-class:: classref-method

:ref:`NavigationPathQueryResult3D<class_NavigationPathQueryResult3D>` **get_current_navigation_result**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_result>`

Renvoie le résultat de recherche de chemin pour le chemin que l'agent suit actuellement.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_final_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_final_position**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_get_final_position>`

Renvoie la position finale accessible du chemin de navigation actuel dans les coordonnées globales. Cette position peut changer si l'agent doit mettre à jour le chemin de navigation, ce qui fait que l'agent émet le signal :ref:`path_changed<class_NavigationAgent3D_signal_path_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_navigation_layer_value>`

Renvoie si la couche spécifiée du masque de bits :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>` est activée, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_navigation_map>`

Renvoie le :ref:`RID<class_RID>` de la carte de navigation pour ce nœud NavigationAgent. Cette fonction renvoie toujours la carte définie sur le nœud NavigationAgent et non la carte de l'agent abstrait sur le serveur Navigation. Si la carte de l'agent est changée directement avec l'API de NavigationServer, le nœud NavigationAgent ne sera pas au courant du changement de carte. Utilisez :ref:`set_navigation_map()<class_NavigationAgent3D_method_set_navigation_map>` pour changer la carte de navigation pour le NavigationAgent et mettre à jour l'agent sur le NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_next_path_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_next_path_position**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_get_next_path_position>`

Renvoie la position suivante dans les coordonnées globales à laquelle il est possible de se rendre, en s'assurant qu'il n'y a pas d'objets statiques sur le chemin. Si l'agent n'a pas de chemin de navigation, il renverra la position du parent de l'agent. L'utilisation de cette fonction une fois à chaque trame de physique est nécessaire pour mettre à jour la logique interne de chemin du NavigationAgent.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_path_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_path_length**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_path_length>`

Renvoie la longueur du chemin actuellement calculé. La valeur renvoyée vaut ``0.0``, si le chemin est encore en calcul ou si aucun calcul n'a pour l'instant été demandé.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_rid>`

Renvoie le :ref:`RID<class_RID>` de cet agent sur le :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_navigation_finished:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_is_navigation_finished>`

Renvoie ``true`` si la navigation de l'agent est finie. Si la cible est atteignable, la navigation se termine lorsque la cible est atteinte. Si la cible est inatteignable, la navigation se termine lorsque le dernier point du chemin est atteint.

\ **Note :** Lorsque cette propriété vaut ``true``, préférez cesser d'appeler les fonctions de mise à jour comme :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>`. Cela évite des tremblements (jitter) chez l'agent fixe en raison de l'appel répété à des mises à jour du chemin.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_target_reachable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reachable**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_is_target_reachable>`

Renvoie ``true`` si :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>` se trouve à une distance à :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` de la position cible :ref:`target_position<class_NavigationAgent3D_property_target_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_target_reached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reached**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_is_target_reached>`

Renvoie ``true`` si l'agent a atteint la cible, c'est-à-dire que l'agent s'est déplacé à une distance inférieure à :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` de la position cible :ref:`target_position<class_NavigationAgent3D_property_target_position>`. Il peut ne pas toujours être possible d'atteindre la cible mais il devrait toujours être possible d'atteindre la position finale. Voir :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_avoidance_layer_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le masque de bits :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>`, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_avoidance_mask_value:

.. rst-class:: classref-method

|void| **set_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_avoidance_mask_value>`

Selon ``value``, active ou désactive le masque spécifié dans le masque de bits :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>`, selon un numéro de masque ``mask_number`` donné entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_navigation_layer_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le masque de bits :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>`, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_navigation_map>`

Définit le :ref:`RID<class_RID>` de la carte de navigation que ce nœud NavigationAgent devrait utiliser et met à jour l'``agent`` sur le NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_velocity_forced:

.. rst-class:: classref-method

|void| **set_velocity_forced**\ (\ velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_velocity_forced>`

Remplace la vélocité interne dans la simulation d'évitement de collision par ``velocity``. Lorsqu'un agent est téléporté à une nouvelle position, cette fonction doit être utilisée dans la même trame. Si appelée fréquemment, cette fonction peut coincer des agents.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
