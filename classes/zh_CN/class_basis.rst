:github_url: hide

.. _class_Basis:

Basis
=====

用于表示 3D 旋转和缩放的 3×3 矩阵。

.. rst-class:: classref-introduction-group

描述
----

**Basis** 内置 :ref:`Variant<class_Variant>` 类型是一种 3×3 `矩阵 <https://zh.wikipedia.org/zh-cn/%E7%9F%A9%E9%98%B5>`__\ ，用于表示 3D 旋转、缩放和倾斜。常用于 :ref:`Transform3D<class_Transform3D>`\ 。

\ **Basis** 由 3 个轴向量组成，每个轴向量代表矩阵的一列：\ :ref:`x<class_Basis_property_x>`\ 、\ :ref:`y<class_Basis_property_y>` 和 :ref:`z<class_Basis_property_z>`\ 。每个轴的长度（\ :ref:`Vector3.length()<class_Vector3_method_length>`\ ）都会影响该基的缩放，而所有轴的方向将影响旋转。通常，这些轴彼此垂直。但是，当你单独旋转任意轴时，该基会产生倾斜。对 3D 模型应用倾斜后的基会使模型发生变形。

特殊形式的 **Basis** 有：

- **正交**\ ：轴相互垂直。

- **归一化**\ ：轴的长度都是 ``1.0``\ 。

- **均匀**\ ：轴的长度相等（见 :ref:`get_scale()<class_Basis_method_get_scale>`\ ）。

- **正交归一**\ ：既正交又归一化，只能表示旋转。

- **共形**\ ：既正交又均匀，保证不扭曲。

通用介绍见教程\ :doc:`《矩阵与变换》 <../tutorials/math/matrices_and_transforms>`\ 。

\ **注意：**\ Godot 使用\ `右手坐标系 <https://zh.wikipedia.org/zh-cn/%E5%8F%B3%E6%89%8B%E5%AE%9A%E5%89%87>`__\ ，这是一种普遍标准。方向方面，\ :ref:`Camera3D<class_Camera3D>` 等内置类型的约定是 -Z 指向前方（+X 为右、+Y 为上、+Z 为后）。其他对象可能使用不同的方向约定。更多信息见教程\ `《3D 资产方向惯例》 <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__ 。

\ **注意：**\ 基矩阵按\ `列为主 <https://www.mindcontrol.org/~hplus/graphics/matrix-layout.html>`__\ 的顺序公开，这与 OpenGL 一致。但是内部使用行为主的顺序存储，这与 DirectX 一致。

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`数学文档索引 <../tutorials/math/index>`

- :doc:`矩阵与变换 <../tutorials/math/matrices_and_transforms>`

- :doc:`使用 3D 变换 <../tutorials/3d/using_transforms>`

- `矩阵变换演示 <https://godotengine.org/asset-library/asset/2787>`__

- `3D 平台跳跃演示 <https://godotengine.org/asset-library/asset/2748>`__

- `3D 体素演示 <https://godotengine.org/asset-library/asset/2755>`__

- `2.5D 游戏演示 <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`x<class_Basis_property_x>` | ``Vector3(1, 0, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`y<class_Basis_property_y>` | ``Vector3(0, 1, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`z<class_Basis_property_z>` | ``Vector3(0, 0, 1)`` |
   +-------------------------------+----------------------------------+----------------------+

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ )                                                                                                                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Basis<class_Basis>`\ )                                                                                       |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )                                                                             |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`determinant<class_Basis_method_determinant>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_euler<class_Basis_method_from_euler>`\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static|                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_scale<class_Basis_method_from_scale>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static|                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_euler<class_Basis_method_get_euler>`\ (\ order\: :ref:`int<class_int>` = 2\ ) |const|                                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`get_rotation_quaternion<class_Basis_method_get_rotation_quaternion>`\ (\ ) |const|                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_scale<class_Basis_method_get_scale>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`inverse<class_Basis_method_inverse>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_conformal<class_Basis_method_is_conformal>`\ (\ ) |const|                                                                                                                                                |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_equal_approx<class_Basis_method_is_equal_approx>`\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const|                                                                                                           |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_finite<class_Basis_method_is_finite>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`looking_at<class_Basis_method_looking_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`orthonormalized<class_Basis_method_orthonormalized>`\ (\ ) |const|                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`rotated<class_Basis_method_rotated>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled<class_Basis_method_scaled>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled_local<class_Basis_method_scaled_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`slerp<class_Basis_method_slerp>`\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotx<class_Basis_method_tdotx>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdoty<class_Basis_method_tdoty>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotz<class_Basis_method_tdotz>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`transposed<class_Basis_method_transposed>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator !=<class_Basis_operator_neq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )      |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator *<class_Basis_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ==<class_Basis_operator_eq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator []<class_Basis_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )            |
   +-------------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_Basis_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_IDENTITY>`

