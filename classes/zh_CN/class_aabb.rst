:github_url: hide

.. _class_AABB:

AABB
====

3D 轴对齐边界框。

.. rst-class:: classref-introduction-group

描述
----

**AABB** 内置 :ref:`Variant<class_Variant>` 类型表示 3D 空间中的轴对齐边界框。它由其 :ref:`position<class_AABB_property_position>` 和 :ref:`size<class_AABB_property_size>` 定义，皆为 :ref:`Vector3<class_Vector3>` 类型。它经常被用于快速重叠测试（参见 :ref:`intersects()<class_AABB_method_intersects>`\ ）。虽然 **AABB** 本身是轴对齐的，但它可以与 :ref:`Transform3D<class_Transform3D>` 组合来表示旋转或倾斜的边界框。

它使用浮点坐标。\ **AABB** 的 2D 等效体是 :ref:`Rect2<class_Rect2>`\ 。没有使用整数坐标的 **AABB** 版本。

\ **注意：**\ 不支持负的 :ref:`size<class_AABB_property_size>`\ 。对于负大小，大多数 **AABB** 方法都无法正常工作。使用 :ref:`abs()<class_AABB_method_abs>` 获取具有非负大小的等效 **AABB**\ 。

\ **注意：**\ 在布尔上下文中，如果 :ref:`position<class_AABB_property_position>` 和 :ref:`size<class_AABB_property_size>` 均为零（等于 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ ），则 **AABB** 的计算结果为 ``false``\ 。否则，它的计算结果始终为 ``true``\ 。

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`数学文档索引 <../tutorials/math/index>`

- :doc:`向量数学 <../tutorials/math/vector_math>`

- :doc:`高等向量数学 <../tutorials/math/vectors_advanced>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`end<class_AABB_property_end>`           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`position<class_AABB_property_position>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_AABB_property_size>`         | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ )                                                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ from\: :ref:`AABB<class_AABB>`\ )                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`abs<class_AABB_method_abs>`\ (\ ) |const|                                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_AABB_method_encloses>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`expand<class_AABB_method_expand>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_center<class_AABB_method_get_center>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_endpoint<class_AABB_method_get_endpoint>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_longest_axis<class_AABB_method_get_longest_axis>`\ (\ ) |const|                                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_longest_axis_index<class_AABB_method_get_longest_axis_index>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_longest_axis_size<class_AABB_method_get_longest_axis_size>`\ (\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_shortest_axis<class_AABB_method_get_shortest_axis>`\ (\ ) |const|                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_shortest_axis_index<class_AABB_method_get_shortest_axis_index>`\ (\ ) |const|                                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_shortest_axis_size<class_AABB_method_get_shortest_axis_size>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_support<class_AABB_method_get_support>`\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_volume<class_AABB_method_get_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`grow<class_AABB_method_grow>`\ (\ by\: :ref:`float<class_float>`\ ) |const|                                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_AABB_method_has_point>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_surface<class_AABB_method_has_surface>`\ (\ ) |const|                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_volume<class_AABB_method_has_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`intersection<class_AABB_method_intersection>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_AABB_method_intersects>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects_plane<class_AABB_method_intersects_plane>`\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const|                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_ray<class_AABB_method_intersects_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_segment<class_AABB_method_intersects_segment>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_AABB_method_is_equal_approx>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const|                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_AABB_method_is_finite>`\ (\ ) |const|                                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`merge<class_AABB_method_merge>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_AABB_operator_neq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`operator *<class_AABB_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_AABB_operator_eq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                      |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AABB_property_end:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **end** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_end>`

终点。通常是边界框的背面右上角，等价于 ``position + size``\ 。设置该点会影响 :ref:`size<class_AABB_property_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_position>`

原点。通常是边界框的正面左下角。

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_size>`

边界框的宽度、高度、深度，相对于 :ref:`position<class_AABB_property_position>`\ 。设置该值会影响终点 :ref:`end<class_AABB_property_end>`\ 。

\ **注意：**\ 建议将宽度、高度、深度设置为非负数，因为 Godot 中的大多数方法假设 :ref:`position<class_AABB_property_position>` 为正面的左下角、\ :ref:`end<class_AABB_property_end>` 为背面的右上角。要获取等价且大小非负的边界框，请使用 :ref:`abs()<class_AABB_method_abs>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_AABB_constructor_AABB:

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ ) :ref:`🔗<class_AABB_constructor_AABB>`

