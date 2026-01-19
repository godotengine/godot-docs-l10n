:github_url: hide

.. _class_AStar2D:

AStar2D
=======

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A\* 的實作，可用於搜尋 2D 空間連通圖上兩頂點間的最短路徑。

.. rst-class:: classref-introduction-group

說明
----

A\* 演算法的實作，用於在 2D 空間連通圖上尋找兩頂點之間的最短路徑。

更完整的用法請參考 :ref:`AStar3D<class_AStar3D>`\ 。 **AStar2D** 為 :ref:`AStar3D<class_AStar3D>` 的封裝，專門處理 2D 座標。

.. rst-class:: classref-introduction-group

教學
----

- `使用 AStarGrid2D 的網格導航範例 <https://godotengine.org/asset-library/asset/2723>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`neighbor_filter_enabled<class_AStar2D_property_neighbor_filter_enabled>` | ``false`` |
   +-------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`_compute_cost<class_AStar2D_private_method__compute_cost>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`\ ) |virtual| |const|                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`_estimate_cost<class_AStar2D_private_method__estimate_cost>`\ (\ from_id\: :ref:`int<class_int>`, end_id\: :ref:`int<class_int>`\ ) |virtual| |const|                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_filter_neighbor<class_AStar2D_private_method__filter_neighbor>`\ (\ from_id\: :ref:`int<class_int>`, neighbor_id\: :ref:`int<class_int>`\ ) |virtual| |const|                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_point<class_AStar2D_method_add_point>`\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`, weight_scale\: :ref:`float<class_float>` = 1.0\ )                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`are_points_connected<class_AStar2D_method_are_points_connected>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_AStar2D_method_clear>`\ (\ )                                                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`connect_points<class_AStar2D_method_connect_points>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ )                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`disconnect_points<class_AStar2D_method_disconnect_points>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ )               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_available_point_id<class_AStar2D_method_get_available_point_id>`\ (\ ) |const|                                                                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_closest_point<class_AStar2D_method_get_closest_point>`\ (\ to_position\: :ref:`Vector2<class_Vector2>`, include_disabled\: :ref:`bool<class_bool>` = false\ ) |const|                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_closest_position_in_segment<class_AStar2D_method_get_closest_position_in_segment>`\ (\ to_position\: :ref:`Vector2<class_Vector2>`\ ) |const|                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_id_path<class_AStar2D_method_get_id_path>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ )                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_point_capacity<class_AStar2D_method_get_point_capacity>`\ (\ ) |const|                                                                                                                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_point_connections<class_AStar2D_method_get_point_connections>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_point_count<class_AStar2D_method_get_point_count>`\ (\ ) |const|                                                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_point_ids<class_AStar2D_method_get_point_ids>`\ (\ )                                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_point_path<class_AStar2D_method_get_point_path>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ )          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_position<class_AStar2D_method_get_point_position>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_point_weight_scale<class_AStar2D_method_get_point_weight_scale>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has_point<class_AStar2D_method_has_point>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_point_disabled<class_AStar2D_method_is_point_disabled>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_point<class_AStar2D_method_remove_point>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reserve_space<class_AStar2D_method_reserve_space>`\ (\ num_nodes\: :ref:`int<class_int>`\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_disabled<class_AStar2D_method_set_point_disabled>`\ (\ id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>` = true\ )                                                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_position<class_AStar2D_method_set_point_position>`\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_weight_scale<class_AStar2D_method_set_point_weight_scale>`\ (\ id\: :ref:`int<class_int>`, weight_scale\: :ref:`float<class_float>`\ )                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AStar2D_property_neighbor_filter_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **neighbor_filter_enabled** = ``false`` :ref:`🔗<class_AStar2D_property_neighbor_filter_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_filter_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_neighbor_filter_enabled**\ (\ )

If ``true`` enables the filtering of neighbors via :ref:`_filter_neighbor()<class_AStar2D_private_method__filter_neighbor>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AStar2D_private_method__compute_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_compute_cost**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar2D_private_method__compute_cost>`

在計算兩個連接點之間的代價時呼叫。

此函式在預設的 **AStar2D** 類別中為隱藏。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_private_method__estimate_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_estimate_cost**\ (\ from_id\: :ref:`int<class_int>`, end_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar2D_private_method__estimate_cost>`

在估計某點到路徑終點的代價時呼叫。

此函式在預設的 **AStar2D** 類別中為隱藏。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_private_method__filter_neighbor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_filter_neighbor**\ (\ from_id\: :ref:`int<class_int>`, neighbor_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar2D_private_method__filter_neighbor>`

Called when neighboring enters processing and if :ref:`neighbor_filter_enabled<class_AStar2D_property_neighbor_filter_enabled>` is ``true``. If ``true`` is returned the point will not be processed.

Note that this function is hidden in the default **AStar2D** class.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`, weight_scale\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_AStar2D_method_add_point>`

在指定位置以指定識別碼新增一個點。\ ``id`` 必須大於等於 0，\ ``weight_scale`` 必須大於等於 0.0。

在計算從相鄰點移動到此點之線段的總代價時，會把 ``weight_scale`` 乘上 :ref:`_compute_cost()<class_AStar2D_private_method__compute_cost>` 的結果。因此，在其他條件相同時，演算法傾向選擇 ``weight_scale`` 較小的點來組成路徑。


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar2D.new()
    astar.add_point(1, Vector2(1, 0), 4) # 新增點 (1, 0)，權重係數 4，ID 1

 .. code-tab:: csharp

    var astar = new AStar2D();
    astar.AddPoint(1, new Vector2(1, 0), 4); // 新增點 (1, 0)，權重係數 4，ID 1



若指定 ``id`` 已存在，則會更新該點的位置與權重係數。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_are_points_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **are_points_connected**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_AStar2D_method_are_points_connected>`

檢查給定兩點之間是否存在連線／線段。若 ``bidirectional`` 為 ``false``\ ，則僅判斷是否可自 ``id`` 經由此線段移動至 ``to_id``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_AStar2D_method_clear>`

清除所有點與線段。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_connect_points:

.. rst-class:: classref-method

|void| **connect_points**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar2D_method_connect_points>`

在兩點之間建立線段。若 ``bidirectional`` 為 ``false``\ ，僅允許自 ``id`` 移動到 ``to_id``\ ，反向則不行。


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar2D.new()
    astar.add_point(1, Vector2(1, 1))
    astar.add_point(2, Vector2(0, 5))
    astar.connect_points(1, 2, false)

 .. code-tab:: csharp

    var astar = new AStar2D();
    astar.AddPoint(1, new Vector2(1, 1));
    astar.AddPoint(2, new Vector2(0, 5));
    astar.ConnectPoints(1, 2, false);



.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_disconnect_points:

.. rst-class:: classref-method

|void| **disconnect_points**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar2D_method_disconnect_points>`

刪除兩點之間的線段。若 ``bidirectional`` 為 ``false``\ ，僅會阻止自 ``id`` 到 ``to_id`` 的移動，原有的單向線段可能仍保留。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_available_point_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_point_id**\ (\ ) |const| :ref:`🔗<class_AStar2D_method_get_available_point_id>`

取得下一個尚未使用的點 ID。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_closest_point**\ (\ to_position\: :ref:`Vector2<class_Vector2>`, include_disabled\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_AStar2D_method_get_closest_point>`

回傳最接近 ``to_position`` 的點之 ID，可選擇是否納入已停用的點。若點池為空則回傳 ``-1``\ 。

\ **注意：** 若有多個點同樣最接近，將回傳最小 ID 的點，以確保結果一致。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_closest_position_in_segment:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_position_in_segment**\ (\ to_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_AStar2D_method_get_closest_position_in_segment>`

回傳位於兩連接點線段內、最接近 ``to_position`` 的座標。


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar2D.new()
    astar.add_point(1, Vector2(0, 0))
    astar.add_point(2, Vector2(0, 5))
    astar.connect_points(1, 2)
    var res = astar.get_closest_position_in_segment(Vector2(3, 3)) # 回傳 (0, 3)

 .. code-tab:: csharp

    var astar = new AStar2D();
    astar.AddPoint(1, new Vector2(0, 0));
    astar.AddPoint(2, new Vector2(0, 5));
    astar.ConnectPoints(1, 2);
    Vector2 res = astar.GetClosestPositionInSegment(new Vector2(3, 3)); // 回傳 (0, 3)



此結果位於 ``y = 0`` 到 ``y = 5`` 的線段中，並且是該線段中最靠近指定點的位置。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_id_path:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_id_path**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStar2D_method_get_id_path>`

Returns an array with the IDs of the points that form the path found by AStar2D between the given points. The array is ordered from the starting point to the ending point of the path.

If ``from_id`` point is disabled, returns an empty array (even if ``from_id == to_id``).

If ``from_id`` point is not disabled, there is no valid path to the target, and ``allow_partial_path`` is ``true``, returns a path to the point closest to the target that can be reached.

\ **Note:** When ``allow_partial_path`` is ``true`` and ``to_id`` is disabled the search may take an unusually long time to finish.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar2D.new()
    astar.add_point(1, Vector2(0, 0))
    astar.add_point(2, Vector2(0, 1), 1) # Default weight is 1
    astar.add_point(3, Vector2(1, 1))
    astar.add_point(4, Vector2(2, 0))

    astar.connect_points(1, 2, false)
    astar.connect_points(2, 3, false)
    astar.connect_points(4, 3, false)
    astar.connect_points(1, 4, false)

    var res = astar.get_id_path(1, 3) # Returns [1, 2, 3]

 .. code-tab:: csharp

    var astar = new AStar2D();
    astar.AddPoint(1, new Vector2(0, 0));
    astar.AddPoint(2, new Vector2(0, 1), 1); // Default weight is 1
    astar.AddPoint(3, new Vector2(1, 1));
    astar.AddPoint(4, new Vector2(2, 0));

    astar.ConnectPoints(1, 2, false);
    astar.ConnectPoints(2, 3, false);
    astar.ConnectPoints(4, 3, false);
    astar.ConnectPoints(1, 4, false);
    long[] res = astar.GetIdPath(1, 3); // Returns [1, 2, 3]



If you change the 2nd point's weight to 3, then the result will be ``[1, 4, 3]`` instead, because now even though the distance is longer, it's "easier" to get through point 4 than through point 2.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_capacity:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_capacity**\ (\ ) |const| :ref:`🔗<class_AStar2D_method_get_point_capacity>`

回傳儲存點資料結構的容量，可配合 :ref:`reserve_space()<class_AStar2D_method_reserve_space>` 使用。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_connections:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_point_connections**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar2D_method_get_point_connections>`

回傳與指定點相連之點的 ID 陣列。


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar2D.new()
    astar.add_point(1, Vector2(0, 0))
    astar.add_point(2, Vector2(0, 1))
    astar.add_point(3, Vector2(1, 1))
    astar.add_point(4, Vector2(2, 0))

    astar.connect_points(1, 2, true)
    astar.connect_points(1, 3, true)

    var neighbors = astar.get_point_connections(1) # 回傳 [2, 3]

 .. code-tab:: csharp

    var astar = new AStar2D();
    astar.AddPoint(1, new Vector2(0, 0));
    astar.AddPoint(2, new Vector2(0, 1));
    astar.AddPoint(3, new Vector2(1, 1));
    astar.AddPoint(4, new Vector2(2, 0));

    astar.ConnectPoints(1, 2, true);
    astar.ConnectPoints(1, 3, true);

    long[] neighbors = astar.GetPointConnections(1); // 回傳 [2, 3]



.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_AStar2D_method_get_point_count>`

回傳目前點池中的點數。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_ids:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_point_ids**\ (\ ) :ref:`🔗<class_AStar2D_method_get_point_ids>`

回傳所有點 ID 的陣列。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_point_path**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStar2D_method_get_point_path>`

Returns an array with the points that are in the path found by AStar2D between the given points. The array is ordered from the starting point to the ending point of the path.

If ``from_id`` point is disabled, returns an empty array (even if ``from_id == to_id``).

If ``from_id`` point is not disabled, there is no valid path to the target, and ``allow_partial_path`` is ``true``, returns a path to the point closest to the target that can be reached.

\ **Note:** This method is not thread-safe; it can only be used from a single :ref:`Thread<class_Thread>` at a given time. Consider using :ref:`Mutex<class_Mutex>` to ensure exclusive access to one thread to avoid race conditions.

Additionally, when ``allow_partial_path`` is ``true`` and ``to_id`` is disabled the search may take an unusually long time to finish.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar2D_method_get_point_position>`

回傳與指定 ``id`` 相關聯之點的位置。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_weight_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_weight_scale**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar2D_method_get_point_weight_scale>`

回傳與指定 ``id`` 相關聯之點的權重係數。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar2D_method_has_point>`

檢查是否存在與指定 ``id`` 相關聯的點。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_is_point_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_disabled**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar2D_method_is_point_disabled>`

檢查指定點在尋路時是否被停用；預設所有點均啟用。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar2D_method_remove_point>`

自點池中移除與指定 ``id`` 相關聯的點。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_reserve_space:

.. rst-class:: classref-method

|void| **reserve_space**\ (\ num_nodes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar2D_method_reserve_space>`

在內部為 ``num_nodes`` 個點預先保留空間；當一次加入大量已知點數（如網格上的所有點）時特別有用。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_set_point_disabled:

.. rst-class:: classref-method

|void| **set_point_disabled**\ (\ id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar2D_method_set_point_disabled>`

啟用或停用指定點的尋路功能，可用來製作臨時障礙物。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AStar2D_method_set_point_position>`

為具有指定 ``id`` 的點設定新位置 ``position``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_set_point_weight_scale:

.. rst-class:: classref-method

|void| **set_point_weight_scale**\ (\ id\: :ref:`int<class_int>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStar2D_method_set_point_weight_scale>`

為具有指定 ``id`` 的點設定 ``weight_scale``\ 。在計算從鄰近點移動至此點之線段的總代價時，會把 ``weight_scale`` 乘上 :ref:`_compute_cost()<class_AStar2D_private_method__compute_cost>` 的結果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
