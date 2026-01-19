:github_url: hide

.. _class_Vector3i:

Vector3i
========

使用整数坐标的 3D 向量。

.. rst-class:: classref-introduction-group

描述
----

包含三个元素的结构体，可用于代表 3D 坐标或任何整数的三元组。

使用整数坐标，因此需要绝对精确时应比 :ref:`Vector3<class_Vector3>` 优先使用。请注意，取值范围有 32 位的限制，与 :ref:`Vector3<class_Vector3>` 不同，这个类型的精度无法使用引擎的构建参数进行配置。如果需要 64 位的值，请使用 :ref:`int<class_int>` 或 :ref:`PackedInt64Array<class_PackedInt64Array>`\ 。

\ **注意：**\ 在布尔语境中，如果 Vector3i 等于 ``Vector3i(0, 0, 0)`` 则求值结果为 ``false``\ 。否则 Vector3i 的求值结果始终为 ``true``\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`数学文档索引 <../tutorials/math/index>`

- :doc:`向量数学 <../tutorials/math/vector_math>`

- `3Blue1Brown《线性代数的本质》 <https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector3i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector3i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`z<class_Vector3i_property_z>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ )                                                                                  |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ from\: :ref:`Vector3i<class_Vector3i>`\ )                                          |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ from\: :ref:`Vector3<class_Vector3>`\ )                                            |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`abs<class_Vector3i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`clamp<class_Vector3i_method_clamp>`\ (\ min\: :ref:`Vector3i<class_Vector3i>`, max\: :ref:`Vector3i<class_Vector3i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`clampi<class_Vector3i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector3i_method_distance_squared_to>`\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector3i_method_distance_to>`\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector3i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector3i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`max<class_Vector3i_method_max>`\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector3i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`maxi<class_Vector3i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`min<class_Vector3i_method_min>`\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector3i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`mini<class_Vector3i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`sign<class_Vector3i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`snapped<class_Vector3i_method_snapped>`\ (\ step\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`snappedi<class_Vector3i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector3i_operator_neq_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator %<class_Vector3i_operator_mod_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator %<class_Vector3i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator *<class_Vector3i_operator_mul_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`   | :ref:`operator *<class_Vector3i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator *<class_Vector3i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator +<class_Vector3i_operator_sum_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator -<class_Vector3i_operator_dif_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator /<class_Vector3i_operator_div_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`   | :ref:`operator /<class_Vector3i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator /<class_Vector3i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector3i_operator_lt_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector3i_operator_lte_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector3i_operator_eq_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector3i_operator_gt_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector3i_operator_gte_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector3i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator unary+<class_Vector3i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator unary-<class_Vector3i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Vector3i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector3i_Axis>`

.. _class_Vector3i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector3i_Axis>` **AXIS_X** = ``0``

X 轴的枚举值。由 :ref:`max_axis_index()<class_Vector3i_method_max_axis_index>` 和 :ref:`min_axis_index()<class_Vector3i_method_min_axis_index>` 返回。

.. _class_Vector3i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector3i_Axis>` **AXIS_Y** = ``1``

Y 轴的枚举值。由 :ref:`max_axis_index()<class_Vector3i_method_max_axis_index>` 和 :ref:`min_axis_index()<class_Vector3i_method_min_axis_index>` 返回。

.. _class_Vector3i_constant_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector3i_Axis>` **AXIS_Z** = ``2``

Z 轴的枚举值。由 :ref:`max_axis_index()<class_Vector3i_method_max_axis_index>` 和 :ref:`min_axis_index()<class_Vector3i_method_min_axis_index>` 返回。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_Vector3i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector3i(0, 0, 0)`` :ref:`🔗<class_Vector3i_constant_ZERO>`

零向量，所有分量都设置为 ``0`` 的向量。

.. _class_Vector3i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector3i(1, 1, 1)`` :ref:`🔗<class_Vector3i_constant_ONE>`

一向量，所有分量都设置为 ``1`` 的向量。

.. _class_Vector3i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector3i(-2147483648, -2147483648, -2147483648)`` :ref:`🔗<class_Vector3i_constant_MIN>`

最小向量，所有分量等于 ``INT32_MIN`` 的向量。可用作 :ref:`Vector3.INF<class_Vector3_constant_INF>` 的负整数等价物。

.. _class_Vector3i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector3i(2147483647, 2147483647, 2147483647)`` :ref:`🔗<class_Vector3i_constant_MAX>`

最大向量，所有分量等于 ``INT32_MAX`` 的向量。可用作 :ref:`Vector3.INF<class_Vector3_constant_INF>` 的整数等价物。

.. _class_Vector3i_constant_LEFT:

.. rst-class:: classref-constant

**LEFT** = ``Vector3i(-1, 0, 0)`` :ref:`🔗<class_Vector3i_constant_LEFT>`

左单位向量。代表局部的左方向，全局的西方向。

.. _class_Vector3i_constant_RIGHT:

.. rst-class:: classref-constant

**RIGHT** = ``Vector3i(1, 0, 0)`` :ref:`🔗<class_Vector3i_constant_RIGHT>`

右单位向量。代表局部的右方向，全局的东方向。

.. _class_Vector3i_constant_UP:

.. rst-class:: classref-constant

**UP** = ``Vector3i(0, 1, 0)`` :ref:`🔗<class_Vector3i_constant_UP>`

上单位向量。

.. _class_Vector3i_constant_DOWN:

.. rst-class:: classref-constant

**DOWN** = ``Vector3i(0, -1, 0)`` :ref:`🔗<class_Vector3i_constant_DOWN>`

下单位向量。

.. _class_Vector3i_constant_FORWARD:

.. rst-class:: classref-constant

**FORWARD** = ``Vector3i(0, 0, -1)`` :ref:`🔗<class_Vector3i_constant_FORWARD>`

前单位向量。代表局部的前方向，全局的北方向。

.. _class_Vector3i_constant_BACK:

.. rst-class:: classref-constant

**BACK** = ``Vector3i(0, 0, 1)`` :ref:`🔗<class_Vector3i_constant_BACK>`

向后的单位向量。代表局部的后方，全局的南方。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Vector3i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector3i_property_x>`

向量的 X 分量。也可以通过使用索引位置 ``[0]`` 访问。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector3i_property_y>`

向量的 Y 分量。也可以通过使用索引位置 ``[1]`` 访问。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_property_z:

.. rst-class:: classref-property

:ref:`int<class_int>` **z** = ``0`` :ref:`🔗<class_Vector3i_property_z>`

向量的 Z 分量。也可以通过使用索引位置 ``[2]`` 访问。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_Vector3i_constructor_Vector3i:

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ ) :ref:`🔗<class_Vector3i_constructor_Vector3i>`

构造默认初始化的 **Vector3i**\ ，所有分量都为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ from\: :ref:`Vector3i<class_Vector3i>`\ )

构造给定 **Vector3i** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ from\: :ref:`Vector3<class_Vector3>`\ )

根据给定的 :ref:`Vector3<class_Vector3>` 构造 **Vector3i**\ ，会将各个分量的小数部分截断（向 0 取整）。要使用不同的行为，请考虑改为传入 :ref:`Vector3.ceil()<class_Vector3_method_ceil>`\ 、\ :ref:`Vector3.floor()<class_Vector3_method_floor>` 或 :ref:`Vector3.round()<class_Vector3_method_round>` 的结果。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`\ )

