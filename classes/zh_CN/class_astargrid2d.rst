:github_url: hide

.. _class_AStarGrid2D:

AStarGrid2D
===========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A\* 的一种实现，用于寻找疏松 2D 网格中两点之间的最短路径。

.. rst-class:: classref-introduction-group

描述
----

**AStarGrid2D** 是 :ref:`AStar2D<class_AStar2D>` 的变种，针对疏松 2D 网格进行了优化。因为不需要手动创建点并进行连接，所以用起来更加简单。这个类还支持使用不同的启发方法、斜向移动模式、跳跃模式，从而加速运算。

要使用 **AStarGrid2D**\ ，你只需要设置网格的 :ref:`region<class_AStarGrid2D_property_region>`\ ，\ :ref:`cell_size<class_AStarGrid2D_property_cell_size>` 可以不设置，最后调用 :ref:`update()<class_AStarGrid2D_method_update>` 方法即可：


.. tabs::

 .. code-tab:: gdscript

    var astar_grid = AStarGrid2D.new()
    astar_grid.region = Rect2i(0, 0, 32, 32)
    astar_grid.cell_size = Vector2(16, 16)
    astar_grid.update()
    print(astar_grid.get_id_path(Vector2i(0, 0), Vector2i(3, 4))) # 输出 [(0, 0), (1, 1), (2, 2), (3, 3), (3, 4)]
    print(astar_grid.get_point_path(Vector2i(0, 0), Vector2i(3, 4))) # 输出 [(0, 0), (16, 16), (32, 32), (48, 48), (48, 64)]

 .. code-tab:: csharp

    AStarGrid2D astarGrid = new AStarGrid2D();
    astarGrid.Region = new Rect2I(0, 0, 32, 32);
    astarGrid.CellSize = new Vector2I(16, 16);
    astarGrid.Update();
    GD.Print(astarGrid.GetIdPath(Vector2I.Zero, new Vector2I(3, 4))); // 输出 [(0, 0), (1, 1), (2, 2), (3, 3), (3, 4)]
    GD.Print(astarGrid.GetPointPath(Vector2I.Zero, new Vector2I(3, 4))); // 输出 [(0, 0), (16, 16), (32, 32), (48, 48), (48, 64)]



要从寻路网格中移除某个点，必须使用 :ref:`set_point_solid()<class_AStarGrid2D_method_set_point_solid>` 将其设置为“实心”。

.. rst-class:: classref-introduction-group

教程
----

- `AStarGrid2D 的网格导航演示 <https://godotengine.org/asset-library/asset/2723>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`CellShape<enum_AStarGrid2D_CellShape>`       | :ref:`cell_shape<class_AStarGrid2D_property_cell_shape>`                                 | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`cell_size<class_AStarGrid2D_property_cell_size>`                                   | ``Vector2(1, 1)``      |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`       | :ref:`default_compute_heuristic<class_AStarGrid2D_property_default_compute_heuristic>`   | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`       | :ref:`default_estimate_heuristic<class_AStarGrid2D_property_default_estimate_heuristic>` | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` | :ref:`diagonal_mode<class_AStarGrid2D_property_diagonal_mode>`                           | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`jumping_enabled<class_AStarGrid2D_property_jumping_enabled>`                       | ``false``              |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`offset<class_AStarGrid2D_property_offset>`                                         | ``Vector2(0, 0)``      |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Rect2i<class_Rect2i>`                        | :ref:`region<class_AStarGrid2D_property_region>`                                         | ``Rect2i(0, 0, 0, 0)`` |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                    | :ref:`size<class_AStarGrid2D_property_size>`                                             | ``Vector2i(0, 0)``     |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_compute_cost<class_AStarGrid2D_private_method__compute_cost>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const|                               |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_estimate_cost<class_AStarGrid2D_private_method__estimate_cost>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, end_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const|                            |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear<class_AStarGrid2D_method_clear>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`fill_solid_region<class_AStarGrid2D_method_fill_solid_region>`\ (\ region\: :ref:`Rect2i<class_Rect2i>`, solid\: :ref:`bool<class_bool>` = true\ )                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`fill_weight_scale_region<class_AStarGrid2D_method_fill_weight_scale_region>`\ (\ region\: :ref:`Rect2i<class_Rect2i>`, weight_scale\: :ref:`float<class_float>`\ )                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]     | :ref:`get_id_path<class_AStarGrid2D_method_get_id_path>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ )       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_point_data_in_region<class_AStarGrid2D_method_get_point_data_in_region>`\ (\ region\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`              | :ref:`get_point_path<class_AStarGrid2D_method_get_point_path>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                    | :ref:`get_point_position<class_AStarGrid2D_method_get_point_position>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_point_weight_scale<class_AStarGrid2D_method_get_point_weight_scale>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_dirty<class_AStarGrid2D_method_is_dirty>`\ (\ ) |const|                                                                                                                                               |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_in_bounds<class_AStarGrid2D_method_is_in_bounds>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_in_boundsv<class_AStarGrid2D_method_is_in_boundsv>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                               |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_point_solid<class_AStarGrid2D_method_is_point_solid>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_point_solid<class_AStarGrid2D_method_set_point_solid>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`, solid\: :ref:`bool<class_bool>` = true\ )                                                           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_point_weight_scale<class_AStarGrid2D_method_set_point_weight_scale>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`, weight_scale\: :ref:`float<class_float>`\ )                                           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`update<class_AStarGrid2D_method_update>`\ (\ )                                                                                                                                                           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AStarGrid2D_Heuristic:

.. rst-class:: classref-enumeration

enum **Heuristic**: :ref:`🔗<enum_AStarGrid2D_Heuristic>`

.. _class_AStarGrid2D_constant_HEURISTIC_EUCLIDEAN:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_EUCLIDEAN** = ``0``

`欧几里德启发式算法 <https://zh.wikipedia.org/wiki/%E6%AC%A7%E5%87%A0%E9%87%8C%E5%BE%97%E8%B7%9D%E7%A6%BB>`__\ 将被用于寻路，使用的公式如下：

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    result = sqrt(dx * dx + dy * dy)

