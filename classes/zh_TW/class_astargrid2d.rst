:github_url: hide

.. _class_AStarGrid2D:

AStarGrid2D
===========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A\* 的一種實作，用於尋找疏鬆 2D 網格中兩點之間的最短路徑。

.. rst-class:: classref-introduction-group

說明
----

**AStarGrid2D** 是 :ref:`AStar2D<class_AStar2D>` 的變體，專門用於部分 2D 網格。由於不需手動建立並連接點，使用上更為簡單。此類同時支援多種啟發式、對角線移動模式，並提供跳點模式以加速運算。

要使用 **AStarGrid2D**\ ，只需設定網格的 :ref:`region<class_AStarGrid2D_property_region>`\ ，必要時設定 :ref:`cell_size<class_AStarGrid2D_property_cell_size>`\ ，然後呼叫 :ref:`update()<class_AStarGrid2D_method_update>`\ ：


.. tabs::

 .. code-tab:: gdscript

    var astar_grid = AStarGrid2D.new()
    astar_grid.region = Rect2i(0, 0, 32, 32)
    astar_grid.cell_size = Vector2(16, 16)
    astar_grid.update()
    print(astar_grid.get_id_path(Vector2i(0, 0), Vector2i(3, 4))) # 會輸出 [(0, 0), (1, 1), (2, 2), (3, 3), (3, 4)]
    print(astar_grid.get_point_path(Vector2i(0, 0), Vector2i(3, 4))) # 會輸出 [(0, 0), (16, 16), (32, 32), (48, 48), (48, 64)]

 .. code-tab:: csharp

    AStarGrid2D astarGrid = new AStarGrid2D();
    astarGrid.Region = new Rect2I(0, 0, 32, 32);
    astarGrid.CellSize = new Vector2I(16, 16);
    astarGrid.Update();
    GD.Print(astarGrid.GetIdPath(Vector2I.Zero, new Vector2I(3, 4))); // 會輸出 [(0, 0), (1, 1), (2, 2), (3, 3), (3, 4)]
    GD.Print(astarGrid.GetPointPath(Vector2I.Zero, new Vector2I(3, 4))); // 會輸出 [(0, 0), (16, 16), (32, 32), (48, 48), (48, 64)]



若要從尋路網格中移除某點，必須先使用 :ref:`set_point_solid()<class_AStarGrid2D_method_set_point_solid>` 將其標記為「實心」。

.. rst-class:: classref-introduction-group

教學
----

- `使用 AStarGrid2D 的網格導航範例 <https://godotengine.org/asset-library/asset/2723>`__

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_AStarGrid2D_Heuristic:

.. rst-class:: classref-enumeration

enum **Heuristic**: :ref:`🔗<enum_AStarGrid2D_Heuristic>`

.. _class_AStarGrid2D_constant_HEURISTIC_EUCLIDEAN:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_EUCLIDEAN** = ``0``

`歐氏啟發式 <https://zh.wikipedia.org/wiki/歐幾里得距離>`__\ ，公式如下：

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    result = sqrt(dx * dx + dy * dy)

\ **注意：**\ 這也是 :ref:`AStar3D<class_AStar3D>` 與 :ref:`AStar2D<class_AStar2D>` 預設使用的內部啟發式（含可能的 z 軸）。

.. _class_AStarGrid2D_constant_HEURISTIC_MANHATTAN:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_MANHATTAN** = ``1``

`曼哈頓啟發式 <https://zh.wikipedia.org/wiki/曼哈頓距離>`__\ ，公式如下：

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    result = dx + dy

\ **注意：**\ 此啟發式預期搭配僅允許四向正交移動的情況（將 :ref:`diagonal_mode<class_AStarGrid2D_property_diagonal_mode>` 設為 :ref:`DIAGONAL_MODE_NEVER<class_AStarGrid2D_constant_DIAGONAL_MODE_NEVER>`\ ）。

