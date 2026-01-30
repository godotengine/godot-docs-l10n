:github_url: hide

.. _class_PackedInt64Array:

PackedInt64Array
================

64 位元整數緊縮陣列。

.. rst-class:: classref-introduction-group

說明
----

An array specifically designed to hold 64-bit integer values. Packs data tightly, so it saves memory for large array sizes.

\ **Note:** This type stores signed 64-bit integers, which means it can take values in the interval ``[-2^63, 2^63 - 1]``, i.e. ``[-9223372036854775808, 9223372036854775807]``. Exceeding those bounds will wrap around. If you only need to pack 32-bit integers tightly, see :ref:`PackedInt32Array<class_PackedInt32Array>` for a more memory-friendly alternative.

\ **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. **PackedInt64Array** versus ``Array[int]``). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as :ref:`Array.map()<class_Array_method_map>`. Typed arrays are in turn faster to iterate on and modify than untyped arrays.

\ **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_PackedInt64Array_method_duplicate>`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ )                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`append<class_PackedInt64Array_method_append>`\ (\ value\: :ref:`int<class_int>`\ )                                                    |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`append_array<class_PackedInt64Array_method_append_array>`\ (\ array\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`bsearch<class_PackedInt64Array_method_bsearch>`\ (\ value\: :ref:`int<class_int>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_PackedInt64Array_method_clear>`\ (\ )                                                                                     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`count<class_PackedInt64Array_method_count>`\ (\ value\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`duplicate<class_PackedInt64Array_method_duplicate>`\ (\ ) |const|                                                                     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`erase<class_PackedInt64Array_method_erase>`\ (\ value\: :ref:`int<class_int>`\ )                                                      |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`fill<class_PackedInt64Array_method_fill>`\ (\ value\: :ref:`int<class_int>`\ )                                                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`find<class_PackedInt64Array_method_find>`\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get<class_PackedInt64Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`has<class_PackedInt64Array_method_has>`\ (\ value\: :ref:`int<class_int>`\ ) |const|                                                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`insert<class_PackedInt64Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ )                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_empty<class_PackedInt64Array_method_is_empty>`\ (\ ) |const|                                                                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`push_back<class_PackedInt64Array_method_push_back>`\ (\ value\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`remove_at<class_PackedInt64Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`resize<class_PackedInt64Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`reverse<class_PackedInt64Array_method_reverse>`\ (\ )                                                                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`rfind<class_PackedInt64Array_method_rfind>`\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set<class_PackedInt64Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ )                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`size<class_PackedInt64Array_method_size>`\ (\ ) |const|                                                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`slice<class_PackedInt64Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|    |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`sort<class_PackedInt64Array_method_sort>`\ (\ )                                                                                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`to_byte_array<class_PackedInt64Array_method_to_byte_array>`\ (\ ) |const|                                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator !=<class_PackedInt64Array_operator_neq_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`operator +<class_PackedInt64Array_operator_sum_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator ==<class_PackedInt64Array_operator_eq_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`operator []<class_PackedInt64Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                        |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_PackedInt64Array_constructor_PackedInt64Array:

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ ) :ref:`🔗<class_PackedInt64Array_constructor_PackedInt64Array>`

建構空的 **PackedInt64Array**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )

建構給定 **PackedInt64Array** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ from\: :ref:`Array<class_Array>`\ )

建構新 **PackedInt64Array**\ 。你還可以傳入通用 :ref:`Array<class_Array>` 進行轉換。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PackedInt64Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_append>`

向陣列末尾追加一個元素（\ :ref:`push_back()<class_PackedInt64Array_method_push_back>` 的別名）。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_method_append_array>`

在該陣列的末尾追加一個 **PackedInt64Array**\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`int<class_int>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedInt64Array_method_bsearch>`

使用二進法搜尋已有值的索引（如果該值尚未存在於陣列中，則為保持排序順序的插入索引）。傳遞 ``before`` 說明符是可選的。如果該參數為 ``false``\ ，則返回的索引位於陣列中該值的所有已有的條目之後。

