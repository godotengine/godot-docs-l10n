:github_url: hide

.. _class_PackedVector2Array:

PackedVector2Array
==================

:ref:`Vector2<class_Vector2>` 紧缩数组。

.. rst-class:: classref-introduction-group

描述
----

专门设计用于保存 :ref:`Vector2<class_Vector2>` 的数组。紧密打包数据，因此可为大型数组节省内存。

\ **紧缩数组、类型化数组和非类型化数组之间的差异：**\ 与同类型的类型化数组相比，紧缩数组的迭代和修改速度通常更快（例如 **PackedVector2Array** 与 ``Array[Vector2]``\ ）。此外，紧缩数组消耗的内存更少。缺点是紧缩数组不太灵活，因为它们不提供类似 :ref:`Array.map()<class_Array_method_map>` 的许多便捷方法。不过类型化数组的迭代和修改速度比非类型化数组更快。

\ **注意：**\ 紧缩数组始终通过引用传递。要获取可以独立于原始数组进行修改的数组副本，请使用 :ref:`duplicate()<class_PackedVector2Array_method_duplicate>`\ 。内置属性和方法\ *并非*\ 如此，它们返回的是紧缩数组的副本，对其进行修改\ *不会*\ 影响原值。更新此类内置属性请修改返回的数组，然后将其重新赋值给该属性。

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `AStarGrid2D 的网格导航演示 <https://godotengine.org/asset-library/asset/2723>`__

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`PackedVector2Array<class_PackedVector2Array_constructor_PackedVector2Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`PackedVector2Array<class_PackedVector2Array_constructor_PackedVector2Array>`\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`PackedVector2Array<class_PackedVector2Array_constructor_PackedVector2Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedVector2Array_method_append>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedVector2Array_method_append_array>`\ (\ array\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedVector2Array_method_bsearch>`\ (\ value\: :ref:`Vector2<class_Vector2>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedVector2Array_method_clear>`\ (\ )                                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedVector2Array_method_count>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const|                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`duplicate<class_PackedVector2Array_method_duplicate>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedVector2Array_method_erase>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedVector2Array_method_fill>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedVector2Array_method_find>`\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get<class_PackedVector2Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedVector2Array_method_has>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedVector2Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedVector2Array_method_is_empty>`\ (\ ) |const|                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedVector2Array_method_push_back>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedVector2Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedVector2Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedVector2Array_method_reverse>`\ (\ )                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedVector2Array_method_rfind>`\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedVector2Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ )                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedVector2Array_method_size>`\ (\ ) |const|                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`slice<class_PackedVector2Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedVector2Array_method_sort>`\ (\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedVector2Array_method_to_byte_array>`\ (\ ) |const|                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedVector2Array_operator_neq_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator *<class_PackedVector2Array_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator +<class_PackedVector2Array_operator_sum_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedVector2Array_operator_eq_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator []<class_PackedVector2Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_PackedVector2Array_constructor_PackedVector2Array:

.. rst-class:: classref-constructor

:ref:`PackedVector2Array<class_PackedVector2Array>` **PackedVector2Array**\ (\ ) :ref:`🔗<class_PackedVector2Array_constructor_PackedVector2Array>`

构造空的 **PackedVector2Array**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector2Array<class_PackedVector2Array>` **PackedVector2Array**\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )

构造给定 **PackedVector2Array** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector2Array<class_PackedVector2Array>` **PackedVector2Array**\ (\ from\: :ref:`Array<class_Array>`\ )

构造新的 **PackedVector2Array**\ 。也可以传入需要转换的通用 :ref:`Array<class_Array>`\ 。

\ **注意：**\ 使用元素初始化 **PackedVector2Array** 时，必须使用元素为 :ref:`Vector2<class_Vector2>` 的 :ref:`Array<class_Array>` 进行初始化：

::

    var array = PackedVector2Array([Vector2(12, 34), Vector2(56, 78)])

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PackedVector2Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_append>`

向数组末尾追加一个元素（\ :ref:`push_back()<class_PackedVector2Array_method_push_back>` 的别名）。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_method_append_array>`

在该数组的末尾追加一个 **PackedVector2Array**\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Vector2<class_Vector2>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedVector2Array_method_bsearch>`

使用二分法查找已有值的索引（如果该值尚未存在于数组中，则为保持排序顺序的插入索引）。传递 ``before`` 说明符是可选的。如果该参数为 ``false``\ ，则返回的索引位于数组中该值的所有已有的条目之后。

\ **注意：**\ 在未排序的数组上调用 :ref:`bsearch()<class_PackedVector2Array_method_bsearch>` 会产生预料之外的行为。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行为与其他向量不同。因此，如果包含 NaN，则这个方法的结果可能不准确。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedVector2Array_method_clear>`

清空数组。相当于调用 :ref:`resize()<class_PackedVector2Array_method_resize>` 时指定大小为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PackedVector2Array_method_count>`

返回数组中某个元素出现的次数。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行为与其他向量不同。因此，如果包含 NaN，则这个方法的结果可能不准确。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_duplicate>`

创建该数组的副本，并将该副本返回。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_erase>`

从数组中移除首次出现的某个值并返回 ``true``\ 。如果数组中不存在该值，则什么都不会发生，返回 ``false``\ 。要根据索引来移除元素，请改用 :ref:`remove_at()<class_PackedVector2Array_method_remove_at>`\ 。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行为与其他向量不同。因此，如果包含 NaN，则这个方法的结果可能不准确。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_fill>`

将数组中的所有元素都设为给定的值。通常与 :ref:`resize()<class_PackedVector2Array_method_resize>` 一起使用，创建给定大小的数组并初始化元素。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedVector2Array_method_find>`

在数组中搜索值并返回其索引，如果未找到则返回 ``-1`` 。可选地，可以传递起始搜索索引。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行为与其他向量不同。因此，如果包含 NaN，则这个方法的结果可能不准确。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_get:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedVector2Array_method_get>`

Returns the :ref:`Vector2<class_Vector2>` at the given ``index`` in the array. If ``index`` is out-of-bounds or negative, this method fails and returns ``Vector2(0, 0)``.

This method is similar (but not identical) to the ``[]`` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PackedVector2Array_method_has>`

如果数组中包含 ``value``\ ，则返回 ``true``\ 。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行为与其他向量不同。因此，如果包含 NaN，则这个方法的结果可能不准确。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_insert>`

在数组中给定的位置插入一个新元素。这个位置必须是有效的，或者是在数组的末端（\ ``idx == size()``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_is_empty>`

该数组为空时，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_push_back>`

在末尾插入一个 :ref:`Vector2<class_Vector2>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector2Array_method_remove_at>`

从数组中删除位于索引的元素。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector2Array_method_resize>`

设置数组的大小。如果数组增大，则预留数组末端的元素。如果数组缩小，则将数组截断到新的大小。调用一次 :ref:`resize()<class_PackedVector2Array_method_resize>` 然后赋值比逐个添加新元素要快。

成功时返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，失败时返回下列 :ref:`Error<enum_@GlobalScope_Error>` 常量：大小为负数则返回 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`\ ，分配失败则返回 :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>`\ 。请使用 :ref:`size()<class_PackedVector2Array_method_size>` 获取调整后的实际大小。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedVector2Array_method_reverse>`

将数组中的元素逆序排列。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedVector2Array_method_rfind>`

逆序搜索数组。还可以传递起始搜索位置索引。如果为负，则起始索引被视为相对于数组的结尾。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行为与其他向量不同。因此，如果包含 NaN，则这个方法的结果可能不准确。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_set>`

更改给定索引处的 :ref:`Vector2<class_Vector2>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_size>`

返回数组中元素的个数。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedVector2Array_method_slice>`

返回该 **PackedVector2Array** 的切片，是从 ``begin``\ （含）到 ``end``\ （不含）的全新 **PackedVector2Array**\ 。

\ ``begin`` 和 ``end`` 的绝对值会按数组大小进行限制，所以 ``end`` 的默认值会切到数组大小为止（即 ``arr.slice(1)`` 是 ``arr.slice(1, arr.size())`` 的简写）。

如果 ``begin`` 或 ``end`` 为负，则表示相对于数组的末尾（即 ``arr.slice(0, -2)`` 是 ``arr.slice(0, arr.size() - 2)`` 的简写）。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedVector2Array_method_sort>`

升序排列数组中的元素。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行为与其他向量不同。因此，如果包含 NaN，则这个方法的结果可能不准确。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_to_byte_array>`

返回 :ref:`PackedByteArray<class_PackedByteArray>`\ ，每个向量都被编码为字节。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_PackedVector2Array_operator_neq_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_operator_neq_PackedVector2Array>`

如果数组内容不同，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_PackedVector2Array_operator_mul_Transform2D>`

返回一个新的 **PackedVector2Array**\ ，该数组中的所有向量都通过给定的 :ref:`Transform2D<class_Transform2D>` 变换矩阵进行逆变换（乘以），假设该变换的基是正交的（即旋转/反射可以，缩放/倾斜则不然）。

\ ``array * transform`` 相当于 ``transform.inverse() * array``\ 。请参阅 :ref:`Transform2D.inverse()<class_Transform2D_method_inverse>`\ 。

对于通过仿射变换的逆进行变换（例如缩放），可以使用 ``transform.affine_inverse() * array`` 代替。请参阅 :ref:`Transform2D.affine_inverse()<class_Transform2D_method_affine_inverse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_sum_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator +**\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_operator_sum_PackedVector2Array>`

返回新的 **PackedVector2Array**\ ，新数组的内容为此数组在末尾加上 ``right``\ 。为了提高性能，请考虑改用 :ref:`append_array()<class_PackedVector2Array_method_append_array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_eq_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_operator_eq_PackedVector2Array>`

如果两个数组的内容相同，即对应索引号的 :ref:`Vector2<class_Vector2>` 相等，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector2Array_operator_idx_int>`

返回索引为 ``index`` 的 :ref:`Vector2<class_Vector2>`\ 。负数索引能从末尾开始访问元素。使用数组范围外的索引会导致出错。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
