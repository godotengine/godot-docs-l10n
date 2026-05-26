:github_url: hide

.. _class_PackedVector4Array:

PackedVector4Array
==================

A packed array of :ref:`Vector4<class_Vector4>`\ s.

.. rst-class:: classref-introduction-group

說明
----

An array specifically designed to hold :ref:`Vector4<class_Vector4>`. Packs data tightly, so it saves memory for large array sizes.

\ **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. **PackedVector4Array** versus ``Array[Vector4]``). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as :ref:`Array.map()<class_Array_method_map>`. Typed arrays are in turn faster to iterate on and modify than untyped arrays.

\ **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_PackedVector4Array_method_duplicate>`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

\ **Note:** In a boolean context, a packed array will evaluate to ``false`` if it's empty. Otherwise, a packed array will always evaluate to ``true``.

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`PackedVector4Array<class_PackedVector4Array_constructor_PackedVector4Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`PackedVector4Array<class_PackedVector4Array_constructor_PackedVector4Array>`\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`PackedVector4Array<class_PackedVector4Array_constructor_PackedVector4Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedVector4Array_method_append>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedVector4Array_method_append_array>`\ (\ array\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedVector4Array_method_bsearch>`\ (\ value\: :ref:`Vector4<class_Vector4>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedVector4Array_method_clear>`\ (\ )                                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedVector4Array_method_count>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const|                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`duplicate<class_PackedVector4Array_method_duplicate>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedVector4Array_method_erase>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedVector4Array_method_fill>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedVector4Array_method_find>`\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`                       | :ref:`get<class_PackedVector4Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedVector4Array_method_has>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const|                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedVector4Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedVector4Array_method_is_empty>`\ (\ ) |const|                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedVector4Array_method_push_back>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedVector4Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedVector4Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedVector4Array_method_reverse>`\ (\ )                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedVector4Array_method_rfind>`\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedVector4Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ )                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedVector4Array_method_size>`\ (\ ) |const|                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`slice<class_PackedVector4Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedVector4Array_method_sort>`\ (\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedVector4Array_method_to_byte_array>`\ (\ ) |const|                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedVector4Array_operator_neq_PackedVector4Array>`\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`operator +<class_PackedVector4Array_operator_sum_PackedVector4Array>`\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedVector4Array_operator_eq_PackedVector4Array>`\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`                       | :ref:`operator []<class_PackedVector4Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_PackedVector4Array_constructor_PackedVector4Array:

.. rst-class:: classref-constructor

:ref:`PackedVector4Array<class_PackedVector4Array>` **PackedVector4Array**\ (\ ) :ref:`🔗<class_PackedVector4Array_constructor_PackedVector4Array>`

Constructs an empty **PackedVector4Array**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector4Array<class_PackedVector4Array>` **PackedVector4Array**\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )

Constructs a **PackedVector4Array** as a copy of the given **PackedVector4Array**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector4Array<class_PackedVector4Array>` **PackedVector4Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Constructs a new **PackedVector4Array**. Optionally, you can pass in a generic :ref:`Array<class_Array>` that will be converted.

\ **Note:** When initializing a **PackedVector4Array** with elements, it must be initialized with an :ref:`Array<class_Array>` of :ref:`Vector4<class_Vector4>` values:

::

    var array = PackedVector4Array([Vector4(12, 34, 56, 78), Vector4(90, 12, 34, 56)])

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PackedVector4Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_append>`

向陣列末尾追加一個元素（\ :ref:`push_back()<class_PackedVector4Array_method_push_back>` 的別名）。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_method_append_array>`

Appends a **PackedVector4Array** at the end of this array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Vector4<class_Vector4>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedVector4Array_method_bsearch>`

使用二分法搜尋已有值的索引（如果該值尚未存在於陣列中，則為保持排序順序的插入索引）。傳遞 ``before`` 說明符是可選的。如果該參數為 ``false``\ ，則返回的索引位於陣列中該值的所有已有的條目之後。

\ **注意：**\ 在未排序的陣列上呼叫 :ref:`bsearch()<class_PackedVector4Array_method_bsearch>` 會產生預料之外的行為。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行為與其他向量不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedVector4Array_method_clear>`

清空陣列。相當於呼叫 :ref:`resize()<class_PackedVector4Array_method_resize>` 時指定大小為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const| :ref:`🔗<class_PackedVector4Array_method_count>`

