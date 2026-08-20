:github_url: hide

.. _class_NavigationMesh:

NavigationMesh
==============

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una mesh di navigazione che definisce le aree attraversabili e gli ostacoli.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una mesh di navigazione è una collezione di poligoni che definiscono quali aree di un ambiente sono attraversabili per aiutare gli agenti a trovare il percorso attraverso spazi complicati.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei NavigationMesh <../tutorials/navigation/navigation_using_navigationmeshes>`

- `Demo di Navigazione 3D <https://godotengine.org/asset-library/asset/2743>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_height<class_NavigationMesh_property_agent_height>`                                         | ``1.5``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_max_climb<class_NavigationMesh_property_agent_max_climb>`                                   | ``0.25``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_max_slope<class_NavigationMesh_property_agent_max_slope>`                                   | ``45.0``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_radius<class_NavigationMesh_property_agent_radius>`                                         | ``0.5``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`border_size<class_NavigationMesh_property_border_size>`                                           | ``0.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`cell_height<class_NavigationMesh_property_cell_height>`                                           | ``0.25``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`cell_size<class_NavigationMesh_property_cell_size>`                                               | ``0.25``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`detail_sample_distance<class_NavigationMesh_property_detail_sample_distance>`                     | ``6.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`detail_sample_max_error<class_NavigationMesh_property_detail_sample_max_error>`                   | ``1.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`edge_max_error<class_NavigationMesh_property_edge_max_error>`                                     | ``1.3``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`edge_max_length<class_NavigationMesh_property_edge_max_length>`                                   | ``0.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`AABB<class_AABB>`                                             | :ref:`filter_baking_aabb<class_NavigationMesh_property_filter_baking_aabb>`                             | ``AABB(0, 0, 0, 0, 0, 0)``          |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                       | :ref:`filter_baking_aabb_offset<class_NavigationMesh_property_filter_baking_aabb_offset>`               | ``Vector3(0, 0, 0)``                |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`filter_ledge_spans<class_NavigationMesh_property_filter_ledge_spans>`                             | ``false``                           |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`filter_low_hanging_obstacles<class_NavigationMesh_property_filter_low_hanging_obstacles>`         | ``false``                           |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`filter_walkable_low_height_spans<class_NavigationMesh_property_filter_walkable_low_height_spans>` | ``false``                           |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>`                   | ``4294967295``                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>`   | :ref:`geometry_parsed_geometry_type<class_NavigationMesh_property_geometry_parsed_geometry_type>`       | ``2``                               |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>`   | :ref:`geometry_source_geometry_mode<class_NavigationMesh_property_geometry_source_geometry_mode>`       | ``0``                               |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`geometry_source_group_name<class_NavigationMesh_property_geometry_source_group_name>`             | ``&"navigation_mesh_source_group"`` |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`region_merge_size<class_NavigationMesh_property_region_merge_size>`                               | ``20.0``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`region_min_size<class_NavigationMesh_property_region_min_size>`                                   | ``2.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` | :ref:`sample_partition_type<class_NavigationMesh_property_sample_partition_type>`                       | ``0``                               |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`vertices_per_polygon<class_NavigationMesh_property_vertices_per_polygon>`                         | ``6.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_polygon<class_NavigationMesh_method_add_polygon>`\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )                                       |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_NavigationMesh_method_clear>`\ (\ )                                                                                                              |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_polygons<class_NavigationMesh_method_clear_polygons>`\ (\ )                                                                                            |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_from_mesh<class_NavigationMesh_method_create_from_mesh>`\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ )                                                        |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`get_collision_mask_value<class_NavigationMesh_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_polygon<class_NavigationMesh_method_get_polygon>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                     |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_polygon_count<class_NavigationMesh_method_get_polygon_count>`\ (\ ) |const|                                                                              |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_vertices<class_NavigationMesh_method_get_vertices>`\ (\ ) |const|                                                                                        |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_collision_mask_value<class_NavigationMesh_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertices<class_NavigationMesh_method_set_vertices>`\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                                |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_NavigationMesh_SamplePartitionType:

