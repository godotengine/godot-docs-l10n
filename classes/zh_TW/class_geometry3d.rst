:github_url: hide

.. _class_Geometry3D:

Geometry3D
==========

**繼承：** :ref:`Object<class_Object>`

提供常見 3D 幾何運算的方法。

.. rst-class:: classref-introduction-group

說明
----

為建立幾何形狀，計算形狀之間的交集，以及處理 3D 中的各種其他幾何操作提供了一組輔助函式。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`build_box_planes<class_Geometry3D_method_build_box_planes>`\ (\ extents\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                                 |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`build_capsule_planes<class_Geometry3D_method_build_capsule_planes>`\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, lats\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ )                  |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`build_cylinder_planes<class_Geometry3D_method_build_cylinder_planes>`\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ )                                              |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`clip_polygon<class_Geometry3D_method_clip_polygon>`\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`, plane\: :ref:`Plane<class_Plane>`\ )                                                                                                                 |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`compute_convex_mesh_points<class_Geometry3D_method_compute_convex_mesh_points>`\ (\ planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ )                                                                                                                     |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`get_closest_point_to_segment<class_Geometry3D_method_get_closest_point_to_segment>`\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ )                                                                   |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`get_closest_point_to_segment_uncapped<class_Geometry3D_method_get_closest_point_to_segment_uncapped>`\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ )                                                 |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`get_closest_points_between_segments<class_Geometry3D_method_get_closest_points_between_segments>`\ (\ p1\: :ref:`Vector3<class_Vector3>`, p2\: :ref:`Vector3<class_Vector3>`, q1\: :ref:`Vector3<class_Vector3>`, q2\: :ref:`Vector3<class_Vector3>`\ )                    |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`get_triangle_barycentric_coords<class_Geometry3D_method_get_triangle_barycentric_coords>`\ (\ point\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ )                            |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                          | :ref:`ray_intersects_triangle<class_Geometry3D_method_ray_intersects_triangle>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ )        |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`segment_intersects_convex<class_Geometry3D_method_segment_intersects_convex>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ )                                             |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`segment_intersects_cylinder<class_Geometry3D_method_segment_intersects_cylinder>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, height\: :ref:`float<class_float>`, radius\: :ref:`float<class_float>`\ )                                  |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`segment_intersects_sphere<class_Geometry3D_method_segment_intersects_sphere>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, sphere_position\: :ref:`Vector3<class_Vector3>`, sphere_radius\: :ref:`float<class_float>`\ )                  |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                          | :ref:`segment_intersects_triangle<class_Geometry3D_method_segment_intersects_triangle>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`        | :ref:`tetrahedralize_delaunay<class_Geometry3D_method_tetrahedralize_delaunay>`\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                                                                                                                              |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Geometry3D_method_build_box_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_box_planes**\ (\ extents\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_build_box_planes>`

返回一個包含 6 個 :ref:`Plane<class_Plane>` 的陣列，這些 :ref:`Plane<class_Plane>` 描述以原點為中心的盒子的邊。盒子大小由 ``extents`` 定義，它代表盒子的一個（正）角（即實際大小的一半）。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_build_capsule_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_capsule_planes**\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, lats\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ ) :ref:`🔗<class_Geometry3D_method_build_capsule_planes>`

返回一個 :ref:`Plane<class_Plane>` 的陣列，這些 :ref:`Plane<class_Plane>` 緊密圍繞著以原點為中心的多面膠囊，該膠囊半徑為 ``radius``\ 、高度為 ``height``\ 。參數 ``sides`` 定義了將為膠囊的側面部分生成多少個平面，而 ``lats`` 給出了膠囊底部和頂部的緯向步數。參數 ``axis`` 描述了膠囊的方向軸（0 代表 X，1 代表 Y，2 代表 Z）。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_build_cylinder_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_cylinder_planes**\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ ) :ref:`🔗<class_Geometry3D_method_build_cylinder_planes>`

返回一組 :ref:`Plane<class_Plane>`\ ，這些 :ref:`Plane<class_Plane>` 緊密圍繞著以原點為中心的多面圓柱體，該圓柱體半徑為 ``radius``\ 、高度為 ``height`` 。參數 ``sides`` 定義了將為圓柱體的圓形部分生成多少個平面。參數 ``axis`` 描述了圓柱體的方向軸（0 代表 X，1 代表 Y，2 代表 Z）。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_clip_polygon:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **clip_polygon**\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`, plane\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Geometry3D_method_clip_polygon>`

將 ``points`` 中的點所定義的多邊形，裁剪該 ``plane`` 並返回該裁剪後的多邊形的點。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_compute_convex_mesh_points:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **compute_convex_mesh_points**\ (\ planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) :ref:`🔗<class_Geometry3D_method_compute_convex_mesh_points>`