单位 **Basis**\ 。这是一个没有旋转、没有倾斜的标准正交基，其缩放为 :ref:`Vector3.ONE<class_Vector3_constant_ONE>`\ 。这也意味着：

- :ref:`x<class_Basis_property_x>` 指向右侧（\ :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`\ ）；

- :ref:`y<class_Basis_property_y>` 指向上方（\ :ref:`Vector3.UP<class_Vector3_constant_UP>`\ ）；

- :ref:`z<class_Basis_property_z>` 指向后面（\ :ref:`Vector3.BACK<class_Vector3_constant_BACK>`\ ）。

::

    var basis = Basis.IDENTITY
    print("| X | Y | Z")
    print("| %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x])
    print("| %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y])
    print("| %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z])
    # 输出：
    # | X | Y | Z
    # | 1 | 0 | 0
    # | 0 | 1 | 0
    # | 0 | 0 | 1

使用该常量变换（乘以）一个 :ref:`Vector3<class_Vector3>` 或其他 **Basis** 时不会发生变换。

\ **注意：**\ 在 GDScript 中，该常量与不使用任何参数创建 :ref:`Basis<class_Basis_constructor_Basis>` 相同。该常量可用于使你的代码更清晰，并与 C# 保持一致。

.. _class_Basis_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Basis(-1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_X>`

当任意基被 :ref:`FLIP_X<class_Basis_constant_FLIP_X>` 相乘时，它会取负 :ref:`x<class_Basis_property_x>` 轴（X 列）的所有分量。

当 :ref:`FLIP_X<class_Basis_constant_FLIP_X>` 被任意基相乘时，它会取负所有轴（X 行）的 :ref:`Vector3.x<class_Vector3_property_x>` 分量。

.. _class_Basis_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Basis(1, 0, 0, 0, -1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_Y>`

当任意基被 :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>` 相乘时，它会取负 :ref:`y<class_Basis_property_y>` 轴（Y 列）的所有分量。

当 :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>` 被任意基相乘时，它会取负所有轴（Y 行）的 :ref:`Vector3.y<class_Vector3_property_y>` 分量。

.. _class_Basis_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, -1)`` :ref:`🔗<class_Basis_constant_FLIP_Z>`

当任意基被 :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>` 相乘时，它会取负 :ref:`z<class_Basis_property_z>` 轴（Z 列）的所有分量。

当 :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>` 被任意基相乘时，它会取负所有轴（Z 行）的 :ref:`Vector3.z<class_Vector3_property_z>` 分量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Basis_property_x:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **x** = ``Vector3(1, 0, 0)`` :ref:`🔗<class_Basis_property_x>`

该基的 X 轴和矩阵的 ``0`` 列。

在单位基上，该向量指向右侧（\ :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_y:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **y** = ``Vector3(0, 1, 0)`` :ref:`🔗<class_Basis_property_y>`

该基的 Y 轴和矩阵的第 ``1`` 列。

在单位基上，该向量指向上方（\ :ref:`Vector3.UP<class_Vector3_constant_UP>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_z:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **z** = ``Vector3(0, 0, 1)`` :ref:`🔗<class_Basis_property_z>`

该基的 Z 轴和矩阵的第 ``2`` 列。

在单位基上，该向量指向后面（\ :ref:`Vector3.BACK<class_Vector3_constant_BACK>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_Basis_constructor_Basis:

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ ) :ref:`🔗<class_Basis_constructor_Basis>`

构造与 :ref:`IDENTITY<class_Basis_constant_IDENTITY>` 相同的 **Basis**\ 。

\ **注意：**\ 在 C# 中构造的 **Basis** 的所有分量都为 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Basis<class_Basis>`\ )

