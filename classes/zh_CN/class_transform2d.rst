:github_url: hide

.. _class_Transform2D:

Transform2D
===========

代表 2D 变换的 2×3 矩阵。

.. rst-class:: classref-introduction-group

描述
----

The **Transform2D** built-in :ref:`Variant<class_Variant>` type is a 2×3 `matrix <https://en.wikipedia.org/wiki/Matrix_(mathematics)>`__ representing a transformation in 2D space. It contains three :ref:`Vector2<class_Vector2>` values: :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>`, and :ref:`origin<class_Transform2D_property_origin>`. Together, they can represent translation, rotation, scale, and skew.

The :ref:`x<class_Transform2D_property_x>` and :ref:`y<class_Transform2D_property_y>` axes form a 2×2 matrix, known as the transform's **basis**. The length of each axis (:ref:`Vector2.length()<class_Vector2_method_length>`) influences the transform's scale, while the direction of all axes influence the rotation. Usually, both axes are perpendicular to one another. However, when you rotate one axis individually, the transform becomes skewed. Applying a skewed transform to a 2D sprite will make the sprite appear distorted.

For a general introduction, see the :doc:`Matrices and transforms <../tutorials/math/matrices_and_transforms>` tutorial.

\ **Note:** Unlike :ref:`Transform3D<class_Transform3D>`, there is no 2D equivalent to the :ref:`Basis<class_Basis>` type. All mentions of "basis" refer to the :ref:`x<class_Transform2D_property_x>` and :ref:`y<class_Transform2D_property_y>` components of **Transform2D**.

\ **Note:** In a boolean context, a Transform2D will evaluate to ``false`` if it's equal to :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>`. Otherwise, a Transform2D will always evaluate to ``true``.

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`数学文档索引 <../tutorials/math/index>`

- :doc:`矩阵与变换 <../tutorials/math/matrices_and_transforms>`

- `矩阵变换演示 <https://godotengine.org/asset-library/asset/2787>`__

- `2.5D 游戏演示 <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`origin<class_Transform2D_property_origin>` | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`x<class_Transform2D_property_x>`           | ``Vector2(1, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`y<class_Transform2D_property_y>`           | ``Vector2(0, 1)`` |
   +-------------------------------+--------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ )                                                                                                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                            |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ ) |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`affine_inverse<class_Transform2D_method_affine_inverse>`\ (\ ) |const|                                                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform<class_Transform2D_method_basis_xform>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform_inv<class_Transform2D_method_basis_xform_inv>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`determinant<class_Transform2D_method_determinant>`\ (\ ) |const|                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_origin<class_Transform2D_method_get_origin>`\ (\ ) |const|                                                                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_rotation<class_Transform2D_method_get_rotation>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_scale<class_Transform2D_method_get_scale>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_skew<class_Transform2D_method_get_skew>`\ (\ ) |const|                                                                                                    |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`interpolate_with<class_Transform2D_method_interpolate_with>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`inverse<class_Transform2D_method_inverse>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_conformal<class_Transform2D_method_is_conformal>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_equal_approx<class_Transform2D_method_is_equal_approx>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const|                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_finite<class_Transform2D_method_is_finite>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`looking_at<class_Transform2D_method_looking_at>`\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`orthonormalized<class_Transform2D_method_orthonormalized>`\ (\ ) |const|                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated<class_Transform2D_method_rotated>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated_local<class_Transform2D_method_rotated_local>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled<class_Transform2D_method_scaled>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                 |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled_local<class_Transform2D_method_scaled_local>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated<class_Transform2D_method_translated>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated_local<class_Transform2D_method_translated_local>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_Transform2D_operator_neq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator *<class_Transform2D_operator_mul_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`operator *<class_Transform2D_operator_mul_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator *<class_Transform2D_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_Transform2D_operator_eq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator []<class_Transform2D_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_Transform2D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_IDENTITY>`

单位 **Transform2D**\ 。这是一个没有平移和旋转的变换，缩放为 :ref:`Vector2.ONE<class_Vector2_constant_ONE>`\ 。这意味着：

- :ref:`x<class_Transform2D_property_x>` 指向右侧（\ :ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`\ ）；

- :ref:`y<class_Transform2D_property_y>` 指向上方（\ :ref:`Vector2.UP<class_Vector2_constant_UP>`\ ）。