返回具有给定分量的 **Vector3i**\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Vector3i_method_abs:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_abs>`

返回一个新向量，其所有分量都是绝对值，即正值。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **clamp**\ (\ min\: :ref:`Vector3i<class_Vector3i>`, max\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_clamp>`

返回一个新向量，每个分量都使用 :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` 限制在 ``min`` 和 ``max`` 之间。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_clampi>`

返回一个新向量，每个分量都使用 :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` 限制在 ``min`` 和 ``max`` 之间。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_distance_squared_to>`

返回该向量与 ``to`` 之间的距离的平方。

该方法比 :ref:`distance_to()<class_Vector3i_method_distance_to>` 运行得更快，因此请在需要比较向量或者用于某些公式的平方距离时，优先使用这个方法。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_distance_to>`

返回该向量与 ``to`` 之间的距离。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_length>`

返回这个向量的长度，即大小。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_length_squared>`

返回这个向量的平方长度，即平方大小。

这个方法比 :ref:`length()<class_Vector3i_method_length>` 运行得更快，所以如果你需要比较向量或需要一些公式的平方距离时，更喜欢用它。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_max:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **max**\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_max>`

返回自身与 ``with`` 各分量的最大值，等价于 ``Vector3i(maxi(x, with.x), maxi(y, with.y), maxi(z, with.z))``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_max_axis_index>`

返回该向量中最大值的轴。见 ``AXIS_*`` 常量。如果所有分量相等，则该方法返回 :ref:`AXIS_X<class_Vector3i_constant_AXIS_X>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_maxi>`

返回自身与 ``with`` 各分量的最大值，等价于 ``Vector3i(maxi(x, with), maxi(y, with), maxi(z, with))``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_min:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **min**\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_min>`

返回自身与 ``with`` 各分量的最小值，等价于 ``Vector3i(mini(x, with.x), mini(y, with.y), mini(z, with.z))``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_min_axis_index>`

返回该向量中最小值的轴。见 ``AXIS_*`` 常量。如果所有分量相等，则该方法返回 :ref:`AXIS_Z<class_Vector3i_constant_AXIS_Z>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_mini:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_mini>`

返回自身与 ``with`` 各分量的最小值，等价于 ``Vector3i(mini(x, with), mini(y, with), mini(z, with))``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_sign:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_sign>`