构造 **AABB**\ ，并将 :ref:`position<class_AABB_property_position>` 和 :ref:`size<class_AABB_property_size>` 设置为 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ from\: :ref:`AABB<class_AABB>`\ )

构造给定 **AABB** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ )

使用指定的 ``position`` 和 ``size`` 构造 **AABB**\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AABB_method_abs:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **abs**\ (\ ) |const| :ref:`🔗<class_AABB_method_abs>`

返回一个与该边界框等效的 **AABB**\ ，其宽度、高度和深度被修改为非负值。


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(5, 0, 5), Vector3(-20, -10, -5))
    var absolute = box.abs()
    print(absolute.position) # 输出 (-15.0, -10.0, 0.0)
    print(absolute.size)     # 输出 (20.0, 10.0, 5.0)

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(5, 0, 5), new Vector3(-20, -10, -5));
    var absolute = box.Abs();
    GD.Print(absolute.Position); // 输出 (-15, -10, 0)
    GD.Print(absolute.Size);     // 输出 (20, 10, 5)



\ **注意：**\ 当 :ref:`size<class_AABB_property_size>` 为负时，建议使用该方法，因为 Godot 中的大多数其他方法都假设 :ref:`size<class_AABB_property_size>` 的分量大于 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_encloses>`

如果该边界框\ *完全*\ 包围 ``with`` 框，则返回 ``true``\ 。两个框的边都包括在内。


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(0, 0, 0), Vector3(4, 4, 4))
    var b = AABB(Vector3(1, 1, 1), Vector3(3, 3, 3))
    var c = AABB(Vector3(2, 2, 2), Vector3(8, 8, 8))

    print(a.encloses(a)) # 打印 true
    print(a.encloses(b)) # 打印 true
    print(a.encloses(c)) # 打印 false

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(0, 0, 0), new Vector3(4, 4, 4));
    var b = new Aabb(new Vector3(1, 1, 1), new Vector3(3, 3, 3));
    var c = new Aabb(new Vector3(2, 2, 2), new Vector3(8, 8, 8));

    GD.Print(a.Encloses(a)); // 打印 True
    GD.Print(a.Encloses(b)); // 打印 True
    GD.Print(a.Encloses(c)); // 打印 False



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_expand:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **expand**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_expand>`

返回该边界框的副本，如有必要，该边界框被扩展为将边与给定的 ``to_point`` 对齐。


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(5, 2, 5))

    box = box.expand(Vector3(10, 0, 0))
    print(box.position) # 输出 (0.0, 0.0, 0.0)
    print(box.size)     # 输出 (10.0, 2.0, 5.0)

    box = box.expand(Vector3(-5, 0, 5))
    print(box.position) # 输出 (-5.0, 0.0, 0.0)
    print(box.size)     # 输出 (15.0, 2.0, 5.0)

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 5));

    box = box.Expand(new Vector3(10, 0, 0));
    GD.Print(box.Position); // 输出 (0, 0, 0)
    GD.Print(box.Size);     // 输出 (10, 2, 5)

    box = box.Expand(new Vector3(-5, 0, 5));
    GD.Print(box.Position); // 输出 (-5, 0, 0)
    GD.Print(box.Size);     // 输出 (15, 2, 5)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_center:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_center**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_center>`

返回该边界框的中心点。这与 ``position + (size / 2.0)`` 相同。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_endpoint:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_endpoint**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AABB_method_get_endpoint>`

返回组成该边界框的 8 个顶点之一的位置。当 ``idx`` 为 ``0`` 时，这与 :ref:`position<class_AABB_property_position>` 相同；\ ``idx`` 为 ``7`` 时，与 :ref:`end<class_AABB_property_end>` 相同。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_longest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis>`

