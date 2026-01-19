:github_url: hide

.. _class_NavigationPolygon:

NavigationPolygon
=================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Навігація на 2D, яка описує трафаретну поверхню для вирівнювання.

.. rst-class:: classref-introduction-group

Опис
--------

Навігаційну сітку можна створити або за допомогою запікання за допомогою :ref:`NavigationServer2D<class_NavigationServer2D>`, або шляхом додавання вершин і масивів індексів опуклих полігонів вручну. 

Щоб запекти навігаційну сітку, необхідно додати принаймні один контур, який визначає зовнішні межі запеченої області. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var new_navigation_mesh = NavigationPolygon.new() 
    var bounding_outline = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)]) 
    new_navigation_mesh.add_outline(bounding_outline) 
    NavigationServer2D.bake_from_source_geometry_data(new_navigation_mesh, NavigationMeshSourceGeometryData2D.new());
    $NavigationRegion2D.navigation_polygon = new_navigation_mesh  

 .. code-tab:: csharp
 
    var newNavigationMesh = новий NavigationPolygon(); 
    Vector2[] boundingOutline = [new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0)]; 
    newNavigationMesh.AddOutline(boundingOutline); 
    NavigationServer2D.BakeFromSourceGeometryData(newNavigationMesh, new NavigationMeshSourceGeometryData2D());
    GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = newNavigationMesh;  

 

Додавання вершин і індексів багатокутників вручну. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var new_navigation_mesh = NavigationPolygon.new() 
    var new_vertices = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)]) 
    new_navigation_mesh.vertices = нові_вершини 
    var new_polygon_indices = PackedInt32Array([0, 1, 2, 3]) 
    new_navigation_mesh.add_polygon(new_polygon_indices) 
    $NavigationRegion2D.navigation_polygon = new_navigation_mesh  

 .. code-tab:: csharp
 
    var newNavigationMesh = новий NavigationPolygon(); 
    Vector2[] newVertices = [new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0)]; 
    newNavigationMesh.Vertices = newVertices; 
    int[] newPolygonIndices = [0, 1, 2, 3]; 
    newNavigationMesh.AddPolygon(newPolygonIndices); 
    GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = newNavigationMesh;  



.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання навігації <../tutorials/navigation/navigation_using_navigationmeshes>`

- `Навігація Polygon 2D демо <https://godotengine.org/asset-library/asset/2722>`__

.. rst-class:: classref-reftable-group

Властивості
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

Методи
------------

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

Переліки
----------------

.. _enum_NavigationPolygon_SamplePartitionType:

.. rst-class:: classref-enumeration

enum **SamplePartitionType**: :ref:`🔗<enum_NavigationPolygon_SamplePartitionType>`

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_CONVEX_PARTITION:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_CONVEX_PARTITION** = ``0``

Опуклий розбив, що призводить до навігаційної сітки з опуклими полігонами.

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_TRIANGULATE:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_TRIANGULATE** = ``1``

Тріангуляційне розбиття, яке призводить до навігаційної сітки з трикутними полігонами.

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_MAX** = ``2``

Представляємо розмір ``виразок вибіркиPartitionType`` enum.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPolygon_ParsedGeometryType:

.. rst-class:: classref-enumeration

enum **ParsedGeometryType**: :ref:`🔗<enum_NavigationPolygon_ParsedGeometryType>`

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_MESH_INSTANCES:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_MESH_INSTANCES** = ``0``

Пристрої сітчастих екземплярів як обструкції геометрії. До складу входить :ref:`Polygon2D<class_Polygon2D>`, :ref:`MeshInstance2D<class_MeshInstance2D>`, :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>`, і :ref:`TileMap<class_TileMap>` вершини.

Сітчасті сітки є тільки при використанні 2D вершин поверхневого формату.

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_STATIC_COLLIDERS** = ``1``

Парес :ref:`StaticBody2D<class_StaticBody2D>` і :ref:`TileMap<class_TileMap>` коладери як обструкції геометрії. Збірник повинен бути в будь-якому з шарів, зазначених :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>`.

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_BOTH** = ``2``

