:github_url: hide

.. _class_PhysicsDirectSpaceState2D:

PhysicsDirectSpaceState2D
=========================

**继承：** :ref:`Object<class_Object>`

**派生：** :ref:`PhysicsDirectSpaceState2DExtension<class_PhysicsDirectSpaceState2DExtension>`

提供对 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 中物理空间的直接访问。

.. rst-class:: classref-introduction-group

描述
----

提供对 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 中物理空间的直接访问。主要用于对驻留在给定空间中的对象和区域进行查询。

\ **注意：**\ 该类不应直接实例化。请使用 :ref:`World2D.direct_space_state<class_World2D_property_direct_space_state>` 获取世界的 2D 物理空间状态。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`物理介绍 <../tutorials/physics/physics_introduction>`

- :doc:`发射射线 <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`              | :ref:`cast_motion<class_PhysicsDirectSpaceState2D_method_cast_motion>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                                                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`cast_motion_into<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>`\ )                 |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\]       | :ref:`collide_shape<class_PhysicsDirectSpaceState2D_method_collide_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`collide_shape_into<class_PhysicsDirectSpaceState2D_method_collide_shape_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>`\ )         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_rest_info<class_PhysicsDirectSpaceState2D_method_get_rest_info>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                                                                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`get_rest_info_into<class_PhysicsDirectSpaceState2D_method_get_rest_info_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>`\ )           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_point<class_PhysicsDirectSpaceState2D_method_intersect_point>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_point_into<class_PhysicsDirectSpaceState2D_method_intersect_point_into>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, result\: :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>`\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`intersect_ray<class_PhysicsDirectSpaceState2D_method_intersect_ray>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ )                                                                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_ray_into<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, result\: :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>`\ )             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_shape<class_PhysicsDirectSpaceState2D_method_intersect_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_shape_into<class_PhysicsDirectSpaceState2D_method_intersect_shape_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>`\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicsDirectSpaceState2D_method_cast_motion:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **cast_motion**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_cast_motion>`

检查 :ref:`Shape2D<class_Shape2D>` 能够在不发生碰撞的情况下移动多远。包括形状和运动在内的所有查询参数都通过 :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` 对象提供。

返回包含该运动的安全和不安全比例（在 0 和 1 之间）的数组。安全比例是该运动能够不发生碰撞的最大分数。不安全比例是发生碰撞所需的最小分数。如果没有检测到碰撞，则返回的结果为 ``[1.0, 1.0]``\ 。

\ **注意：**\ 该形状已碰撞的 :ref:`Shape2D<class_Shape2D>` 会被忽略，例如形状在其内部。请使用 :ref:`collide_shape()<class_PhysicsDirectSpaceState2D_method_collide_shape>` 确定该形状已碰撞的 :ref:`Shape2D<class_Shape2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_cast_motion_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **cast_motion_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`

Checks how far a :ref:`Shape2D<class_Shape2D>` can move without colliding. All the parameters for the query, including the shape and the motion, are supplied through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object.

If the query is successful, this method returns ``true`` and writes the motion results into the :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>` object passed in ``result``. If no collision occurs, it returns ``false``.

\ **Note:** Any :ref:`Shape2D<class_Shape2D>`\ s that the shape is already colliding with e.g. inside of, will be ignored. Use :ref:`collide_shape_into()<class_PhysicsDirectSpaceState2D_method_collide_shape_into>` to determine the :ref:`Shape2D<class_Shape2D>`\ s that the shape is already colliding with.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_collide_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\] **collide_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_collide_shape>`

检查通过 :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` 对象给出的一个形状与该空间的交点。结果数组包含该形状与另一个形状相交处的点的列表。与 :ref:`intersect_shape()<class_PhysicsDirectSpaceState2D_method_intersect_shape>` 一样，可以限制返回结果的数量以节省处理时间。

返回的点是接触点对的一个列表。对于每一对，第一个是在 :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` 对象中传递的形状，第二个是来自物理空间的碰撞形状。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_collide_shape_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide_shape_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_collide_shape_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If intersections are found, this method returns ``true`` and writes the collision points into the :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>` object passed in ``result``. If no intersections are found, it returns ``false``.

The number of returned results can be limited using :ref:`PhysicsCollideShapeResult2D.max_collisions<class_PhysicsCollideShapeResult2D_property_max_collisions>`, to reduce the processing time.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_get_rest_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_rest_info**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_get_rest_info>`

