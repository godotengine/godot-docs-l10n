:github_url: hide

.. meta::
	:keywords: tilemap

.. _class_GridMap:

GridMap
=======

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo per mappe 3D basate su tile.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

GridMap consente di posizionare le mesh su una griglia in modo interattivo. Funziona sia dall'editor sia dagli script, il che può aiutarti a creare editor di livelli nel gioco.

GridMap utilizza una :ref:`MeshLibrary<class_MeshLibrary>` che contiene un elenco di tasselli (elementi). Ogni tassello è una mesh con materiali, più forme facoltative di collisione e navigazione.

Una GridMap contiene una collezione di celle. Ogni cella della griglia fa riferimento a un tassello nella :ref:`MeshLibrary<class_MeshLibrary>`. Tutte le celle nella mappa hanno le stesse dimensioni.

Internamente, una GridMap è suddivisa in una collezione sparsa di ottanti per renderizzare e elaborare la fisica in modo efficiente. Ogni ottante ha le stesse dimensioni e può contenere molte celle.

\ **Nota:** GridMap non estende :ref:`VisualInstance3D<class_VisualInstance3D>` e quindi non può essere nascosto o mascherato in base a :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`. Se fai in modo che una luce non influenzi il primo strato, l'intera GridMap non sarà illuminata dalla luce in questione.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo delle mappe a griglia <../tutorials/3d/using_gridmaps>`

