:github_url: hide

.. _class_ConvexPolygonShape2D:

ConvexPolygonShape2D
====================

**继承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于物理碰撞的 2D 凸多边形形状。

.. rst-class:: classref-introduction-group

描述
----

2D 凸多边形形状，旨在用于物理。\ :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 为 :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>` 模式时内部会使用这个类。

\ **ConvexPolygonShape2D** 是\ *实心*\ 的，与空心的 :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` 不同，如果对象完全位于其内部，也能够检测到碰撞。因此更适于检测和物理。

\ **凸分解：**\ 凹多边形可以拆分为多个凸多边形。这样就能够让动态物理体拥有复杂的凹碰撞（以消耗性能为代价），做法是使用多个 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 节点，或者使用 :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>` 模式的 :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 节点。要根据精灵生成碰撞多边形，请选中 :ref:`Sprite2D<class_Sprite2D>` 节点，前往出现在视口上方的 **Sprite2D** 菜单，然后选择\ **创建 Polygon2D 同级**\ 。

\ **性能：**\ **ConvexPolygonShape2D** 检查碰撞的速度比 :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` 要快，但比 :ref:`CircleShape2D<class_CircleShape2D>`\ 、\ :ref:`RectangleShape2D<class_RectangleShape2D>` 等基本碰撞形状要慢。通常应该仅限于中等大小的对象，在无法使用基本形状精确表示碰撞时使用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`points<class_ConvexPolygonShape2D_property_points>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_point_cloud<class_ConvexPolygonShape2D_method_set_point_cloud>`\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ConvexPolygonShape2D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **points** = ``PackedVector2Array()`` :ref:`🔗<class_ConvexPolygonShape2D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_points**\ (\ )

该多边形构成凸包的顶点列表。顺时针顺序或逆时针顺序都有可能。

\ **警告：**\ 请务必将这个属性设置为能够形成凸包的顶点列表。可以使用 :ref:`set_point_cloud()<class_ConvexPolygonShape2D_method_set_point_cloud>` 从任意顶点集生成凸包。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ConvexPolygonShape2D_method_set_point_cloud:

.. rst-class:: classref-method

|void| **set_point_cloud**\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_ConvexPolygonShape2D_method_set_point_cloud>`

根据提供的点集，使用凸包算法分配 :ref:`points<class_ConvexPolygonShape2D_property_points>` 属性，移除所有不必要的点。详见 :ref:`Geometry2D.convex_hull()<class_Geometry2D_method_convex_hull>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