\ **注意：**\ 这也是 :ref:`AStar3D<class_AStar3D>` 和 :ref:`AStar2D<class_AStar2D>` 默认使用的内部启发式算法（包括可能的 z 轴坐标）。

.. _class_AStarGrid2D_constant_HEURISTIC_MANHATTAN:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_MANHATTAN** = ``1``

`曼哈顿启发式算法 <https://zh.wikipedia.org/wiki/%E6%9B%BC%E5%93%88%E9%A0%93%E8%B7%9D%E9%9B%A2>`__\ 将被用于寻路，使用的公式如下：

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    result = dx + dy

\ **注意：**\ 该启发式算法旨在与 4 边正交运动一起使用，4 边正交运动可通过将 :ref:`diagonal_mode<class_AStarGrid2D_property_diagonal_mode>` 设置为 :ref:`DIAGONAL_MODE_NEVER<class_AStarGrid2D_constant_DIAGONAL_MODE_NEVER>` 来提供。

.. _class_AStarGrid2D_constant_HEURISTIC_OCTILE:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_OCTILE** = ``2``

Octile 启发式算法将被用于寻路，使用的公式如下：

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    f = sqrt(2) - 1
    result = (dx < dy) ? f * dx + dy : f * dy + dx;

.. _class_AStarGrid2D_constant_HEURISTIC_CHEBYSHEV:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_CHEBYSHEV** = ``3``

`Chebyshev heuristic <https://en.wikipedia.org/wiki/Chebyshev_distance>`__ 将被用于寻路，使用的公式如下：

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    result = max(dx, dy)

.. _class_AStarGrid2D_constant_HEURISTIC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_MAX** = ``4``

代表 :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_AStarGrid2D_DiagonalMode:

.. rst-class:: classref-enumeration

enum **DiagonalMode**: :ref:`🔗<enum_AStarGrid2D_DiagonalMode>`

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_ALWAYS** = ``0``

该寻路算法将忽略目标单元格周围的实体邻居，并允许沿对角线通过。

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_NEVER** = ``1``

该寻路算法将忽略所有对角线，并且路径始终是正交的。

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE** = ``2``

如果在特定路径段的相邻单元格周围放置了至少两个障碍物，则该寻路算法将避免使用对角线。

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES** = ``3``

如果在特定路径段的相邻单元格周围放置了任意障碍物，则该寻路算法将避免使用对角线。

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_MAX** = ``4``

代表 :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_AStarGrid2D_CellShape:

.. rst-class:: classref-enumeration

enum **CellShape**: :ref:`🔗<enum_AStarGrid2D_CellShape>`

.. _class_AStarGrid2D_constant_CELL_SHAPE_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_SQUARE** = ``0``

矩形单元格形状。

.. _class_AStarGrid2D_constant_CELL_SHAPE_ISOMETRIC_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_ISOMETRIC_RIGHT** = ``1``

菱形单元格形状（用于等轴外观）。单元格坐标布局，其中水平轴朝向右上方，垂直轴朝向右下方。

.. _class_AStarGrid2D_constant_CELL_SHAPE_ISOMETRIC_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_ISOMETRIC_DOWN** = ``2``

菱形单元格形状（用于等轴外观）。单元格坐标布局，其中水平轴朝向右下方，垂直轴朝向左下方。

.. _class_AStarGrid2D_constant_CELL_SHAPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_MAX** = ``3``

