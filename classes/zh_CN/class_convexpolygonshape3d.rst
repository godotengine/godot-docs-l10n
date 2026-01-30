:github_url: hide

.. _class_ConvexPolygonShape3D:

ConvexPolygonShape3D
====================

**继承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于物理碰撞的 3D 凸多面体形状。

.. rst-class:: classref-introduction-group

描述
----

3D 凸多面体形状，旨在用于物理。常用来为 :ref:`CollisionShape3D<class_CollisionShape3D>` 提供形状。

\ **ConvexPolygonShape3D** 是\ *实心*\ 的，与空心的 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` 不同，如果对象完全位于其内部，也能够检测到碰撞。因此更适于检测和物理。

\ **凸分解：**\ 凹多面体可以拆分为多个凸多面体。这样就能够让动态物理体拥有复杂的凹碰撞（以消耗性能为代价），做法是使用多个 **ConvexPolygonShape3D** 节点。要根据网格生成凸分解，请选中 :ref:`MeshInstance3D<class_MeshInstance3D>` 节点，前往出现在视口上方的 **Mesh** 菜单，然后选择\ **创建多个凸碰撞同级**\ 。或者也可以在脚本中调用 :ref:`MeshInstance3D.create_multiple_convex_collisions()<class_MeshInstance3D_method_create_multiple_convex_collisions>`\ ，在运行时执行分解。

\ **性能：**\ **ConvexPolygonShape3D** 检查碰撞的速度比 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` 要快，但比 :ref:`SphereShape3D<class_SphereShape3D>`\ 、\ :ref:`BoxShape3D<class_BoxShape3D>` 等基本碰撞形状要慢。通常应该仅限于中等大小的对象，在无法使用基本形状精确表示碰撞时使用。

.. rst-class:: classref-introduction-group

教程
----

- `3D 物理测试演示 <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`points<class_ConvexPolygonShape3D_property_points>` | ``PackedVector3Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ConvexPolygonShape3D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **points** = ``PackedVector3Array()`` :ref:`🔗<class_ConvexPolygonShape3D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_points**\ (\ )

形成凸多边形的 3D 点列表。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