.. rst-class:: classref-enumeration

enum **SamplePartitionType**: :ref:`🔗<enum_NavigationMesh_SamplePartitionType>`

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_WATERSHED:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_WATERSHED** = ``0``

Partizionamento spartiacque. In genere è la scelta migliore se si precalcola la mesh di navigazione, da usare se si hanno grandi aree aperte.

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_MONOTONE:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_MONOTONE** = ``1``

Partizionamento monotono. Da usare se si desidera una generazione veloce della mesh di navigazione.

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_LAYERS:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_LAYERS** = ``2``

Partizionamento a livelli. Una buona scelta da usare per le mesh di navigazione con tessere di medie e piccole dimensioni.

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_MAX** = ``3``

Rappresenta la dimensione dell'enumerazione :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>`.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationMesh_ParsedGeometryType:

.. rst-class:: classref-enumeration

enum **ParsedGeometryType**: :ref:`🔗<enum_NavigationMesh_ParsedGeometryType>`

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_MESH_INSTANCES:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_MESH_INSTANCES** = ``0``

Interpreta le istanze di mesh come geometria. Ciò include i nodi :ref:`MeshInstance3D<class_MeshInstance3D>`, :ref:`CSGShape3D<class_CSGShape3D>` e :ref:`GridMap<class_GridMap>`.

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_STATIC_COLLIDERS** = ``1``

Interpreta i collisori :ref:`StaticBody3D<class_StaticBody3D>` come geometria. Il collisore deve trovarsi in uno qualsiasi degli strati specificati da :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>`.

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_BOTH** = ``2``

Sia :ref:`PARSED_GEOMETRY_MESH_INSTANCES<class_NavigationMesh_constant_PARSED_GEOMETRY_MESH_INSTANCES>` che :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>`.

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_MAX** = ``3``

Rappresenta la dimensione dell'enumerazione :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>`.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationMesh_SourceGeometryMode:

.. rst-class:: classref-enumeration

enum **SourceGeometryMode**: :ref:`🔗<enum_NavigationMesh_SourceGeometryMode>`

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_ROOT_NODE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_ROOT_NODE_CHILDREN** = ``0``

Scansiona ricorsivamente i nodi figlio del nodo radice per trovare la geometria.

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN** = ``1``

Scansiona ricorsivamente i nodi in un gruppo e dei loro nodi figlio per trovare la geometria. Il gruppo è specificato da :ref:`geometry_source_group_name<class_NavigationMesh_property_geometry_source_group_name>`.

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_EXPLICIT** = ``2``

Utilizza i nodi in un gruppo per la geometria. Il gruppo è specificato da :ref:`geometry_source_group_name<class_NavigationMesh_property_geometry_source_group_name>`.

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_MAX** = ``3``

Rappresenta la dimensione dell'enumerazione :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_NavigationMesh_property_agent_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_height** = ``1.5`` :ref:`🔗<class_NavigationMesh_property_agent_height>`

.. rst-class:: classref-property-setget

- |void| **set_agent_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_height**\ (\ )

L'altezza minima tra pavimento e soffitto che consentirà comunque all'area del pavimento di essere considerata percorribile.

\ **Nota:** Durante la preparazione, questo valore sarà arrotondato al multiplo più vicino di :ref:`cell_height<class_NavigationMesh_property_cell_height>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_max_climb:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_max_climb** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_agent_max_climb>`

.. rst-class:: classref-property-setget

- |void| **set_agent_max_climb**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_max_climb**\ (\ )

L'altezza minima di una sporgenza che è considerata ancora percorribile.

