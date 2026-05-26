:github_url: hide

.. _class_PackedColorArray:

PackedColorArray
================

:ref:`Color<class_Color>` 紧缩数组。

.. rst-class:: classref-introduction-group

描述
----

An array specifically designed to hold :ref:`Color<class_Color>`. Packs data tightly, so it saves memory for large array sizes.

\ **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. **PackedColorArray** versus ``Array[Color]``). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as :ref:`Array.map()<class_Array_method_map>`. Typed arrays are in turn faster to iterate on and modify than untyped arrays.

\ **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_PackedColorArray_method_duplicate>`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

\ **Note:** In a boolean context, a packed array will evaluate to ``false`` if it's empty. Otherwise, a packed array will always evaluate to ``true``.

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`PackedColorArray<class_PackedColorArray_constructor_PackedColorArray>`\ (\ )                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`PackedColorArray<class_PackedColorArray_constructor_PackedColorArray>`\ (\ from\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`PackedColorArray<class_PackedColorArray_constructor_PackedColorArray>`\ (\ from\: :ref:`Array<class_Array>`\ )                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`append<class_PackedColorArray_method_append>`\ (\ value\: :ref:`Color<class_Color>`\ )                                                    |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`append_array<class_PackedColorArray_method_append_array>`\ (\ array\: :ref:`PackedColorArray<class_PackedColorArray>`\ )                  |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`bsearch<class_PackedColorArray_method_bsearch>`\ (\ value\: :ref:`Color<class_Color>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_PackedColorArray_method_clear>`\ (\ )                                                                                         |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`count<class_PackedColorArray_method_count>`\ (\ value\: :ref:`Color<class_Color>`\ ) |const|                                              |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`duplicate<class_PackedColorArray_method_duplicate>`\ (\ ) |const|                                                                         |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`erase<class_PackedColorArray_method_erase>`\ (\ value\: :ref:`Color<class_Color>`\ )                                                      |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`fill<class_PackedColorArray_method_fill>`\ (\ value\: :ref:`Color<class_Color>`\ )                                                        |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`find<class_PackedColorArray_method_find>`\ (\ value\: :ref:`Color<class_Color>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                       | :ref:`get<class_PackedColorArray_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                      |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`has<class_PackedColorArray_method_has>`\ (\ value\: :ref:`Color<class_Color>`\ ) |const|                                                  |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`insert<class_PackedColorArray_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Color<class_Color>`\ )                  |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_empty<class_PackedColorArray_method_is_empty>`\ (\ ) |const|                                                                           |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`push_back<class_PackedColorArray_method_push_back>`\ (\ value\: :ref:`Color<class_Color>`\ )                                              |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`remove_at<class_PackedColorArray_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                  |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`resize<class_PackedColorArray_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                     |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`reverse<class_PackedColorArray_method_reverse>`\ (\ )                                                                                     |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`rfind<class_PackedColorArray_method_rfind>`\ (\ value\: :ref:`Color<class_Color>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set<class_PackedColorArray_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Color<class_Color>`\ )                           |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`size<class_PackedColorArray_method_size>`\ (\ ) |const|                                                                                   |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`slice<class_PackedColorArray_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|        |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`sort<class_PackedColorArray_method_sort>`\ (\ )                                                                                           |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`to_byte_array<class_PackedColorArray_method_to_byte_array>`\ (\ ) |const|                                                                 |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator !=<class_PackedColorArray_operator_neq_PackedColorArray>`\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`operator +<class_PackedColorArray_operator_sum_PackedColorArray>`\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator ==<class_PackedColorArray_operator_eq_PackedColorArray>`\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                       | :ref:`operator []<class_PackedColorArray_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                        |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_PackedColorArray_constructor_PackedColorArray:

.. rst-class:: classref-constructor

:ref:`PackedColorArray<class_PackedColorArray>` **PackedColorArray**\ (\ ) :ref:`🔗<class_PackedColorArray_constructor_PackedColorArray>`

构造空的 **PackedColorArray**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedColorArray<class_PackedColorArray>` **PackedColorArray**\ (\ from\: :ref:`PackedColorArray<class_PackedColorArray>`\ )

构造给定 **PackedColorArray** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedColorArray<class_PackedColorArray>` **PackedColorArray**\ (\ from\: :ref:`Array<class_Array>`\ )

构造新的 **PackedColorArray**\ 。你也可以传一个通用 :ref:`Array<class_Array>` 进行转换。

\ **注意：**\ 使用元素初始化 **PackedColorArray** 时，必须使用元素为 :ref:`Color<class_Color>` 的 :ref:`Array<class_Array>`\ ：

::

    var array = PackedColorArray([Color(0.1, 0.2, 0.3), Color(0.4, 0.5, 0.6)])

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PackedColorArray_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_append>`

向数组末尾追加一个元素（\ :ref:`push_back()<class_PackedColorArray_method_push_back>` 的别名）。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) :ref:`🔗<class_PackedColorArray_method_append_array>`

在该数组的末尾追加一个 **PackedColorArray**\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Color<class_Color>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedColorArray_method_bsearch>`