返回该边界框的 :ref:`size<class_AABB_property_size>` 的最长归一化轴，作为 :ref:`Vector3<class_Vector3>`\ （\ :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`\ 、\ :ref:`Vector3.UP<class_Vector3_constant_UP>` 或 :ref:`Vector3.BACK<class_Vector3_constant_BACK>`\ ）。


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_longest_axis())       # 输出 (0.0, 0.0, 1.0)
    print(box.get_longest_axis_index()) # 输出 2
    print(box.get_longest_axis_size())  # 输出 8.0

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetLongestAxis());      // 输出 (0, 0, 1)
    GD.Print(box.GetLongestAxisIndex()); // 输出 Z
    GD.Print(box.GetLongestAxisSize());  // 输出 8



另见 :ref:`get_longest_axis_index()<class_AABB_method_get_longest_axis_index>` 和 :ref:`get_longest_axis_size()<class_AABB_method_get_longest_axis_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_longest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_index>`

返回该边界框的 :ref:`size<class_AABB_property_size>` 的最长轴的索引（见 :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`\ 、\ :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>` 和 :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`\ ）。

示例见 :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_longest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_size>`

返回该边界框的 :ref:`size<class_AABB_property_size>` 的最长尺度。

有关示例，请参阅 :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_shortest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis>`

返回该边界框的 :ref:`size<class_AABB_property_size>` 的最短归一化轴，作为 :ref:`Vector3<class_Vector3>`\ （\ :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`\ 、\ :ref:`Vector3.UP<class_Vector3_constant_UP>` 或 :ref:`Vector3.BACK<class_Vector3_constant_BACK>`\ ）。


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_shortest_axis())       # 输出 (1.0, 0.0, 0.0)
    print(box.get_shortest_axis_index()) # 输出 0
    print(box.get_shortest_axis_size())  # 输出 2.0

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetShortestAxis());      // 输出 (1, 0, 0)
    GD.Print(box.GetShortestAxisIndex()); // 输出 X
    GD.Print(box.GetShortestAxisSize());  // 输出 2



另见 :ref:`get_shortest_axis_index()<class_AABB_method_get_shortest_axis_index>` 和 :ref:`get_shortest_axis_size()<class_AABB_method_get_shortest_axis_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_shortest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_index>`

返回该边界框的 :ref:`size<class_AABB_property_size>` 的最短轴的索引（见 :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`\ 、\ :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>` 和 :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`\ ）。

示例见 :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_shortest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_size>`

返回该边界框的 :ref:`size<class_AABB_property_size>` 的最短尺度。

有关示例，请参阅 :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_support:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_support**\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_get_support>`

返回给定方向上最远的边界框的顶点位置。该点在碰撞检测算法中通常被称为支撑点。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_volume:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_volume>`

返回该边界框的体积。这相当于 ``size.x * size.y * size.z``\ 。另见 :ref:`has_volume()<class_AABB_method_has_volume>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_grow:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **grow**\ (\ by\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_AABB_method_grow>`

返回该边界框的副本，该边界框在所有边上扩展给定量 ``by``\ 。负数会缩小该框。


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(4, 4, 4), Vector3(8, 8, 8)).grow(4)
    print(a.position) # 输出 (0.0, 0.0, 0.0)
    print(a.size)     # 输出 (16.0, 16.0, 16.0)

    var b = AABB(Vector3(0, 0, 0), Vector3(8, 4, 2)).grow(2)
    print(b.position) # 输出 (-2.0, -2.0, -2.0)
    print(b.size)     # 输出 (12.0, 8.0, 6.0)

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(4, 4, 4), new Vector3(8, 8, 8)).Grow(4);
    GD.Print(a.Position); // 输出 (0, 0, 0)
    GD.Print(a.Size);     // 输出 (16, 16, 16)

    var b = new Aabb(new Vector3(0, 0, 0), new Vector3(8, 4, 2)).Grow(2);
    GD.Print(b.Position); // 输出 (-2, -2, -2)
    GD.Print(b.Size);     // 输出 (12, 8, 6)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_has_point>`

如果该边界框包含给定的 ``point``\ ，则返回 ``true``\ 。依照惯例，\ **不**\ 包括正好位于右侧、顶部和前侧的点。

\ **注意：**\ 对于具有\ *负* :ref:`size<class_AABB_property_size>` 的 **AABB**\ ，该方法并不可靠。请首先使用 :ref:`abs()<class_AABB_method_abs>` 获取一个有效的边界框。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_surface:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_surface**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_surface>`

如果该边界框具有表面或长度，即 :ref:`size<class_AABB_property_size>` 的至少一个分量大于 ``0``\ ，则返回 ``true``\ 。否则，返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_volume:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_volume>`

如果该边界框的宽度、高度和深度均为正值，则返回 ``true``\ 。另见 :ref:`get_volume()<class_AABB_method_get_volume>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **intersection**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersection>`

返回该边界框与 ``with`` 之间的交集。如果框不相交，则返回空的 **AABB**\ 。如果框在边相交，则返回没有体积的平 **AABB**\ （请参阅 :ref:`has_surface()<class_AABB_method_has_surface>` 和 :ref:`has_volume()<class_AABB_method_has_volume>`\ ）。


.. tabs::

 .. code-tab:: gdscript

    var box1 = AABB(Vector3(0, 0, 0), Vector3(5, 2, 8))
    var box2 = AABB(Vector3(2, 0, 2), Vector3(8, 4, 4))

    var intersection = box1.intersection(box2)
    print(intersection.position) # 输出 (2.0, 0.0, 2.0)
    print(intersection.size)     # 输出 (3.0, 2.0, 4.0)

 .. code-tab:: csharp

    var box1 = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 8));
    var box2 = new Aabb(new Vector3(2, 0, 2), new Vector3(8, 4, 4));

    var intersection = box1.Intersection(box2);
    GD.Print(intersection.Position); // 输出 (2, 0, 2)
    GD.Print(intersection.Size);     // 输出 (3, 2, 4)



