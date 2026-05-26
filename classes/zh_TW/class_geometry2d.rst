:github_url: hide

.. _class_Geometry2D:

Geometry2D
==========

**繼承：** :ref:`Object<class_Object>`

提供常見 2D 幾何運算的方法。

.. rst-class:: classref-introduction-group

說明
----

為建立幾何形狀，計算形狀之間的交集，以及處理 2D 中的各種其他幾何操作提供了一組輔助函式。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]                     | :ref:`bresenham_line<class_Geometry2D_method_bresenham_line>`\ (\ from\: :ref:`Vector2i<class_Vector2i>`, to\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`clip_polygons<class_Geometry2D_method_clip_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`clip_polyline_with_polygon<class_Geometry2D_method_clip_polyline_with_polygon>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                  |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                              | :ref:`convex_hull<class_Geometry2D_method_convex_hull>`\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                                 |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`decompose_polygon_in_convex<class_Geometry2D_method_decompose_polygon_in_convex>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`exclude_polygons<class_Geometry2D_method_exclude_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                    | :ref:`get_closest_point_to_segment<class_Geometry2D_method_get_closest_point_to_segment>`\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ )                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                    | :ref:`get_closest_point_to_segment_uncapped<class_Geometry2D_method_get_closest_point_to_segment_uncapped>`\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ )                                                                            |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                              | :ref:`get_closest_points_between_segments<class_Geometry2D_method_get_closest_points_between_segments>`\ (\ p1\: :ref:`Vector2<class_Vector2>`, q1\: :ref:`Vector2<class_Vector2>`, p2\: :ref:`Vector2<class_Vector2>`, q2\: :ref:`Vector2<class_Vector2>`\ )                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`intersect_polygons<class_Geometry2D_method_intersect_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`intersect_polyline_with_polygon<class_Geometry2D_method_intersect_polyline_with_polygon>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                        |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_point_in_circle<class_Geometry2D_method_is_point_in_circle>`\ (\ point\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ )                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_point_in_polygon<class_Geometry2D_method_is_point_in_polygon>`\ (\ point\: :ref:`Vector2<class_Vector2>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_polygon_clockwise<class_Geometry2D_method_is_polygon_clockwise>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                                    | :ref:`line_intersects_line<class_Geometry2D_method_line_intersects_line>`\ (\ from_a\: :ref:`Vector2<class_Vector2>`, dir_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, dir_b\: :ref:`Vector2<class_Vector2>`\ )                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                              | :ref:`make_atlas<class_Geometry2D_method_make_atlas>`\ (\ sizes\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`merge_polygons<class_Geometry2D_method_merge_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`offset_polygon<class_Geometry2D_method_offset_polygon>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0\ )                                                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`offset_polyline<class_Geometry2D_method_offset_polyline>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0, end_type\: :ref:`PolyEndType<enum_Geometry2D_PolyEndType>` = 3\ ) |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`point_is_inside_triangle<class_Geometry2D_method_point_is_inside_triangle>`\ (\ point\: :ref:`Vector2<class_Vector2>`, a\: :ref:`Vector2<class_Vector2>`, b\: :ref:`Vector2<class_Vector2>`, c\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                             |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                        | :ref:`segment_intersects_circle<class_Geometry2D_method_segment_intersects_circle>`\ (\ segment_from\: :ref:`Vector2<class_Vector2>`, segment_to\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ )                             |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                                    | :ref:`segment_intersects_segment<class_Geometry2D_method_segment_intersects_segment>`\ (\ from_a\: :ref:`Vector2<class_Vector2>`, to_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, to_b\: :ref:`Vector2<class_Vector2>`\ )                                                     |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                                  | :ref:`triangulate_delaunay<class_Geometry2D_method_triangulate_delaunay>`\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                                  | :ref:`triangulate_polygon<class_Geometry2D_method_triangulate_polygon>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Geometry2D_PolyBooleanOperation:

.. rst-class:: classref-enumeration

enum **PolyBooleanOperation**: :ref:`🔗<enum_Geometry2D_PolyBooleanOperation>`

.. _class_Geometry2D_constant_OPERATION_UNION:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_UNION** = ``0``

建立區域，其中主體或剪輯多邊形（或兩者）被填充。

.. _class_Geometry2D_constant_OPERATION_DIFFERENCE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_DIFFERENCE** = ``1``

建立主體多邊形被填充的區域，但剪輯多邊形被填充的區域除外。

.. _class_Geometry2D_constant_OPERATION_INTERSECTION:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_INTERSECTION** = ``2``

建立主體和剪輯多邊形都被填充的區域。

.. _class_Geometry2D_constant_OPERATION_XOR:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_XOR** = ``3``

建立主體或剪輯多邊形被填充的區域，但不是兩者都被填充的區域。

.. rst-class:: classref-item-separator

----

.. _enum_Geometry2D_PolyJoinType:

.. rst-class:: classref-enumeration

enum **PolyJoinType**: :ref:`🔗<enum_Geometry2D_PolyJoinType>`

.. _class_Geometry2D_constant_JOIN_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_SQUARE** = ``0``

在 ``1 * delta`` 的所有凸邊連接處均勻地套用平方。

.. _class_Geometry2D_constant_JOIN_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_ROUND** = ``1``

雖然扁平化路徑不可能完美地追蹤一個弧線，但它們可以通過一系列弧弦來近似。

.. _class_Geometry2D_constant_JOIN_MITER:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_MITER** = ``2``

對斜接有一個必要的限制，因為以非常尖銳的角度連接的邊緣偏移會產生過長和過窄的 "尖刺"。對於任何給定的邊緣連接，當斜接偏移會超過最大距離時，就採用 "方形 "連接。

.. rst-class:: classref-item-separator

----

.. _enum_Geometry2D_PolyEndType:

.. rst-class:: classref-enumeration

enum **PolyEndType**: :ref:`🔗<enum_Geometry2D_PolyEndType>`

.. _class_Geometry2D_constant_END_POLYGON:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_POLYGON** = ``0``

端點使用 :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` 值連接，路徑被填充為多邊形。

.. _class_Geometry2D_constant_END_JOINED:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_JOINED** = ``1``

端點使用 :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` 值連接，路徑被填充為多邊形線。

.. _class_Geometry2D_constant_END_BUTT:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_BUTT** = ``2``

端點是方形的，沒有延伸。

.. _class_Geometry2D_constant_END_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_SQUARE** = ``3``

端點被平方化並擴充了 ``delta`` 單位。

.. _class_Geometry2D_constant_END_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_ROUND** = ``4``

端點被四捨五入，並以 ``delta`` 為單位進行擴充。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Geometry2D_method_bresenham_line:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **bresenham_line**\ (\ from\: :ref:`Vector2i<class_Vector2i>`, to\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Geometry2D_method_bresenham_line>`

Returns the `Bresenham line <https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm>`__ between the ``from`` and ``to`` points. A Bresenham line is a series of pixels that draws a line and is always 1-pixel thick on every row and column of the drawing (never more, never less).

Example code to draw a line between two :ref:`Marker2D<class_Marker2D>` nodes using a series of :ref:`CanvasItem.draw_rect()<class_CanvasItem_method_draw_rect>` calls:

::

    func _draw():
        for pixel in Geometry2D.bresenham_line($MarkerA.position, $MarkerB.position):
            draw_rect(Rect2(pixel, Vector2.ONE), Color.WHITE)

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_clip_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **clip_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_clip_polygons>`

根據 ``polygon_b`` 裁剪 ``polygon_a``\ ，並返回一組裁剪後的多邊形。這會在多邊形之間執行 :ref:`OPERATION_DIFFERENCE<class_Geometry2D_constant_OPERATION_DIFFERENCE>`\ 。如果 ``polygon_b`` 與 ``polygon_a`` 完全重疊，則返回一個空陣列。

如果 ``polygon_b`` 被 ``polygon_a`` 包圍，則返回一個外多邊形（邊界）和一個內多邊形（孔），可以通過呼叫 :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>` 來區分。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_clip_polyline_with_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **clip_polyline_with_polygon**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_clip_polyline_with_polygon>`

根據 ``polygon`` 裁剪 ``polyline``\ ，並返回一組裁剪後的折線。這會在折線和多邊形之間執行 :ref:`OPERATION_DIFFERENCE<class_Geometry2D_constant_OPERATION_DIFFERENCE>`\ 。這個操作可以被認為是用一個封閉的形狀切割一條線。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_convex_hull:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **convex_hull**\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_convex_hull>`

給出一個 :ref:`Vector2<class_Vector2>` 的陣列，以逆時針的順序返回凸面的點的列表。最後一個點與第一個點相同。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_decompose_polygon_in_convex:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **decompose_polygon_in_convex**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_decompose_polygon_in_convex>`

將 ``polygon`` 分解為多個凸面，並返回一個 :ref:`PackedVector2Array<class_PackedVector2Array>` 的陣列。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_exclude_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **exclude_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_exclude_polygons>`

相互排除由 ``polygon_a`` 和 ``polygon_b`` 的交集（參見 :ref:`intersect_polygons()<class_Geometry2D_method_intersect_polygons>`\ ）定義的公共區域，並返回一組排除的多邊形。這會在多邊形之間執行 :ref:`OPERATION_XOR<class_Geometry2D_constant_OPERATION_XOR>`\ 。換句話說，返回各多邊形之間除公共區域之外的所有區域。

該操作可能會產生一個外多邊形（邊界）和一個內多邊形（孔），這可以通過呼叫 :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>` 來區分。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_point_to_segment:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point_to_segment**\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_point_to_segment>`

返回 2D 線段 (``s1``, ``s2``) 上與 ``point`` 最接近的 2D 點。返回的點始終在指定的線段上。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_point_to_segment_uncapped:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point_to_segment_uncapped**\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_point_to_segment_uncapped>`

返回 2D 直線 (``s1``, ``s2``) 上與 ``point`` 最接近的 2D 點。返回的點可能在 (``s1``, ``s2``) 線段上，也有可能不在，即直線上該線段之外的部分。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_points_between_segments:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_closest_points_between_segments**\ (\ p1\: :ref:`Vector2<class_Vector2>`, q1\: :ref:`Vector2<class_Vector2>`, p2\: :ref:`Vector2<class_Vector2>`, q2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_points_between_segments>`

給定兩個 2D 線段 (``p1``, ``q1``) 和 (``p2``, ``q2``)，找出這兩個線段見距離最近的兩個點。返回 :ref:`PackedVector2Array<class_PackedVector2Array>`\ ，包含 (``p1``, ``q1``) 和 (``p2``, ``q2``) 上的點。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_intersect_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **intersect_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_intersect_polygons>`

將 ``polygon_a`` 與 ``polygon_b`` 相交，並返回一組相交的多邊形。這會在多邊形之間執行 :ref:`OPERATION_INTERSECTION<class_Geometry2D_constant_OPERATION_INTERSECTION>`\ 。換句話說，返回由各多邊形共用的公共區域。如果沒有交集，則返回一個空陣列。

該操作可能會產生一個外多邊形（邊界）和一個內多邊形（孔），這可以通過呼叫 :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>` 來區分。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_intersect_polyline_with_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **intersect_polyline_with_polygon**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_intersect_polyline_with_polygon>`

將 ``polyline`` 與 ``polygon`` 相交，並返回一組相交的折線。這會在折線和多邊形之間執行 :ref:`OPERATION_INTERSECTION<class_Geometry2D_constant_OPERATION_INTERSECTION>`\ 。這個操作可以被認為是用一個封閉的形狀切割一條線。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_point_in_circle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_in_circle**\ (\ point\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry2D_method_is_point_in_circle>`

如果 ``point`` 在圓內或恰好位於圓的邊界\ *上*\ ，則返回 ``true``\ ；否則返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_point_in_polygon:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_in_polygon**\ (\ point\: :ref:`Vector2<class_Vector2>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_is_point_in_polygon>`

如果 ``point`` 在 ``polygon`` 內或者它恰好位於多邊形的邊界\ *上*\ ，則返回 ``true``\ ；否則返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_polygon_clockwise:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_polygon_clockwise**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_is_polygon_clockwise>`

Returns ``true`` if ``polygon``'s vertices are ordered in clockwise order, otherwise returns ``false``.

\ **Note:** Assumes a Cartesian coordinate system where ``+x`` is right and ``+y`` is up. If using screen coordinates (``+y`` is down), the result will need to be flipped (i.e. a ``true`` result will indicate counter-clockwise).

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_line_intersects_line:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **line_intersects_line**\ (\ from_a\: :ref:`Vector2<class_Vector2>`, dir_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, dir_b\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_line_intersects_line>`

Returns the point of intersection between the two lines (``from_a``, ``dir_a``) and (``from_b``, ``dir_b``). Returns a :ref:`Vector2<class_Vector2>`, or ``null`` if the lines are parallel.

\ ``from`` and ``dir`` are *not* endpoints of a line segment or ray but the slope (``dir``) and a known point (``from``) on that line. To get the intersection between two line segments, use :ref:`segment_intersects_segment()<class_Geometry2D_method_segment_intersects_segment>`.


.. tabs::

 .. code-tab:: gdscript

    var from_a = Vector2.ZERO
    var dir_a = Vector2.RIGHT
    var from_b = Vector2.DOWN

    # Returns Vector2(1, 0)
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2(1, -1))
    # Returns Vector2(-1, 0)
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2(-1, -1))
    # Returns null
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2.RIGHT)

 .. code-tab:: csharp

    var fromA = Vector2.Zero;
    var dirA = Vector2.Right;
    var fromB = Vector2.Down;

    // Returns new Vector2(1, 0)
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, new Vector2(1, -1));
    // Returns new Vector2(-1, 0)
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, new Vector2(-1, -1));
    // Returns null
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, Vector2.Right);



