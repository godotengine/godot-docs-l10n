:github_url: hide

.. _class_SceneTree:

SceneTree
=========

**Hérite de :** :ref:`MainLoop<class_MainLoop>` **<** :ref:`Object<class_Object>`

Gère la boucle du jeu via une hiérarchie de nœuds.

.. rst-class:: classref-introduction-group

Description
-----------

En tant qu'une des classes les plus importantes, le **SceneTree** gère la hiérarchie des nœuds dans une scène, ainsi que les scènes elles-mêmes. Les nœuds peuvent être ajoutés, récupérés et enlevés. L'arborescence de scène entière (et donc la scène actuelle) peut être mise pause. Les scènes peuvent être chargées, échangées et rechargées.

Vous pouvez également utiliser le **SceneTree** pour organiser vos nœuds en **groupes**\  : chaque nœud peut être ajouté à autant de groupes que vous voulez créer, par exemple un groupe "ennemi". Vous pouvez ensuite itérer sur ces groupes ou même appeler des méthodes et définir des propriétés sur tous les nœuds appartenant à un groupe donné.

\ **SceneTree** est l'implémentation de :ref:`MainLoop<class_MainLoop>` par défaut utilisée par le moteur, et est donc en charge de la boucle du jeu.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`SceneTree <../tutorials/scripting/scene_tree>`