构造给定 **Basis** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )

构造仅表示旋转的 **Basis**\ ，给定的 ``angle`` 以弧度为单位，表示围绕 ``axis`` 轴的旋转量。这个轴必须是归一化的向量。

\ **注意：**\ 与对 :ref:`IDENTITY<class_Basis_constant_IDENTITY>` 基使用 :ref:`rotated()<class_Basis_method_rotated>` 一致。多角度旋转请改用 :ref:`from_euler()<class_Basis_method_from_euler>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )

根据给定的 :ref:`Quaternion<class_Quaternion>` 构造仅表示旋转的 **Basis**\ 。

\ **注意：**\ 四元数\ *仅*\ 存储旋转，不会存储缩放。因此，\ **Basis** 到 :ref:`Quaternion<class_Quaternion>` 的转换并不一定可逆。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ )

根据 3 个轴向量构造 **Basis**\ 。这些是基矩阵的列向量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Basis_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Basis_method_determinant>`

返回基矩阵的 `determinant <https://en.wikipedia.org/wiki/Determinant>`__ 。在高等数学中，这个数可以用来确定一些性质：

- 如果行列式为 ``0.0``\ ，则基不可逆（见 :ref:`inverse()<class_Basis_method_inverse>`\ ）。

- 如果行列式为负数，则基表示负缩放。

\ **注意：**\ 如果基的每个轴缩放都相同，那么这个行列式始终为 3 的该缩放次幂。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_euler:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_euler**\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static| :ref:`🔗<class_Basis_method_from_euler>`

根据给定的 :ref:`Vector3<class_Vector3>` 构造 **Basis**\ ，这个向量为 `欧拉角 <https://zh.wikipedia.org/zh-cn/%E6%AC%A7%E6%8B%89%E8%A7%92>`__\ ，单位为弧度。

- :ref:`Vector3.x<class_Vector3_property_x>` 应包含围绕 :ref:`x<class_Basis_property_x>` 轴的角度（俯仰）；

- :ref:`Vector3.y<class_Vector3_property_y>` 应包含围绕 :ref:`y<class_Basis_property_y>` 轴的角度（偏摆）；

- :ref:`Vector3.z<class_Vector3_property_z>` 应包含围绕 :ref:`z<class_Basis_property_z>` 轴的角度（翻滚）。


.. tabs::

 .. code-tab:: gdscript

    # 创建 Z 轴向下的 Basis。
    var my_basis = Basis.from_euler(Vector3(TAU / 4, 0, 0))

    print(my_basis.z) # 输出 (0.0, -1.0, 0.0)

 .. code-tab:: csharp

    // 创建 Z 轴向下的 Basis。
    var myBasis = Basis.FromEuler(new Vector3(Mathf.Tau / 4.0f, 0.0f, 0.0f));

    GD.Print(myBasis.Z); // 输出 (0.0, -1.0, 0.0)



连续旋转的顺序可以通过 ``order`` 修改（见 :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` 常量）。默认使用 YXZ 约定（\ :ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`\ ）：基首先围绕 Y 轴旋转（偏摆），然后围绕 X 轴旋转（俯仰），最后围绕 Z 轴旋转（翻滚）。这个顺序在相对的函数 :ref:`get_euler()<class_Basis_method_get_euler>` 中是相反的。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_scale:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static| :ref:`🔗<class_Basis_method_from_scale>`

