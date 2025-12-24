:github_url: hide

.. _class_Vector2i:

Vector2i
========

使用整數座標的 2D 向量。

.. rst-class:: classref-introduction-group

說明
----

包含兩個元素的結構體，可用於代表 2D 座標或任何整數的二元組。

使用整數座標，因此需要絕對精確時應比 :ref:`Vector2<class_Vector2>` 優先使用。請注意，取值範圍有 32 位的限制，與 :ref:`Vector2<class_Vector2>` 不同，這個型別的精度無法使用引擎的建構參數進行配置。如果需要 64 位元的值，請使用 :ref:`int<class_int>` 或 :ref:`PackedInt64Array<class_PackedInt64Array>`\ 。

\ **注意：**\ 在布林語境中，如果 Vector2i 等於 ``Vector2i(0, 0)`` 則求值結果為 ``false``\ 。否則 Vector2i 的求值結果始終為 ``true``\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`數學文件索引 <../tutorials/math/index>`

- :doc:`向量數學 <../tutorials/math/vector_math>`

- `3Blue1Brown《線性代數的本質》 <https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector2i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector2i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ )                                                       |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ from\: :ref:`Vector2i<class_Vector2i>`\ )               |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ from\: :ref:`Vector2<class_Vector2>`\ )                 |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`abs<class_Vector2i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`aspect<class_Vector2i_method_aspect>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`clamp<class_Vector2i_method_clamp>`\ (\ min\: :ref:`Vector2i<class_Vector2i>`, max\: :ref:`Vector2i<class_Vector2i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`clampi<class_Vector2i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector2i_method_distance_squared_to>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector2i_method_distance_to>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector2i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector2i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`max<class_Vector2i_method_max>`\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector2i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`maxi<class_Vector2i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`min<class_Vector2i_method_min>`\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector2i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`mini<class_Vector2i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`sign<class_Vector2i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`snapped<class_Vector2i_method_snapped>`\ (\ step\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`snappedi<class_Vector2i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector2i_operator_neq_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator %<class_Vector2i_operator_mod_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator %<class_Vector2i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator *<class_Vector2i_operator_mul_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`operator *<class_Vector2i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator *<class_Vector2i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator +<class_Vector2i_operator_sum_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator -<class_Vector2i_operator_dif_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator /<class_Vector2i_operator_div_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`operator /<class_Vector2i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator /<class_Vector2i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector2i_operator_lt_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector2i_operator_lte_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector2i_operator_eq_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector2i_operator_gt_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector2i_operator_gte_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector2i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator unary+<class_Vector2i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator unary-<class_Vector2i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Vector2i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector2i_Axis>`

.. _class_Vector2i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector2i_Axis>` **AXIS_X** = ``0``

X 軸的列舉值。由 :ref:`max_axis_index()<class_Vector2i_method_max_axis_index>` 和 :ref:`min_axis_index()<class_Vector2i_method_min_axis_index>` 返回。

.. _class_Vector2i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector2i_Axis>` **AXIS_Y** = ``1``

Y 軸的列舉值。由 :ref:`max_axis_index()<class_Vector2i_method_max_axis_index>` 和 :ref:`min_axis_index()<class_Vector2i_method_min_axis_index>` 返回。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Vector2i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector2i(0, 0)`` :ref:`🔗<class_Vector2i_constant_ZERO>`

零向量，所有分量都設定為 ``0`` 的向量。

.. _class_Vector2i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector2i(1, 1)`` :ref:`🔗<class_Vector2i_constant_ONE>`

一向量，所有分量都設定為 ``1`` 的向量。

.. _class_Vector2i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector2i(-2147483648, -2147483648)`` :ref:`🔗<class_Vector2i_constant_MIN>`

最小向量，所有分量等於 ``INT32_MIN`` 的向量。可用作 :ref:`Vector2.INF<class_Vector2_constant_INF>` 的負整數等價物。

.. _class_Vector2i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector2i(2147483647, 2147483647)`` :ref:`🔗<class_Vector2i_constant_MAX>`

最大向量，所有分量等於 ``INT32_MAX`` 的向量。可用作 :ref:`Vector2.INF<class_Vector2_constant_INF>` 的整數等價物。

.. _class_Vector2i_constant_LEFT:

.. rst-class:: classref-constant

**LEFT** = ``Vector2i(-1, 0)`` :ref:`🔗<class_Vector2i_constant_LEFT>`

左單位向量。代表左的方向。

.. _class_Vector2i_constant_RIGHT:

.. rst-class:: classref-constant

**RIGHT** = ``Vector2i(1, 0)`` :ref:`🔗<class_Vector2i_constant_RIGHT>`

右單位向量。代表右的方向。

.. _class_Vector2i_constant_UP:

.. rst-class:: classref-constant

**UP** = ``Vector2i(0, -1)`` :ref:`🔗<class_Vector2i_constant_UP>`

上單位向量。在 2D 中 Y 是向下的，所以這個向量指向 -Y。

.. _class_Vector2i_constant_DOWN:

.. rst-class:: classref-constant

**DOWN** = ``Vector2i(0, 1)`` :ref:`🔗<class_Vector2i_constant_DOWN>`

下單位向量。在 2D 中 Y 是向下的，所以這個向量指向 +Y。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Vector2i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector2i_property_x>`

向量的 X 分量。也可以通過使用索引位置 ``[0]`` 存取。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector2i_property_y>`

向量的 Y 分量。也可以通過使用索引位置 ``[1]`` 存取。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Vector2i_constructor_Vector2i:

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ ) :ref:`🔗<class_Vector2i_constructor_Vector2i>`