- :doc:`Résolutions multiples <../tutorials/rendering/multiple_resolutions>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`auto_accept_quit<class_SceneTree_property_auto_accept_quit>`           | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Node<class_Node>`     | :ref:`current_scene<class_SceneTree_property_current_scene>`                 |           |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>` | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`debug_paths_hint<class_SceneTree_property_debug_paths_hint>`           | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Node<class_Node>`     | :ref:`edited_scene_root<class_SceneTree_property_edited_scene_root>`         |           |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`multiplayer_poll<class_SceneTree_property_multiplayer_poll>`           | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`paused<class_SceneTree_property_paused>`                               | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`physics_interpolation<class_SceneTree_property_physics_interpolation>` | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`quit_on_go_back<class_SceneTree_property_quit_on_go_back>`             | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Window<class_Window>` | :ref:`root<class_SceneTree_property_root>`                                   |           |
   +-----------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`call_group<class_SceneTree_method_call_group>`\ (\ group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                              |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`call_group_flags<class_SceneTree_method_call_group_flags>`\ (\ flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                  | :ref:`change_scene_to_file<class_SceneTree_method_change_scene_to_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                               |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                  | :ref:`change_scene_to_node<class_SceneTree_method_change_scene_to_node>`\ (\ node\: :ref:`Node<class_Node>`\ )                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                  | :ref:`change_scene_to_packed<class_SceneTree_method_change_scene_to_packed>`\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`\ )                                                                                                                         |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneTreeTimer<class_SceneTreeTimer>`            | :ref:`create_timer<class_SceneTree_method_create_timer>`\ (\ time_sec\: :ref:`float<class_float>`, process_always\: :ref:`bool<class_bool>` = true, process_in_physics\: :ref:`bool<class_bool>` = false, ignore_time_scale\: :ref:`bool<class_bool>` = false\ ) |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                              | :ref:`create_tween<class_SceneTree_method_create_tween>`\ (\ )                                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                | :ref:`get_first_node_in_group<class_SceneTree_method_get_first_node_in_group>`\ (\ group\: :ref:`StringName<class_StringName>`\ )                                                                                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_frame<class_SceneTree_method_get_frame>`\ (\ ) |const|                                                                                                                                                                                                 |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MultiplayerAPI<class_MultiplayerAPI>`            | :ref:`get_multiplayer<class_SceneTree_method_get_multiplayer>`\ (\ for_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) |const|                                                                                                                          |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_node_count<class_SceneTree_method_get_node_count>`\ (\ ) |const|                                                                                                                                                                                       |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_node_count_in_group<class_SceneTree_method_get_node_count_in_group>`\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                        |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\]   | :ref:`get_nodes_in_group<class_SceneTree_method_get_nodes_in_group>`\ (\ group\: :ref:`StringName<class_StringName>`\ )                                                                                                                                          |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Tween<class_Tween>`\] | :ref:`get_processed_tweens<class_SceneTree_method_get_processed_tweens>`\ (\ )                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`has_group<class_SceneTree_method_has_group>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                     |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_accessibility_enabled<class_SceneTree_method_is_accessibility_enabled>`\ (\ ) |const|                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_accessibility_supported<class_SceneTree_method_is_accessibility_supported>`\ (\ ) |const|                                                                                                                                                               |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`notify_group<class_SceneTree_method_notify_group>`\ (\ group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ )                                                                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`notify_group_flags<class_SceneTree_method_notify_group_flags>`\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ )                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`queue_delete<class_SceneTree_method_queue_delete>`\ (\ obj\: :ref:`Object<class_Object>`\ )                                                                                                                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`quit<class_SceneTree_method_quit>`\ (\ exit_code\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                            |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                  | :ref:`reload_current_scene<class_SceneTree_method_reload_current_scene>`\ (\ )                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_group<class_SceneTree_method_set_group>`\ (\ group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                             |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_group_flags<class_SceneTree_method_set_group_flags>`\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                             |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_multiplayer<class_SceneTree_method_set_multiplayer>`\ (\ multiplayer\: :ref:`MultiplayerAPI<class_MultiplayerAPI>`, root_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ )                                                                      |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`unload_current_scene<class_SceneTree_method_unload_current_scene>`\ (\ )                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_SceneTree_signal_node_added:

.. rst-class:: classref-signal

**node_added**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_added>`

Émis lorsque le nœud ``node`` entre dans cet arbre.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_configuration_warning_changed:

.. rst-class:: classref-signal

**node_configuration_warning_changed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_configuration_warning_changed>`

Émis lorsque la méthode :ref:`Node.update_configuration_warnings()<class_Node_method_update_configuration_warnings>` du nœud ``node`` est appelée. Seulement émis dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_removed:

.. rst-class:: classref-signal

**node_removed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_removed>`

Émis lorsque le nœud ``node`` sort de cet arbre.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_renamed:

.. rst-class:: classref-signal

**node_renamed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_renamed>`

Émis lorsque le nom :ref:`Node.name<class_Node_property_name>` du nœud ``node`` est changé.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_physics_frame:

.. rst-class:: classref-signal

**physics_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_physics_frame>`

Émis immédiatement juste avant que :ref:`Node._physics_process()<class_Node_private_method__physics_process>` soit appelée sur chaque nœud de cet arbre.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_process_frame:

.. rst-class:: classref-signal

**process_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_process_frame>`

Émis immédiatement juste avant que :ref:`Node._process()<class_Node_private_method__process>` soit appelée sur chaque nœud de cet arbre.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_scene_changed:

.. rst-class:: classref-signal

**scene_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_scene_changed>`

Émis après que la nouvelle scène soit ajoutée à l'arborescence de scène et initialisée. Peut être utilisé pour accéder de façon fiable à :ref:`current_scene<class_SceneTree_property_current_scene>` lorsque d'un changement de scènes.

::

    # Ce code devrait être à l'intérieur d'un chargement automatique.
    get_tree().change_scene_to_file(chemin_autre_scene)
    await get_tree().scene_changed
    print(get_tree().current_scene) # Affiche la nouvelle scène.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_changed:

.. rst-class:: classref-signal

**tree_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_changed>`

Émis à chaque fois que la hiérarchie de l'arbre change (les nœuds sont déplacés, renommés, etc...).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_process_mode_changed:

.. rst-class:: classref-signal

**tree_process_mode_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_process_mode_changed>`

Émis lorsque le :ref:`Node.process_mode<class_Node_property_process_mode>` d'un nœud dans l’arborescence est changé. Seulement émis dans l'éditeur, pour mettre à jour la visibilité des nœuds désactivés.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_SceneTree_GroupCallFlags:

.. rst-class:: classref-enumeration

enum **GroupCallFlags**: :ref:`🔗<enum_SceneTree_GroupCallFlags>`

.. _class_SceneTree_constant_GROUP_CALL_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFAULT** = ``0``

Appeler des nœuds dans un groupe sans comportement particulier (valeur par défaut).

.. _class_SceneTree_constant_GROUP_CALL_REVERSE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_REVERSE** = ``1``

Appeler les nœuds dans un groupe dans l'ordre inverse de la hiérarchie de l'arbre (tous les enfants imbriqués sont appelés avant leurs nœuds parents respectifs).

.. _class_SceneTree_constant_GROUP_CALL_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFERRED** = ``2``

Appeler des nœuds dans un groupe à la fin de la trame actuelle (peut être une trame de traitement ou de physique), semblable à :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

.. _class_SceneTree_constant_GROUP_CALL_UNIQUE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_UNIQUE** = ``4``

Appeler tous les nœuds dans un groupe seulement une fois, même si l'appel est exécuté plusieurs fois dans la même trame. Doit être combiné avec :ref:`GROUP_CALL_DEFERRED<class_SceneTree_constant_GROUP_CALL_DEFERRED>` pour fonctionner.

\ **Note :** Des arguments différents ne sont pas pris en compte. Par conséquent, lorsque le même appel est exécuté avec des arguments différents, seul le premier appel sera exécuté.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SceneTree_property_auto_accept_quit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_accept_quit** = ``true`` :ref:`🔗<class_SceneTree_property_auto_accept_quit>`

.. rst-class:: classref-property-setget

- |void| **set_auto_accept_quit**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_accept_quit**\ (\ )

Si ``true``, l'application accepte automatiquement les requêtes de fermeture.

Pour les plateformes mobiles, voir :ref:`quit_on_go_back<class_SceneTree_property_quit_on_go_back>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_current_scene:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **current_scene** :ref:`🔗<class_SceneTree_property_current_scene>`

.. rst-class:: classref-property-setget

- |void| **set_current_scene**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_current_scene**\ (\ )

Le nœud racine de la scène principale actuellement chargée, habituellement comme un enfant direct de :ref:`root<class_SceneTree_property_root>`. Voir aussi :ref:`change_scene_to_file()<class_SceneTree_method_change_scene_to_file>`, :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>`, et :ref:`reload_current_scene()<class_SceneTree_method_reload_current_scene>`.

\ **Attention :** Définir cette propriété peut ne pas fonctionner comme prévu, car elle n'ajoute ou ne retire *pas* de nœud de cet arbre.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_collisions_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_collisions_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_collisions_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_collisions_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_collisions_hint**\ (\ )

Si ``true``, les formes de collision seront visibles lors de l'exécution du jeu de l'éditeur à des fins de débogage.

\ **Note :** Cette propriété n'est pas conçue pour être changée durant l'exécution. Changer la valeur de :ref:`debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` pendant que le projet est en cours d'exécution n'aura pas l'effet désiré.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_navigation_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_navigation_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_navigation_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_navigation_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_navigation_hint**\ (\ )

Si ``true``, les polygones de navigation seront visibles lors de l'exécution du jeu depuis l'éditeur à des fins de débogage.

\ **Note :** Cette propriété n'est pas conçue pour être changée durant l'exécution. Changer la valeur de :ref:`debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>` pendant que le projet est en cours d'exécution n'aura pas l'effet désiré.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_paths_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_paths_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_paths_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_paths_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_paths_hint**\ (\ )

Si ``true``, les courbes des nœuds :ref:`Path2D<class_Path2D>` et :ref:`Path3D<class_Path3D>` seront visibles lors de l'exécution du jeu depuis l'éditeur à des fins de débogage.

\ **Note :** Cette propriété n'est pas conçue pour être changée durant l'exécution. Changer la valeur de :ref:`debug_paths_hint<class_SceneTree_property_debug_paths_hint>` pendant que le projet est en cours d'exécution n'aura pas l'effet désiré.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_edited_scene_root:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **edited_scene_root** :ref:`🔗<class_SceneTree_property_edited_scene_root>`

.. rst-class:: classref-property-setget

- |void| **set_edited_scene_root**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_edited_scene_root**\ (\ )

La racine de la scène actuellement en cours d'édition dans l'éditeur. Il s'agit généralement d'un enfant direct de la racine :ref:`root<class_SceneTree_property_root>`.

\ **Note :** Cette propriété ne fait rien dans les compilations de release.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_multiplayer_poll:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multiplayer_poll** = ``true`` :ref:`🔗<class_SceneTree_property_multiplayer_poll>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_poll_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_multiplayer_poll_enabled**\ (\ )

Si ``true`` (valeur par défaut), permet le polling automatique du :ref:`MultiplayerAPI<class_MultiplayerAPI>` pour ce SceneTree pendant :ref:`process_frame<class_SceneTree_signal_process_frame>`.

Si ``false``, vous devez appeler manuellement :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>` pour traiter les paquets réseau et délivrer les RPCs. Cela permet d'exécuter des RPCs dans une boucle différente (p. ex. physique, fil, pas de temps spécifique) et d'avoir une protection :ref:`Mutex<class_Mutex>` manuelle lors de l'accès au :ref:`MultiplayerAPI<class_MultiplayerAPI>` depuis des threads.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** = ``false`` :ref:`🔗<class_SceneTree_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_pause**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Si ``true``, l'arborescence de scène est considérée comme mise en pause. Cela provoque le comportement suivant :

- La physique 2D et 3D sera arrêtée, ainsi que la détection des collisions et les signaux connexes.

- Selon le :ref:`Node.process_mode<class_Node_property_process_mode>` de chaque nœud, leurs méthodes de callback :ref:`Node._process()<class_Node_private_method__process>`, :ref:`Node._physics_process()<class_Node_private_method__physics_process>` et :ref:`Node._input()<class_Node_private_method__input>` peuvent ne plus être appelées.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_physics_interpolation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **physics_interpolation** = ``false`` :ref:`🔗<class_SceneTree_property_physics_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_physics_interpolation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_physics_interpolation_enabled**\ (\ )

Si ``true``, le moteur de rendu interpolera les transformations des objets (à la fois physique et non physique) entre les deux dernières transformations, de sorte à ce que le mouvement lisse soit vu même lorsque les tics de physique ne coïncident pas avec les trames rendues.

La valeur par défaut de cette propriété est contrôlée par :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>`.

\ **Note :** Bien qu'il s'agisse d'un paramètre global, un contrôle plus fin des branches individuelles du **SceneTree** est possible en utilisant :ref:`Node.physics_interpolation_mode<class_Node_property_physics_interpolation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_quit_on_go_back:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **quit_on_go_back** = ``true`` :ref:`🔗<class_SceneTree_property_quit_on_go_back>`

.. rst-class:: classref-property-setget

- |void| **set_quit_on_go_back**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_quit_on_go_back**\ (\ )

Si ``true``, l'application s'arrête automatiquement lorsque vous naviguez en arrière (p. ex. en utilisant le bouton « Retour » du système sur Android).

Pour gérer le bouton 'Aller en arrière' lorsque cette option est désactivée, utilisez :ref:`DisplayServer.WINDOW_EVENT_GO_BACK_REQUEST<class_DisplayServer_constant_WINDOW_EVENT_GO_BACK_REQUEST>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_root:

.. rst-class:: classref-property

:ref:`Window<class_Window>` **root** :ref:`🔗<class_SceneTree_property_root>`

.. rst-class:: classref-property-setget

- :ref:`Window<class_Window>` **get_root**\ (\ )

La racine de l'arbre. Il s'agit du :ref:`Node<class_Node>` le plus haut dans l'arborescence de scène, et il est toujours présent. Un :ref:`NodePath<class_NodePath>` absolu part toujours de ce nœud. Les enfants du nœud racine peuvent inclure la scène :ref:`current_scene<class_SceneTree_property_current_scene>` chargée, ainsi que tout :doc:`Chargement automatique <../tutorials/scripting/singletons_autoload>` configuré dans les paramètres du projet.

\ **Attention :** Ne supprimez pas ce nœud. Cela résultera en un comportement instable, suivi d'un plantage.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SceneTree_method_call_group:

.. rst-class:: classref-method

|void| **call_group**\ (\ group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group>`

Appelle la méthode ``method`` sur chaque nœud à l'intérieur de cette arborescence ajouté au groupe ``group`` donné. Vous pouvez passer des arguments à ``method`` en les spécifiant à la fin de cet appel de méthode. Les nœuds qui ne peuvent pas appeler ``method`` (car la méthode n'existe pas ou que les arguments ne correspondent pas) sont ignorés. Voir aussi :ref:`set_group()<class_SceneTree_method_set_group>` et :ref:`notify_group()<class_SceneTree_method_notify_group>`.