計算並傳回所有由 ``planes`` 陣列定義的凸形狀的頂點。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_point_to_segment:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point_to_segment**\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_point_to_segment>`

返回 3D 線段 (``s1``, ``s2``) 上與 ``point`` 最近的 3D 點。返回的點始終在指定的線段內部。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_point_to_segment_uncapped:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point_to_segment_uncapped**\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_point_to_segment_uncapped>`

返回直線上與 ``point`` 最近的 3D 點，該直線由 (``s1``, ``s2``) 定義。返回的點可能在線段 (``s1``, ``s2``) 上，也可能不在，即位於線段的延長線上。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_points_between_segments:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_closest_points_between_segments**\ (\ p1\: :ref:`Vector3<class_Vector3>`, p2\: :ref:`Vector3<class_Vector3>`, q1\: :ref:`Vector3<class_Vector3>`, q2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_points_between_segments>`

給定兩個 3D 線段 (``p1``, ``p2``) 和 (``q1``, ``q2``)，找出這兩個線段見距離最近的兩個點。返回 :ref:`PackedVector3Array<class_PackedVector3Array>`\ ，包含 (``p1``, ``q1``) 和 (``p2``, ``q2``) 上的點。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_triangle_barycentric_coords:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_triangle_barycentric_coords**\ (\ point\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_triangle_barycentric_coords>`

傳回一個 :ref:`Vector3<class_Vector3>`\ ，其中包含基於 3D 位置（\ ``point``\ ）與三角形不同頂點（\ ``a``\ 、\ ``b`` 和 ``c``).這對於在三角形中不同頂點的資料之間進行插值非常有用。一個範例用例是使用它在網格上平滑旋轉，而不是僅依賴面法線。

\ `這裡是重心座標的更詳細解釋。 <https://en.wikipedia.org/wiki/Barycentric_coordinate_system>`__

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_ray_intersects_triangle:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **ray_intersects_triangle**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_ray_intersects_triangle>`

測試起始於 ``from``\ 、方向為 ``dir`` 的 3D 射線是否與 ``a``\ 、\ ``b``\ 、\ ``c`` 構成的三角形相交。如果相交則返回交點 :ref:`Vector3<class_Vector3>`\ 。如果不相交則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_convex:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_convex**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_convex>`

給定一個通過陣列 ``planes`` 中的 :ref:`Plane<class_Plane>` 定義的凸面體，測試線段（\ ``from``\ ，\ ``to``\ ）是否與該面體相交。如果找到交點，則返回一個 :ref:`PackedVector3Array<class_PackedVector3Array>`\ ，其中包含交點和凸面體的法線。否則，返回一個空陣列。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_cylinder:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_cylinder**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, height\: :ref:`float<class_float>`, radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_cylinder>`

檢查線段（\ ``from``\ ，\ ``to``\ ）是否與以原點為中心且高度為 ``height``\ 、半徑為 ``radius`` 的圓柱相交。如果不相交，則返回一個空的 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。如果相交，則返回的陣列包含交點和圓柱體在交點處的法線。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_sphere:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_sphere**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, sphere_position\: :ref:`Vector3<class_Vector3>`, sphere_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_sphere>`

檢查線段（\ ``from``\ ，\ ``to``\ ）是否與球心位於 ``sphere_position`` 且半徑為 ``sphere_radius`` 的球體相交。如果不相交，則返回一個空的 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。如果相交，則返回一個 :ref:`PackedVector3Array<class_PackedVector3Array>`\ ，其中包含交點和球體在交點處的法線。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_triangle:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **segment_intersects_triangle**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_triangle>`

測試線段（\ ``from``\ ，\ ``to``\ ）是否與三角形 ``a``\ 、\ ``b``\ 、\ ``c`` 相交。如果相交，則將交點作為 :ref:`Vector3<class_Vector3>` 返回。如果不相交，則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_tetrahedralize_delaunay:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **tetrahedralize_delaunay**\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_Geometry3D_method_tetrahedralize_delaunay>`

Tetrahedralizes the volume specified by a discrete set of ``points`` in 3D space, ensuring that no point lies within the circumsphere of any resulting tetrahedron. The method returns a :ref:`PackedInt32Array<class_PackedInt32Array>` where each tetrahedron consists of four consecutive point indices into the ``points`` array (resulting in an array with ``n * 4`` elements, where ``n`` is the number of tetrahedra found). If the tetrahedralization is unsuccessful, an empty :ref:`PackedInt32Array<class_PackedInt32Array>` is returned.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