.. _class_AStarGrid2D_constant_HEURISTIC_OCTILE:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_OCTILE** = ``2``

Octile 啟發式，公式如下：

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    f = sqrt(2) - 1
    result = (dx < dy) ? f * dx + dy : f * dy + dx;

.. _class_AStarGrid2D_constant_HEURISTIC_CHEBYSHEV:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_CHEBYSHEV** = ``3``

`切比雪夫啟發式 <https://zh.wikipedia.org/wiki/切比雪夫距離>`__\ ，公式如下：

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    result = max(dx, dy)

.. _class_AStarGrid2D_constant_HEURISTIC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_MAX** = ``4``

代表 :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_AStarGrid2D_DiagonalMode:

.. rst-class:: classref-enumeration

enum **DiagonalMode**: :ref:`🔗<enum_AStarGrid2D_DiagonalMode>`

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_ALWAYS** = ``0``

尋路演算法將忽略目標格周圍的實心鄰格，允許沿對角線通過。

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_NEVER** = ``1``

尋路演算法將完全忽略對角線，路徑僅允許正交移動。

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE** = ``2``

若在特定路段的相鄰格周圍至少有兩個障礙物，尋路演算法將避免使用對角線。

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES** = ``3``

若在特定路段的相鄰格周圍存在任意障礙物，尋路演算法將避免使用對角線。

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_MAX** = ``4``

代表 :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_AStarGrid2D_CellShape:

.. rst-class:: classref-enumeration

enum **CellShape**: :ref:`🔗<enum_AStarGrid2D_CellShape>`

.. _class_AStarGrid2D_constant_CELL_SHAPE_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_SQUARE** = ``0``

矩形格形。

.. _class_AStarGrid2D_constant_CELL_SHAPE_ISOMETRIC_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_ISOMETRIC_RIGHT** = ``1``

菱形格形（等角視覺）。格座標佈局：水平軸朝右上，垂直軸朝右下。

.. _class_AStarGrid2D_constant_CELL_SHAPE_ISOMETRIC_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_ISOMETRIC_DOWN** = ``2``

菱形格形（等角視覺）。格座標佈局：水平軸朝右下，垂直軸朝左下。

.. _class_AStarGrid2D_constant_CELL_SHAPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_MAX** = ``3``

代表 :ref:`CellShape<enum_AStarGrid2D_CellShape>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AStarGrid2D_property_cell_shape:

.. rst-class:: classref-property

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **cell_shape** = ``0`` :ref:`🔗<class_AStarGrid2D_property_cell_shape>`

.. rst-class:: classref-property-setget

- |void| **set_cell_shape**\ (\ value\: :ref:`CellShape<enum_AStarGrid2D_CellShape>`\ )
- :ref:`CellShape<enum_AStarGrid2D_CellShape>` **get_cell_shape**\ (\ )

格形類型，決定點在網格中的放置方式。若變更此屬性，搜尋下一條路徑前需呼叫 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_cell_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **cell_size** = ``Vector2(1, 1)`` :ref:`🔗<class_AStarGrid2D_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_cell_size**\ (\ )

格子的實際尺寸，用於計算 :ref:`get_point_path()<class_AStarGrid2D_method_get_point_path>` 回傳的座標。若變更此屬性，搜尋下一條路徑前需呼叫 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_default_compute_heuristic:

.. rst-class:: classref-property

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **default_compute_heuristic** = ``0`` :ref:`🔗<class_AStarGrid2D_property_default_compute_heuristic>`

.. rst-class:: classref-property-setget

- |void| **set_default_compute_heuristic**\ (\ value\: :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ )
- :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **get_default_compute_heuristic**\ (\ )

預設 :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ ，當未覆寫 :ref:`_compute_cost()<class_AStarGrid2D_private_method__compute_cost>` 時，用以計算兩點間成本。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_default_estimate_heuristic:

.. rst-class:: classref-property

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **default_estimate_heuristic** = ``0`` :ref:`🔗<class_AStarGrid2D_property_default_estimate_heuristic>`

.. rst-class:: classref-property-setget

- |void| **set_default_estimate_heuristic**\ (\ value\: :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ )
- :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **get_default_estimate_heuristic**\ (\ )

預設 :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ ，當未覆寫 :ref:`_estimate_cost()<class_AStarGrid2D_private_method__estimate_cost>` 時，用以計算目前點與終點之間的成本。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_diagonal_mode:

.. rst-class:: classref-property

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **diagonal_mode** = ``0`` :ref:`🔗<class_AStarGrid2D_property_diagonal_mode>`

.. rst-class:: classref-property-setget

- |void| **set_diagonal_mode**\ (\ value\: :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>`\ )
- :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **get_diagonal_mode**\ (\ )

指定的 :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>`\ ，用於強制路徑避免或允許特定對角線。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_jumping_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **jumping_enabled** = ``false`` :ref:`🔗<class_AStarGrid2D_property_jumping_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_jumping_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_jumping_enabled**\ (\ )

啟用或停用跳點功能以略過中繼點並加速搜尋演算法。

\ **注意：**\ 目前啟用此功能後，尋路時將不考慮權重比例。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AStarGrid2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

網格的位移量，用於計算 :ref:`get_point_path()<class_AStarGrid2D_method_get_point_path>` 回傳的座標。若變更此屬性，搜尋下一條路徑前需呼叫 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_region:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **region** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_AStarGrid2D_property_region>`

.. rst-class:: classref-property-setget

- |void| **set_region**\ (\ value\: :ref:`Rect2i<class_Rect2i>`\ )
- :ref:`Rect2i<class_Rect2i>` **get_region**\ (\ )

可供尋路使用的網格區域。若變更此屬性，搜尋下一條路徑前需呼叫 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(0, 0)`` :ref:`🔗<class_AStarGrid2D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size**\ (\ )

**已棄用：** Use :ref:`region<class_AStarGrid2D_property_region>` instead.

網格尺寸（各軸上、邊長為 :ref:`cell_size<class_AStarGrid2D_property_cell_size>` 的格數）。若變更此屬性，搜尋下一條路徑前需呼叫 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AStarGrid2D_private_method__compute_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_compute_cost**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const| :ref:`🔗<class_AStarGrid2D_private_method__compute_cost>`

計算兩個連接點之間成本時呼叫。

注意：此函式在預設的 **AStarGrid2D** 類別中為隱藏。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_private_method__estimate_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_estimate_cost**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, end_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const| :ref:`🔗<class_AStarGrid2D_private_method__estimate_cost>`

估算某點與路徑終點之間成本時呼叫。

注意：此函式在預設的 **AStarGrid2D** 類別中為隱藏。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_AStarGrid2D_method_clear>`

清空網格並將 :ref:`region<class_AStarGrid2D_property_region>` 設為 ``Rect2i(0, 0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_fill_solid_region:

.. rst-class:: classref-method

|void| **fill_solid_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`, solid\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStarGrid2D_method_fill_solid_region>`

將指定的 ``region`` 區域填入所給的實心標記值。

\ **注意：**\ 呼叫此函式後無需再次呼叫 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_fill_weight_scale_region:

.. rst-class:: classref-method

|void| **fill_weight_scale_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStarGrid2D_method_fill_weight_scale_region>`

為網格中指定的 ``region`` 設定給定的權重比例。

\ **注意：**\ 呼叫此函式後無需再次呼叫 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_id_path:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_id_path**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStarGrid2D_method_get_id_path>`

Returns an array with the IDs of the points that form the path found by AStar2D between the given points. The array is ordered from the starting point to the ending point of the path.

If ``from_id`` point is disabled, returns an empty array (even if ``from_id == to_id``).

If ``from_id`` point is not disabled, there is no valid path to the target, and ``allow_partial_path`` is ``true``, returns a path to the point closest to the target that can be reached.

\ **Note:** When ``allow_partial_path`` is ``true`` and ``to_id`` is solid the search may take an unusually long time to finish.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_data_in_region:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_point_data_in_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_data_in_region>`

返回一個陣列，內容為位於 ``region`` 內各點的資料字典（\ ``id``: :ref:`Vector2i<class_Vector2i>`\ 、\ ``position``: :ref:`Vector2<class_Vector2>`\ 、\ ``solid``: :ref:`bool<class_bool>`\ 、\ ``weight_scale``: :ref:`float<class_float>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_point_path**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStarGrid2D_method_get_point_path>`

Returns an array with the points that are in the path found by **AStarGrid2D** between the given points. The array is ordered from the starting point to the ending point of the path.

If ``from_id`` point is disabled, returns an empty array (even if ``from_id == to_id``).

If ``from_id`` point is not disabled, there is no valid path to the target, and ``allow_partial_path`` is ``true``, returns a path to the point closest to the target that can be reached.

\ **Note:** This method is not thread-safe; it can only be used from a single :ref:`Thread<class_Thread>` at a given time. Consider using :ref:`Mutex<class_Mutex>` to ensure exclusive access to one thread to avoid race conditions.

Additionally, when ``allow_partial_path`` is ``true`` and ``to_id`` is solid the search may take an unusually long time to finish.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_position>`

回傳與指定 ``id`` 相關聯之點的位置。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_weight_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_weight_scale**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_weight_scale>`

回傳與指定 ``id`` 相關聯之點的權重係數。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_dirty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_dirty**\ (\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_dirty>`

指出網格參數已變更，需要呼叫 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_in_bounds:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_bounds**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_in_bounds>`

若 ``x`` 與 ``y`` 組成的座標位於 :ref:`region<class_AStarGrid2D_property_region>` 內，則回傳 ``true``\ ；相當於 ``region.has_point(Vector2i(x, y))``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_in_boundsv:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_boundsv**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_in_boundsv>`

若向量 ``id`` 位於 :ref:`region<class_AStarGrid2D_property_region>` 內，則回傳 ``true``\ ；相當於 ``region.has_point(id)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_point_solid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_solid**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_point_solid>`

若某點被停用於尋路，則回傳 ``true``\ 。預設所有點皆為啟用狀態。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_set_point_solid:

.. rst-class:: classref-method

|void| **set_point_solid**\ (\ id\: :ref:`Vector2i<class_Vector2i>`, solid\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStarGrid2D_method_set_point_solid>`

啟用或停用指定點的尋路功能，可用於製造障礙物。預設所有點皆啟用。

\ **注意：**\ 呼叫此函式後無需再次呼叫 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_set_point_weight_scale:

.. rst-class:: classref-method

|void| **set_point_weight_scale**\ (\ id\: :ref:`Vector2i<class_Vector2i>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStarGrid2D_method_set_point_weight_scale>`

設定指定 ``id`` 點的 ``weight_scale``\ 。在計算從鄰近點移動至此點的段落成本時，會將 :ref:`_compute_cost()<class_AStarGrid2D_private_method__compute_cost>` 的結果乘以此值。

\ **注意：**\ 呼叫此函式後無需再次呼叫 :ref:`update()<class_AStarGrid2D_method_update>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ ) :ref:`🔗<class_AStarGrid2D_method_update>`

根據目前參數更新網格內部狀態，以便進行路徑搜尋。若變更了 :ref:`region<class_AStarGrid2D_property_region>`\ 、\ :ref:`cell_size<class_AStarGrid2D_property_cell_size>` 或 :ref:`offset<class_AStarGrid2D_property_offset>` 等參數，必須呼叫此方法。當需要更新時， :ref:`is_dirty()<class_AStarGrid2D_method_is_dirty>` 會回傳 ``true``\ 。

\ **注意：**\ 此操作會清除所有點的實心與權重比例資料。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