建構預設初始化的 **Vector2i**\ ，所有分量都為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ from\: :ref:`Vector2i<class_Vector2i>`\ )

建構給定 **Vector2i** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ from\: :ref:`Vector2<class_Vector2>`\ )

根據給定的 :ref:`Vector2<class_Vector2>` 建構 **Vector2i**\ ，會將各個分量的小數部分截斷（向 0 取整）。要使用不同的行為，請考慮改為傳入 :ref:`Vector2.ceil()<class_Vector2_method_ceil>`\ 、\ :ref:`Vector2.floor()<class_Vector2_method_floor>` 或 :ref:`Vector2.round()<class_Vector2_method_round>` 的結果。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ )

從給定的 ``x`` 和 ``y`` 建構新的 **Vector2i**\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Vector2i_method_abs:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_abs>`

返回一個新向量，其所有分量都是絕對值，即正值。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_aspect:

.. rst-class:: classref-method

:ref:`float<class_float>` **aspect**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_aspect>`

返回該向量的長寬比，即 :ref:`x<class_Vector2i_property_x>` 與 :ref:`y<class_Vector2i_property_y>` 的比例。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **clamp**\ (\ min\: :ref:`Vector2i<class_Vector2i>`, max\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_clamp>`

返回一個新向量，每個分量都使用 :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` 限制在 ``min`` 和 ``max`` 之間。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_clampi>`

Returns a new vector with all components clamped between ``min`` and ``max``, by running :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` on each component.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_distance_squared_to>`

返回該向量與 ``to`` 之間的距離的平方。

該方法比 :ref:`distance_to()<class_Vector2i_method_distance_to>` 運作得更快，因此請在需要比較向量或者用於某些公式的平方距離時，優先使用這個方法。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_distance_to>`

返回該向量與 ``to`` 之間的距離。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_length>`

返回這個向量的長度，即大小。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_length_squared>`

返回這個向量的平方長度，即平方大小。

這個方法比 :ref:`length()<class_Vector2i_method_length>` 運作得更快，所以如果你需要比較向量或需要一些公式的平方距離時，更喜歡用它。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_max:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **max**\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_max>`

Returns the component-wise maximum of this and ``with``, equivalent to ``Vector2i(maxi(x, with.x), maxi(y, with.y))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_max_axis_index>`

返回該向量中最大值的軸。見 ``AXIS_*`` 常數。如果所有分量相等，則該方法返回 :ref:`AXIS_X<class_Vector2i_constant_AXIS_X>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_maxi>`

Returns the component-wise maximum of this and ``with``, equivalent to ``Vector2i(maxi(x, with), maxi(y, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_min:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **min**\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_min>`

Returns the component-wise minimum of this and ``with``, equivalent to ``Vector2i(mini(x, with.x), mini(y, with.y))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_min_axis_index>`

返回該向量中最小值的軸。見 ``AXIS_*`` 常數。如果所有分量相等，則該方法返回 :ref:`AXIS_Y<class_Vector2i_constant_AXIS_Y>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_mini:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_mini>`

Returns the component-wise minimum of this and ``with``, equivalent to ``Vector2i(mini(x, with), mini(y, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_sign:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_sign>`

返回一個新的向量，如果是正數，每個分量被設定為\ ``1`` ，如果是負數，\ ``-1`` ，如果是零，\ ``0`` 。其結果與對每個分量呼叫\ :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>`\ 相同。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **snapped**\ (\ step\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_snapped>`

返回新的向量，每個分量都吸附到了與 ``step`` 中對應分量最接近的倍數。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_snappedi>`

Returns a new vector with each component snapped to the closest multiple of ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Vector2i_operator_neq_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_neq_Vector2i>`

如果向量不相等，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mod_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator %**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_mod_Vector2i>`

Gets the remainder of each component of the **Vector2i** with the components of the given **Vector2i**. This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` instead if you want to handle negative numbers.

::

    print(Vector2i(10, -20) % Vector2i(7, 8)) # Prints (3, -4)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_mod_int>`

Gets the remainder of each component of the **Vector2i** with the given :ref:`int<class_int>`. This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` instead if you want to handle negative numbers.

::

    print(Vector2i(10, -20) % 7) # Prints (3, -6)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_mul_Vector2i>`

Multiplies each component of the **Vector2i** by the components of the given **Vector2i**.

::

    print(Vector2i(10, 20) * Vector2i(3, 4)) # Prints (30, 80)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector2i_operator_mul_float>`

Multiplies each component of the **Vector2i** by the given :ref:`float<class_float>`. Returns a :ref:`Vector2<class_Vector2>`.

::

    print(Vector2i(10, 15) * 0.9) # Prints (9.0, 13.5)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_mul_int>`

將該 **Vector2i** 的每個分量乘以給定的 :ref:`int<class_int>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_sum_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator +**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_sum_Vector2i>`

Adds each component of the **Vector2i** by the components of the given **Vector2i**.

::

    print(Vector2i(10, 20) + Vector2i(3, 4)) # Prints (13, 24)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_dif_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator -**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_dif_Vector2i>`

Subtracts each component of the **Vector2i** by the components of the given **Vector2i**.

::

    print(Vector2i(10, 20) - Vector2i(3, 4)) # Prints (7, 16)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator /**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_div_Vector2i>`

Divides each component of the **Vector2i** by the components of the given **Vector2i**.

::

    print(Vector2i(10, 20) / Vector2i(2, 5)) # Prints (5, 4)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector2i_operator_div_float>`

Divides each component of the **Vector2i** by the given :ref:`float<class_float>`. Returns a :ref:`Vector2<class_Vector2>`.

::

    print(Vector2i(10, 20) / 2.9) # Prints (5.0, 10.0)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_div_int>`

將該 **Vector2i** 的每個分量除以給定的 :ref:`int<class_int>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_lt_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_lt_Vector2i>`

比較兩個 **Vector2i** 向量，首先檢查左向量的 X 值是否小於 ``right`` 向量的 X 值。如果 X 值完全相等，則用相同的方法檢查兩個向量的 Y 值。該運算子可用於向量排序。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_lte_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_lte_Vector2i>`

比較兩個 **Vector2i** 向量，首先檢查左向量的 X 值是否小於等於 ``right`` 向量的 X 值。如果 X 值完全相等，則用相同的方法檢查兩個向量的 Y 值。該運算子可用於向量排序。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_eq_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_eq_Vector2i>`

如果向量相等，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_gt_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_gt_Vector2i>`

比較兩個 **Vector2i** 向量，首先檢查左向量的 X 值是否大於 ``right`` 向量的 X 值。如果 X 值完全相等，則用相同的方法檢查兩個向量的 Y 值。該運算子可用於向量排序。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_gte_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_gte_Vector2i>`

比較兩個 **Vector2i** 向量，首先檢查左向量的 X 值是否大於等於 ``right`` 向量的 X 值。如果 X 值完全相等，則用相同的方法檢查兩個向量的 Y 值。該運算子可用於向量排序。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_idx_int>`

使用向量分量的 ``index`` 來存取向量分量。\ ``v[0]`` 等價於 ``v.x``\ 、\ ``v[1]`` 等價於 ``v.y``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector2i_operator_unplus>`

返回與 ``+`` 不存在時相同的值。單目 ``+`` 沒有作用，但有時可以使你的程式碼更具可讀性。

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector2i_operator_unminus>`

返回該 **Vector2i** 的負值。和寫 ``Vector2i(-v.x, -v.y)`` 是一樣的。該操作在保持相同幅度的同時，翻轉向量的方向。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
