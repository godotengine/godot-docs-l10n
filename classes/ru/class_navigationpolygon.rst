:github_url: hide

.. _class_NavigationPolygon:

NavigationPolygon
=================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Двумерная навигационная сетка, описывающая проходимую поверхность для поиска пути.

.. rst-class:: classref-introduction-group

Описание
----------------

Навигационную сетку можно создать либо путем запекания с помощью :ref:`NavigationServer2D<class_NavigationServer2D>`, либо путем добавления вершин и массивов индексов выпуклых полигонов вручную.

Для запекания навигационной сетки необходимо добавить как минимум один контур, определяющий внешние границы запекаемой области.


.. tabs::

 .. code-tab:: gdscript

    var new_navigation_mesh = NavigationPolygon.new()
    var bounding_outline = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
    new_navigation_mesh.add_outline(bounding_outline)
    NavigationServer2D.bake_from_source_geometry_data(new_navigation_mesh, NavigationMeshSourceGeometryData2D.new());
    $NavigationRegion2D.navigation_polygon = new_navigation_mesh

 .. code-tab:: csharp

    var newNavigationMesh = new NavigationPolygon();
    Vector2[] boundingOutline = [new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0)];
    newNavigationMesh.AddOutline(boundingOutline);
    NavigationServer2D.BakeFromSourceGeometryData(newNavigationMesh, new NavigationMeshSourceGeometryData2D());
    GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = newNavigationMesh;



Добавление вершин и индексов полигонов вручную.


.. tabs::

 .. code-tab:: gdscript

    var new_navigation_mesh = NavigationPolygon.new()
    var new_vertices = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
    new_navigation_mesh.vertices = new_vertices
    var new_polygon_indices = PackedInt32Array([0, 1, 2, 3])
    new_navigation_mesh.add_polygon(new_polygon_indices)
    $NavigationRegion2D.navigation_polygon = new_navigation_mesh

 .. code-tab:: csharp

    var newNavigationMesh = new NavigationPolygon();
    Vector2[] newVertices = [new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0)];
    newNavigationMesh.Vertices = newVertices;
    int[] newPolygonIndices = [0, 1, 2, 3];
    newNavigationMesh.AddPolygon(newPolygonIndices);
    GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = newNavigationMesh;



.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование NavigationMeshes <../tutorials/navigation/navigation_using_navigationmeshes>`

- `Навигационный полигон 2D Демо <https://godotengine.org/asset-library/asset/2722>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Перечисления
------------------------

.. _enum_NavigationPolygon_SamplePartitionType:

.. rst-class:: classref-enumeration

enum **SamplePartitionType**: :ref:`🔗<enum_NavigationPolygon_SamplePartitionType>`

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_CONVEX_PARTITION:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_CONVEX_PARTITION** = ``0``

Выпуклое разбиение, в результате которого получается навигационная сетка с выпуклыми многоугольниками.

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_TRIANGULATE:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_TRIANGULATE** = ``1``

Триангуляционное разбиение, в результате которого получается навигационная сетка с треугольными многоугольниками.

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_MAX** = ``2``

Представляет размер перечисления :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>`.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPolygon_ParsedGeometryType:

.. rst-class:: classref-enumeration

enum **ParsedGeometryType**: :ref:`🔗<enum_NavigationPolygon_ParsedGeometryType>`

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_MESH_INSTANCES:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_MESH_INSTANCES** = ``0``

Анализирует экземпляры сетки как геометрию препятствия. Сюда входят узлы :ref:`Polygon2D<class_Polygon2D>`, :ref:`MeshInstance2D<class_MeshInstance2D>`, :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>` и :ref:`TileMap<class_TileMap>`.

Сетки анализируются только тогда, когда они используют формат поверхности 2D вершин.

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_STATIC_COLLIDERS** = ``1``

Анализирует коллайдеры :ref:`StaticBody2D<class_StaticBody2D>` и :ref:`TileMap<class_TileMap>` как геометрию препятствия. Коллайдер должен находиться в любом из слоев, указанных :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>`.

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_BOTH** = ``2``

Оба :ref:`PARSED_GEOMETRY_MESH_INSTANCES<class_NavigationPolygon_constant_PARSED_GEOMETRY_MESH_INSTANCES>` и :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>`.

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_MAX** = ``3``

