:github_url: hide

.. _class_NavigationPolygon:

NavigationPolygon
=================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una malla de navegación 2D que describe una superficie transitable para la búsqueda de rutas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Se puede crear una malla de navegación procesándola con la ayuda del :ref:`NavigationServer2D<class_NavigationServer2D>`, o añadiendo manualmente vértices y arrays de índices de polígonos convexos.

Para procesar una malla de navegación, debe añadirse al menos un contorno que defina los límites exteriores de la zona procesada.


.. tabs::

 .. code-tab:: gdscript

    var nueva_malla_de_navegacion = NavigationPolygon.new()
    var contorno_del_limite = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
    nueva_malla_de_navegacion.add_outline(contorno_del_limite)
    NavigationServer2D.bake_from_source_geometry_data(nueva_malla_de_navegacion, NavigationMeshSourceGeometryData2D.new());
    $NavigationRegion2D.navigation_polygon = nueva_malla_de_navegacion

 .. code-tab:: csharp

    var newNavigationMesh = new NavigationPolygon();
    Vector2[] boundingOutline = [new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0)];
    newNavigationMesh.AddOutline(boundingOutline);
    NavigationServer2D.BakeFromSourceGeometryData(newNavigationMesh, new NavigationMeshSourceGeometryData2D());
    GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = newNavigationMesh;



Añadiendo vértices e índices de polígonos manualmente.


.. tabs::

 .. code-tab:: gdscript

    var nueva_malla_de_navegacion = NavigationPolygon.new()
    var nuevos_vertices = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
    nueva_malla_de_navegacion.vertices = nuevos_vertices
    var nuevos_indices_de_poligono = PackedInt32Array([0, 1, 2, 3])
    nueva_malla_de_navegacion.add_polygon(nuevos_indices_de_poligono)
    $NavigationRegion2D.navigation_polygon = nueva_malla_de_navegacion

 .. code-tab:: csharp

    var newNavigationMesh = new NavigationPolygon();
    Vector2[] newVertices = [new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0)];
    newNavigationMesh.Vertices = newVertices;
    int[] newPolygonIndices = [0, 1, 2, 3];
    newNavigationMesh.AddPolygon(newPolygonIndices);
    GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = newNavigationMesh;



.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar NavigationMeshes <../tutorials/navigation/navigation_using_navigationmeshes>`

- `Demo de Polígono de Navegación en 2D <https://godotengine.org/asset-library/asset/2722>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`agent_radius<class_NavigationPolygon_property_agent_radius>`                             | ``10.0``                                        |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                              | :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>`                               | ``Rect2(0, 0, 0, 0)``                           |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`baking_rect_offset<class_NavigationPolygon_property_baking_rect_offset>`                 | ``Vector2(0, 0)``                               |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`border_size<class_NavigationPolygon_property_border_size>`                               | ``0.0``                                         |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`cell_size<class_NavigationPolygon_property_cell_size>`                                   | ``1.0``                                         |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>`           | ``4294967295``                                  |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>`   | :ref:`parsed_geometry_type<class_NavigationPolygon_property_parsed_geometry_type>`             | ``2``                                           |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` | :ref:`sample_partition_type<class_NavigationPolygon_property_sample_partition_type>`           | ``0``                                           |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                    | :ref:`source_geometry_group_name<class_NavigationPolygon_property_source_geometry_group_name>` | ``&"navigation_polygon_source_geometry_group"`` |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>`   | :ref:`source_geometry_mode<class_NavigationPolygon_property_source_geometry_mode>`             | ``0``                                           |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_outline<class_NavigationPolygon_method_add_outline>`\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                  |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_outline_at_index<class_NavigationPolygon_method_add_outline_at_index>`\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, index\: :ref:`int<class_int>`\ ) |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_polygon<class_NavigationPolygon_method_add_polygon>`\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )                                                      |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_NavigationPolygon_method_clear>`\ (\ )                                                                                                                             |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_outlines<class_NavigationPolygon_method_clear_outlines>`\ (\ )                                                                                                           |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_polygons<class_NavigationPolygon_method_clear_polygons>`\ (\ )                                                                                                           |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationMesh<class_NavigationMesh>`         | :ref:`get_navigation_mesh<class_NavigationPolygon_method_get_navigation_mesh>`\ (\ )                                                                                                 |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_outline<class_NavigationPolygon_method_get_outline>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_outline_count<class_NavigationPolygon_method_get_outline_count>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`get_parsed_collision_mask_value<class_NavigationPolygon_method_get_parsed_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                           |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_polygon<class_NavigationPolygon_method_get_polygon>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                    |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_polygon_count<class_NavigationPolygon_method_get_polygon_count>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_vertices<class_NavigationPolygon_method_get_vertices>`\ (\ ) |const|                                                                                                       |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`make_polygons_from_outlines<class_NavigationPolygon_method_make_polygons_from_outlines>`\ (\ )                                                                                 |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_outline<class_NavigationPolygon_method_remove_outline>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                              |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_outline<class_NavigationPolygon_method_set_outline>`\ (\ idx\: :ref:`int<class_int>`, outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                     |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_parsed_collision_mask_value<class_NavigationPolygon_method_set_parsed_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )  |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertices<class_NavigationPolygon_method_set_vertices>`\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                               |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_NavigationPolygon_SamplePartitionType:

.. rst-class:: classref-enumeration

enum **SamplePartitionType**: :ref:`🔗<enum_NavigationPolygon_SamplePartitionType>`

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_CONVEX_PARTITION:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_CONVEX_PARTITION** = ``0``

Convex partitioning that results in a navigation mesh with convex polygons.

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_TRIANGULATE:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_TRIANGULATE** = ``1``

Triangulation partitioning that results in a navigation mesh with triangle polygons.

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_MAX** = ``2``

Representa el tamaño del enum :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>`.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPolygon_ParsedGeometryType:

.. rst-class:: classref-enumeration

enum **ParsedGeometryType**: :ref:`🔗<enum_NavigationPolygon_ParsedGeometryType>`

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_MESH_INSTANCES:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_MESH_INSTANCES** = ``0``

Analiza las instancias de malla como geometría de obstrucción. Esto incluye los nodos :ref:`Polygon2D<class_Polygon2D>`, :ref:`MeshInstance2D<class_MeshInstance2D>`, :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>` y :ref:`TileMap<class_TileMap>`.

Las mallas solo se analizan cuando utilizan un formato de superficie de vértices 2D.

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_STATIC_COLLIDERS** = ``1``

Analiza los colisionadores :ref:`StaticBody2D<class_StaticBody2D>` y :ref:`TileMap<class_TileMap>` como geometría de obstrucción. El colisionador debe estar en cualquiera de las capas especificadas por :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>`.

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_BOTH** = ``2``

Both :ref:`PARSED_GEOMETRY_MESH_INSTANCES<class_NavigationPolygon_constant_PARSED_GEOMETRY_MESH_INSTANCES>` and :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>`.

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_MAX** = ``3``

Representa el tamaño del enum :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>`.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPolygon_SourceGeometryMode:

.. rst-class:: classref-enumeration

enum **SourceGeometryMode**: :ref:`🔗<enum_NavigationPolygon_SourceGeometryMode>`

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_ROOT_NODE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_ROOT_NODE_CHILDREN** = ``0``

Scans the child nodes of the root node recursively for geometry.

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN** = ``1``

Escanea los nodos de un grupo y sus nodos secundarios de forma recursiva en busca de geometría. El grupo se especifica mediante :ref:`source_geometry_group_name<class_NavigationPolygon_property_source_geometry_group_name>`.

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_EXPLICIT** = ``2``

Utiliza los nodos de un grupo para la geometría. El grupo se especifica mediante :ref:`source_geometry_group_name<class_NavigationPolygon_property_source_geometry_group_name>`.

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_MAX** = ``3``

Representa el tamaño del enum :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_NavigationPolygon_property_agent_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_radius** = ``10.0`` :ref:`🔗<class_NavigationPolygon_property_agent_radius>`

.. rst-class:: classref-property-setget

- |void| **set_agent_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_radius**\ (\ )

La distancia para erosionar/reducir la superficie transitable al procesar la malla de navegación.

\ **Nota:** El radio debe ser igual o mayor que ``0.0``. Si el radio es ``0.0``, no será posible corregir las superposiciones de contornos no válidas y otros errores de precisión durante el proceso de procesado. Como resultado, algunos obstáculos pueden excluirse incorrectamente de la malla de navegación final, o pueden eliminar los polígonos de la malla de navegación.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_baking_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **baking_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_NavigationPolygon_property_baking_rect>`

