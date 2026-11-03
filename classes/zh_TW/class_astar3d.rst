:github_url: hide

.. _class_AStar3D:

AStar3D
=======

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A\* 的一種實作，用於尋找 3D 空間中連接圖中的兩個頂點之間的最短路徑。

.. rst-class:: classref-introduction-group

說明
----

A\*（A Star）是一種用於路徑尋找（pathfinding）與圖遍歷（graph traversal）的電腦演算法，可在頂點（點）之間，沿著一組指定邊（線段）規劃最短路徑。因其效能與準確度而被廣泛使用。Godot 的 A\* 實作預設在 3D 空間中使用點並以歐氏距離計算。

你必須先使用 :ref:`add_point()<class_AStar3D_method_add_point>` 手動加入點，再用 :ref:`connect_points()<class_AStar3D_method_connect_points>` 手動建立線段。完成後，可透過 :ref:`are_points_connected()<class_AStar3D_method_are_points_connected>` 檢查兩點之間是否存在路徑，利用 :ref:`get_id_path()<class_AStar3D_method_get_id_path>` 取得由索引組成的路徑，或使用 :ref:`get_point_path()<class_AStar3D_method_get_point_path>` 取得包含實際座標的路徑。

亦可改用非歐氏距離。若要這麼做，請撰寫一個繼承自 **AStar3D** 的腳本，並覆寫 :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` 與 :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` 兩個方法。這兩個方法皆應接收兩個點的 ID，並回傳這兩點之間的距離。

\ **範例：** 使用曼哈頓距離取代歐氏距離：


.. tabs::

 .. code-tab:: gdscript

    class_name MyAStar3D
    extends AStar3D

    func _compute_cost(u, v):
        var u_pos = get_point_position(u)
        var v_pos = get_point_position(v)
        return abs(u_pos.x - v_pos.x) + abs(u_pos.y - v_pos.y) + abs(u_pos.z - v_pos.z)

    func _estimate_cost(u, v):
        var u_pos = get_point_position(u)
        var v_pos = get_point_position(v)
        return abs(u_pos.x - v_pos.x) + abs(u_pos.y - v_pos.y) + abs(u_pos.z - v_pos.z)

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class MyAStar3D : AStar3D
    {
        public override float _ComputeCost(long fromId, long toId)
        {
            Vector3 fromPoint = GetPointPosition(fromId);
            Vector3 toPoint = GetPointPosition(toId);
            return Mathf.Abs(fromPoint.X - toPoint.X) + Mathf.Abs(fromPoint.Y - toPoint.Y) + Mathf.Abs(fromPoint.Z - toPoint.Z);
        }

        public override float _EstimateCost(long fromId, long toId)
        {
            Vector3 fromPoint = GetPointPosition(fromId);
            Vector3 toPoint = GetPointPosition(toId);
            return Mathf.Abs(fromPoint.X - toPoint.X) + Mathf.Abs(fromPoint.Y - toPoint.Y) + Mathf.Abs(fromPoint.Z - toPoint.Z);
        }
    }



\ :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` 應傳回距離的下界，即 ``_estimate_cost(u, v) <= _compute_cost(u, v)``\ 。這能為演算法提供提示，因為自訂的 :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` 可能計算量較大。若非如此，請讓 :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` 回傳與 :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` 相同的值，以提供演算法最準確的資訊。