::

    var transform = Transform2D.IDENTITY
    print("| X | Y | 原点")
    print("| %.f | %.f | %.f" % [transform.x.x, transform.y.x, transform.origin.x])
    print("| %.f | %.f | %.f" % [transform.x.y, transform.y.y, transform.origin.y])
    # 输出：
    # | X | Y | Origin
    # | 1 | 0 | 0
    # | 0 | 1 | 0

如果使用该常量变换（相乘）\ :ref:`Vector2<class_Vector2>`\ 、\ :ref:`Rect2<class_Rect2>`\ 、\ :ref:`PackedVector2Array<class_PackedVector2Array>` 或其他 **Transform2D**\ ，则不会发生变换。

\ **注意：**\ 在 GDScript 中，该常量与不带任何参数创建 :ref:`Transform2D<class_Transform2D_constructor_Transform2D>` 相同。使用该常量可以让你的代码更清晰，并与 C# 保持一致。

.. _class_Transform2D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform2D(-1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_X>`

当任意变换被 :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>` 相乘时，它会取负 :ref:`x<class_Transform2D_property_x>` 轴（X 列）的所有分量。

当 :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>` 被任意变换相乘时，它会取负所有轴（X 行）的 :ref:`Vector2.x<class_Vector2_property_x>` 分量。

.. _class_Transform2D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform2D(1, 0, 0, -1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_Y>`

当任意变换被 :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>` 相乘时，它会取负 :ref:`y<class_Transform2D_property_y>` 轴（Y 列）的所有分量。

当 :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>` 被任意变换相乘时，它会取负所有轴（Y 行）的 :ref:`Vector2.y<class_Vector2_property_y>` 分量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Transform2D_property_origin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **origin** = ``Vector2(0, 0)`` :ref:`🔗<class_Transform2D_property_origin>`

该变换的平移偏移量，即矩阵的第 ``2`` 列。在 2D 空间中可以看作是位置。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_x:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **x** = ``Vector2(1, 0)`` :ref:`🔗<class_Transform2D_property_x>`

该变换基的 X 轴，以及矩阵的 ``0`` 列。与 :ref:`y<class_Transform2D_property_y>` 组合，这表示该变换的旋转、缩放和倾斜。

在恒等变换中，该向量指向右侧（\ :ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_y:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **y** = ``Vector2(0, 1)`` :ref:`🔗<class_Transform2D_property_y>`

该变换基的 Y 轴，以及矩阵的 ``1`` 列。与 :ref:`x<class_Transform2D_property_x>` 组合，这表示变换的旋转、缩放和倾斜。

在恒等变换中，该向量指向下方（\ :ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_Transform2D_constructor_Transform2D:

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ ) :ref:`🔗<class_Transform2D_constructor_Transform2D>`

构造与 :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>` 相同的 **Transform2D**\ 。

\ **注意：**\ 在 C# 中构造的 **Transform2D** 的所有分量都为 :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )

构造给定 **Transform2D** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

根据给定的旋转角（单位为弧度）和位置构造 **Transform2D**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

根据给定的旋转角（单位为弧度）、缩放、偏斜（单位为弧度）和位置构造 **Transform2D**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )

根据表示 :ref:`x<class_Transform2D_property_x>`\ 、\ :ref:`y<class_Transform2D_property_y>`\ 、\ :ref:`origin<class_Transform2D_property_origin>` 的 3 个 :ref:`Vector2<class_Vector2>`\ （三个矩阵列向量）构建 **Transform2D**\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Transform2D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_affine_inverse>`

返回该变换的逆版本。与 :ref:`inverse()<class_Transform2D_method_inverse>` 不同，该方法适用于几乎任何基，包括非均匀基，但速度较慢。

\ **注意：**\ 要使该方法正确返回，该变换的基需要有一个不完全是 ``0.0`` 的行列式（见 :ref:`determinant()<class_Transform2D_method_determinant>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform>`

返回 ``v`` 向量的副本，由该变换基的矩阵变换（乘以）得到。与乘法运算符 （\ ``*``\ ）不同，该方法忽略 :ref:`origin<class_Transform2D_property_origin>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform_inv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform_inv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform_inv>`

返回 ``v`` 向量的副本，由逆变换基矩阵（参阅 :ref:`inverse()<class_Transform2D_method_inverse>`\ ）变换（乘以）得到。该方法忽略 :ref:`origin<class_Transform2D_property_origin>`\ 。

\ **注意：**\ 该方法假定该变换的基是\ *正交归一化的*\ （参见 :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`\ ）。如果基不是正交归一化的，则应改用 ``transform.affine_inverse().basis_xform(vector)``\ （参阅 :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_determinant>`