Представляет размер перечисления :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>`.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPolygon_SourceGeometryMode:

.. rst-class:: classref-enumeration

enum **SourceGeometryMode**: :ref:`🔗<enum_NavigationPolygon_SourceGeometryMode>`

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_ROOT_NODE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_ROOT_NODE_CHILDREN** = ``0``

Рекурсивно сканирует дочерние узлы корневого узла на предмет геометрии.

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN** = ``1``

Сканирует узлы в группе и их дочерние узлы рекурсивно на предмет геометрии. Группа указывается :ref:`source_geometry_group_name<class_NavigationPolygon_property_source_geometry_group_name>`.

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_EXPLICIT** = ``2``

Использует узлы в группе для геометрии. Группа указывается :ref:`source_geometry_group_name<class_NavigationPolygon_property_source_geometry_group_name>`.

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_MAX** = ``3``

Представляет размер перечисления :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_NavigationPolygon_property_agent_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_radius** = ``10.0`` :ref:`🔗<class_NavigationPolygon_property_agent_radius>`

.. rst-class:: classref-property-setget

- |void| **set_agent_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_radius**\ (\ )

Расстояние, на которое будет размываться/сжиматься поверхность, доступная для проходимости, при запекании навигационной сетки.

\ **Примечание:** Радиус должен быть равен или больше ``0.0``. Если радиус равен ``0.0``, исправить недопустимые наложения контуров и другие ошибки точности в процессе запекания будет невозможно. В результате некоторые препятствия могут быть некорректно исключены из финальной навигационной сетки или могут привести к удалению полигонов навигационной сетки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_baking_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **baking_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_NavigationPolygon_property_baking_rect>`

.. rst-class:: classref-property-setget

- |void| **set_baking_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_baking_rect**\ (\ )

Если запекание :ref:`Rect2<class_Rect2>` имеет область, запекание навигационной сетки будет ограничено ее охватывающей областью.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_baking_rect_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **baking_rect_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationPolygon_property_baking_rect_offset>`

.. rst-class:: classref-property-setget

- |void| **set_baking_rect_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_baking_rect_offset**\ (\ )

Смещение позиции, примененное к :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>` :ref:`Rect2<class_Rect2>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_border_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_size** = ``0.0`` :ref:`🔗<class_NavigationPolygon_property_border_size>`

.. rst-class:: classref-property-setget

- |void| **set_border_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_size**\ (\ )

Размер ненавигируемой границы вокруг ограничивающей области запекания, определяемой :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>` :ref:`Rect2<class_Rect2>`.

В сочетании с :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>` размер границы может использоваться для запекания навигационных сеток, выровненных по тайлам, без уменьшения краев тайлов на :ref:`agent_radius<class_NavigationPolygon_property_agent_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``1.0`` :ref:`🔗<class_NavigationPolygon_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

Размер ячейки, используемый для растеризации вершин навигационной сетки. Должен совпадать с размером ячейки на навигационной карте.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_parsed_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **parsed_collision_mask** = ``4294967295`` :ref:`🔗<class_NavigationPolygon_property_parsed_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_parsed_collision_mask**\ (\ )

Физические слои для сканирования на предмет статических коллайдеров.

Используется только когда :ref:`parsed_geometry_type<class_NavigationPolygon_property_parsed_geometry_type>` равен :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>` или :ref:`PARSED_GEOMETRY_BOTH<class_NavigationPolygon_constant_PARSED_GEOMETRY_BOTH>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_parsed_geometry_type:

.. rst-class:: classref-property

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **parsed_geometry_type** = ``2`` :ref:`🔗<class_NavigationPolygon_property_parsed_geometry_type>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_geometry_type**\ (\ value\: :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>`\ )
- :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **get_parsed_geometry_type**\ (\ )

Определяет, какой тип узлов будет анализироваться как геометрия.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_sample_partition_type:

.. rst-class:: classref-property

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **sample_partition_type** = ``0`` :ref:`🔗<class_NavigationPolygon_property_sample_partition_type>`

.. rst-class:: classref-property-setget

