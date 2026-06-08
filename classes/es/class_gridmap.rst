:github_url: hide

.. meta::
	:keywords: tilemap

.. _class_GridMap:

GridMap
=======

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo para mapas en 3D basados en tiles.

.. rst-class:: classref-introduction-group

Descripción
----------------------

GridMap te permite colocar mallas en una cuadrícula de forma interactiva. Funciona tanto desde el editor como desde los scripts, que pueden ayudarte a crear editores de nivel de juego.

GridMaps utiliza una :ref:`MeshLibrary<class_MeshLibrary>` que contiene una lista de tiles. Cada tile es una malla con materiales, además de formas de colisión y navegación opcionales.

Un GridMap contiene una colección de celdas. Cada celda de la cuadrícula se refiere a un tile de la :ref:`MeshLibrary<class_MeshLibrary>`. Todas las celdas en el mapa tienen las mismas dimensiones.

Internamente, un GridMap se divide en una colección dispersa de octantes para una representación eficiente y un procesamiento físico. Cada octante tiene las mismas dimensiones y puede contener varias celdas.

\ **Nota:** GridMap no extiende :ref:`VisualInstance3D<class_VisualInstance3D>` y, por lo tanto, no se puede ocultar ni enmascarar por selección basada en :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`. Si haces que una luz no afecte la primera capa, todo el GridMap no será iluminado por la luz en cuestión.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando GridMaps <../tutorials/3d/using_gridmaps>`

- `Demo de Plataformas en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo de Personaje Cinemático en 3D <https://godotengine.org/asset-library/asset/2739>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_GridMap_signal_cell_size_changed:

.. rst-class:: classref-signal

**cell_size_changed**\ (\ cell_size\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_GridMap_signal_cell_size_changed>`

Emitida cuando :ref:`cell_size<class_GridMap_property_cell_size>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_GridMap_signal_changed>`

Emitida cuando la :ref:`MeshLibrary<class_MeshLibrary>` de este GridMap cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_GridMap_DebugVisibilityMode:

.. rst-class:: classref-enumeration

enum **DebugVisibilityMode**: :ref:`🔗<enum_GridMap_DebugVisibilityMode>`

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_DEFAULT** = ``0``

Hide the collisions debug shapes in the editor, and use the debug settings to determine their visibility in game (i.e. :ref:`SceneTree.debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` or :ref:`SceneTree.debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>`).

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_FORCE_SHOW:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_SHOW** = ``1``

Always show the collisions debug shapes.

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_FORCE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_HIDE** = ``2``

Always hide the collisions debug shapes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_GridMap_constant_INVALID_CELL_ITEM:

.. rst-class:: classref-constant

**INVALID_CELL_ITEM** = ``-1`` :ref:`🔗<class_GridMap_constant_INVALID_CELL_ITEM>`