返回该变换基矩阵的\ `行列式 <https://zh.wikipedia.org/wiki/%E8%A1%8C%E5%88%97%E5%BC%8F>`__\ 。在高等数学中，这个数可以用来确定一些性质：

- 如果行列式为 ``0.0``\ ，则基不可逆（见 :ref:`inverse()<class_Transform2D_method_inverse>`\ ）。

- 如果行列式为负数，则基表示负缩放。

\ **注意：**\ 如果基的每个轴缩放都相同，那么这个行列式始终为 2 的该缩放次幂。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_origin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_origin**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_origin>`

返回该变换的平移。相当于 :ref:`origin<class_Transform2D_property_origin>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rotation**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_rotation>`

返回该变换的旋转（单位为弧度）。等价于 :ref:`x<class_Transform2D_property_x>` 的旋转角（见 :ref:`Vector2.angle()<class_Vector2_method_angle>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_scale>`

以 :ref:`Vector2<class_Vector2>` 的形式同时返回 :ref:`x<class_Transform2D_property_x>` 和 :ref:`y<class_Transform2D_property_y>` 的长度。如果该变换的基不存在剪切，这个值就是缩放系数。它不受旋转的影响。


.. tabs::

 .. code-tab:: gdscript

    var my_transform = Transform2D(
        Vector2(2, 0),
        Vector2(0, 4),
        Vector2(0, 0)
    )
    # 以任何方式旋转 Transform2D 都会保持其缩放。
    my_transform = my_transform.rotated(TAU / 2)

    print(my_transform.get_scale()) # 输出 (2.0, 4.0)

 .. code-tab:: csharp

    var myTransform = new Transform2D(
        Vector3(2.0f, 0.0f),
        Vector3(0.0f, 4.0f),
        Vector3(0.0f, 0.0f)
    );
    // R以任何方式旋转 Transform2D 都会保持其缩放。
    myTransform = myTransform.Rotated(Mathf.Tau / 2.0f);

    GD.Print(myTransform.GetScale()); // 输出 (2, 4)



\ **注意：**\ 如果 :ref:`determinant()<class_Transform2D_method_determinant>` 返回的值为负数，则缩放也为负数。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_skew:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skew**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_skew>`

返回该变换的偏斜（单位为弧度）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **interpolate_with**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_interpolate_with>`

返回将该变换和 ``xform`` 按照给定的权重 ``weight`` 进行线性插值结果。

\ ``weight`` 应该在 ``0.0`` 到 ``1.0``\ （闭区间）的范围内。允许使用超出这个范围的值，表示进行\ *外插*\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_inverse>`

返回\ `该变换的逆版本 <https://en.wikipedia.org/wiki/Invertible_matrix>`__\ 。

\ **注意：**\ 为了使该方法正确返回，该变换的基需要是\ *正交归一化的*\ （见 :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`\ ）。这意味着该基应该只代表旋转。如果不是，请改用 :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_conformal>`

如果该变换的基是共形的，则返回 ``true``\ 。共形的基既是\ *正交的*\ （轴彼此垂直）又是\ *均匀的*\ （轴共享相同长度）。该方法在物理计算过程中特别有用。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const| :ref:`🔗<class_Transform2D_method_is_equal_approx>`

如果通过在每个分量上运行 :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>`\ ，该变换和 ``xform`` 近似相等，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_finite>`

如果该变换是有限的，则返回 ``true``\ ，判断方法是在每个分量上调用 :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **looking_at**\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Transform2D_method_looking_at>`

返回该变换旋转后的一个副本，使得旋转后的 X 轴指向全局空间中的 ``target`` 位置。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_orthonormalized>`

返回该变换的副本，其基已正交归一化。正交归一化的基既是\ *正交的*\ （轴彼此垂直）又是\ *归一化的*\ （轴长度为 ``1.0``\ ），这也意味着它只能代表旋转。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated>`

返回该变换的副本，该副本进行了夹角为 ``angle`` 的旋转操作（单位为弧度）。

如果 ``angle`` 为负数，则变换执行顺时针旋转。

这个方法的结果和让 ``X`` 变换与相应的旋转变换 ``R`` 从左侧相乘一致，即 ``R * X``\ ，但进行了优化。

可以视作在全局/父级坐标系中的变换。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated_local**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated_local>`

返回该变换的副本，该副本进行了夹角为 ``angle`` 的旋转操作（单位为弧度）。