若使用預設的 :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` 與 :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>`\ ，或自訂 :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` 的回傳值確實為成本下界，則 A\* 回傳的路徑即為最低成本路徑。此處，路徑成本等於路徑中所有線段的 :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` 結果乘以各線段端點的 ``weight_scale`` 後的總和。若使用預設方法且所有點的 ``weight_scale`` 均為 ``1.0``\ ，則成本即為路徑中各線段之歐氏距離總和。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`neighbor_filter_enabled<class_AStar3D_property_neighbor_filter_enabled>` | ``false`` |
   +-------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`_compute_cost<class_AStar3D_private_method__compute_cost>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`\ ) |virtual| |const|                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`_estimate_cost<class_AStar3D_private_method__estimate_cost>`\ (\ from_id\: :ref:`int<class_int>`, end_id\: :ref:`int<class_int>`\ ) |virtual| |const|                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_filter_neighbor<class_AStar3D_private_method__filter_neighbor>`\ (\ from_id\: :ref:`int<class_int>`, neighbor_id\: :ref:`int<class_int>`\ ) |virtual| |const|                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_point<class_AStar3D_method_add_point>`\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`, weight_scale\: :ref:`float<class_float>` = 1.0\ )                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`are_points_connected<class_AStar3D_method_are_points_connected>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_AStar3D_method_clear>`\ (\ )                                                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`connect_points<class_AStar3D_method_connect_points>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ )                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`disconnect_points<class_AStar3D_method_disconnect_points>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ )               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_available_point_id<class_AStar3D_method_get_available_point_id>`\ (\ ) |const|                                                                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_closest_point<class_AStar3D_method_get_closest_point>`\ (\ to_position\: :ref:`Vector3<class_Vector3>`, include_disabled\: :ref:`bool<class_bool>` = false\ ) |const|                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_closest_position_in_segment<class_AStar3D_method_get_closest_position_in_segment>`\ (\ to_position\: :ref:`Vector3<class_Vector3>`\ ) |const|                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_id_path<class_AStar3D_method_get_id_path>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ )                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_point_capacity<class_AStar3D_method_get_point_capacity>`\ (\ ) |const|                                                                                                                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_point_connections<class_AStar3D_method_get_point_connections>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_point_count<class_AStar3D_method_get_point_count>`\ (\ ) |const|                                                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_point_ids<class_AStar3D_method_get_point_ids>`\ (\ )                                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_point_path<class_AStar3D_method_get_point_path>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ )          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_point_position<class_AStar3D_method_get_point_position>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_point_weight_scale<class_AStar3D_method_get_point_weight_scale>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has_point<class_AStar3D_method_has_point>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_point_disabled<class_AStar3D_method_is_point_disabled>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_point<class_AStar3D_method_remove_point>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reserve_space<class_AStar3D_method_reserve_space>`\ (\ num_nodes\: :ref:`int<class_int>`\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_disabled<class_AStar3D_method_set_point_disabled>`\ (\ id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>` = true\ )                                                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_position<class_AStar3D_method_set_point_position>`\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_weight_scale<class_AStar3D_method_set_point_weight_scale>`\ (\ id\: :ref:`int<class_int>`, weight_scale\: :ref:`float<class_float>`\ )                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AStar3D_property_neighbor_filter_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **neighbor_filter_enabled** = ``false`` :ref:`🔗<class_AStar3D_property_neighbor_filter_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_filter_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_neighbor_filter_enabled**\ (\ )

如果為 ``true``\ ，則啟用通過 :ref:`_filter_neighbor()<class_AStar3D_private_method__filter_neighbor>` 過濾鄰接點。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AStar3D_private_method__compute_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_compute_cost**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar3D_private_method__compute_cost>`

計算兩個連接點之間成本時呼叫。

注意：此函式在預設的 **AStar3D** 類別中為隱藏。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_private_method__estimate_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_estimate_cost**\ (\ from_id\: :ref:`int<class_int>`, end_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar3D_private_method__estimate_cost>`

估算某點與路徑終點之間成本時呼叫。

注意：此函式在預設的 **AStar3D** 類別中為隱藏。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_private_method__filter_neighbor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_filter_neighbor**\ (\ from_id\: :ref:`int<class_int>`, neighbor_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar3D_private_method__filter_neighbor>`

進入鄰接處理且 :ref:`neighbor_filter_enabled<class_AStar3D_property_neighbor_filter_enabled>` 為 ``true`` 時呼叫。如果回傳 ``true``\ ，則不會處理對應的點。

請注意，這個函式在預設的 **AStar3D** 類中是隱藏的。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`, weight_scale\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_AStar3D_method_add_point>`

在給定的位置新增一個點並指定其識別碼。 ``id`` 必須大於等於 0，\ ``weight_scale`` 必須大於等於 0.0。

在計算從鄰近點移動至此點的段落總成本時，會將 :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` 的結果乘以 ``weight_scale``\ 。因此在其他條件相同時，演算法傾向選擇擁有較低 ``weight_scale`` 的點來組成路徑。


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar3D.new()
    astar.add_point(1, Vector3(1, 0, 0), 4) # 新增點 (1, 0, 0)，weight_scale 為 4，id 為 1

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(1, 0, 0), 4); // 新增點 (1, 0, 0)，weight_scale 為 4，id 為 1



若同一 ``id`` 已存在點，則其位置與權重比例會被更新為新的值。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_are_points_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **are_points_connected**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_AStar3D_method_are_points_connected>`

返回兩個給定點是否透過線段直接連接。如果 ``bidirectional`` 為 ``false``\ ，則僅檢查是否能從 ``id`` 移動至 ``to_id``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_AStar3D_method_clear>`

清除所有點與線段。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_connect_points:

.. rst-class:: classref-method

|void| **connect_points**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar3D_method_connect_points>`

在兩個指定點之間建立線段。若 ``bidirectional`` 為 ``false``\ ，則僅允許從 ``id`` 移動至 ``to_id``\ ，反向則不允許。


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar3D.new()
    astar.add_point(1, Vector3(1, 1, 0))
    astar.add_point(2, Vector3(0, 5, 0))
    astar.connect_points(1, 2, false)

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(1, 1, 0));
    astar.AddPoint(2, new Vector3(0, 5, 0));
    astar.ConnectPoints(1, 2, false);



