:github_url: hide

.. _class_Rect2:

Rect2
=====

使用浮点数坐标的 2D 轴对齐边界框。

.. rst-class:: classref-introduction-group

描述
----

**Rect2** 内置 :ref:`Variant<class_Variant>` 类型表示 2D 空间中的轴对齐矩形。它由其 :ref:`position<class_Rect2_property_position>` 和 :ref:`size<class_Rect2_property_size>` 定义，皆为 :ref:`Vector2<class_Vector2>` 类型。它经常被用于快速重叠测试（参见 :ref:`intersects()<class_Rect2_method_intersects>`\ ）。虽然 **Rect2** 本身是轴对齐的，但它可以与 :ref:`Transform2D<class_Transform2D>` 组合来表示旋转或倾斜的矩形。

对于整数坐标，请使用 :ref:`Rect2i<class_Rect2i>`\ 。\ **Rect2** 的 3D 等效体是 :ref:`AABB<class_AABB>`\ 。

\ **注意：**\ 不支持负的 :ref:`size<class_Rect2_property_size>`\ 。对于负大小，大多数 **Rect2** 方法都无法正常工作。使用 :ref:`abs()<class_Rect2_method_abs>` 获取具有非负大小的等效 **Rect2**\ 。

\ **注意：**\ 在布尔上下文中，如果 :ref:`position<class_Rect2_property_position>` 和 :ref:`size<class_Rect2_property_size>` 均为零（等于 :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`\ ），则 **Rect2** 的计算结果为 ``false``\ 。否则，它的计算结果始终为 ``true``\ 。

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

   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`end<class_Rect2_property_end>`           | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_Rect2_property_position>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_Rect2_property_size>`         | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ )                                                                                                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`abs<class_Rect2_method_abs>`\ (\ ) |const|                                                                                                                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_Rect2_method_encloses>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`expand<class_Rect2_method_expand>`\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_area<class_Rect2_method_get_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_center<class_Rect2_method_get_center>`\ (\ ) |const|                                                                                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_support<class_Rect2_method_get_support>`\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow<class_Rect2_method_grow>`\ (\ amount\: :ref:`float<class_float>`\ ) |const|                                                                                                                             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_individual<class_Rect2_method_grow_individual>`\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_side<class_Rect2_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const|                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_area<class_Rect2_method_has_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_Rect2_method_has_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`intersection<class_Rect2_method_intersection>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_Rect2_method_intersects>`\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_Rect2_method_is_equal_approx>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_Rect2_method_is_finite>`\ (\ ) |const|                                                                                                                                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`merge<class_Rect2_method_merge>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Rect2_operator_neq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`operator *<class_Rect2_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Rect2_operator_eq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Rect2_property_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **end** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_end>`

终点。通常为矩形的右下角，等价于 ``position + size``\ 。设置该点会影响 :ref:`size<class_Rect2_property_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_position>`

原点。通常为矩形的左上角。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_size>`

矩形的宽和高，相对于 :ref:`position<class_Rect2_property_position>`\ 。设置该值会影响终点 :ref:`end<class_Rect2_property_end>`\ 。

\ **注意：**\ 建议将宽和高设置为非负数，因为 Godot 中的大多数方法假设 :ref:`position<class_Rect2_property_position>` 为左上角、\ :ref:`end<class_Rect2_property_end>` 为右下角。要获取等价且大小非负的矩形，请使用 :ref:`abs()<class_Rect2_method_abs>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_Rect2_constructor_Rect2:

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ ) :ref:`🔗<class_Rect2_constructor_Rect2>`

构造 **Rect2**\ ，将 :ref:`position<class_Rect2_property_position>` 和 :ref:`size<class_Rect2_property_size>` 设置为 :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

构造给定 **Rect2** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

从 :ref:`Rect2i<class_Rect2i>` 构造 **Rect2**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )

使用指定的 ``position`` 和 ``size`` 构造 **Rect2**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ )

构造 **Rect2**\ ，将 :ref:`position<class_Rect2_property_position>` 设置为 (``x``, ``y``)，将 :ref:`size<class_Rect2_property_size>` 设置为 (``width``, ``height``)。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Rect2_method_abs:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2_method_abs>`

返回一个与该矩形等效的 **Rect2**\ ，其宽度和高度被修改为非负值，其 :ref:`position<class_Rect2_property_position>` 为矩形的左上角。


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(25, 25, -100, -50)
    var absolute = rect.abs() # 绝对值为 Rect2(-75, -25, 100, 50)

 .. code-tab:: csharp

    var rect = new Rect2(25, 25, -100, -50);
    var absolute = rect.Abs(); // 绝对值为 Rect2(-75, -25, 100, 50)



\ **注意：**\ 当 :ref:`size<class_Rect2_property_size>` 为负时，建议使用该方法，因为 Godot 中的大多数其他方法都假设 :ref:`position<class_Rect2_property_position>` 是左上角，\ :ref:`end<class_Rect2_property_end>` 是右下角。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_encloses>`

如果该矩形\ *完全*\ 包含 ``b`` 矩形，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_expand:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **expand**\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_expand>`

返回该矩形的副本，如有必要，该矩形被扩展为将边缘与给定的 ``to`` 点对齐。


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(0, 0, 5, 2)

    rect = rect.expand(Vector2(10, 0)) # rect 为 Rect2(0, 0, 10, 2)
    rect = rect.expand(Vector2(-5, 5)) # rect 为 Rect2(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2(0, 0, 5, 2);

    rect = rect.Expand(new Vector2(10, 0)); // rect 为 Rect2(0, 0, 10, 2)
    rect = rect.Expand(new Vector2(-5, 5)); // rect 为 Rect2(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_area:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_area>`

