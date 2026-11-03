:github_url: hide

.. _class_PackedFloat32Array:

PackedFloat32Array
==================

32 位元浮點數緊縮陣列。

.. rst-class:: classref-introduction-group

說明
----

一種專門用來存放 32 位元浮點數值（float）的陣列。它對資料進行了緊密打包，因此在陣列規模很大時能有效節省記憶體。

如果你需要緊密打包 64 位元浮點數，請參考 :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ 。

\ **注意：** 打包陣列始終是通過參照傳遞的。如果想取得一個可以獨立於原陣列進行修改的副本，請使用 :ref:`duplicate()<class_PackedFloat32Array_method_duplicate>` 方法。內建屬性和方法\ *不*\ 屬於這種情況。在這些情況下，回傳的打包陣列是一個副本，修改它\ *不*\ 會影響原始值。如果要更新這種型別的內建屬性，需要先修改回傳的陣列，然後再將其重新賦值給該屬性。

\ **注意：** 在布林值（boolean）語境下，如果打包陣列為空，它的求值結果為 ``false``\ ；否則，打包陣列的求值結果始終為 ``true``\ 。

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`PackedFloat32Array<class_PackedFloat32Array_constructor_PackedFloat32Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`PackedFloat32Array<class_PackedFloat32Array_constructor_PackedFloat32Array>`\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`PackedFloat32Array<class_PackedFloat32Array_constructor_PackedFloat32Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedFloat32Array_method_append>`\ (\ value\: :ref:`float<class_float>`\ )                                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedFloat32Array_method_append_array>`\ (\ array\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedFloat32Array_method_bsearch>`\ (\ value\: :ref:`float<class_float>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedFloat32Array_method_clear>`\ (\ )                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedFloat32Array_method_count>`\ (\ value\: :ref:`float<class_float>`\ ) |const|                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`duplicate<class_PackedFloat32Array_method_duplicate>`\ (\ ) |const|                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedFloat32Array_method_erase>`\ (\ value\: :ref:`float<class_float>`\ )                                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedFloat32Array_method_fill>`\ (\ value\: :ref:`float<class_float>`\ )                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedFloat32Array_method_find>`\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get<class_PackedFloat32Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedFloat32Array_method_has>`\ (\ value\: :ref:`float<class_float>`\ ) |const|                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedFloat32Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedFloat32Array_method_is_empty>`\ (\ ) |const|                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedFloat32Array_method_push_back>`\ (\ value\: :ref:`float<class_float>`\ )                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedFloat32Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedFloat32Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedFloat32Array_method_reverse>`\ (\ )                                                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedFloat32Array_method_rfind>`\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedFloat32Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedFloat32Array_method_size>`\ (\ ) |const|                                                                                   |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`slice<class_PackedFloat32Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedFloat32Array_method_sort>`\ (\ )                                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedFloat32Array_method_to_byte_array>`\ (\ ) |const|                                                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedFloat32Array_operator_neq_PackedFloat32Array>`\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`operator +<class_PackedFloat32Array_operator_sum_PackedFloat32Array>`\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedFloat32Array_operator_eq_PackedFloat32Array>`\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`operator []<class_PackedFloat32Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_PackedFloat32Array_constructor_PackedFloat32Array:

.. rst-class:: classref-constructor

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **PackedFloat32Array**\ (\ ) :ref:`🔗<class_PackedFloat32Array_constructor_PackedFloat32Array>`

建構空的 **PackedFloat32Array**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **PackedFloat32Array**\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )

建構給定 **PackedFloat32Array** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **PackedFloat32Array**\ (\ from\: :ref:`Array<class_Array>`\ )

建構新 **PackedFloat32Array**\ 。你還可以傳入通用 :ref:`Array<class_Array>` 進行轉換。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PackedFloat32Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_append>`

向陣列末尾追加一個元素（\ :ref:`push_back()<class_PackedFloat32Array_method_push_back>` 的別名）。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_method_append_array>`

在該陣列的末尾追加一個 **PackedFloat32Array**\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`float<class_float>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_bsearch>`

使用二分法搜尋已有值的索引（如果該值尚未存在於陣列中，則為保持排序順序的插入索引）。傳遞 ``before`` 說明符是可選的。如果該參數為 ``false``\ ，則返回的索引位於陣列中該值的所有已有的條目之後。

\ **注意：**\ 在未排序的陣列上呼叫 :ref:`bsearch()<class_PackedFloat32Array_method_bsearch>` 會產生預料之外的行為。

\ **注意：**\ :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 的行為與其他數位不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedFloat32Array_method_clear>`

清空陣列。相當於呼叫 :ref:`resize()<class_PackedFloat32Array_method_resize>` 時指定大小為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_count>`

返回陣列中某個元素的出現次數。

\ **注意：**\ :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 的行為與其他數位不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_duplicate>`

建立該陣列的副本，並將該副本返回。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_erase>`

移除陣列中第一次出現的某個值並回傳 ``true``\ 。如果陣列中不存在該值，則甚麼都不會發生並回傳 ``false``\ 。如果要按照索引移除元素，請改用 :ref:`remove_at()<class_PackedFloat32Array_method_remove_at>`\ 。

\ **注意：**\ :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 的行為與其它數字不同。因此存在 NaN 時該方法的結果可能不精確。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_fill>`

將陣列中的所有元素都設為給定的值。通常與 :ref:`resize()<class_PackedFloat32Array_method_resize>` 一起使用，建立給定大小的陣列並初始化元素。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_find>`

在陣列中搜尋值並返回其索引，如果未找到則返回 ``-1`` 。可選地，可以傳遞起始搜尋索引。

\ **注意：**\ :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 的行為與其他數位不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_get:

.. rst-class:: classref-method

:ref:`float<class_float>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_get>`

回傳陣列中索引為 ``index`` 的 32 位元浮點數。如果 ``index`` 越界或為負數，則該方法失敗並回傳 ``0.0``\ 。

該方法類似於 ``[]`` 運算符（但不等價）。最顯著的區別就是從編輯器中執行時，該方法失敗不會暫停專案執行。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_has>`

如果陣列中包含 ``value``\ ，則返回 ``true``\ 。

\ **注意：**\ :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 的行為與其他數位不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_insert>`

在陣列中給定的位置插入一個新元素。這個位置必須是有效的，或者是在陣列的末端（\ ``idx == size()``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_is_empty>`

該陣列為空時，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_push_back>`

在陣列的末尾追加一個元素。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat32Array_method_remove_at>`

從陣列中刪除位於索引的元素。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat32Array_method_resize>`

設定陣列的大小。如果陣列增大，則預留陣列末端的元素。如果陣列縮小，則將陣列截斷到新的大小。呼叫一次 :ref:`resize()<class_PackedFloat32Array_method_resize>` 然後賦值比逐個新增新元素要快。

成功時回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，失敗時回傳下列 :ref:`Error<enum_@GlobalScope_Error>` 常數：大小為負數則回傳 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`\ ，分配失敗則回傳 :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>`\ 。請使用 :ref:`size()<class_PackedFloat32Array_method_size>` 取得調整後的實際大小。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedFloat32Array_method_reverse>`

將陣列中的元素逆序排列。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_rfind>`

逆序搜尋陣列。還可以傳遞起始搜尋位置索引。如果為負，則起始索引被視為相對於陣列的結尾。

\ **注意：**\ :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 的行為與其他數位不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_set>`

更改給定索引處的浮點數。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_size>`

返回陣列中元素的個數。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_slice>`

返回該 **PackedFloat32Array** 的切片，是從 ``begin``\ （含）到 ``end``\ （不含）的全新 **PackedFloat32Array**\ 。

\ ``begin`` 和 ``end`` 的絕對值會按陣列大小進行限制，所以 ``end`` 的預設值會切到陣列大小為止（即 ``arr.slice(1)`` 是 ``arr.slice(1, arr.size())`` 的簡寫）。

如果 ``begin`` 或 ``end`` 為負，則表示相對於陣列的末尾（即 ``arr.slice(0, -2)`` 是 ``arr.slice(0, arr.size() - 2)`` 的簡寫）。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedFloat32Array_method_sort>`

昇冪排列陣列中的元素。

\ **注意：**\ :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 的行為與其他數位不同。因此，如果包含 NaN，則這個方法的結果可能不準確。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_to_byte_array>`

回傳資料的副本，將其中的每個元素都編碼為 4 個位元組，放入 :ref:`PackedByteArray<class_PackedByteArray>` 中。

新陣列的大小為 ``float32_array.size() * 4``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_PackedFloat32Array_operator_neq_PackedFloat32Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_neq_PackedFloat32Array>`

如果陣列內容不同，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_operator_sum_PackedFloat32Array:

.. rst-class:: classref-operator

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **operator +**\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_sum_PackedFloat32Array>`

返回新的 **PackedFloat32Array**\ ，新陣列的內容為此陣列在末尾加上 ``right``\ 。為了提高效能，請考慮改用 :ref:`append_array()<class_PackedFloat32Array_method_append_array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_operator_eq_PackedFloat32Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_eq_PackedFloat32Array>`

如果兩個陣列的內容相同，即對應索引號的浮點數相等，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_idx_int>`

返回索引 ``index`` 處的 :ref:`float<class_float>`\ 。負的索引可用於存取從末尾開始的元素。使用超出陣列範圍的索引將產生一個錯誤。

請注意，\ :ref:`float<class_float>` 型別是 64 位元的，這與儲存在陣列中的值不同。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