- |void| **set_sample_partition_type**\ (\ value\: :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>`\ )
- :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **get_sample_partition_type**\ (\ )

Алгоритм разбиения для создания полигонов навигационной сетки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_source_geometry_group_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **source_geometry_group_name** = ``&"navigation_polygon_source_geometry_group"`` :ref:`🔗<class_NavigationPolygon_property_source_geometry_group_name>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_group_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_source_geometry_group_name**\ (\ )

Имя группы узлов, которые следует проанализировать для запекания исходной геометрии.

Используется только когда :ref:`source_geometry_mode<class_NavigationPolygon_property_source_geometry_mode>` — :ref:`SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN<class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN>` или :ref:`SOURCE_GEOMETRY_GROUPS_EXPLICIT<class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_source_geometry_mode:

.. rst-class:: classref-property

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **source_geometry_mode** = ``0`` :ref:`🔗<class_NavigationPolygon_property_source_geometry_mode>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_mode**\ (\ value\: :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>`\ )
- :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **get_source_geometry_mode**\ (\ )

Источник геометрии, используемой при выпечке.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_NavigationPolygon_method_add_outline:

.. rst-class:: classref-method

|void| **add_outline**\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_outline>`

Добавляет :ref:`PackedVector2Array<class_PackedVector2Array>`, содержащий вершины контура, к внутреннему массиву, содержащему все контуры.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_add_outline_at_index:

.. rst-class:: classref-method

|void| **add_outline_at_index**\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_outline_at_index>`

Добавляет :ref:`PackedVector2Array<class_PackedVector2Array>`, содержащий вершины контура, во внутренний массив, содержащий все контуры в фиксированной позиции.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_add_polygon:

.. rst-class:: classref-method

|void| **add_polygon**\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_polygon>`

Добавляет полигон, используя индексы вершин, которые вы получаете при вызове :ref:`get_vertices()<class_NavigationPolygon_method_get_vertices>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear>`

Очищает внутренние массивы вершин и индексов полигонов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear_outlines:

.. rst-class:: classref-method

|void| **clear_outlines**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear_outlines>`

Очищает массив контуров, но не очищает вершины и полигоны, созданные ими.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear_polygons:

.. rst-class:: classref-method

|void| **clear_polygons**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear_polygons>`

Очищает массив полигонов, но не очищает массив контуров и вершин.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_navigation_mesh:

.. rst-class:: classref-method

:ref:`NavigationMesh<class_NavigationMesh>` **get_navigation_mesh**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_get_navigation_mesh>`

Возвращает :ref:`NavigationMesh<class_NavigationMesh>`, полученную из этого навигационного полигона. Эту навигационную сетку можно использовать для обновления навигационной сетки региона напрямую с помощью API :ref:`NavigationServer3D.region_set_navigation_mesh()<class_NavigationServer3D_method_region_set_navigation_mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_outline:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_outline**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_outline>`

Возвращает :ref:`PackedVector2Array<class_PackedVector2Array>`, содержащий вершины контура, созданного в редакторе или с помощью скрипта.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_outline_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_outline_count**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_outline_count>`

Возвращает количество контуров, созданных в редакторе или скриптом.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_parsed_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_parsed_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_parsed_collision_mask_value>`

Возвращает, включен ли указанный слой :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_polygon**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_get_polygon>`

Возвращает :ref:`PackedInt32Array<class_PackedInt32Array>`, содержащий индексы вершин созданного полигона.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_polygon_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_polygon_count**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_polygon_count>`

Возвращает количество всех полигонов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_vertices>`

Возвращает :ref:`PackedVector2Array<class_PackedVector2Array>`, содержащий все вершины, используемые для создания полигонов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_make_polygons_from_outlines:

.. rst-class:: classref-method

|void| **make_polygons_from_outlines**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_make_polygons_from_outlines>`

**Устарело:** Use :ref:`NavigationServer2D.parse_source_geometry_data()<class_NavigationServer2D_method_parse_source_geometry_data>` and :ref:`NavigationServer2D.bake_from_source_geometry_data()<class_NavigationServer2D_method_bake_from_source_geometry_data>` instead.

Создает полигоны из контуров, добавленных в редакторе или с помощью скрипта.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_remove_outline:

.. rst-class:: classref-method

|void| **remove_outline**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_remove_outline>`

Удаляет контур, созданный в редакторе или скриптом. Для обновления полигонов необходимо вызвать :ref:`make_polygons_from_outlines()<class_NavigationPolygon_method_make_polygons_from_outlines>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_outline:

.. rst-class:: classref-method

|void| **set_outline**\ (\ idx\: :ref:`int<class_int>`, outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_outline>`

Изменяет контур, созданный в редакторе или скриптом. Для обновления полигонов необходимо вызвать :ref:`make_polygons_from_outlines()<class_NavigationPolygon_method_make_polygons_from_outlines>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_parsed_collision_mask_value:

.. rst-class:: classref-method

|void| **set_parsed_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_parsed_collision_mask_value>`

На основе ``value`` включает или отключает указанный слой в :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>` при заданном ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_vertices:

.. rst-class:: classref-method

|void| **set_vertices**\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_vertices>`

Задает вершины, которые затем можно индексировать для создания полигонов с помощью метода :ref:`add_polygon()<class_NavigationPolygon_method_add_polygon>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