代表 :ref:`CellShape<enum_AStarGrid2D_CellShape>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AStarGrid2D_property_cell_shape:

.. rst-class:: classref-property

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **cell_shape** = ``0`` :ref:`🔗<class_AStarGrid2D_property_cell_shape>`

.. rst-class:: classref-property-setget

- |void| **set_cell_shape**\ (\ value\: :ref:`CellShape<enum_AStarGrid2D_CellShape>`\ )
- :ref:`CellShape<enum_AStarGrid2D_CellShape>` **get_cell_shape**\ (\ )

单元格形状。影响位置在栅格中的放置方式。如果发生变化，需要在查找下一条路径之前调用 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_cell_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **cell_size** = ``Vector2(1, 1)`` :ref:`🔗<class_AStarGrid2D_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_cell_size**\ (\ )

要用于计算由 :ref:`get_point_path()<class_AStarGrid2D_method_get_point_path>` 返回的结果点位置的点单元的大小。如果更改了这个值，在查找下一个路径之前需要调用 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_default_compute_heuristic:

.. rst-class:: classref-property

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **default_compute_heuristic** = ``0`` :ref:`🔗<class_AStarGrid2D_property_default_compute_heuristic>`

.. rst-class:: classref-property-setget

- |void| **set_default_compute_heuristic**\ (\ value\: :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ )
- :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **get_default_compute_heuristic**\ (\ )

默认 :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ ，用于在没有覆盖 :ref:`_compute_cost()<class_AStarGrid2D_private_method__compute_cost>` 时计算两点之间的消耗。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_default_estimate_heuristic:

.. rst-class:: classref-property

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **default_estimate_heuristic** = ``0`` :ref:`🔗<class_AStarGrid2D_property_default_estimate_heuristic>`

.. rst-class:: classref-property-setget

- |void| **set_default_estimate_heuristic**\ (\ value\: :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ )
- :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **get_default_estimate_heuristic**\ (\ )

默认 :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ ，用于在没有覆盖 :ref:`_estimate_cost()<class_AStarGrid2D_private_method__estimate_cost>` 时计算该点和终点之间的消耗。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_diagonal_mode:

.. rst-class:: classref-property

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **diagonal_mode** = ``0`` :ref:`🔗<class_AStarGrid2D_property_diagonal_mode>`

.. rst-class:: classref-property-setget