Як :ref:`PARSED_GEOMETRY_MESH_INSTANCES<class_NavigationPolygon_constant_PARSED_GEOMETRY_MESH_INSTANCES>`, так і :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>`.

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_MAX** = ``3``

Представляємо розмір :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPolygon_SourceGeometryMode:

.. rst-class:: classref-enumeration

enum **SourceGeometryMode**: :ref:`🔗<enum_NavigationPolygon_SourceGeometryMode>`

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_ROOT_NODE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_ROOT_NODE_CHILDREN** = ``0``

Сканує дочірні вузли кореневого вузла, що рекурсивно за геометрію.

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN** = ``1``

Сканування вузлів у групі та їх дочірніх вузлах, що рекурсують за геометрію. Група вказана :ref:`source_geometry_group_name<class_NavigationPolygon_property_source_geometry_group_name>`.

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_EXPLICIT** = ``2``

Використання вузлів в групі для геометрії. Група вказана :ref:`source_geometry_group_name<class_NavigationPolygon_property_source_geometry_group_name>`.

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_MAX** = ``3``

Представляє розмір :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_NavigationPolygon_property_agent_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_radius** = ``10.0`` :ref:`🔗<class_NavigationPolygon_property_agent_radius>`

.. rst-class:: classref-property-setget

- |void| **set_agent_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_radius**\ (\ )

Відстань для розмивання/стискання поверхні, по якій можна ходити, під час запікання навігаційної сітки.

\ **Примітка:** Радіус має бути рівним або більшим за ``0.0``. Якщо радіус дорівнює ``0.0``, неможливо буде виправити недійсні перекриття контурів та інші помилки точності під час процесу запікання. В результаті деякі перешкоди можуть бути неправильно виключені з остаточної навігаційної сітки або можуть видалити полігони навігаційної сітки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_baking_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **baking_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_NavigationPolygon_property_baking_rect>`

.. rst-class:: classref-property-setget

- |void| **set_baking_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_baking_rect**\ (\ )

Якщо випікання :ref:`Rect2<class_Rect2>` має площу навігаційної сітки, яка буде обмежена до її огороджувальної площі.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_baking_rect_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **baking_rect_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationPolygon_property_baking_rect_offset>`

.. rst-class:: classref-property-setget

- |void| **set_baking_rect_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_baking_rect_offset**\ (\ )

Зміщення позиції, застосоване до :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>` :ref:`Rect2<class_Rect2>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_border_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_size** = ``0.0`` :ref:`🔗<class_NavigationPolygon_property_border_size>`

.. rst-class:: classref-property-setget

- |void| **set_border_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_size**\ (\ )

Розмір ненавігованої кордону навколо зони випікання, визначеної :ref:`baking_rec<class_NavigationPolygon_property_baking_rec>` :ref:`Rect2<class_Rect2>`.

У поєднанні з :ref:`baking_rec<class_NavigationPolygon_property_baking_rec>` розмір кордону може бути використаний для випікання плитки вирівняних навігаторів без країв черепиці, що знаходяться в обручці :ref:`agent_radius<class_NavigationPolygon_property_agent_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``1.0`` :ref:`🔗<class_NavigationPolygon_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

Розмір комірки, що використовується для стерилізації навігаторів сітки. Необхідно відповідати розміру комірки на карті навігації.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_parsed_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **parsed_collision_mask** = ``4294967295`` :ref:`🔗<class_NavigationPolygon_property_parsed_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_parsed_collision_mask**\ (\ )

Фізичні шари для сканування статичних комірок.

Тільки використовується при :ref:`parsed_geometry_type<class_NavigationPolygon_property_parsed_geometry_type>` :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>` або :ref:`PARSED_GEOMETRY_BOTH<class_NavigationPolygon_constant_PARSED_GEOMETRY_BOTH>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_parsed_geometry_type:

.. rst-class:: classref-property

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **parsed_geometry_type** = ``2`` :ref:`🔗<class_NavigationPolygon_property_parsed_geometry_type>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_geometry_type**\ (\ value\: :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>`\ )
- :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **get_parsed_geometry_type**\ (\ )

Визначає, який тип вузлів буде розібрано як геометрія.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_sample_partition_type:

.. rst-class:: classref-property

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **sample_partition_type** = ``0`` :ref:`🔗<class_NavigationPolygon_property_sample_partition_type>`

.. rst-class:: classref-property-setget