\ **Nota:** Durante la preparazione, questo valore sarà arrotondato per difetto al multiplo più vicino di :ref:`cell_height<class_NavigationMesh_property_cell_height>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_max_slope:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_max_slope** = ``45.0`` :ref:`🔗<class_NavigationMesh_property_agent_max_slope>`

.. rst-class:: classref-property-setget

- |void| **set_agent_max_slope**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_max_slope**\ (\ )

La pendenza massima che è considerata percorribile, in gradi.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_radius** = ``0.5`` :ref:`🔗<class_NavigationMesh_property_agent_radius>`

.. rst-class:: classref-property-setget

- |void| **set_agent_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_radius**\ (\ )

La distanza per erodere/restringere l'area percorribile dell'heightfield dagli ostacoli.

\ **Nota:** Durante la preparazione, questo valore sarà arrotondato al multiplo più vicino di :ref:`cell_size<class_NavigationMesh_property_cell_size>`.

\ **Nota:** Il raggio deve essere uguale o superiore a ``0.0``. Se il raggio è ``0.0``, non sarà possibile correggere sovrapposizioni non valide tra contorni e altri errori di precisione durante il processo di preparazione. Di conseguenza, alcuni ostacoli potrebbero essere esclusi erroneamente dalla mesh di navigazione finale o potrebbero eliminare i poligoni della mesh di navigazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_border_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_size** = ``0.0`` :ref:`🔗<class_NavigationMesh_property_border_size>`

.. rst-class:: classref-property-setget

- |void| **set_border_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_size**\ (\ )

La dimensione del bordo non navigabile attorno all'area di delimitazione della preparazione.

In combinazione con :ref:`filter_baking_aabb<class_NavigationMesh_property_filter_baking_aabb>` e un valore :ref:`edge_max_error<class_NavigationMesh_property_edge_max_error>` inferiore o uguale a ``1.0``, è possibile utilizzare la dimensione del bordo per preparare mesh di navigazione allineate ai tasselli senza che i bordi dei tasselli siano ridotti di :ref:`agent_radius<class_NavigationMesh_property_agent_radius>`.

\ **Nota:** Se questo valore non è ``0.0``, sarà arrotondato al multiplo più vicino di :ref:`cell_size<class_NavigationMesh_property_cell_size>` durante la preparazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_cell_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_height** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_cell_height>`

.. rst-class:: classref-property-setget

- |void| **set_cell_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_height**\ (\ )

L'altezza delle celle utilizzata per rasterizzare i vertici della mesh di navigazione sull'asse Y. Deve corrispondere all'altezza delle celle sulla mappa di navigazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

Le dimensioni delle celle utilizzate per rasterizzare i vertici della mesh di navigazione sul piano XZ. Deve corrispondere alle dimensioni delle celle sulla mappa di navigazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_detail_sample_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **detail_sample_distance** = ``6.0`` :ref:`🔗<class_NavigationMesh_property_detail_sample_distance>`

.. rst-class:: classref-property-setget

- |void| **set_detail_sample_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_detail_sample_distance**\ (\ )

La distanza di campionamento da utilizzare per generare la mesh di dettaglio, in unità di cella.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_detail_sample_max_error:

.. rst-class:: classref-property

:ref:`float<class_float>` **detail_sample_max_error** = ``1.0`` :ref:`🔗<class_NavigationMesh_property_detail_sample_max_error>`

.. rst-class:: classref-property-setget

- |void| **set_detail_sample_max_error**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_detail_sample_max_error**\ (\ )

La distanza massima a cui la superficie della mesh di dettaglio deve deviare da heightfield, in unità di cella.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_edge_max_error:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_max_error** = ``1.3`` :ref:`🔗<class_NavigationMesh_property_edge_max_error>`

.. rst-class:: classref-property-setget

- |void| **set_edge_max_error**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_max_error**\ (\ )