.. rst-class:: classref-property-setget

- |void| **set_baking_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_baking_rect**\ (\ )

Si el :ref:`Rect2<class_Rect2>` de procesado tiene un área, el baking de la malla de navegación se restringirá a su área de cierre.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_baking_rect_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **baking_rect_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationPolygon_property_baking_rect_offset>`

.. rst-class:: classref-property-setget

- |void| **set_baking_rect_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_baking_rect_offset**\ (\ )

El desplazamiento de posición aplicado al :ref:`Rect2<class_Rect2>` de :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_border_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_size** = ``0.0`` :ref:`🔗<class_NavigationPolygon_property_border_size>`

.. rst-class:: classref-property-setget

- |void| **set_border_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_size**\ (\ )

The size of the non-navigable border around the bake bounding area defined by the :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>` :ref:`Rect2<class_Rect2>`.

In conjunction with the :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>` the border size can be used to bake tile aligned navigation meshes without the tile edges being shrunk by :ref:`agent_radius<class_NavigationPolygon_property_agent_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``1.0`` :ref:`🔗<class_NavigationPolygon_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

El tamaño de celda utilizado para rasterizar los vértices de la malla de navegación. Debe coincidir con el tamaño de celda en el mapa de navegación.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_parsed_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **parsed_collision_mask** = ``4294967295`` :ref:`🔗<class_NavigationPolygon_property_parsed_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_parsed_collision_mask**\ (\ )

Las capas de física que se escanearán en busca de colisionadores estáticos.

Solo se usa cuando :ref:`parsed_geometry_type<class_NavigationPolygon_property_parsed_geometry_type>` es :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>` o :ref:`PARSED_GEOMETRY_BOTH<class_NavigationPolygon_constant_PARSED_GEOMETRY_BOTH>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_parsed_geometry_type:

.. rst-class:: classref-property

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **parsed_geometry_type** = ``2`` :ref:`🔗<class_NavigationPolygon_property_parsed_geometry_type>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_geometry_type**\ (\ value\: :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>`\ )
- :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **get_parsed_geometry_type**\ (\ )

Determina qué tipo de nodos se analizarán como geometría.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_sample_partition_type:

.. rst-class:: classref-property

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **sample_partition_type** = ``0`` :ref:`🔗<class_NavigationPolygon_property_sample_partition_type>`

.. rst-class:: classref-property-setget