返回陣列中某個元素出現的次數。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行為與其他向量不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedVector4Array<class_PackedVector4Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_duplicate>`

建立該陣列的副本，並將該副本返回。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_erase>`

Removes the first occurrence of a value from the array and returns ``true``. If the value does not exist in the array, nothing happens and ``false`` is returned. To remove an element by index, use :ref:`remove_at()<class_PackedVector4Array_method_remove_at>` instead.

\ **Note:** Vectors with :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_fill>`

將陣列中的所有元素都設為給定的值。通常與 :ref:`resize()<class_PackedVector4Array_method_resize>` 一起使用，建立給定大小的陣列並初始化元素。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedVector4Array_method_find>`

在陣列中搜索值並返回其索引，如果未找到則返回 ``-1`` 。可選地，可以傳遞起始搜索索引。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行為與其他向量不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_get:

.. rst-class:: classref-method

:ref:`Vector4<class_Vector4>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedVector4Array_method_get>`

Returns the :ref:`Vector4<class_Vector4>` at the given ``index`` in the array. If ``index`` is out-of-bounds or negative, this method fails and returns ``Vector4(0, 0, 0, 0)``.

This method is similar (but not identical) to the ``[]`` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const| :ref:`🔗<class_PackedVector4Array_method_has>`

如果陣列中包含 ``value``\ ，則返回 ``true``\ 。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行為與其他向量不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_insert>`

在陣列中給定的位置插入一個新元素。這個位置必須是有效的，或者是在陣列的末端（\ ``idx == size()``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_is_empty>`

該陣列為空時，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_push_back>`

Inserts a :ref:`Vector4<class_Vector4>` at the end.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector4Array_method_remove_at>`

從陣列中刪除位於索引的元素。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector4Array_method_resize>`

Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling :ref:`resize()<class_PackedVector4Array_method_resize>` once and assigning the new values is faster than adding new elements one by one.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the following :ref:`Error<enum_@GlobalScope_Error>` constants if this method fails: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` if the size is negative, or :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` if allocations fail. Use :ref:`size()<class_PackedVector4Array_method_size>` to find the actual size of the array after resize.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedVector4Array_method_reverse>`

將陣列中的元素逆序排列。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedVector4Array_method_rfind>`

逆序搜索陣列。還可以傳遞起始搜索位置索引。如果為負，則起始索引被視為相對於數組的結尾。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行為與其他向量不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_set>`

Changes the :ref:`Vector4<class_Vector4>` at the given index.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_size>`

返回陣列中元素的個數。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedVector4Array<class_PackedVector4Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedVector4Array_method_slice>`

Returns the slice of the **PackedVector4Array**, from ``begin`` (inclusive) to ``end`` (exclusive), as a new **PackedVector4Array**.

The absolute value of ``begin`` and ``end`` will be clamped to the array size, so the default value for ``end`` makes it slice to the size of the array by default (i.e. ``arr.slice(1)`` is a shorthand for ``arr.slice(1, arr.size())``).

If either ``begin`` or ``end`` are negative, they will be relative to the end of the array (i.e. ``arr.slice(0, -2)`` is a shorthand for ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedVector4Array_method_sort>`

昇冪排列陣列中的元素。

\ **注意：**\ 包含 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 元素的向量的行為與其他向量不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_to_byte_array>`

返回 :ref:`PackedByteArray<class_PackedByteArray>`\ ，每個向量都被編碼為位元組。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_PackedVector4Array_operator_neq_PackedVector4Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_operator_neq_PackedVector4Array>`

如果陣列內容不同，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_operator_sum_PackedVector4Array:

.. rst-class:: classref-operator

:ref:`PackedVector4Array<class_PackedVector4Array>` **operator +**\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_operator_sum_PackedVector4Array>`

Returns a new **PackedVector4Array** with contents of ``right`` added at the end of this array. For better performance, consider using :ref:`append_array()<class_PackedVector4Array_method_append_array>` instead.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_operator_eq_PackedVector4Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_operator_eq_PackedVector4Array>`

Returns ``true`` if contents of both arrays are the same, i.e. they have all equal :ref:`Vector4<class_Vector4>`\ s at the corresponding indices.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector4Array_operator_idx_int>`

Returns the :ref:`Vector4<class_Vector4>` at index ``index``. Negative indices can be used to access the elements starting from the end. Using index out of array's bounds will result in an error.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
