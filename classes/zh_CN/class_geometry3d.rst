:github_url: hide

.. _class_Geometry3D:

Geometry3D
==========

**继承：** :ref:`Object<class_Object>`

提供常见 3D 几何运算的方法。

.. rst-class:: classref-introduction-group

描述
----

为创建几何形状，计算形状之间的交集，以及处理 3D 中的各种其他几何操作提供了一组辅助函数。

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

方法说明
--------

.. _class_Geometry3D_method_build_box_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_box_planes**\ (\ extents\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_build_box_planes>`

返回一个包含 6 个 :ref:`Plane<class_Plane>` 的数组，这些 :ref:`Plane<class_Plane>` 描述以原点为中心的盒子的边。盒子大小由 ``extents`` 定义，它代表盒子的一个（正）角（即实际大小的一半）。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_build_capsule_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_capsule_planes**\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, lats\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ ) :ref:`🔗<class_Geometry3D_method_build_capsule_planes>`

返回一个 :ref:`Plane<class_Plane>` 的数组，这些 :ref:`Plane<class_Plane>` 紧密围绕着以原点为中心的多面胶囊，该胶囊半径为 ``radius``\ 、高度为 ``height``\ 。参数 ``sides`` 定义了将为胶囊的侧面部分生成多少个平面，而 ``lats`` 给出了胶囊底部和顶部的纬向步数。参数 ``axis`` 描述了胶囊的方向轴（0 代表 X，1 代表 Y，2 代表 Z）。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_build_cylinder_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_cylinder_planes**\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ ) :ref:`🔗<class_Geometry3D_method_build_cylinder_planes>`

返回一组 :ref:`Plane<class_Plane>`\ ，这些 :ref:`Plane<class_Plane>` 紧密围绕着以原点为中心的多面圆柱体，该圆柱体半径为 ``radius``\ 、高度为 ``height`` 。参数 ``sides`` 定义了将为圆柱体的圆形部分生成多少个平面。参数 ``axis`` 描述了圆柱体的方向轴（0 代表 X，1 代表 Y，2 代表 Z）。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_clip_polygon:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **clip_polygon**\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`, plane\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Geometry3D_method_clip_polygon>`

将 ``points`` 中的点所定义的多边形，裁剪该 ``plane`` 并返回该裁剪后的多边形的点。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_compute_convex_mesh_points:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **compute_convex_mesh_points**\ (\ planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) :ref:`🔗<class_Geometry3D_method_compute_convex_mesh_points>`

计算并返回由一组 ``planes`` 定义的凸形状的所有顶点。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_point_to_segment:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point_to_segment**\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_point_to_segment>`

返回 3D 线段 (``s1``, ``s2``) 上与 ``point`` 最近的 3D 点。返回的点始终在指定的线段内部。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_point_to_segment_uncapped:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point_to_segment_uncapped**\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_point_to_segment_uncapped>`

返回直线上与 ``point`` 最近的 3D 点，该直线由 (``s1``, ``s2``) 定义。返回的点可能在线段 (``s1``, ``s2``) 上，也可能不在，即位于线段的延长线上。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_points_between_segments:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_closest_points_between_segments**\ (\ p1\: :ref:`Vector3<class_Vector3>`, p2\: :ref:`Vector3<class_Vector3>`, q1\: :ref:`Vector3<class_Vector3>`, q2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_points_between_segments>`

给定两个 3D 线段 (``p1``, ``p2``) 和 (``q1``, ``q2``)，找出这两个线段见距离最近的两个点。返回 :ref:`PackedVector3Array<class_PackedVector3Array>`\ ，包含 (``p1``, ``q1``) 和 (``p2``, ``q2``) 上的点。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_triangle_barycentric_coords:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_triangle_barycentric_coords**\ (\ point\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_triangle_barycentric_coords>`

返回一个 :ref:`Vector3<class_Vector3>`\ ，其中包含基于 3D 位置（\ ``point``\ ）与三角形不同顶点（\ ``a``\ 、\ ``b`` 和 ``c``\ ）的接近程度的权重。这对于在三角形中不同顶点的数据之间进行插值非常有用。一个示例用例是使用它在网格上平滑旋转，而不是仅仅依赖于面法线。

\ `这里是重心坐标的更详细解释。 <https://en.wikipedia.org/wiki/Barycentric_coordinate_system>`__

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_ray_intersects_triangle:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **ray_intersects_triangle**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_ray_intersects_triangle>`

测试起始于 ``from``\ 、方向为 ``dir`` 的 3D 射线是否与 ``a``\ 、\ ``b``\ 、\ ``c`` 构成的三角形相交。如果相交则返回交点 :ref:`Vector3<class_Vector3>`\ 。如果不相交则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_convex:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_convex**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_convex>`

给定一个通过数组 ``planes`` 中的 :ref:`Plane<class_Plane>` 定义的凸面体，测试线段（\ ``from``\ ，\ ``to``\ ）是否与该面体相交。如果找到交点，则返回一个 :ref:`PackedVector3Array<class_PackedVector3Array>`\ ，其中包含交点和凸面体的法线。否则，返回一个空数组。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_cylinder:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_cylinder**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, height\: :ref:`float<class_float>`, radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_cylinder>`

检查线段（\ ``from``\ ，\ ``to``\ ）是否与以原点为中心且高度为 ``height``\ 、半径为 ``radius`` 的圆柱相交。如果不相交，则返回一个空的 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。如果相交，则返回的数组包含交点和圆柱体在交点处的法线。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_sphere:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_sphere**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, sphere_position\: :ref:`Vector3<class_Vector3>`, sphere_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_sphere>`

检查线段（\ ``from``\ ，\ ``to``\ ）是否与球心位于 ``sphere_position`` 且半径为 ``sphere_radius`` 的球体相交。如果不相交，则返回一个空的 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。如果相交，则返回一个 :ref:`PackedVector3Array<class_PackedVector3Array>`\ ，其中包含交点和球体在交点处的法线。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_triangle:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **segment_intersects_triangle**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_triangle>`

测试线段（\ ``from``\ ，\ ``to``\ ）是否与三角形 ``a``\ 、\ ``b``\ 、\ ``c`` 相交。如果相交，则将交点作为 :ref:`Vector3<class_Vector3>` 返回。如果不相交，则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_tetrahedralize_delaunay:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **tetrahedralize_delaunay**\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_Geometry3D_method_tetrahedralize_delaunay>`

对 3D 空间中由离散的 ``points`` 集指定的区域进行四面体化，确保没有点位于任何生成的四面体的外接球内。该方法返回一个 :ref:`PackedInt32Array<class_PackedInt32Array>`\ ，其中每个四面体由 ``points`` 中的四个连续点的索引组成（即返回的数组将具有 ``n * 4`` 个元素，其中 ``n`` 是找到的四面体的数量）。如果四面体化没有成功，则返回一个空的 :ref:`PackedInt32Array<class_PackedInt32Array>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