返回该矩形的面积。这相当于 ``size.x * size.y``\ 。另见 :ref:`has_area()<class_Rect2_method_has_area>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_center>`

返回该矩形的中心点。这与 ``position + (size / 2.0)`` 相同。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_support:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_support**\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_get_support>`

返回给定方向上最远的矩形框的顶点位置。该点在碰撞检测算法中通常被称为支撑点。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow>`

返回该矩形的副本，该矩形在所有边上扩展给定的 ``amount``\ 。负的 ``amount`` 会缩小该矩形。另见 :ref:`grow_individual()<class_Rect2_method_grow_individual>` and :ref:`grow_side()<class_Rect2_method_grow_side>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2(4, 4, 8, 8).grow(4) # a 为 Rect2(0, 0, 16, 16)
    var b = Rect2(0, 0, 8, 4).grow(2) # b 为 Rect2(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = new Rect2(4, 4, 8, 8).Grow(4); // a 为 Rect2(0, 0, 16, 16)
    var b = new Rect2(0, 0, 8, 4).Grow(2); // b 为 Rect2(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_individual**\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_individual>`

返回该矩形的副本，其 ``left``\ 、\ ``top``\ 、\ ``right`` 和 ``bottom`` 边扩展了给定的量。相反，负值会缩小边。另见 :ref:`grow()<class_Rect2_method_grow>` and :ref:`grow_side()<class_Rect2_method_grow_side>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_side>`

返回该矩形的副本，其 ``side`` 按给定的 ``amount`` 扩展（请参阅 :ref:`Side<enum_@GlobalScope_Side>` 常量）。相反，负的 ``amount`` 会缩小该矩形。另见 :ref:`grow()<class_Rect2_method_grow>` 和 :ref:`grow_individual()<class_Rect2_method_grow_individual>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_has_area>`

如果该矩形具有正的宽度和高度，则返回 ``true``\ 。另见 :ref:`get_area()<class_Rect2_method_get_area>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_has_point>`

如果该矩形包含给定的 ``point``\ ，则返回 ``true``\ 。依照惯例，\ **不**\ 包括右侧和底部边缘上的点。

\ **注意：**\ 对于\ *大小为负*\ 的 **Rect2**\ ，该方法并不可靠。请首先使用 :ref:`abs()<class_Rect2_method_abs>` 获取一个有效的矩形。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **intersection**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_intersection>`

返回该矩形与 ``b`` 之间的交集。如果该矩形不相交，则返回空的 **Rect2**\ 。


.. tabs::

 .. code-tab:: gdscript

    var rect1 = Rect2(0, 0, 5, 10)
    var rect2 = Rect2(2, 0, 8, 4)

    var a = rect1.intersection(rect2) # a 为 Rect2(2, 0, 3, 4)

 .. code-tab:: csharp

    var rect1 = new Rect2(0, 0, 5, 10);
    var rect2 = new Rect2(2, 0, 8, 4);

    var a = rect1.Intersection(rect2); // a 为 Rect2(2, 0, 3, 4)



\ **注意：**\ 如果你只需要知道两个矩形是否重叠，请改用 :ref:`intersects()<class_Rect2_method_intersects>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Rect2_method_intersects>`

如果该矩形与 ``b`` 矩形重叠，则返回 ``true``\ 。除非 ``include_borders`` 为 ``true``\ ，否则两个矩形的边缘均被排除。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_is_equal_approx>`

如果该矩形和 ``rect`` 近似相等，判断方法是通过在 :ref:`position<class_Rect2_property_position>` 和 :ref:`size<class_Rect2_property_size>` 上调用 :ref:`Vector2.is_equal_approx()<class_Vector2_method_is_equal_approx>`\ ，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Rect2_method_is_finite>`

如果该矩形是有限的，则返回 ``true``\ ，判断方法是对 :ref:`position<class_Rect2_property_position>` 和 :ref:`size<class_Rect2_property_size>` 调用 :ref:`Vector2.is_finite()<class_Vector2_method_is_finite>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_merge:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **merge**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_merge>`

返回边界包围该矩形和 ``b`` 的 **Rect2**\ 。另见 :ref:`encloses()<class_Rect2_method_encloses>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_Rect2_operator_neq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_neq_Rect2>`

如果两个矩形的 :ref:`position<class_Rect2_property_position>` 不相等或 :ref:`size<class_Rect2_property_size>` 不相等，则返回 ``true``\ 。

\ **注意：**\ 由于浮点数精度误差，请考虑改用 :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>`\ ，会更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Rect2_operator_mul_Transform2D>`

假设该变换的基是正交的（即旋转/反射可以，缩放/倾斜则不然），将 **Rect2** 逆向变换（乘以）给定的 :ref:`Transform2D<class_Transform2D>` 变换矩阵。

\ ``rect * transform`` 相当于 ``transform.inverse() * rect``\ 。请参阅 :ref:`Transform2D.inverse()<class_Transform2D_method_inverse>`\ 。

对于通过仿射变换的逆变换（例如，通过缩放）进行变换，可以使用 ``transform.affine_inverse() * rect`` 来代替。请参阅 :ref:`Transform2D.affine_inverse()<class_Transform2D_method_affine_inverse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_eq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_eq_Rect2>`

如果两个矩形的 :ref:`position<class_Rect2_property_position>` 完全相等且 :ref:`size<class_Rect2_property_size>` 完全相等，则返回 ``true``\ 。

\ **注意：**\ 由于浮点数精度误差，请考虑改用 :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>`\ ，会更可靠。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