根据给定的 ``scale`` 向量构造仅表示缩放的 **Basis**\ ，不包含旋转和倾斜。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.from_scale(Vector3(2, 4, 8))

    print(my_basis.x) # 输出 (2.0, 0.0, 0.0)
    print(my_basis.y) # 输出 (0.0, 4.0, 0.0)
    print(my_basis.z) # 输出 (0.0, 0.0, 8.0)

 .. code-tab:: csharp

    var myBasis = Basis.FromScale(new Vector3(2.0f, 4.0f, 8.0f));

    GD.Print(myBasis.X); // 输出 (2.0, 0.0, 0.0)
    GD.Print(myBasis.Y); // 输出 (0.0, 4.0, 0.0)
    GD.Print(myBasis.Z); // 输出 (0.0, 0.0, 8.0)



\ **注意：**\ 在线性代数中，这种基矩阵也被称作\ `对角矩阵 <https://zh.wikipedia.org/zh-cn/%E5%B0%8D%E8%A7%92%E7%9F%A9%E9%99%A3>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_euler:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_euler**\ (\ order\: :ref:`int<class_int>` = 2\ ) |const| :ref:`🔗<class_Basis_method_get_euler>`

以 :ref:`Vector3<class_Vector3>` 的形式返回基的旋转向量，这个向量为 `欧拉角 <https://zh.wikipedia.org/zh-cn/%E6%AC%A7%E6%8B%89%E8%A7%92>`__\ ，单位为弧度。返回值中：

- :ref:`Vector3.x<class_Vector3_property_x>` 包含围绕 :ref:`x<class_Basis_property_x>` 轴的角度（俯仰）。

- :ref:`Vector3.y<class_Vector3_property_y>` 包含围绕 :ref:`y<class_Basis_property_y>` 轴的角度（偏摆）。

- :ref:`Vector3.z<class_Vector3_property_z>` 包含围绕 :ref:`z<class_Basis_property_z>` 轴的角度（翻滚）。

连续旋转的顺序可以通过 ``order`` 修改（见 :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` 常量）。默认使用 YXZ 约定（\ :ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`\ ）：首先计算围绕 Z 轴的旋转（翻滚），然后计算围绕 X 轴的旋转（俯仰），最后计算围绕 Y 轴旋转（偏摆）。这个顺序在相对的函数 :ref:`from_euler()<class_Basis_method_from_euler>` 中是相反的。

\ **注意：**\ 该方法只对\ *标准正交基*\ 返回正确的值（见 :ref:`orthonormalized()<class_Basis_method_orthonormalized>`\ ）。

\ **注意：**\ 欧拉角更符合直觉，但是并不适合 3D 数学。因此请考虑改用返回 :ref:`Quaternion<class_Quaternion>` 的 :ref:`get_rotation_quaternion()<class_Basis_method_get_rotation_quaternion>`\ 。

\ **注意：**\ 在检查器面板中，基的旋转通常是以欧拉角的形式显示的（单位为度），与 :ref:`Node3D.rotation<class_Node3D_property_rotation>` 属性相同。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_rotation_quaternion:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_rotation_quaternion**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_rotation_quaternion>`

以 :ref:`Quaternion<class_Quaternion>` 的形式返回基的旋转。

\ **注意：**\ 四元数更适合 3D 数学，但是并不那么符合直觉。用户界面相关的场合请考虑使用返回欧拉角的 :ref:`get_euler()<class_Basis_method_get_euler>` 方法。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_scale>`

返回该基的每个轴的长度，形式为 :ref:`Vector3<class_Vector3>`\ 。如果该基未经倾斜，该值就是缩放系数。它不受旋转的影响。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(2, 0, 0),
        Vector3(0, 4, 0),
        Vector3(0, 0, 8)
    )
    # 以任何方式旋转基都会保持其缩放。
    my_basis = my_basis.rotated(Vector3.UP, TAU / 2)
    my_basis = my_basis.rotated(Vector3.RIGHT, TAU / 4)

    print(my_basis.get_scale()) # 输出 (2.0, 4.0, 8.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        Vector3(2.0f, 0.0f, 0.0f),
        Vector3(0.0f, 4.0f, 0.0f),
        Vector3(0.0f, 0.0f, 8.0f)
    );
    // 以任何方式旋转基都会保持其缩放。
    myBasis = myBasis.Rotated(Vector3.Up, Mathf.Tau / 2.0f);
    myBasis = myBasis.Rotated(Vector3.Right, Mathf.Tau / 4.0f);

    GD.Print(myBasis.Scale); // 输出 (2.0, 4.0, 8.0)