根据传入的 :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` 对象所定义的形状，检测它与物理空间中的碰撞情况。如果该形状与多个物体发生了碰撞，系统只会选取距离最近的那一个。返回的结果是一个字典，包含以下字段：

\ ``collider_id``\ ：发生碰撞的物体的唯一 ID。

\ ``linear_velocity``\ ：发生碰撞的物体的速度（Vector2 类型）。如果该物体是一个 :ref:`Area2D<class_Area2D>`\ ，结果则为 ``(0, 0)``\ 。

\ ``normal``\ ：在交点处，检测形状的碰撞法线，方向背离发生相交的物体。

\ ``point``\ ：具体的碰撞交点坐标。

\ ``rid``\ ：发生相交的物体的 :ref:`RID<class_RID>`\ （资源 ID）。

\ ``shape``\ ：发生碰撞的碰撞形状索引。

如果该形状没有与任何物体发生相交，则返回一个空字典。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_get_rest_info_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_rest_info_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_get_rest_info_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If the shape collides with one or more shapes, this method returns ``true`` and writes the nearest collision information into the :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>` object passed in ``result``. If no collisions occur, it returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_point:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_point**\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_point>`

检查点是否在任何实体形状内。位置和其他参数通过 :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>` 定义。点所在的形状在包含具有以下字段的字典的数组中返回：

\ ``collider``\ ：碰撞对象。

\ ``collider_id``\ ：碰撞对象的 ID。

\ ``rid``\ ：相交对象的 :ref:`RID<class_RID>`\ 。

\ ``shape``\ ：碰撞形状的形状索引。

可以使用 ``max_results`` 参数限制相交的数量，以减少处理时间。

\ **注意：**\ 在 ``Segments`` 构建模式下，\ :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` 和 :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 不是实体形状。因此，它们不会被检测到。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_point_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_point_into**\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, result\: :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_point_into>`

Checks whether a point is inside any solid shape. Position and other parameters are defined through :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`.

If one or more shapes overlap the point, this method returns ``true`` and writes the intersection data into the :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>` object passed in ``result``. If no intersections are found, it returns ``false``.

The number of intersections can be limited using :ref:`PhysicsIntersectPointResult2D.max_intersections<class_PhysicsIntersectPointResult2D_property_max_intersections>`, to reduce the processing time.

\ **Note:** :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`\ s and :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`\ s in ``Segments`` build mode are not solid shapes. Therefore, they will not be detected.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_ray>`

与一个给定空间中的一个射线相交。射线位置和其他参数通过 :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>` 定义。返回的对象是一个包含以下字段的字典：

\ ``collider``\ ：该碰撞对象。

\ ``collider_id``\ ：该碰撞对象的 ID。

\ ``normal``\ ：在相交点处该对象的表面法线；如果射线从形状内部开始，并且 :ref:`PhysicsRayQueryParameters2D.hit_from_inside<class_PhysicsRayQueryParameters2D_property_hit_from_inside>` 为 ``true``\ ，则为 ``Vector2(0, 0)``\ 。

\ ``position``\ ：该相交点。

\ ``rid``\ ：该相交对象的 :ref:`RID<class_RID>`\ 。

\ ``shape``\ ：该碰撞形状的形状索引。

如果射线没有与任何东西相交，则返回一个空字典。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_ray_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_ray_into**\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, result\: :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`

Intersects a ray in a given space. Ray position and other parameters are defined through :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`.

If the ray hits a shape, this method returns ``true`` and writes the intersection information into the :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>` object passed in ``result``. If nothing is hit, it returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_shape>`

检查通过 :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` 对象给出的形状与空间的交点。相交的形状会以数组的形式返回，该数组包含有以下字段的字典：

\ ``collider``\ ：碰撞对象。

\ ``collider_id``\ ：碰撞对象的 ID。

\ ``rid``\ ：相交对象的\ :ref:`RID<class_RID>`\ 。

\ ``shape``\ ：碰撞形状的形状索引。

可以使用 ``max_results`` 参数限制相交的数量，以减少处理时间。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_shape_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_shape_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_shape_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If one or more shapes are found to intersect, this method returns ``true`` and writes the intersection data into the :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>` object passed in ``result``. If no shapes are found to intersect, it returns ``false``.

The number of intersections can be limited using :ref:`PhysicsIntersectShapeResult2D.max_intersections<class_PhysicsIntersectShapeResult2D_property_max_intersections>`, to reduce the processing time.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