La distanza massima alla quale i bordi di un contorno semplificato devono deviare dal contorno grezzo originale.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_edge_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_max_length** = ``0.0`` :ref:`🔗<class_NavigationMesh_property_edge_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_edge_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_max_length**\ (\ )

La lunghezza massima consentita per i bordi del contorno lungo il bordo della mesh. Un valore di ``0.0`` disabilita questa funzionalità.

\ **Nota:** Durante la preparazione, questo valore sarà arrotondato al multiplo più vicino di :ref:`cell_size<class_NavigationMesh_property_cell_size>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_baking_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **filter_baking_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_NavigationMesh_property_filter_baking_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_filter_baking_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_filter_baking_aabb**\ (\ )

Se l'elaborazione dell':ref:`AABB<class_AABB>` ha un volume, l'elaborazionedella mesh di navigazione sarà limitata all'area che la racchiude.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_baking_aabb_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **filter_baking_aabb_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationMesh_property_filter_baking_aabb_offset>`

.. rst-class:: classref-property-setget

- |void| **set_filter_baking_aabb_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_filter_baking_aabb_offset**\ (\ )

L'offset di posizione applicato all':ref:`AABB<class_AABB>` :ref:`filter_baking_aabb<class_NavigationMesh_property_filter_baking_aabb>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_ledge_spans:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_ledge_spans** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_ledge_spans>`

.. rst-class:: classref-property-setget

- |void| **set_filter_ledge_spans**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_ledge_spans**\ (\ )

Se ``true``, segna bordi che sono sporgenze come non camminabili.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_low_hanging_obstacles:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_low_hanging_obstacles** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_low_hanging_obstacles>`

.. rst-class:: classref-property-setget

- |void| **set_filter_low_hanging_obstacles**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_low_hanging_obstacles**\ (\ )