- `Demo di gioco piattaforme 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo di personaggio cinematico 3D <https://godotengine.org/asset-library/asset/2739>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`bake_navigation<class_GridMap_property_bake_navigation>`                     | ``false``            |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`cell_center_x<class_GridMap_property_cell_center_x>`                         | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`cell_center_y<class_GridMap_property_cell_center_y>`                         | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`cell_center_z<class_GridMap_property_cell_center_z>`                         | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`cell_octant_size<class_GridMap_property_cell_octant_size>`                   | ``8``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`cell_scale<class_GridMap_property_cell_scale>`                               | ``1.0``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`cell_size<class_GridMap_property_cell_size>`                                 | ``Vector3(2, 2, 2)`` |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`collision_layer<class_GridMap_property_collision_layer>`                     | ``1``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`collision_mask<class_GridMap_property_collision_mask>`                       | ``1``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`collision_priority<class_GridMap_property_collision_priority>`               | ``1.0``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` | :ref:`collision_visibility_mode<class_GridMap_property_collision_visibility_mode>` | ``0``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`MeshLibrary<class_MeshLibrary>`                        | :ref:`mesh_library<class_GridMap_property_mesh_library>`                           |                      |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>`                | :ref:`physics_material<class_GridMap_property_physics_material>`                   |                      |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`clear<class_GridMap_method_clear>`\ (\ )                                                                                                                                              |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`clear_baked_meshes<class_GridMap_method_clear_baked_meshes>`\ (\ )                                                                                                                    |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                        | :ref:`get_bake_mesh_instance<class_GridMap_method_get_bake_mesh_instance>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                               |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                    | :ref:`get_bake_meshes<class_GridMap_method_get_bake_meshes>`\ (\ )                                                                                                                          |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`                                    | :ref:`get_basis_with_orthogonal_index<class_GridMap_method_get_basis_with_orthogonal_index>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                   |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_item<class_GridMap_method_get_cell_item>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                                          |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`                                    | :ref:`get_cell_item_basis<class_GridMap_method_get_cell_item_basis>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                              |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_item_orientation<class_GridMap_method_get_cell_item_orientation>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                  |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`get_collision_layer_value<class_GridMap_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                        |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`get_collision_mask_value<class_GridMap_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                          |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                    | :ref:`get_meshes<class_GridMap_method_get_meshes>`\ (\ ) |const|                                                                                                                            |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                        | :ref:`get_navigation_map<class_GridMap_method_get_navigation_map>`\ (\ ) |const|                                                                                                            |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>`                              | :ref:`get_octant_coords_from_cell_coords<class_GridMap_method_get_octant_coords_from_cell_coords>`\ (\ cell_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                             |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_octants_in_bounds<class_GridMap_method_get_octants_in_bounds>`\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const|                                                                    |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_orthogonal_index_from_basis<class_GridMap_method_get_orthogonal_index_from_basis>`\ (\ basis\: :ref:`Basis<class_Basis>`\ ) |const|                                               |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells<class_GridMap_method_get_used_cells>`\ (\ ) |const|                                                                                                                    |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells_by_item<class_GridMap_method_get_used_cells_by_item>`\ (\ item\: :ref:`int<class_int>`\ ) |const|                                                                      |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells_in_octant<class_GridMap_method_get_used_cells_in_octant>`\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                               |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells_in_octant_by_item<class_GridMap_method_get_used_cells_in_octant_by_item>`\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`\ ) |const| |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_octants<class_GridMap_method_get_used_octants>`\ (\ ) |const|                                                                                                                |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_octants_by_item<class_GridMap_method_get_used_octants_by_item>`\ (\ item\: :ref:`int<class_int>`\ ) |const|                                                                  |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_octants_in_bounds<class_GridMap_method_get_used_octants_in_bounds>`\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const|                                                          |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>`                              | :ref:`local_to_map<class_GridMap_method_local_to_map>`\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                        |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`make_baked_meshes<class_GridMap_method_make_baked_meshes>`\ (\ gen_lightmap_uv\: :ref:`bool<class_bool>` = false, lightmap_uv_texel_size\: :ref:`float<class_float>` = 0.1\ )         |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`map_to_local<class_GridMap_method_map_to_local>`\ (\ map_position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                                        |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`resource_changed<class_GridMap_method_resource_changed>`\ (\ resource\: :ref:`Resource<class_Resource>`\ )                                                                            |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cell_item<class_GridMap_method_set_cell_item>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`, orientation\: :ref:`int<class_int>` = 0\ )           |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_collision_layer_value<class_GridMap_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                               |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_collision_mask_value<class_GridMap_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                 |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_navigation_map<class_GridMap_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                                            |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_GridMap_signal_cell_size_changed:

.. rst-class:: classref-signal

**cell_size_changed**\ (\ cell_size\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_GridMap_signal_cell_size_changed>`

Emesso quando :ref:`cell_size<class_GridMap_property_cell_size>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_GridMap_signal_changed>`

Emesso quando la :ref:`MeshLibrary<class_MeshLibrary>` di questa GridMap cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_GridMap_DebugVisibilityMode:

.. rst-class:: classref-enumeration

enum **DebugVisibilityMode**: :ref:`🔗<enum_GridMap_DebugVisibilityMode>`

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_DEFAULT** = ``0``

Nasconde le forme di debug delle collisioni nell'editor e usa le impostazioni di debug per determinarne la visibilità nel gioco (ovvero :ref:`SceneTree.debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` o :ref:`SceneTree.debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>`).

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_FORCE_SHOW:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_SHOW** = ``1``

Mostra sempre le forme di debug delle collisioni.

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_FORCE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_HIDE** = ``2``

Nascondi sempre le forme di debug delle collisioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_GridMap_constant_INVALID_CELL_ITEM:

.. rst-class:: classref-constant

**INVALID_CELL_ITEM** = ``-1`` :ref:`🔗<class_GridMap_constant_INVALID_CELL_ITEM>`

Elemento di cella non valido che può essere utilizzato in :ref:`set_cell_item()<class_GridMap_method_set_cell_item>` per cancellare le celle (o rappresentare una cella vuota in :ref:`get_cell_item()<class_GridMap_method_get_cell_item>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GridMap_property_bake_navigation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **bake_navigation** = ``false`` :ref:`🔗<class_GridMap_property_bake_navigation>`

.. rst-class:: classref-property-setget

- |void| **set_bake_navigation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_baking_navigation**\ (\ )

Se ``true``, questa GridMap crea una regione di navigazione per ogni cella che utilizza un elemento nella :ref:`mesh_library<class_GridMap_property_mesh_library>` con una mesh di navigazione. La regione di navigazione creata utilizzerà la maschera di bit degli strati di navigazione assegnata all'elemento nella :ref:`MeshLibrary<class_MeshLibrary>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_x** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_x>`

.. rst-class:: classref-property-setget

- |void| **set_center_x**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_x**\ (\ )

Se ``true``, gli elementi nella griglia sono centrati sull'asse X.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_y** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_y>`

.. rst-class:: classref-property-setget

- |void| **set_center_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_y**\ (\ )

Se ``true``, gli elementi nella griglia sono centrati sull'asse Y.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_z** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_z>`

.. rst-class:: classref-property-setget

- |void| **set_center_z**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_z**\ (\ )

Se ``true``, gli elementi nella griglia sono centrati sull'asse Z.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_octant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **cell_octant_size** = ``8`` :ref:`🔗<class_GridMap_property_cell_octant_size>`

.. rst-class:: classref-property-setget

- |void| **set_octant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_octant_size**\ (\ )

La dimensione di ogni ottante misurata in numero di celle. Questo si applica a tutti e tre gli assi.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_scale** = ``1.0`` :ref:`🔗<class_GridMap_property_cell_scale>`

.. rst-class:: classref-property-setget

- |void| **set_cell_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_scale**\ (\ )

La scala degli elementi nelle celle.

Questo non influisce sulle dimensioni delle celle nella griglia, ma solo sugli elementi in esse contenuti. Può essere utilizzato per fare in modo che gli elementi nelle celle si sovrappongano ai loro vicini.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **cell_size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GridMap_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_cell_size**\ (\ )

Le dimensioni delle celle nella griglia.

Ciò non influisce sulle dimensioni delle mesh. Vedi :ref:`cell_scale<class_GridMap_property_cell_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_GridMap_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Gli strati di fisica in cui si trova questa GridMap.

Le GridMap si comportano come corpi statici, il che significa che non sono influenzate dalla gravità o da altre forze. Esse influenzano solo altri corpi fisici che entrano in collisione con loro.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_GridMap_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Gli strati di fisica in cui questa GridMap rileva le collisioni. Vedi `Strati e maschere di collisione <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ nella documentazione per maggiori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_GridMap_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

La priorità usata per risolvere le collisioni quando si verifica la penetrazione. Maggiore è la priorità, minore sarà la penetrazione nell'oggetto. Questo può essere utilizzato ad esempio per impedire al giocatore di oltrepassare i limiti di un livello.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **collision_visibility_mode** = ``0`` :ref:`🔗<class_GridMap_property_collision_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_collision_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **get_collision_visibility_mode**\ (\ )

Mostra o nasconde le forme di collisione del **GridMap**. Se impostato su :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_GridMap_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`, dipende dalle impostazioni di debug di visualizzazione delle collisioni.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_mesh_library:

.. rst-class:: classref-property

:ref:`MeshLibrary<class_MeshLibrary>` **mesh_library** :ref:`🔗<class_GridMap_property_mesh_library>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_library**\ (\ value\: :ref:`MeshLibrary<class_MeshLibrary>`\ )
- :ref:`MeshLibrary<class_MeshLibrary>` **get_mesh_library**\ (\ )

La :ref:`MeshLibrary<class_MeshLibrary>` assegnata.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_physics_material:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material** :ref:`🔗<class_GridMap_property_physics_material>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material**\ (\ )

Sostituisce le proprietà fisiche predefinite di attrito e rimbalzo per l'intera **GridMap**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GridMap_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_GridMap_method_clear>`

Cancella tutte le celle.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_clear_baked_meshes:

.. rst-class:: classref-method

|void| **clear_baked_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_clear_baked_meshes>`

Cancella tutte le mesh elaborate. Vedi :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_mesh_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_bake_mesh_instance**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GridMap_method_get_bake_mesh_instance>`

Restituisce il :ref:`RID<class_RID>` di una mesh elaborata con l'indice ``idx`` specificato.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bake_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_get_bake_meshes>`

Restituisce un array di riferimenti :ref:`ArrayMesh<class_ArrayMesh>` e :ref:`Transform3D<class_Transform3D>` di tutte le mesh precalcolate presenti nella GridMap attuale. Gli indici pari contengono :ref:`ArrayMesh<class_ArrayMesh>`, mentre gli indici dispari contengono :ref:`Transform3D<class_Transform3D>` che sono sempre uguali a :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

Questo metodo si basa sul risultato del metodo :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`, che verrà chiamato con ``gen_lightmap_uv`` impostato su ``true`` e ``lightmap_uv_texel_size`` impostato su ``0.1`` se non è ancora stato chiamato.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_basis_with_orthogonal_index:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_basis_with_orthogonal_index**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_basis_with_orthogonal_index>`

Restituisce una delle 24 possibili rotazioni che si trovano lungo i vettori (x,y,z) con ogni componente pari a -1, 0 o 1. Per ulteriori dettagli, fai riferimento al codice sorgente di Godot.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item>`

L'indice dell'elemento nella :ref:`MeshLibrary<class_MeshLibrary>` situato nelle coordinate della griglia specificate. Se la cella è vuota, verrà restituito :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_basis:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_cell_item_basis**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_basis>`

Restituisce la base che dà alla cella specificata il suo orientamento.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_orientation:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item_orientation**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_orientation>`

L'orientamento della cella rispetto alle coordinate della griglia specificate. Se la cella è vuota, viene restituito ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_layer_value>`

Restituisce se lo strato specificato di :ref:`collision_layer<class_GridMap_property_collision_layer>` è abilitato o meno, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_mask_value>`

Restituisce se lo strato specificato della :ref:`collision_mask<class_GridMap_property_collision_mask>` è abilitato, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_meshes>`

Restituisce un array di :ref:`Transform3D<class_Transform3D>` e riferimenti :ref:`Mesh<class_Mesh>` corrispondenti alle celle non vuote nella griglia. Le trasformazioni sono specificate nello spazio locale. Gli indici pari contengono :ref:`Transform3D<class_Transform3D>`, mentre gli indici dispari contengono :ref:`Mesh<class_Mesh>` correlati al :ref:`Transform3D<class_Transform3D>` nell'indice che lo precede.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_navigation_map>`

Restituisce il :ref:`RID<class_RID>` della mappa di navigazione che questo nodo GridMap utilizza per le sue mesh di navigazione precalcolate per cella.

Questa funzione restituisce sempre la mappa impostata sul nodo GridMap e non la mappa sul NavigationServer. Se la mappa viene modificata direttamente con l'API del NavigationServer, il nodo GridMap non sarà a conoscenza della modifica della mappa.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_octant_coords_from_cell_coords:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **get_octant_coords_from_cell_coords**\ (\ cell_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_octant_coords_from_cell_coords>`

Restituisce le coordinate :ref:`Vector3i<class_Vector3i>` dell'ottante a cui appartiene la cella alle coordinate ``cell_coords``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_octants_in_bounds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_octants_in_bounds**\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_GridMap_method_get_octants_in_bounds>`

Restituisce un array di coordinate :ref:`Vector3i<class_Vector3i>` di ottanti che si trovano entro i limiti ``bounds``, inclusi gli ottanti che non hanno celle in uso.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_orthogonal_index_from_basis:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_orthogonal_index_from_basis**\ (\ basis\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_GridMap_method_get_orthogonal_index_from_basis>`

Questa funzione considera una discretizzazione delle rotazioni in 24 punti du una sfera unitaria, giacenti lungo i vettori (x,y,z) con ogni componente pari a -1, 0 o 1, e restituisce l'indice (nell'intervallo da 0 a 23) del punto che rappresenta meglio l'orientamento dell'oggetto. Per ulteriori dettagli, fai riferimento al codice sorgente di Godot.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells>`

Restituisce un array di :ref:`Vector3<class_Vector3>` con le coordinate delle celle non vuote nella mappa della griglia.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_by_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_by_item>`

Restituisce un array di tutte le celle con l'indice dell'elemento specificato in ``item``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_in_octant:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_in_octant**\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_in_octant>`

Restituisce un array di :ref:`Vector3i<class_Vector3i>` con le coordinate delle celle non vuote dentro l'ottante alle coordinate ``octant_coords``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_in_octant_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_in_octant_by_item**\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_in_octant_by_item>`

Restituisce un array di :ref:`Vector3i<class_Vector3i>` con le coordinate delle celle all'interno dell'ottante alle coordinate ``octant_coords`` che utilizzano l'elemento ``item`` di cella.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants>`

Restituisce un array di :ref:`Vector3i<class_Vector3i>` con le coordinate degli ottanti non vuoti nella mappa della griglia.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants_by_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants_by_item>`

Restituisce un array di :ref:`Vector3i<class_Vector3i>` con le coordinate degli ottanti che utilizzano l'elemento ``item`` nella mappa della griglia.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants_in_bounds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants_in_bounds**\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants_in_bounds>`

Restituisce un array di :ref:`Vector3i<class_Vector3i>` con le coordinate degli ottanti non vuoti che si trovano entro i limiti locali ``bounds``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **local_to_map**\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_GridMap_method_local_to_map>`

Restituisce le coordinate della mappa della cella contenente la posizione locale ``local_position``. Se ``local_position`` è in coordinate globali, considera di utilizzare :ref:`Node3D.to_local()<class_Node3D_method_to_local>` prima di passarlo a questo metodo. Vedi anche :ref:`map_to_local()<class_GridMap_method_map_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_make_baked_meshes:

.. rst-class:: classref-method

|void| **make_baked_meshes**\ (\ gen_lightmap_uv\: :ref:`bool<class_bool>` = false, lightmap_uv_texel_size\: :ref:`float<class_float>` = 0.1\ ) :ref:`🔗<class_GridMap_method_make_baked_meshes>`

Genera una mesh precalcolata che rappresenta tutte le mesh nella :ref:`MeshLibrary<class_MeshLibrary>` assegnata, da utilizzare con :ref:`LightmapGI<class_LightmapGI>`. Se ``gen_lightmap_uv`` è ``true``, i dati UV2 verranno generati per ogni mesh attualmente utilizzata nella **GridMap**. Altrimenti, solo le mesh che hanno già dati UV2 presenti potranno utilizzare le lightmap precalcolate. Durante la generazione di UV2, ``lightmap_uv_texel_size`` controlla la densità dei texel per le lightmap, con valori più bassi che producono lightmap più dettagliate. ``lightmap_uv_texel_size`` viene ignorato se ``gen_lightmap_uv`` è ``false``. Vedi anche :ref:`get_bake_meshes()<class_GridMap_method_get_bake_meshes>`, che si basa sul risultato di questo metodo.

\ **Nota:** La chiamata a questo metodo non preparerà le lightmap effettivamente, poiché la preparazione è eseguita attraverso il nodo :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **map_to_local**\ (\ map_position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_map_to_local>`

Restituisce la posizione di una cella della griglia nello spazio di coordinate locali della GridMap. Per convertire il valore restituito in coordinate globali, utilizza :ref:`Node3D.to_global()<class_Node3D_method_to_global>`. Vedi anche :ref:`local_to_map()<class_GridMap_method_local_to_map>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_GridMap_method_resource_changed>`

**Deprecato:** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

Questo metodo non fa nulla.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_cell_item:

.. rst-class:: classref-method

|void| **set_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`, orientation\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GridMap_method_set_cell_item>`

Imposta l'indice mesh per la cella riferita con sue coordinate di griglia.

Un indice elemento negativo come :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>` cancellerà la cella.

Facoltativamente, è possibile passare l'orientamento dell'elemento. Per valori di orientamento validi, vedi :ref:`get_orthogonal_index_from_basis()<class_GridMap_method_get_orthogonal_index_from_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_layer_value>`

In base a ``value``, abilita o disabilita lo strato specificato nel :ref:`collision_layer<class_GridMap_property_collision_layer>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato nel :ref:`collision_mask<class_GridMap_property_collision_mask>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_GridMap_method_set_navigation_map>`

Imposta il :ref:`RID<class_RID>` della mappa di navigazione che questo nodo GridMap dovrebbe usare per le sue mesh di navigazione precalcolate.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