.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_disconnect_points:

.. rst-class:: classref-method

|void| **disconnect_points**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar3D_method_disconnect_points>`

刪除兩點之間的線段。若 ``bidirectional`` 為 ``false``\ ，僅會阻止自 ``id`` 到 ``to_id`` 的移動，原有的單向線段可能仍保留。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_available_point_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_point_id**\ (\ ) |const| :ref:`🔗<class_AStar3D_method_get_available_point_id>`

取得下一個尚未使用的點 ID。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_closest_point**\ (\ to_position\: :ref:`Vector3<class_Vector3>`, include_disabled\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_AStar3D_method_get_closest_point>`

回傳距離 ``to_position`` 最近的點的 ID，可以選擇將停用的點考慮在內。如果點池中沒有點，則回傳 ``-1``\ 。

\ **注意：**\ 如果有多個點距離 ``to_position`` 最近，則回傳 ID 最小的那個點，以保證結果的確定性。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_closest_position_in_segment:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_position_in_segment**\ (\ to_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AStar3D_method_get_closest_position_in_segment>`

返回位於兩個連接點之間線段中、最靠近 ``to_position`` 的位置。


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar3D.new()
    astar.add_point(1, Vector3(0, 0, 0))
    astar.add_point(2, Vector3(0, 5, 0))
    astar.connect_points(1, 2)
    var res = astar.get_closest_position_in_segment(Vector3(3, 3, 0)) # 回傳 (0, 3, 0)

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(0, 0, 0));
    astar.AddPoint(2, new Vector3(0, 5, 0));
    astar.ConnectPoints(1, 2);
    Vector3 res = astar.GetClosestPositionInSegment(new Vector3(3, 3, 0)); // 回傳 (0, 3, 0)



此結果位於 ``y = 0`` 至 ``y = 5`` 的線段上，為該線段中最接近給定點的位置。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_id_path:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_id_path**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStar3D_method_get_id_path>`

回傳一個陣列，其中包含構成 AStar3D 在給定點之間找到的路徑中的點的 ID。陣列從路徑的起點到終點排序。

如果 ``from_id`` 點被停用，則回傳一個空陣列（即使 ``from_id == to_id``\ ）。

如果 ``from_id`` 點未被停用，沒有能夠到達目標的有效路徑，並且 ``allow_partial_path`` 為\ ``true``\ ，則回傳能夠到達的最接近目標點的路徑。

\ **注意：**\ 如果 ``allow_partial_path`` 為 ``true`` 並且 ``to_id`` 處於停用狀態，搜尋耗時可能異常地大。


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar3D.new()
    astar.add_point(1, Vector3(0, 0, 0))
    astar.add_point(2, Vector3(0, 1, 0), 1) # 預設權重為 1
    astar.add_point(3, Vector3(1, 1, 0))
    astar.add_point(4, Vector3(2, 0, 0))

    astar.connect_points(1, 2, false)
    astar.connect_points(2, 3, false)
    astar.connect_points(4, 3, false)
    astar.connect_points(1, 4, false)

    var res = astar.get_id_path(1, 3) # 回傳 [1, 2, 3]

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(0, 0, 0));
    astar.AddPoint(2, new Vector3(0, 1, 0), 1); // 預設權重為 1
    astar.AddPoint(3, new Vector3(1, 1, 0));
    astar.AddPoint(4, new Vector3(2, 0, 0));
    astar.ConnectPoints(1, 2, false);
    astar.ConnectPoints(2, 3, false);
    astar.ConnectPoints(4, 3, false);
    astar.ConnectPoints(1, 4, false);
    long[] res = astar.GetIdPath(1, 3); // 回傳 [1, 2, 3]