这个方法的结果和让 ``X`` 变换与相应的旋转变换 ``R`` 从右侧相乘一致，即 ``X * R``\ ，但进行了优化。

可以视作在局部坐标系中的变换。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled>`

返回该变换的副本，该副本进行了系数为 ``scale`` 的缩放操作。

这个方法的结果和让 ``X`` 变换与相应的缩放变换 ``S`` 从左侧相乘一致，即 ``S * X``\ ，但进行了优化。

可以视作在全局/父级坐标系中的变换。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled_local**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled_local>`

返回该变换的副本，该副本进行了系数为 ``scale`` 的缩放操作。

这个方法的结果和让 ``X`` 变换与相应的缩放变换 ``S`` 从右侧相乘一致，即 ``X * S``\ ，但进行了优化。

可以视作在局部坐标系中的变换。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated>`

返回该变换的副本，该副本进行了偏移量为 ``offset`` 的平移操作。

这个方法的结果和让 ``X`` 变换与相应的平移变换 ``T`` 从左侧相乘一致，即 ``T * X``\ ，但进行了优化。

可以视作在全局/父级坐标系中的变换。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated_local**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated_local>`

返回该变换的副本，该副本进行了偏移量为 ``offset`` 的平移操作。

这个方法的结果和让 ``X`` 变换与相应的平移变换 ``T`` 从右侧相乘一致，即 ``X * T``\ ，但进行了优化。

可以视作在局部坐标系中的变换。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_Transform2D_operator_neq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_neq_Transform2D>`

如果两个变换的分量不相等，则返回 ``true``\ 。

\ **注意：**\ 由于浮点精度误差，请考虑改用 :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>`\ ，这样更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator ***\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Transform2D_operator_mul_PackedVector2Array>`

由该变换矩阵变换（乘以）给定 :ref:`PackedVector2Array<class_PackedVector2Array>` 的每个 :ref:`Vector2<class_Vector2>` 元素。

在较大的数组上，该操作比单独变换每个 :ref:`Vector2<class_Vector2>` 要快得多。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Rect2:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Rect2>`

使用该变换矩阵对 :ref:`Rect2<class_Rect2>` 进行变换（相乘）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Transform2D>`

由 ``right`` 变换来变换（乘以）该变换。

这是父级和子级 :ref:`CanvasItem<class_CanvasItem>` 之间执行的操作。

\ **注意：**\ 如果你只需要修改该变换的一个属性，请考虑改用以下方法之一：

- 对于平移，请参阅 :ref:`translated()<class_Transform2D_method_translated>` 或 :ref:`translated_local()<class_Transform2D_method_translated_local>`\ 。

- 对于旋转，请参阅 :ref:`rotated()<class_Transform2D_method_rotated>` 或 :ref:`rotated_local()<class_Transform2D_method_rotated_local>`\ 。

- 对于缩放，请参阅 :ref:`scaled()<class_Transform2D_method_scaled>` 或 :ref:`scaled_local()<class_Transform2D_method_scaled_local>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Vector2>`

使用该变换矩阵对 :ref:`Vector2<class_Vector2>` 进行变换（相乘）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_mul_float>`

将 **Transform2D** 包括 :ref:`origin<class_Transform2D_property_origin>` 在内的所有分量乘以给定的 :ref:`float<class_float>`\ 。会均匀地影响该变换的缩放。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_mul_int>`

将 **Transform2D** 包括 :ref:`origin<class_Transform2D_property_origin>` 在内的所有分量乘以给定的 :ref:`int<class_int>`\ 。会均匀地影响该变换的缩放。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_div_float>`

将 **Transform2D** 包括 :ref:`origin<class_Transform2D_property_origin>` 在内的所有分量除以给定的 :ref:`float<class_float>`\ 。会均匀地影响该变换的缩放。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_div_int>`

将 **Transform2D** 包括 :ref:`origin<class_Transform2D_property_origin>` 在内的所有分量除以给定的 :ref:`int<class_int>`\ 。会均匀地影响该变换的缩放。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_eq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_eq_Transform2D>`

如果两个变换的分量完全相等，则返回 ``true``\ 。

\ **注意：**\ 由于浮点精度误差，请考虑改用 :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>`\ ，这样更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_idx_int>`

通过索引访问该变换的轴（列）。索引 ``0`` 与 :ref:`x<class_Transform2D_property_x>` 相同，索引 ``1`` 与 :ref:`y<class_Transform2D_property_y>` 相同，索引 ``2`` 与 :ref:`origin<class_Transform2D_property_origin>` 相同。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