Elemento celular inválido que puede ser usado en :ref:`set_cell_item()<class_GridMap_method_set_cell_item>` para borrar células (o representar una célula vacía en :ref:`get_cell_item()<class_GridMap_method_get_cell_item>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GridMap_property_bake_navigation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **bake_navigation** = ``false`` :ref:`🔗<class_GridMap_property_bake_navigation>`

.. rst-class:: classref-property-setget

- |void| **set_bake_navigation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_baking_navigation**\ (\ )

Si es ``true``, este GridMap crea una región de navegación para cada celda que utiliza un elemento :ref:`mesh_library<class_GridMap_property_mesh_library>` con una malla de navegación. La región de navegación creada utilizará la máscara de bits de las capas de navegación asignada al elemento de :ref:`MeshLibrary<class_MeshLibrary>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_x** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_x>`

.. rst-class:: classref-property-setget

- |void| **set_center_x**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_x**\ (\ )

Si es ``true``, los elementos de la cuadrícula se centran en el eje X.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_y** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_y>`

.. rst-class:: classref-property-setget

- |void| **set_center_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_y**\ (\ )

Si es ``true``, los elementos de la cuadrícula se centran en el eje Y.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_z** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_z>`

.. rst-class:: classref-property-setget

- |void| **set_center_z**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_z**\ (\ )

Si es ``true``, los elementos de la cuadrícula se centran en el eje Z.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_octant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **cell_octant_size** = ``8`` :ref:`🔗<class_GridMap_property_cell_octant_size>`

.. rst-class:: classref-property-setget

- |void| **set_octant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_octant_size**\ (\ )

El tamaño de cada octante medido en número de celdas. Esto se aplica a los tres ejes.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_scale** = ``1.0`` :ref:`🔗<class_GridMap_property_cell_scale>`

.. rst-class:: classref-property-setget

- |void| **set_cell_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_scale**\ (\ )

La escala de los elementos de celda.

Esto no afecta al tamaño de las celdas de la cuadrícula en sí, sólo a los ítems en ellas. Esto puede ser usado para hacer que los elementos de la celda se superpongan a sus vecinos.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **cell_size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GridMap_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_cell_size**\ (\ )

Las dimensiones de las celdas de rejilla.

Esto no afecta al tamaño de las mallas. Véase :ref:`cell_scale<class_GridMap_property_cell_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_GridMap_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Las capas físicas en las que se encuentra este GridMap.

Los GridMaps actúan como cuerpos estáticos, lo que significa que no son afectados por la gravedad u otras fuerzas. Solo afectan a otros cuerpos físicos que colisionan con ellos.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_GridMap_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Las capas físicas en las que este GridMap detecta colisiones. Véase `Capas y máscaras de colisión <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ en la documentación para más información.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_GridMap_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

La prioridad usada para resolver colisiones cuando ocurre penetración. Cuanto mayor sea la prioridad, menor será la penetración en el objeto. Esto puede usarse, por ejemplo, para evitar que el jugador atraviese los límites de un nivel.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **collision_visibility_mode** = ``0`` :ref:`🔗<class_GridMap_property_collision_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_collision_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **get_collision_visibility_mode**\ (\ )

Show or hide the **GridMap**'s collision shapes. If set to :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_GridMap_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`, this depends on the show collision debug settings.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_mesh_library:

.. rst-class:: classref-property

:ref:`MeshLibrary<class_MeshLibrary>` **mesh_library** :ref:`🔗<class_GridMap_property_mesh_library>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_library**\ (\ value\: :ref:`MeshLibrary<class_MeshLibrary>`\ )
- :ref:`MeshLibrary<class_MeshLibrary>` **get_mesh_library**\ (\ )

La :ref:`MeshLibrary<class_MeshLibrary>` asignada.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_physics_material:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material** :ref:`🔗<class_GridMap_property_physics_material>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material**\ (\ )

Sobrescribe las propiedades físicas predeterminadas de fricción y rebote para todo el **GridMap**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GridMap_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_GridMap_method_clear>`

Despeja todas las celdas.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_clear_baked_meshes:

.. rst-class:: classref-method

|void| **clear_baked_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_clear_baked_meshes>`

Borra todas las mallas procesadas. Véase :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_mesh_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_bake_mesh_instance**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GridMap_method_get_bake_mesh_instance>`

Devuelve el :ref:`RID<class_RID>` de una malla horneada con el ``idx`` dado.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bake_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_get_bake_meshes>`

Devuelve un array de :ref:`ArrayMesh<class_ArrayMesh>`\ es y referencias de :ref:`Transform3D<class_Transform3D>` de todas las mallas horneadas que existen dentro del GridMap actual. Los índices pares contienen :ref:`ArrayMesh<class_ArrayMesh>`\ es, mientras que los índices impares contienen :ref:`Transform3D<class_Transform3D>`\ s que son siempre iguales a :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

Este método se basa en la salida de :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`, que se llamará con ``gen_lightmap_uv`` establecido a ``true`` y ``lightmap_uv_texel_size`` establecido a ``0.1`` si aún no se ha llamado.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_basis_with_orthogonal_index:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_basis_with_orthogonal_index**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_basis_with_orthogonal_index>`

Devuelve una de las 24 rotaciones posibles que se encuentran a lo largo de los vectores (x,y,z) con cada componente siendo -1, 0 o 1. Para más detalles, consulta el código fuente de Godot.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item>`

El índice de elementos :ref:`MeshLibrary<class_MeshLibrary>` situado en las coordenadas de la cuadrícula dada. Si la celda está vacía, se devolverá :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_basis:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_cell_item_basis**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_basis>`

Devuelve la base que da a la celda especificada su orientación.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_orientation:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item_orientation**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_orientation>`

La orientación de la celda en las coordenadas de la cuadrícula dada. ``-1`` se devuelve si la celda está vacía.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_layer_value>`

Devuelve si la capa especificada de :ref:`collision_layer<class_GridMap_property_collision_layer>` está habilitada o no, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_mask_value>`

Devuelve si la capa especificada de :ref:`collision_mask<class_GridMap_property_collision_mask>` está habilitada o no, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_meshes>`

Devuelve un array de referencias de :ref:`Transform3D<class_Transform3D>` y :ref:`Mesh<class_Mesh>` correspondientes a las celdas no vacías de la cuadrícula. Las transformaciones se especifican en el espacio local. Los índices pares contienen :ref:`Transform3D<class_Transform3D>`\ s, mientras que los índices impares contienen :ref:`Mesh<class_Mesh>`\ es relacionados con el :ref:`Transform3D<class_Transform3D>` del índice que lo precede.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_navigation_map>`

Devuelve el :ref:`RID<class_RID>` del mapa de navegación que este nodo GridMap utiliza para sus mallas de navegación horneadas por celda.

Esta función siempre devuelve el mapa establecido en el nodo GridMap y no el mapa en el NavigationServer. Si el mapa se cambia directamente con la API de NavigationServer, el nodo GridMap no será consciente del cambio de mapa.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_octant_coords_from_cell_coords:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **get_octant_coords_from_cell_coords**\ (\ cell_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_octant_coords_from_cell_coords>`

Devuelve las coordenadas del octante :ref:`Vector3i<class_Vector3i>` del octante al que pertenece la celda en ``cell_coords``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_octants_in_bounds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_octants_in_bounds**\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_GridMap_method_get_octants_in_bounds>`

Returns an array of :ref:`Vector3i<class_Vector3i>` octant coordinates that are inside the given ``bounds``, including octants that have no cells in use.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_orthogonal_index_from_basis:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_orthogonal_index_from_basis**\ (\ basis\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_GridMap_method_get_orthogonal_index_from_basis>`

Esta función considera una discretización de las rotaciones en 24 puntos en la esfera unitaria, situados a lo largo de los vectores (x,y,z), siendo cada componente -1, 0 o 1, y devuelve el índice (en el rango de 0 a 23) del punto que mejor representa la orientación del objeto. Para más detalles, consulta el código fuente de Godot.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells>`

Devuelve un array de :ref:`Vector3<class_Vector3>` con las coordenadas de la celda no vacía en el mapa de la cuadrícula.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_by_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_by_item>`

Devuelve un array de todas las celdas con el índice del ítem dado en ``item``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_in_octant:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_in_octant**\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_in_octant>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the cell coordinates of non-empty cells inside the octant at ``octant_coords``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_in_octant_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_in_octant_by_item**\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_in_octant_by_item>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the cell coordinates of cells inside the octant at ``octant_coords`` that use the specified cell ``item``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the octant coordinates of the non-empty octants in the grid map.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants_by_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants_by_item>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the octant coordinates of the octants that use the specified ``item`` in the grid map.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants_in_bounds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants_in_bounds**\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants_in_bounds>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the octant coordinates of non-empty octants that are inside the local ``bounds``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **local_to_map**\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_GridMap_method_local_to_map>`

Devuelve las coordenadas del mapa de la celda que contiene la ``local_position`` dada. Si ``local_position`` está en coordenadas globales, considera usar :ref:`Node3D.to_local()<class_Node3D_method_to_local>` antes de pasarla a este método. Véase también :ref:`map_to_local()<class_GridMap_method_map_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_make_baked_meshes:

.. rst-class:: classref-method

|void| **make_baked_meshes**\ (\ gen_lightmap_uv\: :ref:`bool<class_bool>` = false, lightmap_uv_texel_size\: :ref:`float<class_float>` = 0.1\ ) :ref:`🔗<class_GridMap_method_make_baked_meshes>`

Genera una malla procesada que representa todas las mallas en la :ref:`MeshLibrary<class_MeshLibrary>` asignada para su uso con :ref:`LightmapGI<class_LightmapGI>`. Si ``gen_lightmap_uv`` es ``true``, se generarán datos UV2 para cada malla utilizada actualmente en **GridMap**. De lo contrario, solo las mallas que ya tengan datos UV2 presentes podrán usar lightmaps procesados. Al generar UV2, ``lightmap_uv_texel_size`` controla la densidad de texeles para los lightmaps, con valores más bajos que dan como resultado lightmaps más detallados. ``lightmap_uv_texel_size`` se ignora si ``gen_lightmap_uv`` es ``false``. Véase también :ref:`get_bake_meshes()<class_GridMap_method_get_bake_meshes>`, que se basa en la salida de este método.

\ **Nota:** Llamar a este método no procesará realmente los lightmaps, ya que el baking del lightmap se realiza utilizando el nodo :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **map_to_local**\ (\ map_position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_map_to_local>`

Devuelve la posición de una celda de la cuadrícula en el espacio de coordenadas local de GridMap. Para convertir el valor devuelto en coordenadas globales, usa :ref:`Node3D.to_global()<class_Node3D_method_to_global>`. Véase también :ref:`local_to_map()<class_GridMap_method_local_to_map>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_GridMap_method_resource_changed>`

**Obsoleto:** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

Este método no hace nada.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_cell_item:

.. rst-class:: classref-method

|void| **set_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`, orientation\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GridMap_method_set_cell_item>`

Establece el índice de la malla para la celda referenciada por sus coordenadas de la cuadrícula.

Un índice de elemento negativo como :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>` borrará la celda.

Opcionalmente, se puede pasar la orientación del elemento. Para ver los valores de orientación válidos, véase :ref:`get_orthogonal_index_from_basis()<class_GridMap_method_get_orthogonal_index_from_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_layer_value>`

Basado en ``value``, habilita o deshabilita la capa especificada en :ref:`collision_layer<class_GridMap_property_collision_layer>`, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_mask_value>`

Basado en ``value``, habilita o deshabilita la capa especificada en :ref:`collision_mask<class_GridMap_property_collision_mask>`, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_GridMap_method_set_navigation_map>`

Establece el :ref:`RID<class_RID>` del mapa de navegación que este nodo GridMap debe usar para sus mallas de navegación procesadas por celdas.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