.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_make_atlas:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_atlas**\ (\ sizes\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_make_atlas>`

給定一個表示圖塊的 :ref:`Vector2<class_Vector2>` 陣列，建構一個合集。返回的字典有兩個鍵：\ ``points`` 是一個 :ref:`PackedVector2Array<class_PackedVector2Array>`\ ，指定每個圖塊的位置；\ ``size`` 包含整個合集的整體大小，是一個 :ref:`Vector2i<class_Vector2i>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_merge_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **merge_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_merge_polygons>`

合併（結合）\ ``polygon_a`` 和 ``polygon_b``\ ，並返回一組合並的多邊形。這在多邊形之間執行 :ref:`OPERATION_UNION<class_Geometry2D_constant_OPERATION_UNION>`\ 。

該操作可能會產生一個外部多邊形（邊界）和多個內部多邊形（孔），可以通過呼叫 :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>` 來區分它們。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_offset_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **offset_polygon**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0\ ) :ref:`🔗<class_Geometry2D_method_offset_polygon>`

Inflates or deflates ``polygon`` by ``delta`` units (pixels). If ``delta`` is positive, makes the polygon grow outward. If ``delta`` is negative, shrinks the polygon inward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. Returns an empty array if ``delta`` is negative and the absolute value of it approximately exceeds the minimum bounding rectangle dimensions of the polygon.