- |void| **set_sample_partition_type**\ (\ value\: :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>`\ )
- :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **get_sample_partition_type**\ (\ )

Алгоритм розбиття для створення полігонів навігаційної сітки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_source_geometry_group_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **source_geometry_group_name** = ``&"navigation_polygon_source_geometry_group"`` :ref:`🔗<class_NavigationPolygon_property_source_geometry_group_name>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_group_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_source_geometry_group_name**\ (\ )

Назва групи вузлів, які повинні бути припаровані для геометрії джерела випічки.

Тільки використовується при :ref:`source_geometry_mode<class_NavigationPolygon_property_source_geometry_mode>` :ref:`SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN<class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN>` або :ref:`SOURCE_GEOMETRY_GROUPS_EXPLICIT<class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_source_geometry_mode:

.. rst-class:: classref-property

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **source_geometry_mode** = ``0`` :ref:`🔗<class_NavigationPolygon_property_source_geometry_mode>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_mode**\ (\ value\: :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>`\ )
- :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **get_source_geometry_mode**\ (\ )

Джерело геометрії, що використовується під час випікання.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_NavigationPolygon_method_add_outline:

.. rst-class:: classref-method

|void| **add_outline**\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_outline>`

Додаток :ref:`PackedVector2Array<class_PackedVector2Array>`, який містить вершини контуру до внутрішнього масиву, що містить всі контури.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_add_outline_at_index:

.. rst-class:: classref-method

|void| **add_outline_at_index**\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_outline_at_index>`

Додавання :ref:`PackedVector2Array<class_PackedVector2Array>`, що містить вершини контуру до внутрішнього масиву, що містить всі контури на фіксованому положенні.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_add_polygon:

.. rst-class:: classref-method

|void| **add_polygon**\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_polygon>`

Додає полігон, використовуючи індекси вершин, отриманих під час виклику :ref:`get_vertices()<class_NavigationPolygon_method_get_vertices>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear>`

Очищає внутрішні масиви для вершин і індексів полігонів.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear_outlines:

.. rst-class:: classref-method

|void| **clear_outlines**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear_outlines>`

Очищає масив контурів, але не зрозуміло вершин і полігонів, які були створені ними.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear_polygons:

.. rst-class:: classref-method

|void| **clear_polygons**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear_polygons>`

Очищає масив полігонів, але не очищає масив контурів і вершин.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_navigation_mesh:

.. rst-class:: classref-method

:ref:`NavigationMesh<class_NavigationMesh>` **get_navigation_mesh**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_get_navigation_mesh>`

Повертає :ref:`NavigationMesh<class_NavigationMesh>`, що є результатом цього навігаційного полігону. Цю навігаційну сітку можна використовувати для оновлення навігаційної сітки регіону безпосередньо за допомогою API :ref:`NavigationServer3D.region_set_navigation_mesh()<class_NavigationServer3D_method_region_set_navigation_mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_outline:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_outline**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_outline>`

Повернутися до :ref:`PackedVector2Array<class_PackedVector2Array>`, що містить вершини контуру, який був створений в редакторі або на скрипті.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_outline_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_outline_count**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_outline_count>`

Повертаємо кількість контурів, які були створені в редакторі або на скрипті.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_parsed_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_parsed_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_parsed_collision_mask_value>`

Повертає, чи увімкнено вказаний шар :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>`, враховуючи значення ``layer_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_polygon**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_get_polygon>`

Повернення :ref:`PackedInt32Array<class_PackedInt32Array>`, що містить індекси вершин створеного полігону.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_polygon_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_polygon_count**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_polygon_count>`

Повертає кількість всіх полігонів.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_vertices>`

Повертаємо :ref:`PackedVector2Array<class_PackedVector2Array>`, що містить всі вершини, які використовуються для створення полігонів.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_make_polygons_from_outlines:

.. rst-class:: classref-method

|void| **make_polygons_from_outlines**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_make_polygons_from_outlines>`

**Застаріло:** Use :ref:`NavigationServer2D.parse_source_geometry_data()<class_NavigationServer2D_method_parse_source_geometry_data>` and :ref:`NavigationServer2D.bake_from_source_geometry_data()<class_NavigationServer2D_method_bake_from_source_geometry_data>` instead.

Створює полігони з контурів, доданих в редакторі або на скрипт.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_remove_outline:

.. rst-class:: classref-method

|void| **remove_outline**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_remove_outline>`

Видаліть текст, створений у редакторі або за допомогою скрипта. Щоб оновити полігони потрібно викликати :ref:`_polygons_from_outlines()<class_NavigationPolygon_private_method__polygons_from_outlines>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_outline:

.. rst-class:: classref-method

|void| **set_outline**\ (\ idx\: :ref:`int<class_int>`, outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_outline>`

Змінює контур, створене в редакторі або на скрипті. Щоб оновити полігони потрібно викликати :ref:`_polygons_from_outlines()<class_NavigationPolygon_private_method__polygons_from_outlines>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_parsed_collision_mask_value:

.. rst-class:: classref-method

|void| **set_parsed_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_parsed_collision_mask_value>`

На основі ``value``, дозволяє або відключає вказаний шар в :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>`, враховуючи ``шару_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_vertices:

.. rst-class:: classref-method

|void| **set_vertices**\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_vertices>`

Встановлює вершини, які потім можна індексувати для створення полігонів за допомогою методу :ref:`add_polygon()<class_NavigationPolygon_method_add_polygon>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