Se ``true``, contrassegna gli intervalli non percorribili come percorribili se il loro massimo è compreso entro :ref:`agent_max_climb<class_NavigationMesh_property_agent_max_climb>` da un vicino percorribile.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_walkable_low_height_spans:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_walkable_low_height_spans** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_walkable_low_height_spans>`

.. rst-class:: classref-property-setget

- |void| **set_filter_walkable_low_height_spans**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_walkable_low_height_spans**\ (\ )

Se ``true``, contrassegna gli intervalli percorribili come non percorribili se lo spazio libero sopra l'intervallo è inferiore a :ref:`agent_height<class_NavigationMesh_property_agent_height>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **geometry_collision_mask** = ``4294967295`` :ref:`🔗<class_NavigationMesh_property_geometry_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Gli strati di fisica da scansionare per i collisori statici.

Utilizzato solo quando :ref:`geometry_parsed_geometry_type<class_NavigationMesh_property_geometry_parsed_geometry_type>` è :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>` o :ref:`PARSED_GEOMETRY_BOTH<class_NavigationMesh_constant_PARSED_GEOMETRY_BOTH>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_parsed_geometry_type:

.. rst-class:: classref-property

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **geometry_parsed_geometry_type** = ``2`` :ref:`🔗<class_NavigationMesh_property_geometry_parsed_geometry_type>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_geometry_type**\ (\ value\: :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>`\ )
- :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **get_parsed_geometry_type**\ (\ )

Determina quale tipo di nodi sarà interpretato come geometria.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_source_geometry_mode:

.. rst-class:: classref-property

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **geometry_source_geometry_mode** = ``0`` :ref:`🔗<class_NavigationMesh_property_geometry_source_geometry_mode>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_mode**\ (\ value\: :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>`\ )
- :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **get_source_geometry_mode**\ (\ )

La sorgente della geometria utilizzata durante la preparazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_source_group_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **geometry_source_group_name** = ``&"navigation_mesh_source_group"`` :ref:`🔗<class_NavigationMesh_property_geometry_source_group_name>`

.. rst-class:: classref-property-setget

- |void| **set_source_group_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_source_group_name**\ (\ )

Il nome del gruppo da scansionare per la geometria.

Utilizzato solo quando :ref:`geometry_source_geometry_mode<class_NavigationMesh_property_geometry_source_geometry_mode>` è :ref:`SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN<class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN>` o :ref:`SOURCE_GEOMETRY_GROUPS_EXPLICIT<class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_region_merge_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **region_merge_size** = ``20.0`` :ref:`🔗<class_NavigationMesh_property_region_merge_size>`

.. rst-class:: classref-property-setget

- |void| **set_region_merge_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_region_merge_size**\ (\ )

Tutte le regioni con dimensioni inferiori a questa saranno unite a regioni più grandi, se possibile.

\ **Nota:** Questo valore sarà elevato al quadrato per calcolare il numero di celle. Ad esempio, un valore di 20 imposterà il numero di celle a 400.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_region_min_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **region_min_size** = ``2.0`` :ref:`🔗<class_NavigationMesh_property_region_min_size>`

.. rst-class:: classref-property-setget

- |void| **set_region_min_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_region_min_size**\ (\ )

La dimensione minima di una regione per la sua creazione.

\ **Nota:** Questo valore sarà elevato al quadrato per calcolare il numero minimo di celle autorizzate a formare aree insulari isolate. Ad esempio, un valore di 8 imposterà il numero di celle a 64.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_sample_partition_type:

.. rst-class:: classref-property

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **sample_partition_type** = ``0`` :ref:`🔗<class_NavigationMesh_property_sample_partition_type>`

.. rst-class:: classref-property-setget

- |void| **set_sample_partition_type**\ (\ value\: :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>`\ )
- :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **get_sample_partition_type**\ (\ )

Algoritmo di partizionamento per la creazione dei poligoni della mesh di navigazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_vertices_per_polygon:

.. rst-class:: classref-property

:ref:`float<class_float>` **vertices_per_polygon** = ``6.0`` :ref:`🔗<class_NavigationMesh_property_vertices_per_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_vertices_per_polygon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vertices_per_polygon**\ (\ )

Il numero massimo di vertici consentiti per i poligoni generati durante il processo di conversione da contorno a poligono.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_NavigationMesh_method_add_polygon:

.. rst-class:: classref-method

|void| **add_polygon**\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationMesh_method_add_polygon>`

Aggiunge un poligono utilizzando gli indici dei vertici ottenuti chiamando :ref:`get_vertices()<class_NavigationMesh_method_get_vertices>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationMesh_method_clear>`

Svuota gli array interni per i vertici e gli indici dei poligoni.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_clear_polygons:

.. rst-class:: classref-method

|void| **clear_polygons**\ (\ ) :ref:`🔗<class_NavigationMesh_method_clear_polygons>`

Svuota l'array di poligoni, ma non svuota l'array di vertici.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_create_from_mesh:

.. rst-class:: classref-method

|void| **create_from_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_NavigationMesh_method_create_from_mesh>`

Inizializza la mesh di navigazione impostando i vertici e gli indici secondo una :ref:`Mesh<class_Mesh>`.

\ **Nota:** ``mesh`` deve essere di tipo :ref:`Mesh.PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>` e avere un array di indici.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_collision_mask_value>`

Restituisce se lo strato specificato della :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>` è abilitato o meno, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_polygon**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationMesh_method_get_polygon>`

Restituisce un :ref:`PackedInt32Array<class_PackedInt32Array>` contenente gli indici dei vertici di un poligono creato.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_polygon_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_polygon_count**\ (\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_polygon_count>`

Restituisce il numero di poligoni nella mesh di navigazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_vertices>`

Restituisce un :ref:`PackedVector3Array<class_PackedVector3Array>` contenente tutti i vertici utilizzati per creare i poligoni.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMesh_method_set_collision_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato nella :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>`, fornito un ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_set_vertices:

.. rst-class:: classref-method

|void| **set_vertices**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_NavigationMesh_method_set_vertices>`

Imposta i vertici che possono essere poi indicizzati per creare poligoni con il metodo :ref:`add_polygon()<class_NavigationMesh_method_add_polygon>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