返回一个新的向量，如果是正数，每个分量被设置为\ ``1`` ，如果是负数，\ ``-1`` ，如果是零，\ ``0`` 。其结果与对每个分量调用\ :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>`\ 相同。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **snapped**\ (\ step\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_snapped>`

返回新的向量，每个分量都吸附到了与 ``step`` 中对应分量最接近的倍数。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_snappedi>`

返回一个新向量，其中每个分量都吸附到了 ``step`` 的最接近倍数。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_Vector3i_operator_neq_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_neq_Vector3i>`

如果向量不相等，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mod_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator %**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_mod_Vector3i>`

获取该 **Vector3i** 的每个分量与给定 **Vector3i** 中分量的余数。这个运算使用的是截断式除法，因为对负数不友好，所以通常不会想要使用。如果你想要处理负数，请考虑改用 :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>`\ 。

::

    print(Vector3i(10, -20, 30) % Vector3i(7, 8, 9)) # 输出 (3, -4, 3)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_mod_int>`

获取该 **Vector3i** 的每个分量与给定的 :ref:`int<class_int>` 的余数。这个运算使用的是截断式除法，因为对负数不友好，所以通常不会想要使用。如果你想要处理负数，请考虑改用 :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>`\ 。

::

    print(Vector3i(10, -20, 30) % 7) # 输出 (3, -6, 2)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mul_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator ***\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_mul_Vector3i>`

将该 **Vector3i** 的每个分量乘以给定 **Vector3i** 的对应分量。

::

    print(Vector3i(10, 20, 30) * Vector3i(3, 4, 5)) # 输出 (30, 80, 150)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector3i_operator_mul_float>`

将该 **Vector3i** 的每个分量乘以给定的 :ref:`float<class_float>`\ 。返回的是 :ref:`Vector3<class_Vector3>`\ 。

::

    print(Vector3i(10, 15, 20) * 0.9) # 输出 (9.0, 13.5, 18.0)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_mul_int>`

将该 **Vector3i** 的每个分量乘以给定的 :ref:`int<class_int>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_sum_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator +**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_sum_Vector3i>`

将该 **Vector3i** 的每个分量加上给定 **Vector3i** 的对应分量。

::

    print(Vector3i(10, 20, 30) + Vector3i(3, 4, 5)) # 输出 (13, 24, 35)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_dif_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator -**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_dif_Vector3i>`

将该 **Vector3i** 的每个分量减去给定 **Vector3i** 的对应分量。

::

    print(Vector3i(10, 20, 30) - Vector3i(3, 4, 5)) # 输出 (7, 16, 25)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_div_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator /**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_div_Vector3i>`

将该 **Vector3i** 的每个分量除以给定 **Vector3i** 的对应分量。

::

    print(Vector3i(10, 20, 30) / Vector3i(2, 5, 3)) # 输出 (5, 4, 10)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector3i_operator_div_float>`

Divides each component of the **Vector3i** by the given :ref:`float<class_float>`. Returns a :ref:`Vector3<class_Vector3>`.

::

    print(Vector3i(1, 2, 3) / 2.5) # Prints (0.4, 0.8, 1.2)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_div_int>`

将该 **Vector3i** 的每个分量除以给定的 :ref:`int<class_int>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_lt_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_lt_Vector3i>`

比较两个 **Vector3i** 向量，首先检查左向量的 X 值是否小于 ``right`` 向量的 X 值。如果 X 值完全相等，则用相同的方法检查两个向量的 Y 值、Z 值。该运算符可用于向量排序。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_lte_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_lte_Vector3i>`

比较两个 **Vector3i** 向量，首先检查左向量的 X 值是否小于等于 ``right`` 向量的 X 值。如果 X 值完全相等，则用相同的方法检查两个向量的 Y 值、Z 值。该运算符可用于向量排序。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_eq_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_eq_Vector3i>`

如果向量相等，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_gt_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_gt_Vector3i>`

比较两个 **Vector3i** 向量，首先检查左向量的 X 值是否大于 ``right`` 向量的 X 值。如果 X 值完全相等，则用相同的方法检查两个向量的 Y 值、Z 值。该运算符可用于向量排序。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_gte_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_gte_Vector3i>`

比较两个 **Vector3i** 向量，首先检查左向量的 X 值是否大于等于 ``right`` 向量的 X 值。如果 X 值完全相等，则用相同的方法检查两个向量的 Y 值、Z 值。该运算符可用于向量排序。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_idx_int>`

使用向量分量的 ``index`` 来访问向量分量。\ ``v[0]`` 等价于 ``v.x``\ ，\ ``v[1]`` 等价于 ``v.y``\ ，\ ``v[2]`` 等价于 ``v.z``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector3i_operator_unplus>`

返回与 ``+`` 不存在时相同的值。单目 ``+`` 没有作用，但有时可以使你的代码更具可读性。

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector3i_operator_unminus>`

返回该 **Vector3i** 的负值。和写 ``Vector3i(-v.x, -v.y, -v.z)`` 是一样的。该操作在保持相同幅度的同时，翻转向量的方向。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