Each polygon's vertices will be rounded as determined by ``join_type``.

The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

\ **Note:** To translate the polygon's vertices specifically, multiply them to a :ref:`Transform2D<class_Transform2D>`:


.. tabs::

 .. code-tab:: gdscript

    var polygon = PackedVector2Array([Vector2(0, 0), Vector2(100, 0), Vector2(100, 100), Vector2(0, 100)])
    var offset = Vector2(50, 50)
    polygon = Transform2D(0, offset) * polygon
    print(polygon) # Prints [(50.0, 50.0), (150.0, 50.0), (150.0, 150.0), (50.0, 150.0)]

 .. code-tab:: csharp

    Vector2[] polygon = [new Vector2(0, 0), new Vector2(100, 0), new Vector2(100, 100), new Vector2(0, 100)];
    var offset = new Vector2(50, 50);
    polygon = new Transform2D(0, offset) * polygon;
    GD.Print((Variant)polygon); // Prints [(50, 50), (150, 50), (150, 150), (50, 150)]



.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_offset_polyline:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **offset_polyline**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0, end_type\: :ref:`PolyEndType<enum_Geometry2D_PolyEndType>` = 3\ ) :ref:`🔗<class_Geometry2D_method_offset_polyline>`

Inflates or deflates ``polyline`` by ``delta`` units (pixels), producing polygons. If ``delta`` is positive, makes the polyline grow outward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. If ``delta`` is negative, returns an empty array.