\ **注意：**\ 如果 :ref:`determinant()<class_Basis_method_determinant>` 返回的值为负数，则缩放也为负数。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_inverse:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **inverse**\ (\ ) |const| :ref:`🔗<class_Basis_method_inverse>`

返回 `该基矩阵的逆矩阵 <https://en.wikipedia.org/wiki/Invertible_matrix>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_conformal>`

如果该基是共形的，则返回 ``true``\ 。共形的基既是\ *正交的*\ （轴彼此垂直）又是\ *均匀的*\ （轴共享相同长度）。该方法在物理计算过程中特别有用。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_Basis_method_is_equal_approx>`

如果该基和 ``b`` 近似相等，则返回 ``true``\ ，判断方法是在每个向量分量上调用 :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_finite>`

如果该基是有限的，则返回 ``true``\ ，判断方法是在每个向量分量上调用 :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_looking_at:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Basis_method_looking_at>`

创建一个带有旋转的新 **Basis**\ ，使向前轴（-Z）指向 ``target`` 的位置。

默认情况下，-Z 轴（相机向前）被视为向前（意味着 +X 位于右侧）。如果 ``use_model_front`` 为 ``true``\ ，则 +Z 轴（资产正面）被视为向前（意味着 +X 位于左侧）并指向 ``target`` 的位置。

向上轴（+Y）尽可能靠近 ``up`` 向量，同时保持垂直于向前轴。返回的基是正交归一化的（见 :ref:`orthonormalized()<class_Basis_method_orthonormalized>`\ ）。

\ ``target`` 和 ``up`` 向量不能是 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ ，两者也不能共线，这样可以避免围绕局部 Z 轴发生预料之外的旋转。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Basis_method_orthonormalized>`

返回该基的正交归一化版本。正交归一化基既是\ *正交的*\ （轴彼此垂直）又是\ *归一化的*\ （轴长度为 ``1.0``\ ），这也意味着它只能代表旋转。

调用该方法通常很有用，以避免旋转基上的舍入错误：


.. tabs::

 .. code-tab:: gdscript

    # 每帧旋转该 Node3D。
    func _process(delta):
        basis = basis.rotated(Vector3.UP, TAU * delta)
        basis = basis.rotated(Vector3.RIGHT, TAU * delta)
        basis = basis.orthonormalized()

 .. code-tab:: csharp

    // 每帧旋转该 Node3D。
    public override void _Process(double delta)
    {
        Basis = Basis.Rotated(Vector3.Up, Mathf.Tau * (float)delta)
                .Rotated(Vector3.Right, Mathf.Tau * (float)delta)
                .Orthonormalized();
    }



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_rotated:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_rotated>`

返回该基的副本，围绕给定轴 ``axis`` 进行了旋转，旋转角度为 ``angle``\ （单位为弧度）。

\ ``axis`` 必须是归一化的向量（见 :ref:`Vector3.normalized()<class_Vector3_method_normalized>`\ ）。如果 ``angle`` 为正值，则基围绕转轴进行逆时针旋转。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.IDENTITY
    var angle = TAU / 2

    my_basis = my_basis.rotated(Vector3.UP, angle)    # 绕向上轴旋转（偏航）。
    my_basis = my_basis.rotated(Vector3.RIGHT, angle) # 绕向右轴旋转（俯仰）。
    my_basis = my_basis.rotated(Vector3.BACK, angle)  # 绕向后轴旋转（滚动）。

 .. code-tab:: csharp

    var myBasis = Basis.Identity;
    var angle = Mathf.Tau / 2.0f;

    myBasis = myBasis.Rotated(Vector3.Up, angle);    // 绕向上轴旋转（偏航）。
    myBasis = myBasis.Rotated(Vector3.Right, angle); // 绕向右轴旋转（俯仰）。
    myBasis = myBasis.Rotated(Vector3.Back, angle);  // 绕向后轴旋转（滚动）。



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled>`