\ **Note :** Cette méthode agit immédiatement sur tous les nœuds sélectionnés en une fois, ce qui peut provoquer des ralentissements dans certaines situations avec beaucoup de calculs.

\ **Note :** En C#, ``method`` doit être en snake_case lorsqu'il s'agit de méthodes Godot intégrées. Préférez utiliser les noms exposés dans la classe ``MethodName`` pour éviter d'attribuer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_call_group_flags:

.. rst-class:: classref-method

|void| **call_group_flags**\ (\ flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group_flags>`

Appelle la méthode ``method`` sur chaque nœud à l'intérieur de cette arborescence ajouté au groupe ``group`` donné. Utilisez ``flags`` pour personnaliser le comportement de cette méthode (voir :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`). Des arguments supplémentaires pour ``method`` peuvent être passés à la fin de cette méthode. Les nœuds qui ne peuvent pas appeler ``method`` (que la méthode n'existe pas ou que les arguments ne correspondent pas) sont ignorés.

::

    # Appelle "cacher" sur tous les nœuds du groupe "ennemis", à la fin de la trame et dans l'ordre inverse de l'arborescence.
    get_tree().call_group_flags(
            SceneTree.GROUP_CALL_DEFERRED | SceneTree.GROUP_CALL_REVERSE,
            "ennemis", "cacher")

\ **Note :** En C#, ``method`` doit être en snake_case lorsqu'il s'agit de méthodes Godot intégrées. Préférez utiliser les noms exposés dans la classe ``MethodName`` pour éviter d'attribuer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_file>`

Changes the running scene to the one at the given ``path``, after loading it into a :ref:`PackedScene<class_PackedScene>` and creating a new instance.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>` if the ``path`` cannot be loaded into a :ref:`PackedScene<class_PackedScene>`, or :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` if that scene cannot be instantiated.

\ **Note:** See :ref:`change_scene_to_node()<class_SceneTree_method_change_scene_to_node>` for details on the order of operations.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_node:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_node>`

Change la scène en cours d'exécution sans le noeud utilisé. Utile lorsque vous voulez mettre en place une scène avant un changement.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors du succès, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si le ``node`` vaut ``null``, ou :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` si le ``node`` est déjà dans l'arborescence de scène.

\ **Note :** Les opérations se déroulent dans l'ordre suivant quand :ref:`change_scene_to_node()<class_SceneTree_method_change_scene_to_node>` est appelée :

1. Le nœud de la scène actuelle est immédiatement retiré de l'arbre. À partir de ce point, appeler :ref:`Node.get_tree()<class_Node_method_get_tree>` sur la scène courante (sortante) renverra ``null``. :ref:`current_scene<class_SceneTree_property_current_scene>` vaudra aussi ``null``, car la nouvelle scène n'est pas encore disponible.

2. A la fin de la trame, l'ancienne scène actuelle, déjà retirée de l'arbre, sera supprimée (libérée de mémoire) et la nouvelle scène sera instanciée et ajoutée à l'arbre. :ref:`Node.get_tree()<class_Node_method_get_tree>` et :ref:`current_scene<class_SceneTree_property_current_scene>` recommenceront ainsi à fonctionner comme d'habitude.

Cela garantit que les deux scènes ne s'exécutent pas en même temps, tout en libérant quand même la scène précédente d'une manière sécurisée semblable à :ref:`Node.queue_free()<class_Node_method_queue_free>`.

Si vous voulez accéder de manière fiable à la nouvelle scène, attendez le :ref:`scene_changed<class_SceneTree_signal_scene_changed>` signal .

\ **Attention :** Après avoir utilisé cette méthode, le **SceneTree** prendra possession du nœud et le libérera automatiquement lors de la modification de la scène. Toute référence que vous avez eue à ce nœud deviendra invalide.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_packed:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_packed**\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_packed>`

Changes the running scene to a new instance of the given :ref:`PackedScene<class_PackedScene>` (which must be valid).

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` if the scene cannot be instantiated, or :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` if the scene is invalid.

\ **Note:** See :ref:`change_scene_to_node()<class_SceneTree_method_change_scene_to_node>` for details on the order of operations.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_timer:

.. rst-class:: classref-method

:ref:`SceneTreeTimer<class_SceneTreeTimer>` **create_timer**\ (\ time_sec\: :ref:`float<class_float>`, process_always\: :ref:`bool<class_bool>` = true, process_in_physics\: :ref:`bool<class_bool>` = false, ignore_time_scale\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SceneTree_method_create_timer>`

Renvoie un nouveau :ref:`SceneTreeTimer<class_SceneTreeTimer>`. Après que ``time_sec`` secondes sont passées, le minuteur émet le signal :ref:`SceneTreeTimer.timeout<class_SceneTreeTimer_signal_timeout>` et sera automatiquement libéré.

Si ``process_always`` vaut ``false``, le minuteur sera interrompu lorsque :ref:`paused<class_SceneTree_property_paused>` passe à ``true``.

Si ``process_in_physics`` vaut ``true``, le minuteur mettra à jour à la fin de le trame de physique, au lieu de la trame de traitement.

Si ``ignore_time_scale`` vaut ``true``, le minuteur ignore :ref:`Engine.time_scale<class_Engine_property_time_scale>` et se met à jour avec le temps réel écoulé.

Cette méthode est couramment utilisée pour créer un minuteur de délai à usage unique, comme dans l'exemple suivant :


.. tabs::

 .. code-tab:: gdscript

    func une_fonction():
        print("début")
        await get_tree().create_timer(1.0).timeout
        print("fin")

 .. code-tab:: csharp

    public async Task UneFonction()
    {
        GD.Print("début");
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
        GD.Print("fin");
    }



\ **Note :** Le minuteur est toujours mis à jour *après* tous les nœuds de l'arbre. La méthode :ref:`Node._process()<class_Node_private_method__process>` d'un nœud serait appelée avant que le minuteur se mette à jour (ou :ref:`Node._physics_process()<class_Node_private_method__physics_process>` si ``process_in_physics`` est définie à ``true``).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_tween:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **create_tween**\ (\ ) :ref:`🔗<class_SceneTree_method_create_tween>`

Crée et renvoie un nouveau :ref:`Tween<class_Tween>` traité dans cette arboresence. Le Tween commencera automatiquement lors de la prochaine trame de traitement ou de physique (selon son :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`).

\ **Note :** Un :ref:`Tween<class_Tween>` créé à l'aide de cette méthode n'est lié à aucun :ref:`Node<class_Node>`. Il peut continuer à travailler jusqu'à ce qu'il ne reste rien à animer. Si vous voulez que le :ref:`Tween<class_Tween>` soit automatiquement tué lorsque le :ref:`Node<class_Node>` est libéré, utilisez :ref:`Node.create_tween()<class_Node_method_create_tween>` ou :ref:`Tween.bind_node()<class_Tween_method_bind_node>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_first_node_in_group:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_first_node_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_first_node_in_group>`

Renvoie le premier :ref:`Node<class_Node>` trouvé à l'intérieur de l'arborescence, qui a été ajouté au groupe ``group`` donné, dans l'ordre de la hiérarchie de la scène. Renvoie ``null`` si aucun nœud correspondant n'est trouvé. Voir aussi :ref:`get_nodes_in_group()<class_SceneTree_method_get_nodes_in_group>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_frame:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_frame>`

Renvoie combien de étapes de traitement de la physique ont été traitées depuis le début de l'application. Il ne s'agit *pas* d'une mesure du temps écoulé. Voir aussi :ref:`physics_frame<class_SceneTree_signal_physics_frame>`. Pour le nombre de trames rendues, voir :ref:`Engine.get_process_frames()<class_Engine_method_get_process_frames>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_multiplayer:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **get_multiplayer**\ (\ for_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) |const| :ref:`🔗<class_SceneTree_method_get_multiplayer>`

Cherche le :ref:`MultiplayerAPI<class_MultiplayerAPI>` configuré pour le chemin donné, s'il n'existe pas, cherche les chemins parents jusqu'à ce qu'un soit trouvé. Si le chemin est vide, ou qu'aucun n'est trouvé, le chemin par défaut est renvoyé. Voir :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count>`

Renvoie le nombre de nœuds dans cet arbre.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count_in_group:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count_in_group>`

Renvoie le nombre de nœuds assignés au groupe donné.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_nodes_in_group:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_nodes_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_nodes_in_group>`

Renvoie un :ref:`Array<class_Array>` contenant tous les nœuds à l'intérieur de cet arbre, qui ont été ajoutés au groupe ``group`` donné, dans l'ordre de la hiérarchie de la scène.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_processed_tweens:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Tween<class_Tween>`\] **get_processed_tweens**\ (\ ) :ref:`🔗<class_SceneTree_method_get_processed_tweens>`

Renvoie un :ref:`Array<class_Array>` des :ref:`Tween<class_Tween>`\ s existant actuellement dans l'arbre, y compris les tweens en pause.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_has_group:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_group**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_has_group>`

Renvoie ``true`` si un nœud ajouté au groupe avec le nom ``name`` donné existe dans l'arbre.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_enabled**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_enabled>`

Renvoie ``true`` si les fonctionnalités d'accessibilité sont activées, et les mises à jour d'information d'accessibilité sont traitées activement.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_supported**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_supported>`

Renvoie ``true`` si les fonctionnalités d'accessibilité sont supportées par l'OS et activées dans les paramètres du projet.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group:

.. rst-class:: classref-method

|void| **notify_group**\ (\ group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group>`

Appelle :ref:`Object.notification()<class_Object_method_notification>` avec la notification ``notification`` donnée sur tous les nœuds dans cet arbre ajoutés au groupe ``group``. Voir aussi :doc:`Notifications Godot <../tutorials/best_practices/godot_notifications>` et :ref:`call_group()<class_SceneTree_method_call_group>` et :ref:`set_group()<class_SceneTree_method_set_group>`.

\ **Note :** Cette méthode agit immédiatement sur tous les nœuds sélectionnés en une fois, ce qui peut provoquer des ralentissements dans certaines situations avec beaucoup de calculs.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group_flags:

.. rst-class:: classref-method

|void| **notify_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group_flags>`

Appelle :ref:`Object.notification()<class_Object_method_notification>` avec la notification ``notification`` donnée sur tous les nœuds dans cet arbre ajoutés au groupe ``group``. Utilisez ``call_flags`` pour personnaliser le comportement de cette méthode (voir :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_queue_delete:

.. rst-class:: classref-method

|void| **queue_delete**\ (\ obj\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_SceneTree_method_queue_delete>`

Met en file d'attente la suppression de l'objet ``obj`` donné, en appelant :ref:`Object.free()<class_Object_method_free>` à la fin de la trame actuelle. Cette méthode est similaire à :ref:`Node.queue_free()<class_Node_method_queue_free>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_quit:

.. rst-class:: classref-method

|void| **quit**\ (\ exit_code\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneTree_method_quit>`

Arrête l'application à la fin de l'itération actuelle, avec le code de sortie ``exit_code`` donné.

Par convention, un code de sortie de ``0`` indique un succès, alors que tout autre code de sortie indique une erreur. Pour des raisons de portabilité, il devrait être compris entre ``0`` et ``125`` (inclusifs).

\ **Note :** Sur iOS cette méthode ne fonctionne pas. Au lieu de cela, comme le recommande le `iOS Human Interface Guidelines <https://developer.apple.com/library/archive/qa/qa1561/_index.html>`__, on s'attend à ce que l'utilisateur ferme les applications avec le bouton Home.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_reload_current_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **reload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_reload_current_scene>`

Recharge la scène actuellement active, en remplaçant :ref:`current_scene<class_SceneTree_property_current_scene>` par une nouvelle instance de sa :ref:`PackedScene<class_PackedScene>` originale.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors du succès, :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` si aucune scène :ref:`current_scene<class_SceneTree_property_current_scene>` n'est définie, :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>` si :ref:`current_scene<class_SceneTree_property_current_scene>` ne peut être chargée dans une :ref:`PackedScene<class_PackedScene>`, ou :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` si la scène ne peut pas être instanciée.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group:

.. rst-class:: classref-method

|void| **set_group**\ (\ group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group>`

Définit la propriété ``property`` donnée à la valeur ``value`` sur tous les nœuds à l'intérieur de cette arborescence ajoutés au groupe ``group`` donné. Les nœuds qui n'ont pas la propriété ``property`` sont ignorés. Voir aussi :ref:`call_group()<class_SceneTree_method_call_group>` et :ref:`notify_group()<class_SceneTree_method_notify_group>`.

\ **Note :** Cette méthode agit immédiatement sur tous les nœuds sélectionnés en une fois, ce qui peut provoquer des ralentissements dans certaines situations avec beaucoup de calculs.

\ **Note :** En C#, ``property`` doit être en snake_case lorsqu'il s'agit de méthodes Godot intégrées. Préférez utiliser les noms exposés dans la classe ``MethodName`` pour éviter d'attribuer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group_flags:

.. rst-class:: classref-method

|void| **set_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group_flags>`

Définit la propriété ``property`` donnée à la valeur ``value`` sur tous les nœuds à l'intérieur de cette arborescence ajoutés au groupe ``group`` donné. Les nœuds qui n'ont pas la propriété ``property`` sont ignorés. Utilisez ``call_flags`` pour personnaliser le comportement de cette méthode (voir :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`).

\ **Note :** En C#, ``property`` doit être en snake_case lorsqu'il s'agit de méthodes Godot intégrées. Préférez utiliser les noms exposés dans la classe ``MethodName`` pour éviter d'attribuer un nouveau :ref:`StringName<class_StringName>` à chaque appel.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_multiplayer:

.. rst-class:: classref-method

|void| **set_multiplayer**\ (\ multiplayer\: :ref:`MultiplayerAPI<class_MultiplayerAPI>`, root_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) :ref:`🔗<class_SceneTree_method_set_multiplayer>`

Définit une :ref:`MultiplayerAPI<class_MultiplayerAPI>` personnalisée avec le chemin racine ``root_path`` donné (contrôlant également les sous-chemins relatifs), ou redéfinit l'API par défaut si ``root_path`` est vide.

\ **Note :** Aucun :ref:`MultiplayerAPI<class_MultiplayerAPI>` ne doit être configuré pour le sous-chemin contenant ``root_path``, les API multijoueurs personnalisées ne sont pas autorisées. I.e. si l'une est configurée pour ``"/root/Foo"``, en définir une pour ``"/root/Foo/Bar"`` causera une erreur.

\ **Note :** :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>` doit être appelé *avant* que les nœuds enfants sont prêts au ``root_path`` donné. Si des nœuds multijoueur comme :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` ou :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` sont ajoutés à l'arborescence avant que l'API multijoueur personnalisée soit définie, ils ne fonctionneront pas.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_unload_current_scene:

.. rst-class:: classref-method

|void| **unload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_unload_current_scene>`

Si une scène est actuellement chargée, appeler cette méthode la déchargera.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