- |void| **set_sample_partition_type**\ (\ value\: :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>`\ )
- :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **get_sample_partition_type**\ (\ )

Algoritmo de partición para crear los polígonos de la malla de navegación.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_source_geometry_group_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **source_geometry_group_name** = ``&"navigation_polygon_source_geometry_group"`` :ref:`🔗<class_NavigationPolygon_property_source_geometry_group_name>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_group_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_source_geometry_group_name**\ (\ )

El nombre del grupo de nodos que deben analizarse para procesar la geometría de origen.

Solo se usa cuando :ref:`source_geometry_mode<class_NavigationPolygon_property_source_geometry_mode>` es :ref:`SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN<class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN>` o :ref:`SOURCE_GEOMETRY_GROUPS_EXPLICIT<class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_source_geometry_mode:

.. rst-class:: classref-property

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **source_geometry_mode** = ``0`` :ref:`🔗<class_NavigationPolygon_property_source_geometry_mode>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_mode**\ (\ value\: :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>`\ )
- :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **get_source_geometry_mode**\ (\ )

La fuente de la geometría utilizada al hornear.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_NavigationPolygon_method_add_outline:

.. rst-class:: classref-method

|void| **add_outline**\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_outline>`

Añade un :ref:`PackedVector2Array<class_PackedVector2Array>` que contiene los vértices de un contorno al array interno que contiene todos los contornos.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_add_outline_at_index:

.. rst-class:: classref-method

|void| **add_outline_at_index**\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_outline_at_index>`

Añade un :ref:`PackedVector2Array<class_PackedVector2Array>` que contiene los vértices de un contorno al array interno que contiene todos los contornos en una posición fija.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_add_polygon:

.. rst-class:: classref-method

|void| **add_polygon**\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_polygon>`

Añade un polígono usando los índices de los vértices que obtienes al llamar a :ref:`get_vertices()<class_NavigationPolygon_method_get_vertices>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear>`

Limpia los arrays internos para los vértices e índices de polígonos.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear_outlines:

.. rst-class:: classref-method

|void| **clear_outlines**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear_outlines>`

Limpia el array de los contornos, pero no limpia los vértices y los polígonos que fueron creados por ellos.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear_polygons:

.. rst-class:: classref-method

|void| **clear_polygons**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear_polygons>`

Limpia el array de polígonos, pero no limpia el array de contornos y vértices.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_navigation_mesh:

.. rst-class:: classref-method

:ref:`NavigationMesh<class_NavigationMesh>` **get_navigation_mesh**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_get_navigation_mesh>`

Devuelve el :ref:`NavigationMesh<class_NavigationMesh>` resultante de este polígono de navegación. Esta malla de navegación se puede usar para actualizar la malla de navegación de una región con la API :ref:`NavigationServer3D.region_set_navigation_mesh()<class_NavigationServer3D_method_region_set_navigation_mesh>` directamente.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_outline:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_outline**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_outline>`

Devuelve un :ref:`PackedVector2Array<class_PackedVector2Array>` que contiene los vértices de un contorno que se creó en el editor o mediante un script.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_outline_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_outline_count**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_outline_count>`

Devuelve el número de contornos que fueron creados en el editor o por el script.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_parsed_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_parsed_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_parsed_collision_mask_value>`

Devuelve si la capa especificada de :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>` está habilitada, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_polygon**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_get_polygon>`

Devuelve un :ref:`PackedInt32Array<class_PackedInt32Array>` que contiene los índices de los vértices de un polígono creado.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_polygon_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_polygon_count**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_polygon_count>`

Devuelve el recuento de todos los polígonos.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_vertices>`

Devuelve un :ref:`PackedVector2Array<class_PackedVector2Array>` que contiene todos los vértices que se utilizan para crear los polígonos.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_make_polygons_from_outlines:

.. rst-class:: classref-method

|void| **make_polygons_from_outlines**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_make_polygons_from_outlines>`

**Obsoleto:** Use :ref:`NavigationServer2D.parse_source_geometry_data()<class_NavigationServer2D_method_parse_source_geometry_data>` and :ref:`NavigationServer2D.bake_from_source_geometry_data()<class_NavigationServer2D_method_bake_from_source_geometry_data>` instead.

Crea polígonos a partir de los contornos agregados en el editor o mediante script.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_remove_outline:

.. rst-class:: classref-method

|void| **remove_outline**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_remove_outline>`

Elimina un esquema creado en el editor o por el guión. Tienes que llamar a :ref:`make_polygons_from_outlines()<class_NavigationPolygon_method_make_polygons_from_outlines>` para que los polígonos se actualicen.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_outline:

.. rst-class:: classref-method

|void| **set_outline**\ (\ idx\: :ref:`int<class_int>`, outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_outline>`

Cambia un contorno creado en el editor o por el script. Tienes que llamar a :ref:`make_polygons_from_outlines()<class_NavigationPolygon_method_make_polygons_from_outlines>` para que los polígonos se actualicen.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_parsed_collision_mask_value:

.. rst-class:: classref-method

|void| **set_parsed_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_parsed_collision_mask_value>`

Según ``value``, habilita o deshabilita la capa especificada en :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>`, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_vertices:

.. rst-class:: classref-method

|void| **set_vertices**\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_vertices>`

Establece los vértices que pueden ser indexados para crear polígonos con el método :ref:`add_polygon()<class_NavigationPolygon_method_add_polygon>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