使用二进法查找已有值的索引（如果该值尚未存在于数组中，则为保持排序顺序的插入索引）。传递 ``before`` 说明符是可选的。如果该参数为 ``false``\ ，则返回的索引位于数组中该值的所有已有的条目之后。

\ **注意：**\ 在未排序的数组上调用 :ref:`bsearch()<class_PackedColorArray_method_bsearch>` 会产生预料之外的行为。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedColorArray_method_clear>`

清空数组。相当于调用 :ref:`resize()<class_PackedColorArray_method_resize>` 时指定大小为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_PackedColorArray_method_count>`

返回元素在数组中出现的次数。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedColorArray_method_duplicate>`

创建该数组的副本，并将该副本返回。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_erase>`

在数组中移除首次出现的某个值并返回 ``true``\ 。如果数组中不存在该值，则不会发生任何事情，返回 ``false``\ 。要按照索引移除元素，请改用 :ref:`remove_at()<class_PackedColorArray_method_remove_at>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_fill>`

将数组中的所有元素都设为给定的值。通常与 :ref:`resize()<class_PackedColorArray_method_resize>` 一起使用，创建给定大小的数组并初始化元素。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`Color<class_Color>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedColorArray_method_find>`

在数组中搜索值并返回其索引，如果未找到则返回 ``-1`` 。可选地，可以传递起始搜索索引。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_get:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedColorArray_method_get>`

返回数组中索引为 ``index`` 的 :ref:`Color<class_Color>`\ 。如果 ``index`` 越界或为负数，则该方法失败并返回 ``Color(0, 0, 0, 1)``\ 。

该方法类似于 ``[]`` 运算符（但不等价）。最显著的区别就是从编辑器中运行时，该方法失败不会暂停项目运行。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_PackedColorArray_method_has>`

如果该数组包含 ``value``\ ，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_insert>`

在数组中给定的位置插入一个新元素。这个位置必须是有效的，或者是在数组的末端（\ ``idx == size()``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedColorArray_method_is_empty>`

该数组为空时，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_push_back>`

将一个值添加到数组中。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedColorArray_method_remove_at>`

从数组中删除位于索引的元素。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedColorArray_method_resize>`

设置数组的大小。如果数组增大，则预留数组末端的元素。如果数组缩小，则将数组截断到新的大小。调用一次 :ref:`resize()<class_PackedColorArray_method_resize>` 然后赋值比逐个添加新元素要快。

成功时返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，失败时返回下列 :ref:`Error<enum_@GlobalScope_Error>` 常量：大小为负数则返回 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`\ ，分配失败则返回 :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>`\ 。请使用 :ref:`size()<class_PackedColorArray_method_size>` 获取调整后的实际大小。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedColorArray_method_reverse>`

将数组中的元素逆序排列。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`Color<class_Color>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedColorArray_method_rfind>`

逆序搜索数组。还可以传递起始搜索位置索引。如果为负，则起始索引被视为相对于数组的结尾。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_set>`

更改给定索引处的 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedColorArray_method_size>`

返回数组中元素的个数。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_slice:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedColorArray_method_slice>`

返回该 **PackedColorArray** 的切片，是从 ``begin``\ （含）到 ``end``\ （不含）的全新 **PackedColorArray**\ 。

\ ``begin`` 和 ``end`` 的绝对值会按数组大小进行限制，所以 ``end`` 的默认值会切到数组大小为止（即 ``arr.slice(1)`` 是 ``arr.slice(1, arr.size())`` 的简写）。

如果 ``begin`` 或 ``end`` 为负，则表示相对于数组的末尾（即 ``arr.slice(0, -2)`` 是 ``arr.slice(0, arr.size() - 2)`` 的简写）。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedColorArray_method_sort>`

将该数组中的元素按升序排列。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedColorArray_method_to_byte_array>`

返回 :ref:`PackedByteArray<class_PackedByteArray>`\ ，每个颜色都被编码为字节。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_PackedColorArray_operator_neq_PackedColorArray:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) :ref:`🔗<class_PackedColorArray_operator_neq_PackedColorArray>`

如果数组内容不同，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_operator_sum_PackedColorArray:

.. rst-class:: classref-operator

:ref:`PackedColorArray<class_PackedColorArray>` **operator +**\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) :ref:`🔗<class_PackedColorArray_operator_sum_PackedColorArray>`

返回新的 **PackedColorArray**\ ，新数组的内容为此数组在末尾加上 ``right``\ 。为了提高性能，请考虑改用 :ref:`append_array()<class_PackedColorArray_method_append_array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_operator_eq_PackedColorArray:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) :ref:`🔗<class_PackedColorArray_operator_eq_PackedColorArray>`

如果两个数组的内容相同，即对应索引号的 :ref:`Color<class_Color>` 相等，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedColorArray_operator_idx_int>`

返回索引 ``index`` 处的\ :ref:`Color<class_Color>`\ 。负数索引可以从末端开始访问元素。使用超出数组范围的索引将导致出错。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