\ **注意：**\ 如果你只需要知道两个边界框是否相交，请改用 :ref:`intersects()<class_AABB_method_intersects>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersects>`

如果该边界框与框 ``with`` 重叠，则返回 ``true``\ 。两个框的边\ *总是*\ 被排除。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_plane:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects_plane**\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_plane>`

如果该边界框位于给定 ``plane`` 的两侧，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_ray>`

返回该边界框与给定射线相交的第一个点，作为 :ref:`Vector3<class_Vector3>`\ 。如果没有交集存在，则返回 ``null``\ 。

射线从 ``from`` 开始，面向 ``dir`` 并向无穷远延伸。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_segment**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_segment>`

返回该边界框与给定线段相交的第一个点，作为 :ref:`Vector3<class_Vector3>`\ 。如果没有交集存在，则返回 ``null``\ 。

该线段从 ``from`` 开始，到 ``to`` 结束。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_is_equal_approx>`

如果该边界框和 ``aabb`` 近似相等，则返回 ``true``\ ，判断方法是通过在 :ref:`position<class_AABB_property_position>` 和 :ref:`size<class_AABB_property_size>` 上调用 :ref:`Vector3.is_equal_approx()<class_Vector3_method_is_equal_approx>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_AABB_method_is_finite>`

如果该边界框的值是有限的，则返回 ``true``\ ，判断方法是通过在 :ref:`position<class_AABB_property_position>` 和 :ref:`size<class_AABB_property_size>` 上调用 :ref:`Vector3.is_finite()<class_Vector3_method_is_finite>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_merge:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **merge**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_merge>`

返回边界包围该边界框和 ``with`` 的 **AABB**\ 。另见 :ref:`encloses()<class_AABB_method_encloses>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_AABB_operator_neq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_neq_AABB>`

如果两个边界框的 :ref:`position<class_AABB_property_position>` 不相等或 :ref:`size<class_AABB_property_size>` 不相等，则返回 ``true``\ 。

\ **注意：**\ 由于浮点数精度误差，请考虑改用 :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>`\ ，会更可靠。

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_AABB_operator_mul_Transform3D>`

假设该变换的基是正交的（即旋转/反射可以，缩放/倾斜则不行），将 **AABB** 逆向变换（乘以）给定的 :ref:`Transform3D<class_Transform3D>` 变换矩阵。

\ ``aabb * transform`` 相当于 ``transform.inverse() * aabb``\ 。见 :ref:`Transform3D.inverse()<class_Transform3D_method_inverse>`\ 。

对于通过仿射变换的逆进行的变换（例如，缩放），可以使用 ``transform.affine_inverse() * aabb`` 代替。见 :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_eq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_eq_AABB>`

如果两个边界框的 :ref:`position<class_AABB_property_position>` 完全相等且 :ref:`size<class_AABB_property_size>` 完全相等，则返回 ``true``\ 。

\ **注意：**\ 由于浮点数精度误差，请考虑改用 :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>`\ ，会更可靠。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