\ **注意：**\ 在未排序的陣列上呼叫 :ref:`bsearch()<class_PackedInt64Array_method_bsearch>` 會產生預料之外的行為。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_clear>`

清空陣列。相當於呼叫 :ref:`resize()<class_PackedInt64Array_method_resize>` 時指定大小為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_count>`

返回元素在陣列中出現的次數。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_duplicate>`

建立該陣列的副本，並將該副本返回。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_erase>`

Removes the first occurrence of a value from the array and returns ``true``. If the value does not exist in the array, nothing happens and ``false`` is returned. To remove an element by index, use :ref:`remove_at()<class_PackedInt64Array_method_remove_at>` instead.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_fill>`

將陣列中的所有元素都設為給定的值。通常與 :ref:`resize()<class_PackedInt64Array_method_resize>` 一起使用，建立給定大小的陣列並初始化元素。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedInt64Array_method_find>`

在陣列中搜索值並返回其索引，如果未找到則返回 ``-1`` 。可選地，可以傳遞起始搜索索引。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_get:

.. rst-class:: classref-method

:ref:`int<class_int>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_get>`

Returns the 64-bit integer at the given ``index`` in the array. If ``index`` is out-of-bounds or negative, this method fails and returns ``0``.

This method is similar (but not identical) to the ``[]`` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_has>`

如果該陣列包含 ``value``\ ，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_insert>`

在陣列中的給定位置插入新的整數。位置必須有效，或者位於陣列末尾（\ ``idx == size()``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_is_empty>`

該陣列為空時，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_push_back>`

將一個值新增到陣列中。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_remove_at>`

從陣列中刪除位於索引的元素。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_resize>`

Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling :ref:`resize()<class_PackedInt64Array_method_resize>` once and assigning the new values is faster than adding new elements one by one.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the following :ref:`Error<enum_@GlobalScope_Error>` constants if this method fails: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` if the size is negative, or :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` if allocations fail. Use :ref:`size()<class_PackedInt64Array_method_size>` to find the actual size of the array after resize.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_reverse>`

將陣列中的元素逆序排列。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedInt64Array_method_rfind>`

逆序搜索陣列。還可以傳遞起始搜索位置索引。如果為負，則起始索引被視為相對於數組的結尾。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_set>`

更改給定索引處的整數。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_size>`

返回陣列中元素的個數。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedInt64Array_method_slice>`

返回該 **PackedInt64Array** 的切片，是從 ``begin``\ （含）到 ``end``\ （不含）的全新 **PackedInt64Array**\ 。

\ ``begin`` 和 ``end`` 的絕對值會按陣列大小進行限制，所以 ``end`` 的預設值會切到陣列大小為止（即 ``arr.slice(1)`` 是 ``arr.slice(1, arr.size())`` 的簡寫）。

如果 ``begin`` 或 ``end`` 為負，則表示相對於陣列的末尾（即 ``arr.slice(0, -2)`` 是 ``arr.slice(0, arr.size() - 2)`` 的簡寫）。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_sort>`

將該陣列中的元素按昇冪排列。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_to_byte_array>`

Returns a copy of the data converted to a :ref:`PackedByteArray<class_PackedByteArray>`, where each element has been encoded as 8 bytes.

The size of the new array will be ``int64_array.size() * 8``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_PackedInt64Array_operator_neq_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_neq_PackedInt64Array>`

如果陣列內容不同，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_sum_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`PackedInt64Array<class_PackedInt64Array>` **operator +**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_sum_PackedInt64Array>`

返回新的 **PackedInt64Array**\ ，新陣列的內容為此陣列在末尾加上 ``right``\ 。為了提高性能，請考慮改用 :ref:`append_array()<class_PackedInt64Array_method_append_array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_eq_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_eq_PackedInt64Array>`

如果兩個陣列的內容相同，即對應索引號的整數相等，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_operator_idx_int>`

返回索引 ``index`` 處的 :ref:`int<class_int>`\ 。負數索引可以用來從末尾開始存取元素。使用越界的陣列索引會產生錯誤。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