- |void| **set_diagonal_mode**\ (\ value\: :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>`\ )
- :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **get_diagonal_mode**\ (\ )

特定的 :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>`\ ，会强制路径避免或接受特定的对角线。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_jumping_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **jumping_enabled** = ``false`` :ref:`🔗<class_AStarGrid2D_property_jumping_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_jumping_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_jumping_enabled**\ (\ )

启用或禁用跳跃，以跳过中间点并加快搜索算法的速度。

\ **注意：**\ 目前，打开它会在寻路过程中忽略权重缩放。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AStarGrid2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

栅格的偏移量，将被应用以计算 :ref:`get_point_path()<class_AStarGrid2D_method_get_point_path>` 返回的结果点的位置。如果发生变化，需要在查找下一条路径之前调用 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_region:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **region** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_AStarGrid2D_property_region>`

.. rst-class:: classref-property-setget

- |void| **set_region**\ (\ value\: :ref:`Rect2i<class_Rect2i>`\ )
- :ref:`Rect2i<class_Rect2i>` **get_region**\ (\ )

栅格上用来寻路的区域。如果发生变化，需要在查找下一条路径之前调用 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(0, 0)`` :ref:`🔗<class_AStarGrid2D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size**\ (\ )

**已弃用：** Use :ref:`region<class_AStarGrid2D_property_region>` instead.

栅格的大小（每个轴上大小为 :ref:`cell_size<class_AStarGrid2D_property_cell_size>` 的单元格数）。如果发生变化，需要在查找下一条路径之前调用 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AStarGrid2D_private_method__compute_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_compute_cost**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const| :ref:`🔗<class_AStarGrid2D_private_method__compute_cost>`

计算两个连接点之间的成本时调用。

请注意，这个函数在默认的 **AStarGrid2D** 类中是隐藏的。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_private_method__estimate_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_estimate_cost**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, end_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const| :ref:`🔗<class_AStarGrid2D_private_method__estimate_cost>`

估算某个点和路径终点之间的成本时调用。

请注意，这个函数在默认的 **AStarGrid2D** 类中是隐藏的。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_AStarGrid2D_method_clear>`

清空网格并将 :ref:`region<class_AStarGrid2D_property_region>` 设置为 ``Rect2i(0, 0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_fill_solid_region:

.. rst-class:: classref-method

|void| **fill_solid_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`, solid\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStarGrid2D_method_fill_solid_region>`

使用指定的值填充网格上 ``region`` 区域的实心标志。

\ **注意：**\ 调用该函数后不需要调用 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_fill_weight_scale_region:

.. rst-class:: classref-method

|void| **fill_weight_scale_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStarGrid2D_method_fill_weight_scale_region>`

使用指定的值填充网格上 ``region`` 区域的权重缩放。

\ **注意：**\ 调用该函数后不需要调用 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_id_path:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_id_path**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStarGrid2D_method_get_id_path>`

返回一个数组，其中包含 AStar2D 在给定点之间找到的路径中的点。数组从路径的起点到终点进行排序。

如果 ``from_id`` 点被禁用，则返回一个空数组（即使 ``from_id == to_id``\ ）。

如果 ``from_id`` 点未被禁用，没有通往目标的有效路径并且 ``allow_partial_path`` 为 ``true``\ ，则会返回通往距离目标最近的可达点的路径。

\ **注意：**\ 如果 ``allow_partial_path`` 为 ``true`` 并且 ``to_id`` 处于禁用状态，搜索耗时可能异常地大。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_data_in_region:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_point_data_in_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_data_in_region>`

返回 ``region`` 范围内点数据（\ ``id``: :ref:`Vector2i<class_Vector2i>`, ``position``: :ref:`Vector2<class_Vector2>`, ``solid``: :ref:`bool<class_bool>`, ``weight_scale``: :ref:`float<class_float>`\ ）的字典数组。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_point_path**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStarGrid2D_method_get_point_path>`

返回一个数组，其中包含 **AStarGrid2D** 在给定点之间找到的路径上的点。数组从路径的起点到终点排序。

如果 ``from_id`` 点被禁用，则返回一个空数组（即使 ``from_id == to_id``\ ）。

如果 ``from_id`` 点未被禁用，没有通往目标的有效路径并且 ``allow_partial_path`` 为 ``true``\ ，则会返回通往距离目标最近的可达点的路径。

\ **注意：**\ 该方法不是线程安全的，同一时间只能有一个 :ref:`Thread<class_Thread>` 使用。请考虑使用 :ref:`Mutex<class_Mutex>` 来确保线程独占访问，避免竞态条件。

另外，如果 ``allow_partial_path`` 为 ``true`` 并且 ``to_id`` 处于禁用状态，搜索耗时可能异常地大。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_position>`

返回与给定 ``id`` 相关联的点的位置。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_weight_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_weight_scale**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_weight_scale>`

返回与给定 ``id`` 关联的点的权重比例。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_dirty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_dirty**\ (\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_dirty>`

表示网格参数发生改变，需要调用 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_in_bounds:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_bounds**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_in_bounds>`

如果 ``x`` 和 ``y`` 是有效的网格坐标（id），即如果它位于 :ref:`region<class_AStarGrid2D_property_region>` 内部，则返回 ``true``\ 。相当于 ``region.has_point(Vector2i(x, y))``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_in_boundsv:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_boundsv**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_in_boundsv>`

如果 ``id`` 向量是有效的网格坐标，即如果它位于 :ref:`region<class_AStarGrid2D_property_region>` 内部，则返回 ``true``\ 。相当于 ``region.has_point(id)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_point_solid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_solid**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_point_solid>`

如果寻路时会禁用某个点，则返回 ``true``\ 。默认情况下，所有点均处于启用状态。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_set_point_solid:

.. rst-class:: classref-method

|void| **set_point_solid**\ (\ id\: :ref:`Vector2i<class_Vector2i>`, solid\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStarGrid2D_method_set_point_solid>`

禁用或启用指定的寻路点。用于制造障碍物。默认情况下，启用所有点。

\ **注意：**\ 调用该函数后不需要调用 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_set_point_weight_scale:

.. rst-class:: classref-method

|void| **set_point_weight_scale**\ (\ id\: :ref:`Vector2i<class_Vector2i>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStarGrid2D_method_set_point_weight_scale>`

为具有给定 ``id`` 的点设置 ``weight_scale``\ 。在确定从相邻点到该点穿越路段的总成本时，\ ``weight_scale`` 要乘以 :ref:`_compute_cost()<class_AStarGrid2D_private_method__compute_cost>` 的结果。

\ **注意：**\ 调用该函数后不需要调用 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ ) :ref:`🔗<class_AStarGrid2D_method_update>`

根据参数更新网格的内部状态，以准备搜索路径。如果更改了 :ref:`region<class_AStarGrid2D_property_region>`\ 、\ :ref:`cell_size<class_AStarGrid2D_property_cell_size>` 或 :ref:`offset<class_AStarGrid2D_property_offset>` 等参数就需要调用它。如果是这种情况，则 :ref:`is_dirty()<class_AStarGrid2D_method_is_dirty>` 将返回 ``true``\ ，需要调用此方法。

\ **注意：**\ 会清空所有点的数据（坚固以及权重比例）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