如果將第 2 個點的權重更改為 3，則結果將改為 ``[1, 4, 3]``\ ，因為現在即使距離更長，但通過第 4 點也比通過第 2 點“更容易”。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_capacity:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_capacity**\ (\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_capacity>`

回傳儲存點資料結構的容量，可配合 :ref:`reserve_space()<class_AStar3D_method_reserve_space>` 使用。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_connections:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_point_connections**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar3D_method_get_point_connections>`

返回一個陣列，包含與指定點直接相連之點的 ID。


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar3D.new()
    astar.add_point(1, Vector3(0, 0, 0))
    astar.add_point(2, Vector3(0, 1, 0))
    astar.add_point(3, Vector3(1, 1, 0))
    astar.add_point(4, Vector3(2, 0, 0))

    astar.connect_points(1, 2, true)
    astar.connect_points(1, 3, true)

    var neighbors = astar.get_point_connections(1) # 回傳 [2, 3]

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(0, 0, 0));
    astar.AddPoint(2, new Vector3(0, 1, 0));
    astar.AddPoint(3, new Vector3(1, 1, 0));
    astar.AddPoint(4, new Vector3(2, 0, 0));
    astar.ConnectPoints(1, 2, true);
    astar.ConnectPoints(1, 3, true);

    long[] neighbors = astar.GetPointConnections(1); // 回傳 [2, 3]



.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_count>`

回傳目前點池中的點數。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_ids:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_point_ids**\ (\ ) :ref:`🔗<class_AStar3D_method_get_point_ids>`

回傳所有點 ID 的陣列。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_path:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_point_path**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStar3D_method_get_point_path>`

回傳一個陣列，其中包含 AStar3D 在給定點之間找到的路徑中的點。陣列從路徑的起點到終點進行排序。

如果 ``from_id`` 點被停用，則回傳一個空陣列（即使 ``from_id == to_id``\ ）。

如果 ``from_id`` 點未被停用，沒有通往目標的有效路徑並且 ``allow_partial_path`` 為 ``true``\ ，則會回傳通往距離目標最近的可達點的路徑。

\ **注意：**\ 該方法不是執行緒安全的，同一時間只能有一個 :ref:`Thread<class_Thread>` 使用。請考慮使用 :ref:`Mutex<class_Mutex>` 來確保執行緒獨佔存取，避免競態條件。

另外，如果 ``allow_partial_path`` 為 ``true`` 並且 ``to_id`` 處於停用狀態，搜尋耗時可能異常地大。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_position**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_position>`

回傳與指定 ``id`` 相關聯之點的位置。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_weight_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_weight_scale**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_weight_scale>`

回傳與指定 ``id`` 相關聯之點的權重係數。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_has_point>`

檢查是否存在與指定 ``id`` 相關聯的點。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_is_point_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_disabled**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_is_point_disabled>`

檢查指定點在尋路時是否被停用；預設所有點均啟用。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar3D_method_remove_point>`

自點池中移除與指定 ``id`` 相關聯的點。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_reserve_space:

.. rst-class:: classref-method

|void| **reserve_space**\ (\ num_nodes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar3D_method_reserve_space>`

在內部為 ``num_nodes`` 個點預先保留空間；當一次加入大量已知點數（如網格上的所有點）時特別有用。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_set_point_disabled:

.. rst-class:: classref-method

|void| **set_point_disabled**\ (\ id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar3D_method_set_point_disabled>`

啟用或停用指定點的尋路功能，可用來製作臨時障礙物。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_AStar3D_method_set_point_position>`

為具有指定 ``id`` 的點設定新位置 ``position``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_set_point_weight_scale:

.. rst-class:: classref-method

|void| **set_point_weight_scale**\ (\ id\: :ref:`int<class_int>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStar3D_method_set_point_weight_scale>`

為具有指定 ``id`` 的點設定 ``weight_scale``\ 。在計算從鄰近點移動至此點之線段的總代價時，會把 ``weight_scale`` 乘上 :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` 的結果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