Each polygon's vertices will be rounded as determined by ``join_type``.

Each polygon's endpoints will be rounded as determined by ``end_type``.

The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_point_is_inside_triangle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **point_is_inside_triangle**\ (\ point\: :ref:`Vector2<class_Vector2>`, a\: :ref:`Vector2<class_Vector2>`, b\: :ref:`Vector2<class_Vector2>`, c\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Geometry2D_method_point_is_inside_triangle>`

返回 ``point`` 是否位於由 ``a``\ 、\ ``b``\ 、\ ``c`` 指定的三角形中。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_segment_intersects_circle:

.. rst-class:: classref-method

:ref:`float<class_float>` **segment_intersects_circle**\ (\ segment_from\: :ref:`Vector2<class_Vector2>`, segment_to\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry2D_method_segment_intersects_circle>`

給定 2D 線段 (``segment_from``, ``segment_to``)，返回該線段與圓相交的位置（0 和 1 之間的數），這個圓位於 ``circle_position``\ ，半徑為 ``circle_radius``\ 。如果該線段與圓不相交，則返回 -1（同樣也適用於這條線段的延長線所在的直線與圓相交，而線段本身不相交的情況）。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_segment_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **segment_intersects_segment**\ (\ from_a\: :ref:`Vector2<class_Vector2>`, to_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, to_b\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_segment_intersects_segment>`

Checks if two line segments intersect, with line ``a`` between ``from_a`` and ``to_a`` and line ``b`` between ``from_b`` and ``to_b``. If the line segments intersect, the point of intersection is returned as a :ref:`Vector2<class_Vector2>`. If no intersection takes place, ``null`` is returned.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_triangulate_delaunay:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **triangulate_delaunay**\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_triangulate_delaunay>`

對由離散的 ``points`` 集指定的區域進行三角化，使得任何點都不在任何生成的三角形的外接圓內。返回一個 :ref:`PackedInt32Array<class_PackedInt32Array>`\ ，其中每個三角形由 ``points`` 中的三個連續點的索引組成（即返回的陣列將具有 ``n * 3`` 個元素，其中 ``n`` 是找到的三角形的數量）。如果三角化沒有成功，則返回一個空的 :ref:`PackedInt32Array<class_PackedInt32Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_triangulate_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **triangulate_polygon**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_triangulate_polygon>`

對由 ``polygon`` 中的點指定的多邊形進行三角化。 返回一個 :ref:`PackedInt32Array<class_PackedInt32Array>`\ ，其中每個三角形由 ``polygon`` 中的三個連續點的索引組成（即返回的陣列將具有 ``n * 3`` 個元素，其中 ``n`` 是找到的三角形的數量）。輸出三角形將始終為逆時針旋轉，如果為順時針旋轉，則輪廓將翻轉。如果三角化沒有成功，則返回一個空的 :ref:`PackedInt32Array<class_PackedInt32Array>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