返回该基，其中每个轴的分量都按给定的 ``scale`` 的分量缩放。

该基矩阵的行乘以 ``scale`` 的分量。该操作是全局缩放（相对于父级）。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 1, 1),
        Vector3(2, 2, 2),
        Vector3(3, 3, 3)
    )
    my_basis = my_basis.scaled(Vector3(0, 2, -2))

    print(my_basis.x) # 输出 (0.0, 2.0, -2.0)
    print(my_basis.y) # 输出 (0.0, 4.0, -4.0)
    print(my_basis.z) # 输出 (0.0, 6.0, -6.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 1.0f, 1.0f),
        new Vector3(2.0f, 2.0f, 2.0f),
        new Vector3(3.0f, 3.0f, 3.0f)
    );
    myBasis = myBasis.Scaled(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(myBasis.X); // 输出 (0.0, 2.0, -2.0)
    GD.Print(myBasis.Y); // 输出 (0.0, 4.0, -4.0)
    GD.Print(myBasis.Z); // 输出 (0.0, 6.0, -6.0)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled_local:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled_local>`

返回该基，其中每个轴都按给定的 ``scale`` 中的相应分量缩放。

该基矩阵的列乘以 ``scale`` 的分量。该操作是局部缩放（相对于自身）。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 1, 1),
        Vector3(2, 2, 2),
        Vector3(3, 3, 3)
    )
    my_basis = my_basis.scaled_local(Vector3(0, 2, -2))

    print(my_basis.x) # 输出 (0.0, 0.0, 0.0)
    print(my_basis.y) # 输出 (4.0, 4.0, 4.0)
    print(my_basis.z) # 输出 (-6.0, -6.0, -6.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 1.0f, 1.0f),
        new Vector3(2.0f, 2.0f, 2.0f),
        new Vector3(3.0f, 3.0f, 3.0f)
    );
    myBasis = myBasis.ScaledLocal(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(myBasis.X); // 输出 (0, 0, 0)
    GD.Print(myBasis.Y); // 输出 (4, 4, 4)
    GD.Print(myBasis.Z); // 输出 (-6, -6, -6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_slerp:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **slerp**\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_slerp>`

使用 ``to`` 基在给定 ``weight`` 的情况下执行球面线性插值。该基和 ``to`` 两者都应该代表一个旋转。

\ **示例：**\ 使用 :ref:`Tween<class_Tween>` 随时间平滑地将 :ref:`Node3D<class_Node3D>` 旋转到目标基：

::

    var start_basis = Basis.IDENTITY
    var target_basis = Basis.IDENTITY.rotated(Vector3.UP, TAU / 2)

    func _ready():
        create_tween().tween_method(interpolate, 0.0, 1.0, 5.0).set_trans(Tween.TRANS_EXPO)

    func interpolate(weight):
        basis = start_basis.slerp(target_basis, weight)

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotx:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotx**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotx>`

返回 ``with`` 和 :ref:`x<class_Basis_property_x>` 轴之间的转置点积（请参阅 :ref:`transposed()<class_Basis_method_transposed>`\ ）。

这相当于 ``basis.x.dot(vector)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdoty:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdoty**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdoty>`

返回 ``with`` 和 :ref:`y<class_Basis_property_y>` 轴之间的转置点积（请参阅 :ref:`transposed()<class_Basis_method_transposed>`\ ）。

这相当于 ``basis.y.dot(vector)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotz:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotz**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotz>`

返回 ``with`` 和 :ref:`z<class_Basis_property_z>` 轴之间的转置点积（请参阅 :ref:`transposed()<class_Basis_method_transposed>`\ ）。

这相当于 ``basis.z.dot(vector)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_transposed:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **transposed**\ (\ ) |const| :ref:`🔗<class_Basis_method_transposed>`

返回该基的转置版本。这会将基矩阵的列转换为行，并将其行转换为列。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 2, 3),
        Vector3(4, 5, 6),
        Vector3(7, 8, 9)
    )
    my_basis = my_basis.transposed()

    print(my_basis.x) # 输出 (1.0, 4.0, 7.0)
    print(my_basis.y) # 输出 (2.0, 5.0, 8.0)
    print(my_basis.z) # 输出 (3.0, 6.0, 9.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 2.0f, 3.0f),
        new Vector3(4.0f, 5.0f, 6.0f),
        new Vector3(7.0f, 8.0f, 9.0f)
    );
    myBasis = myBasis.Transposed();

    GD.Print(myBasis.X); // 输出 (1.0, 4.0, 7.0)
    GD.Print(myBasis.Y); // 输出 (2.0, 5.0, 8.0)
    GD.Print(myBasis.Z); // 输出 (3.0, 6.0, 9.0)



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_Basis_operator_neq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_neq_Basis>`

如果两个 **Basis** 矩阵的分量不相等，则返回 ``true``\ 。

\ **注意：**\ 由于浮点精度误差，请考虑改用 :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>`\ ，这样更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Basis:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_mul_Basis>`

由该基转换（乘以） ``right`` 基。

这是父级和子级 :ref:`Node3D<class_Node3D>` 之间执行的操作。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Basis_operator_mul_Vector3>`

使用该基变换（乘以）\ ``right`` 向量，返回一个 :ref:`Vector3<class_Vector3>`\ 。


.. tabs::

 .. code-tab:: gdscript

    # 交换 X/Z 轴并使缩放加倍的基。
    var my_basis = Basis(Vector3(0, 2, 0), Vector3(2, 0, 0), Vector3(0, 0, 2))
    print(my_basis * Vector3(1, 2, 3)) # 输出 (4.0, 2.0, 6.0)

 .. code-tab:: csharp

    // 交换 X/Z 轴并使缩放加倍的基。
    var myBasis = new Basis(new Vector3(0, 2, 0), new Vector3(2, 0, 0), new Vector3(0, 0, 2));
    GD.Print(myBasis * new Vector3(1, 2, 3)); // 输出 (4.0, 2.0, 6.0)



.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_mul_float>`

将 **Basis** 的所有分量乘以给定的 :ref:`float<class_float>`\ 。这会均匀地影响该基矩阵的缩放，并通过 ``right`` 值调整所有 3 个轴的大小。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_mul_int>`

将该 **Basis** 的所有分量乘以给定的 :ref:`int<class_int>`\ 。这会均匀地影响该基的缩放，并通过 ``right`` 值调整所有 3 个轴的大小。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_div_float>`

将 **Basis** 的所有分量除以给定的 :ref:`float<class_float>`\ 。这会均匀地影响该基的缩放，并通过 ``right`` 值调整所有 3 个轴的大小。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_div_int>`

将 **Basis** 的所有分量除以给定的 :ref:`int<class_int>`\ 。这会均匀地影响该基的缩放，并通过 ``right`` 值调整所有 3 个轴的大小。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_eq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_eq_Basis>`

如果两个 **Basis** 矩阵的分量完全相等，则返回 ``true``\ 。

\ **注意：**\ 由于浮点精度误差，请考虑改用 :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>`\ ，这样更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_idx_int>`

通过索引访问该基的每个轴（列）。索引 ``0`` 与 :ref:`x<class_Basis_property_x>` 相同，索引 ``1`` 与 :ref:`y<class_Basis_property_y>` 相同，索引 ``2`` 与 :ref:`z<class_Basis_property_z>` 相同。

\ **注意：**\ 在 C++ 中，该运算符访问基础矩阵的行，而\ *不*\ 是列。对于与脚本语言相同的行为，请使用 ``set_column`` 和 ``get_column`` 方法。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
