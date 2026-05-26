:github_url: hide

.. _class_Array:

Array
=====

內建的資料結構，可儲存一連串元素。

.. rst-class:: classref-introduction-group

說明
----

An array data structure that can contain a sequence of elements of any :ref:`Variant<class_Variant>` type by default. Values can optionally be constrained to a specific type by creating a *typed array*. Elements are accessed by a numerical index starting at ``0``. Negative indices are used to count from the back (``-1`` is the last element, ``-2`` is the second to last, etc.).


.. tabs::

 .. code-tab:: gdscript

    var array = ["First", 2, 3, "Last"]
    print(array[0])  # Prints "First"
    print(array[2])  # Prints 3
    print(array[-1]) # Prints "Last"

    array[1] = "Second"
    print(array[1])  # Prints "Second"
    print(array[-3]) # Prints "Second"

    # This typed array can only contain integers.
    # Attempting to add any other type will result in an error.
    var typed_array: Array[int] = [1, 2, 3]

 .. code-tab:: csharp

    Godot.Collections.Array array = ["First", 2, 3, "Last"];
    GD.Print(array[0]); // Prints "First"
    GD.Print(array[2]); // Prints 3
    GD.Print(array[^1]); // Prints "Last"

    array[1] = "Second";
    GD.Print(array[1]); // Prints "Second"
    GD.Print(array[^3]); // Prints "Second"

    // This typed array can only contain integers.
    // Attempting to add any other type will result in an error.
    Godot.Collections.Array<int> typedArray = [1, 2, 3];



\ **Note:** Arrays are always passed by **reference**. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_Array_method_duplicate>`.

\ **Note:** Erasing elements while iterating over arrays is **not** supported and will result in unpredictable behavior.

\ **Note:** In a boolean context, an array will evaluate to ``false`` if it's empty (``[]``). Otherwise, an array will always evaluate to ``true``.

\ **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. :ref:`PackedInt64Array<class_PackedInt64Array>` versus ``Array[int]``). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as :ref:`map()<class_Array_method_map>`. Typed arrays are in turn faster to iterate on and modify than untyped arrays.

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ )                                                                                                                                                           |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ base\: :ref:`Array<class_Array>`, type\: :ref:`int<class_int>`, class_name\: :ref:`StringName<class_StringName>`, script\: :ref:`Variant<class_Variant>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                                                                                                                         |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedColorArray<class_PackedColorArray>`\ )                                                                                                   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                               |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )                                                                                               |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )                                                                                                   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )                                                                                                   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ )                                                                                                 |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                               |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                                                                                               |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )                                                                                               |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`all<class_Array_method_all>`\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const|                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`any<class_Array_method_any>`\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const|                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`append<class_Array_method_append>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                                                                                   |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`append_array<class_Array_method_append_array>`\ (\ array\: :ref:`Array<class_Array>`\ )                                                                                                           |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`assign<class_Array_method_assign>`\ (\ array\: :ref:`Array<class_Array>`\ )                                                                                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`back<class_Array_method_back>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`bsearch<class_Array_method_bsearch>`\ (\ value\: :ref:`Variant<class_Variant>`, before\: :ref:`bool<class_bool>` = true\ ) |const|                                                                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`bsearch_custom<class_Array_method_bsearch_custom>`\ (\ value\: :ref:`Variant<class_Variant>`, func\: :ref:`Callable<class_Callable>`, before\: :ref:`bool<class_bool>` = true\ ) |const|          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`clear<class_Array_method_clear>`\ (\ )                                                                                                                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`count<class_Array_method_count>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`duplicate<class_Array_method_duplicate>`\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`duplicate_deep<class_Array_method_duplicate_deep>`\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const|                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`erase<class_Array_method_erase>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                                                                                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`fill<class_Array_method_fill>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                                                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`filter<class_Array_method_filter>`\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const|                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`find<class_Array_method_find>`\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = 0\ ) |const|                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`find_custom<class_Array_method_find_custom>`\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = 0\ ) |const|                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`front<class_Array_method_front>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get<class_Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                         |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_typed_builtin<class_Array_method_get_typed_builtin>`\ (\ ) |const|                                                                                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_typed_class_name<class_Array_method_get_typed_class_name>`\ (\ ) |const|                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_typed_script<class_Array_method_get_typed_script>`\ (\ ) |const|                                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has<class_Array_method_has>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_Array_method_hash>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`insert<class_Array_method_insert>`\ (\ position\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_empty<class_Array_method_is_empty>`\ (\ ) |const|                                                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_read_only<class_Array_method_is_read_only>`\ (\ ) |const|                                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_same_typed<class_Array_method_is_same_typed>`\ (\ array\: :ref:`Array<class_Array>`\ ) |const|                                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_typed<class_Array_method_is_typed>`\ (\ ) |const|                                                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`make_read_only<class_Array_method_make_read_only>`\ (\ )                                                                                                                                          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`map<class_Array_method_map>`\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const|                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`max<class_Array_method_max>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`min<class_Array_method_min>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`pick_random<class_Array_method_pick_random>`\ (\ ) |const|                                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`pop_at<class_Array_method_pop_at>`\ (\ position\: :ref:`int<class_int>`\ )                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`pop_back<class_Array_method_pop_back>`\ (\ )                                                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`pop_front<class_Array_method_pop_front>`\ (\ )                                                                                                                                                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`push_back<class_Array_method_push_back>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`push_front<class_Array_method_push_front>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                                                                           |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`reduce<class_Array_method_reduce>`\ (\ method\: :ref:`Callable<class_Callable>`, accum\: :ref:`Variant<class_Variant>` = null\ ) |const|                                                          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`remove_at<class_Array_method_remove_at>`\ (\ position\: :ref:`int<class_int>`\ )                                                                                                                  |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`resize<class_Array_method_resize>`\ (\ size\: :ref:`int<class_int>`\ )                                                                                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`reverse<class_Array_method_reverse>`\ (\ )                                                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`rfind<class_Array_method_rfind>`\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = -1\ ) |const|                                                                           |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`rfind_custom<class_Array_method_rfind_custom>`\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = -1\ ) |const|                                                         |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set<class_Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`shuffle<class_Array_method_shuffle>`\ (\ )                                                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`size<class_Array_method_size>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`slice<class_Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647, step\: :ref:`int<class_int>` = 1, deep\: :ref:`bool<class_bool>` = false\ ) |const| |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`sort<class_Array_method_sort>`\ (\ )                                                                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`sort_custom<class_Array_method_sort_custom>`\ (\ func\: :ref:`Callable<class_Callable>`\ )                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator !=<class_Array_operator_neq_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )  |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`     | :ref:`operator +<class_Array_operator_sum_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )   |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator \<<class_Array_operator_lt_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )   |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator \<=<class_Array_operator_lte_Array>`\ (\ right\: :ref:`Array<class_Array>`\ ) |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ==<class_Array_operator_eq_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )   |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ><class_Array_operator_gt_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )    |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator >=<class_Array_operator_gte_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )  |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`operator []<class_Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )        |
   +-------------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Array_constructor_Array:

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ ) :ref:`🔗<class_Array_constructor_Array>`

建構空的 **Array**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ base\: :ref:`Array<class_Array>`, type\: :ref:`int<class_int>`, class_name\: :ref:`StringName<class_StringName>`, script\: :ref:`Variant<class_Variant>`\ )

從 ``base`` 陣列建立一個「型別化陣列」。型別化陣列只能包含指定型別的元素，或繼承自指定類別的元素，具體由建構子的參數決定：

- ``type``\ ：內建 :ref:`Variant<class_Variant>` 型別，使用 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` 常數之一。

- ``class_name``\ ：內建類別名稱（參見 :ref:`Object.get_class()<class_Object_method_get_class>`\ ）。

- ``script``\ ：關聯的腳本，必須是 :ref:`Script<class_Script>` 實例或 ``null``\ 。

若 ``type`` 不是 :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`\ ，則 ``class_name`` 必須為空的 :ref:`StringName<class_StringName>`\ ，且 ``script`` 必須為 ``null``\ 。

::

    class_name Sword
    extends Node

    class Stats:
        pass

    func _ready():
        var a = Array([], TYPE_INT, "", null)               # Array[int]
        var b = Array([], TYPE_OBJECT, "Node", null)        # Array[Node]
        var c = Array([], TYPE_OBJECT, "Node", Sword)       # Array[Sword]
        var d = Array([], TYPE_OBJECT, "RefCounted", Stats) # Array[Stats]

必要時會轉換 ``base`` 陣列中的元素；若無法轉換，或 ``base`` 已是型別化陣列，則建構子會失敗並回傳空的 **Array**\ 。

在 GDScript 中通常不需要呼叫此建構子，因為可透過靜態型別直接建立型別化陣列：

::

    var numbers: Array[float] = []
    var children: Array[Node] = [$Node, $Sprite2D, $RigidBody3D]

    var integers: Array[int] = [0.2, 4.5, -2.0]
    print(integers) # 輸出 [0, 4, -2]

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`Array<class_Array>`\ )

回傳與 ``from`` 相同的陣列。若需副本，請使用 :ref:`duplicate()<class_Array_method_duplicate>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedByteArray<class_PackedByteArray>`\ )

從 :ref:`PackedByteArray<class_PackedByteArray>` 建構陣列。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedColorArray<class_PackedColorArray>`\ )

從 :ref:`PackedColorArray<class_PackedColorArray>` 建構陣列。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )

從 :ref:`PackedFloat32Array<class_PackedFloat32Array>` 建構陣列。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )

從 :ref:`PackedFloat64Array<class_PackedFloat64Array>` 建構陣列。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )

從 :ref:`PackedInt32Array<class_PackedInt32Array>` 建構陣列。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )

從 :ref:`PackedInt64Array<class_PackedInt64Array>` 建構陣列。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ )

從 :ref:`PackedStringArray<class_PackedStringArray>` 建構陣列。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )

從 :ref:`PackedVector2Array<class_PackedVector2Array>` 建構陣列。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )

從 :ref:`PackedVector3Array<class_PackedVector3Array>` 建構陣列。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )

從 :ref:`PackedVector4Array<class_PackedVector4Array>` 建構陣列。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Array_method_all:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **all**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_all>`

對陣列中的每個元素呼叫指定的 :ref:`Callable<class_Callable>`\ 。若該 :ref:`Callable<class_Callable>` 對陣列中 *所有* 元素皆回傳 ``true``\ ，本方法便回傳 ``true``\ ；只要有任一元素回傳 ``false``\ ，就會回傳 ``false``\ 。

\ ``method`` 必須接受一個 :ref:`Variant<class_Variant>` 參數（目前的陣列元素）並回傳 :ref:`bool<class_bool>`\ 。


.. tabs::

 .. code-tab:: gdscript

    func greater_than_5(number):
        return number > 5

    func _ready():
        print([6, 10, 6].all(greater_than_5)) # 印出 true（3/3 個元素為 true）
        print([4, 10, 4].all(greater_than_5)) # 印出 false（1/3 個元素為 true）
        print([4, 4, 4].all(greater_than_5))  # 印出 false（0/3 個元素為 true）
        print([].all(greater_than_5))         # 印出 true（0/0 個元素為 true）

        # 與上方第一行相同，但以 Lambda 撰寫。
        print([6, 10, 6].all(func(element): return element > 5)) # 印出 true

 .. code-tab:: csharp

    private static bool GreaterThan5(int number)
    {
        return number > 5;
    }

    public override void _Ready()
    {
        // 印出 True（3/3 個元素為 true）。
        GD.Print(new Godot.Collections.Array<int> { 6, 10, 6 }.All(GreaterThan5));
        // 印出 False（1/3 個元素為 true）。
        GD.Print(new Godot.Collections.Array<int> { 4, 10, 4 }.All(GreaterThan5));
        // 印出 False（0/3 個元素為 true）。
        GD.Print(new Godot.Collections.Array<int> { 4, 4, 4 }.All(GreaterThan5));
        // 印出 True（0/0 個元素為 true）。
        GD.Print(new Godot.Collections.Array<int> { }.All(GreaterThan5));

        // 與上方第一行相同，但以 Lambda 撰寫。
        GD.Print(new Godot.Collections.Array<int> { 6, 10, 6 }.All(element => element > 5)); // 印出 True
    }



另請參閱 :ref:`any()<class_Array_method_any>`\ 、\ :ref:`filter()<class_Array_method_filter>`\ 、\ :ref:`map()<class_Array_method_map>` 與 :ref:`reduce()<class_Array_method_reduce>`\ 。

\ **注意：**\ 與依賴 :ref:`filter()<class_Array_method_filter>` 回傳陣列大小的作法不同，此方法會在第一時間就結束，以提升效能（大量陣列尤然）。

\ **注意：**\ 對空陣列來說，此方法\ `永遠 <https://en.wikipedia.org/wiki/Vacuous_truth>`__\ 回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_any:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **any**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_any>`

對陣列中的每個元素呼叫指定的 :ref:`Callable<class_Callable>`\ 。若該 :ref:`Callable<class_Callable>` 對陣列中 *至少一個* 元素回傳 ``true``\ ，本方法便回傳 ``true``\ ；若所有元素皆回傳 ``false``\ ，則回傳 ``false``\ 。

\ ``method`` 必須接受一個 :ref:`Variant<class_Variant>` 參數（目前的陣列元素）並回傳 :ref:`bool<class_bool>`\ 。

::

    func greater_than_5(number):
        return number > 5

    func _ready():
        print([6, 10, 6].any(greater_than_5)) # 印出 true（3 個元素為 true）
        print([4, 10, 4].any(greater_than_5)) # 印出 true（1 個元素為 true）
        print([4, 4, 4].any(greater_than_5))  # 印出 false（0 個元素為 true）
        print([].any(greater_than_5))         # 印出 false（0 個元素為 true）

        # 與上方第一行相同，但以 Lambda 撰寫。
        print([6, 10, 6].any(func(number): return number > 5)) # 印出 true

另請參閱 :ref:`all()<class_Array_method_all>`\ 、\ :ref:`filter()<class_Array_method_filter>`\ 、\ :ref:`map()<class_Array_method_map>` 與 :ref:`reduce()<class_Array_method_reduce>`\ 。

\ **注意：**\ 與依賴 :ref:`filter()<class_Array_method_filter>` 回傳陣列大小的作法不同，此方法會在第一時間就結束，以提升效能（大量陣列尤然）。

\ **注意：**\ 對空陣列來說，本方法一律回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_append:

.. rst-class:: classref-method

|void| **append**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_append>`

於陣列尾端附加 ``value``\ （\ :ref:`push_back()<class_Array_method_push_back>` 的別名）。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_method_append_array>`

將另一個 ``array`` 追加到本陣列尾端。

::

    var numbers = [1, 2, 3]
    var extra = [4, 5, 6]
    numbers.append_array(extra)
    print(numbers) # 印出 [1, 2, 3, 4, 5, 6]

.. rst-class:: classref-item-separator

----

.. _class_Array_method_assign:

.. rst-class:: classref-method

|void| **assign**\ (\ array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_method_assign>`

將另一個 ``array`` 的元素指派至此陣列，並自動調整大小以符合 ``array``\ 。若此陣列已有型別限制，則會自動執行型別轉換。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_back:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **back**\ (\ ) |const| :ref:`🔗<class_Array_method_back>`

回傳陣列最後一個元素。若陣列為空，則失敗並回傳 ``null``\ 。另見 :ref:`front()<class_Array_method_front>`\ 。

\ **注意：**\ 與直接使用 ``array[-1]`` 取值不同，若陣列為空，這個方法只會產生錯誤訊息，不會中斷專案執行。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Variant<class_Variant>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Array_method_bsearch>`

回傳已排序陣列中 ``value`` 的索引；若找不到，則回傳 ``value`` 應插入的位置以維持排序。內部演算法使用\ `二分搜尋 <https://en.wikipedia.org/wiki/Binary_search_algorithm>`__\ 。

若 ``before`` 為 ``true``\ （預設），則傳回的索引會位於陣列中所有與 ``value`` 相等元素之前。

::

    var numbers = [2, 4, 8, 10]
    var idx = numbers.bsearch(7)
    numbers.insert(idx, 7)
    print(numbers) # 印出 [2, 4, 7, 8, 10]

    var fruits = ["Apple", "Lemon", "Lemon", "Orange"]
    print(fruits.bsearch("Lemon", true))  # 印出 1，指向第一個 "Lemon"
    print(fruits.bsearch("Lemon", false)) # 印出 3，指向 "Orange"

\ **注意：**\ 在\ *未排序*\ 的陣列上呼叫 :ref:`bsearch()<class_Array_method_bsearch>` 會得到不可預期的結果，請先使用 :ref:`sort()<class_Array_method_sort>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_bsearch_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch_custom**\ (\ value\: :ref:`Variant<class_Variant>`, func\: :ref:`Callable<class_Callable>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Array_method_bsearch_custom>`

回傳已排序陣列中 ``value`` 的索引；若找不到，則使用自訂比較函式 ``func`` 計算 ``value`` 應插入的位置以維持排序。內部演算法同樣為\ `二分搜尋 <https://en.wikipedia.org/wiki/Binary_search_algorithm>`__\ 。

\ ``func`` 的呼叫方式與 :ref:`sort_custom()<class_Array_method_sort_custom>` 相同，每次會傳入一個陣列元素與 ``value`` 供比較；若該陣列元素應位於 ``value``\ *之後*\ 則回傳 ``true``\ ，否則回傳 ``false``\ 。

若 ``before`` 為 ``true``\ （預設），傳回索引會位於所有與 ``value`` 相等之元素之前。

::

    func sort_by_amount(a, b):
        return a[1] < b[1]

    func _ready():
        var my_items = [["Tomato", 2], ["Kiwi", 5], ["Rice", 9]]
        var apple  = ["Apple", 5]
        var banana = ["Banana", 5]
        my_items.insert(my_items.bsearch_custom(apple,  sort_by_amount, true),  apple)  # 插入 Apple 於 Kiwi 之前
        my_items.insert(my_items.bsearch_custom(banana, sort_by_amount, false), banana) # 插入 Banana 於 Kiwi 之後
        print(my_items) # 印出 [["Tomato", 2], ["Apple", 5], ["Kiwi", 5], ["Banana", 5], ["Rice", 9]]

\ **注意：**\ 在\ *未排序*\ 的陣列上呼叫 :ref:`bsearch_custom()<class_Array_method_bsearch_custom>` 會得到不可預期的結果，請先搭配 :ref:`sort_custom()<class_Array_method_sort_custom>` 使用。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_Array_method_clear>`

清除陣列的所有元素；等同於呼叫 :ref:`resize()<class_Array_method_resize>` 並將大小設為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Array_method_count>`

回傳指定元素在陣列中出現的次數。

若需要統計符合條件的元素數量，可使用 :ref:`reduce()<class_Array_method_reduce>` 來實作。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_duplicate:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Array_method_duplicate>`

回傳此陣列的複製品。

預設為\ **淺層**\ 複製：巢狀的 **Array**\ 、\ :ref:`Dictionary<class_Dictionary>` 與 :ref:`Resource<class_Resource>` 皆與原陣列共用；因此在其中一份內修改這些巢狀物件會同時影響另一份。

若將 ``deep`` 設為 ``true``\ ，則會進行\ **深層**\ 複製：巢狀陣列與字典都會被遞迴複製。但 :ref:`Resource<class_Resource>` 依然是共用的。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const| :ref:`🔗<class_Array_method_duplicate_deep>`

Duplicates this array, deeply, like :ref:`duplicate()<class_Array_method_duplicate>` when passing ``true``, with extra control over how subresources are handled.

\ ``deep_subresources_mode`` must be one of the values from :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>`. By default, only internal resources will be duplicated (recursively).

.. rst-class:: classref-item-separator

----

.. _class_Array_method_erase:

.. rst-class:: classref-method

|void| **erase**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_erase>`

尋找並移除陣列中第一個與 ``value`` 相符的元素；若不存在則不做任何事。若要依索引移除元素，請改用 :ref:`remove_at()<class_Array_method_remove_at>`\ 。

\ **注意：**\ 此方法會將被移除位置之後的所有元素索引往前平移，在大型陣列上可能造成明顯開銷。

\ **注意：**\ 在迴圈遍歷陣列時同時移除元素並不被支援，可能導致不可預期的行為。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_fill>`

將陣列中的所有元素皆設成指定的 ``value``\ 。

常與 :ref:`resize()<class_Array_method_resize>` 搭配，用於建立指定大小並已初始化的陣列：


.. tabs::

 .. code-tab:: gdscript

    var array = []
    array.resize(5)
    array.fill(2)
    print(array) # 印出 [2, 2, 2, 2, 2]

 .. code-tab:: csharp

    Godot.Collections.Array array = [];
    array.Resize(5);
    array.Fill(2);
    GD.Print(array); // 印出 [2, 2, 2, 2, 2]



\ **注意：**\ 若 ``value`` 為參照型別（衍生自 :ref:`Object<class_Object>`\ 、\ **Array**\ 、\ :ref:`Dictionary<class_Dictionary>`\ …），整個陣列將會持有同一個物件的參照，而非複本。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_filter:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **filter**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_filter>`

對陣列中的每個元素呼叫指定的 :ref:`Callable<class_Callable>`\ ，並依其回傳值產生新的過濾後陣列。

\ ``method`` 會收到一個陣列元素，當其回傳 ``true`` 時該元素會被保留；回傳 ``false`` 時則被排除。

::

    func is_even(number):
        return number % 2 == 0

    func _ready():
        print([1, 4, 5, 8].filter(is_even)) # 印出 [4, 8]

        # 與上例相同，但以 Lambda 撰寫。
        print([1, 4, 5, 8].filter(func(number): return number % 2 == 0))

另請參閱 :ref:`any()<class_Array_method_any>`\ 、\ :ref:`all()<class_Array_method_all>`\ 、\ :ref:`map()<class_Array_method_map>` 與 :ref:`reduce()<class_Array_method_reduce>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Array_method_find>`

回傳 ``what`` 在陣列中\ **第一次**\ 出現的索引；若不存在則回傳 ``-1``\ 。可以用 ``from`` 指定起始索引，搜尋將持續到陣列結尾。

\ **注意：**\ 若只想知道陣列是否包含 ``what``\ ，可使用 :ref:`has()<class_Array_method_has>`\ （C# 中為 `Contains`），或在 GDScript 使用 ``in`` 運算子。

\ **注意：**\ 基於效能考量，搜尋行為會受 ``what`` 的 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` 影響，例如 ``7``\ （int）與 ``7.0``\ （float）在此方法裡並不相等。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_find_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_custom**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Array_method_find_custom>`

Returns the index of the **first** element in the array that causes ``method`` to return ``true``, or ``-1`` if there are none. The search's start can be specified with ``from``, continuing to the end of the array.

\ ``method`` is a callable that takes an element of the array, and returns a :ref:`bool<class_bool>`.

\ **Note:** If you just want to know whether the array contains *anything* that satisfies ``method``, use :ref:`any()<class_Array_method_any>`.


.. tabs::

 .. code-tab:: gdscript

    func is_even(number):
        return number % 2 == 0

    func _ready():
        print([1, 3, 4, 7].find_custom(is_even.bind())) # Prints 2

    # Another example using `bind()` to pass an additional parameter:
    func is_specific_number(number, expected):
        return number == expected

    func _ready():
        print([1, 3, 4, 7].find_custom(is_specific_number.bind(4))) # Prints 2



.. rst-class:: classref-item-separator

----

.. _class_Array_method_front:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **front**\ (\ ) |const| :ref:`🔗<class_Array_method_front>`

回傳陣列第一個元素。若陣列為空則失敗並回傳 ``null``\ 。另見 :ref:`back()<class_Array_method_back>`\ 。

\ **注意：**\ 與直接使用 ``array[0]`` 取值不同，若陣列為空，此方法僅會產生錯誤訊息而不會中斷專案執行。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Array_method_get>`

Returns the element at the given ``index`` in the array. If ``index`` is out-of-bounds or negative, this method fails and returns ``null``.

This method is similar (but not identical) to the ``[]`` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_builtin**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_builtin>`

回傳此型別化陣列的內建 :ref:`Variant<class_Variant>` 型別，為 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` 常數。若陣列未設定型別，則回傳 :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`\ 。另見 :ref:`is_typed()<class_Array_method_is_typed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_class_name**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_class_name>`

若此型別化陣列的內建 :ref:`Variant<class_Variant>` 型別為 :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`\ ，則回傳其\ **內建**\ 類別名稱，否則回傳空的 :ref:`StringName<class_StringName>`\ 。另見 :ref:`is_typed()<class_Array_method_is_typed>` 與 :ref:`Object.get_class()<class_Object_method_get_class>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_script**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_script>`

回傳與此型別化陣列關聯的 :ref:`Script<class_Script>` 實例；若不存在則為 ``null``\ 。另見 :ref:`is_typed()<class_Array_method_is_typed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Array_method_has>`

若陣列中包含指定的 ``value`` 則回傳 ``true``\ 。


.. tabs::

 .. code-tab:: gdscript

    print(["inside", 7].has("inside"))  # 印出 true
    print(["inside", 7].has("outside")) # 印出 false
    print(["inside", 7].has(7))          # 印出 true
    print(["inside", 7].has("7"))        # 印出 false

 .. code-tab:: csharp

    Godot.Collections.Array arr = ["inside", 7];
    GD.Print(arr.Contains("inside"));  // 印出 True
    GD.Print(arr.Contains("outside")); // 印出 False
    GD.Print(arr.Contains(7));           // 印出 True
    GD.Print(arr.Contains("7"));         // 印出 False



在 GDScript 中，也可使用 ``in`` 運算子：

::

    if 4 in [2, 4, 6, 8]:
        print("4 is here!")

\ **注意：**\ 基於效能考量，搜尋行為會受 ``value`` 的 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` 影響，例如 ``7``\ （int）與 ``7.0``\ （float）在此方法裡並不相等。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Array_method_hash>`

Returns a hashed 32-bit integer value representing the array and its contents.

\ **Note:** Arrays with equal hash values are *not* guaranteed to be the same, as a result of hash collisions. On the contrary, arrays with different hash values are guaranteed to be different.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ position\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_insert>`

在索引 ``position`` 處插入新元素 (``value``)。合法範圍為 0 到陣列 :ref:`size()<class_Array_method_size>` 之間；若為負值則代表自陣列尾端反向計數。

成功時回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ；失敗時則回傳其他 :ref:`Error<enum_@GlobalScope_Error>` 常數。

\ **注意：**\ 插入後，\ ``position`` 之後的所有元素索引都需往後平移，對大型陣列可能造成明顯效能成本。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_Array_method_is_empty>`

若陣列為空（\ ``[]``\ ）則回傳 ``true``\ 。另見 :ref:`size()<class_Array_method_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_read_only**\ (\ ) |const| :ref:`🔗<class_Array_method_is_read_only>`

若陣列為唯讀狀態則回傳 ``true``\ 。請參考 :ref:`make_read_only()<class_Array_method_make_read_only>`\ 。

在 GDScript 中，使用 ``const`` 宣告的陣列會自動成為唯讀。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_same_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed**\ (\ array\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Array_method_is_same_typed>`

若此陣列與指定的 ``array`` 具備相同型別限制則回傳 ``true``\ 。另見 :ref:`is_typed()<class_Array_method_is_typed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed**\ (\ ) |const| :ref:`🔗<class_Array_method_is_typed>`

若陣列已設定型別限制則回傳 ``true``\ 。型別化陣列僅能包含指定型別的元素，但其方法仍預期回傳通用的 :ref:`Variant<class_Variant>`\ 。

在 GDScript 中，可透過靜態型別語法建立型別化陣列：

::

    var numbers: Array[float] = [0.2, 4.2, -2.0]
    print(numbers.is_typed()) # 印出 true

.. rst-class:: classref-item-separator

----

.. _class_Array_method_make_read_only:

.. rst-class:: classref-method

|void| **make_read_only**\ (\ ) :ref:`🔗<class_Array_method_make_read_only>`

將此陣列設為唯讀，之後無法改變元素值或調整順序。此設定不會遞迴套用至巢狀物件（例如字典）。

在 GDScript 中，使用 ``const`` 宣告的陣列預設即為唯讀。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_map:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **map**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_map>`

對陣列中的每個元素呼叫指定的 :ref:`Callable<class_Callable>`\ ，並以其回傳值產生新陣列。

\ ``method`` 必須接受一個 :ref:`Variant<class_Variant>` 參數（目前的陣列元素），並可回傳任何型別的 :ref:`Variant<class_Variant>`\ 。

::

    func double(number):
        return number * 2

    func _ready():
        print([1, 2, 3].map(double)) # 印出 [2, 4, 6]

        # 與上例相同，但以 Lambda 撰寫。
        print([1, 2, 3].map(func(element): return element * 2))

另請參閱 :ref:`filter()<class_Array_method_filter>`\ 、\ :ref:`reduce()<class_Array_method_reduce>`\ 、\ :ref:`any()<class_Array_method_any>` 與 :ref:`all()<class_Array_method_all>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_max:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **max**\ (\ ) |const| :ref:`🔗<class_Array_method_max>`

若陣列中的所有元素皆可比較，則回傳其中的最大值；否則回傳 ``null``\ 。另見 :ref:`min()<class_Array_method_min>`\ 。

若需透過自訂比較器尋找最大值，可使用 :ref:`reduce()<class_Array_method_reduce>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_min:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **min**\ (\ ) |const| :ref:`🔗<class_Array_method_min>`

若陣列中的所有元素皆可比較，則回傳其中的最小值；否則回傳 ``null``\ 。另見 :ref:`max()<class_Array_method_max>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pick_random:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pick_random**\ (\ ) |const| :ref:`🔗<class_Array_method_pick_random>`

自陣列中隨機回傳一個元素。若陣列為空，將產生錯誤並回傳 ``null``\ 。


.. tabs::

 .. code-tab:: gdscript

    # 可能印出 1、2、3.25 或 "Hi"。
    print([1, 2, 3.25, "Hi"].pick_random())

 .. code-tab:: csharp

    Godot.Collections.Array array = [1, 2, 3.25f, "Hi"];
    GD.Print(array.PickRandom()); // 可能印出 1、2、3.25 或 "Hi"。



\ **注意：**\ 與引擎中其他隨機函式（如 :ref:`@GlobalScope.randi()<class_@GlobalScope_method_randi>` 或 :ref:`shuffle()<class_Array_method_shuffle>`\ ）相同，本方法使用全域亂數種子。若需可預期的結果，請參考 :ref:`@GlobalScope.seed()<class_@GlobalScope_method_seed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_at:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_at**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_pop_at>`

移除並回傳索引為 ``position`` 的元素。若 ``position`` 為負值，則自陣列尾端反向計算。若陣列為空則回傳 ``null``\ ；若索引越界，則同時輸出錯誤訊息。

\ **注意：**\ 移除後，\ ``position`` 之後的所有元素索引都需往前平移，在大型陣列上可能造成明顯效能成本。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_back:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_back**\ (\ ) :ref:`🔗<class_Array_method_pop_back>`

移除並回傳陣列最後一個元素。若陣列為空則回傳 ``null`` 而不產生錯誤。另見 :ref:`pop_front()<class_Array_method_pop_front>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_front:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_front**\ (\ ) :ref:`🔗<class_Array_method_pop_front>`

移除並回傳陣列第一個元素。若陣列為空則回傳 ``null`` 而不產生錯誤。另見 :ref:`pop_back()<class_Array_method_pop_back>`\ 。

\ **注意：**\ 此方法會將其餘元素索引往前平移，對大型陣列可能產生明顯效能成本。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_push_back:

.. rst-class:: classref-method

|void| **push_back**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_push_back>`

將元素追加於陣列尾端。另見 :ref:`push_front()<class_Array_method_push_front>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_push_front:

.. rst-class:: classref-method

|void| **push_front**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_push_front>`

於陣列開頭插入一個元素。另見 :ref:`push_back()<class_Array_method_push_back>`\ 。

\ **注意：**\ 插入後其餘元素索引將往後平移，對大型陣列可能產生明顯效能成本。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_reduce:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **reduce**\ (\ method\: :ref:`Callable<class_Callable>`, accum\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Array_method_reduce>`

對陣列中的每個元素呼叫指定的 :ref:`Callable<class_Callable>`\ ，以 ``accum`` 累計並於結束後回傳。

\ ``method`` 會接收兩個參數：目前的累計值 ``accum`` 與目前元素。若 ``accum`` 為 ``null``\ （預設），則從第二個元素開始迴圈，並以第一個元素做為初始值。

::

    func sum(accum, number):
        return accum + number

    func _ready():
        print([1, 2, 3].reduce(sum, 0))  # 印出 6
        print([1, 2, 3].reduce(sum, 10)) # 印出 16

        # 與上例相同，但以 Lambda 撰寫。
        print([1, 2, 3].reduce(func(accum, number): return accum + number, 10))

除了可取代 :ref:`max()<class_Array_method_max>` 自訂比較器外，也能用來計算符合條件的元素數量（類似 :ref:`count()<class_Array_method_count>`\ ）：

::

    func is_even(number):
        return number % 2 == 0

    func _ready():
        var arr = [1, 2, 3, 4, 5]
        var even_count = arr.reduce(func(count, next): return count + 1 if is_even(next) else count, 0)
        print(even_count) # 印出 2

另請參閱 :ref:`map()<class_Array_method_map>`\ 、\ :ref:`filter()<class_Array_method_filter>`\ 、\ :ref:`any()<class_Array_method_any>` 與 :ref:`all()<class_Array_method_all>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_remove_at>`

Removes the element from the array at the given index (``position``). If the index is out of bounds, this method fails. If the index is negative, ``position`` is considered relative to the end of the array.

If you need to return the removed element, use :ref:`pop_at()<class_Array_method_pop_at>`. To remove an element by value, use :ref:`erase()<class_Array_method_erase>` instead.

\ **Note:** This method shifts every element's index after ``position`` back, which may have a noticeable performance cost, especially on larger arrays.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_resize>`

將陣列長度設為 ``size``\ 。若新大小小於目前大小，尾端元素會被移除；若大於目前大小，則依陣列型別新增預設值（通常為 ``null``\ ）。

成功時回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。若失敗則可能回傳：陣列唯讀時為 :ref:`@GlobalScope.ERR_LOCKED<class_@GlobalScope_constant_ERR_LOCKED>`\ ；\ ``size`` 為負值時為 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`\ ；記憶體配置失敗時為 :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>`\ 。可使用 :ref:`size()<class_Array_method_size>` 取得實際大小。

\ **注意：**\ 一次呼叫本方法並批次指定新值，效能優於逐一 :ref:`append()<class_Array_method_append>` 新元素。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_Array_method_reverse>`

將陣列元素順序反轉。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_Array_method_rfind>`

回傳 ``what`` 在陣列中\ **最後一次**\ 出現的索引；若不存在則回傳 ``-1``\ 。可使用 ``from`` 指定搜尋起點，搜尋方向會往陣列開頭進行。本方法與 :ref:`find()<class_Array_method_find>` 相反。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_rfind_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind_custom**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_Array_method_rfind_custom>`

回傳陣列中最後一個令 ``method`` 回傳 ``true`` 的元素索引；若無則回傳 ``-1``\ 。可用 ``from`` 指定搜尋起點，搜尋方向會往陣列開頭進行。本方法與 :ref:`find_custom()<class_Array_method_find_custom>` 相反。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_set>`

將索引為 ``index`` 的元素設為 ``value``\ 。此操作不會改變陣列大小，只會覆寫既有索引的值；效果與使用 ``array[index] = value`` 相同。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_shuffle:

.. rst-class:: classref-method

|void| **shuffle**\ (\ ) :ref:`🔗<class_Array_method_shuffle>`

將陣列元素隨機重新排列。

\ **注意：**\ 與引擎中其他隨機函式（如 :ref:`@GlobalScope.randi()<class_@GlobalScope_method_randi>` 或 :ref:`pick_random()<class_Array_method_pick_random>`\ ）相同，本方法使用全域亂數種子。若需可預期的結果，請參考 :ref:`@GlobalScope.seed()<class_@GlobalScope_method_seed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_Array_method_size>`

回傳陣列元素數量。空陣列（\ ``[]``\ ）一律回傳 ``0``\ 。另見 :ref:`is_empty()<class_Array_method_is_empty>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_slice:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647, step\: :ref:`int<class_int>` = 1, deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Array_method_slice>`

回傳此陣列的切片新陣列，範圍從索引 ``begin``\ （含）到 ``end``\ （不含），並以 ``step`` 為間隔選取元素。

若 ``begin`` 或 ``end`` 為負值，則視為自陣列尾端反向計數。

若 ``step`` 為負值，切片方向將反轉，且 ``begin`` 必須大於 ``end`` 才能正常運作。

若將 ``deep`` 設為 ``true``\ ，切片中的巢狀 **Array** 與 :ref:`Dictionary<class_Dictionary>` 會被遞迴複製；詳見 :ref:`duplicate()<class_Array_method_duplicate>`\ 。

::

    var letters = ["A", "B", "C", "D", "E", "F"]
    print(letters.slice(0, 2))   # 印出 ["A", "B"]
    print(letters.slice(2, -2))  # 印出 ["C", "D"]
    print(letters.slice(-2, 6))  # 印出 ["E", "F"]
    print(letters.slice(0, 6, 2))  # 印出 ["A", "C", "E"]
    print(letters.slice(4, 1, -1)) # 印出 ["E", "D", "C"]

.. rst-class:: classref-item-separator

----

.. _class_Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_Array_method_sort>`

將陣列依遞增順序排序，排序結果取決於元素之間的「小於」(``<``) 比較。


.. tabs::

 .. code-tab:: gdscript

    var numbers = [10, 5, 2.5, 8]
    numbers.sort()
    print(numbers) # 印出 [2.5, 5, 8, 10]

 .. code-tab:: csharp

    Godot.Collections.Array numbers = [10, 5, 2.5, 8];
    numbers.Sort();
    GD.Print(numbers); // 印出 [2.5, 5, 8, 10]



\ **注意：**\ 此排序演算法並非\ `穩定排序 <https://en.wikipedia.org/wiki/Sorting_algorithm#Stability>`__\ ，等值元素（如 ``2`` 與 ``2.0``\ ）的相對順序可能改變。

.. rst-class:: classref-item-separator

----

.. _class_Array_method_sort_custom:

.. rst-class:: classref-method

|void| **sort_custom**\ (\ func\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Array_method_sort_custom>`

使用自訂 :ref:`Callable<class_Callable>` 進行排序。

\ ``func`` 會在需要時多次被呼叫，並傳入兩個陣列元素作比較；若第一個元素應位於第二個元素\ *之前*\ 則回傳 ``true``\ ，否則回傳 ``false``\ 。

::

    func sort_ascending(a, b):
        return a[1] < b[1]

    func _ready():
        var my_items = [["Tomato", 5], ["Apple", 9], ["Rice", 4]]
        my_items.sort_custom(sort_ascending)
        print(my_items) # 印出 [["Rice", 4], ["Tomato", 5], ["Apple", 9]]

        # 使用 Lambda 以遞減排序。
        my_items.sort_custom(func(a, b): return a[1] > b[1])
        print(my_items) # 印出 [["Apple", 9], ["Tomato", 5], ["Rice", 4]]

若需照人類自然排序比較字串，可搭配 :ref:`String.naturalnocasecmp_to()<class_String_method_naturalnocasecmp_to>`\ ：

::

    var files = ["newfile1", "newfile2", "newfile10", "newfile11"]
    files.sort_custom(func(a, b): return a.naturalnocasecmp_to(b) < 0)
    print(files) # 印出 ["newfile1", "newfile2", "newfile10", "newfile11"]

\ **注意：**\ C# 不支援此方法。

\ **注意：**\ 此排序演算法並非穩定排序，等值元素的相對順序可能改變。

\ **注意：**\ 請勿讓 ``func`` 的回傳值隨機變動，否則 heapsort 需要的一致性將被破壞並導致不可預期結果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Array_operator_neq_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_neq_Array>`

若本陣列的大小或元素與 ``right`` 不同則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_sum_Array:

.. rst-class:: classref-operator

:ref:`Array<class_Array>` **operator +**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_sum_Array>`

將右運算元 ``right`` 追加至左運算元，產生新的 **Array**\ （亦即陣列串接）。


.. tabs::

 .. code-tab:: gdscript

    var array1 = ["One", 2]
    var array2 = [3, "Four"]
    print(array1 + array2) # 印出 ["One", 2, 3, "Four"]

 .. code-tab:: csharp

    Godot.Collections.Array array1 = ["One", 2];
    Godot.Collections.Array array2 = [3, "Four"];
    GD.Print(array1 + array2); // 印出 ["One", 2, 3, "Four"]



\ **注意：**\ 對既有陣列，就地呼叫 :ref:`append_array()<class_Array_method_append_array>` 的效率遠高於使用 ``+=`` 串接並重新指派。

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_lt_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_lt_Array>`

依序比較兩個陣列的元素（由索引 0 開始，直到兩陣列共同的最後一個索引）。若某對元素首次出現差異，當本陣列元素小於 ``right`` 的元素時回傳 ``true``\ ，反之回傳 ``false``\ ；若元素相等則繼續比較下一對。

若所有比較過的元素皆相等，則比較陣列長度：若本陣列長度小於 ``right``\ ，回傳 ``true``\ ；否則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_lte_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_lte_Array>`

依序比較兩陣列元素。若本陣列元素第一次出現小於 ``right`` 的情況，立即回傳 ``true``\ ；若大於則回傳 ``false``\ ；相等則繼續比較。

若全部比較結果皆相等，則比較陣列長度：若本陣列長度小於或等於 ``right``\ ，回傳 ``true``\ ，否則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_eq_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_eq_Array>`

比較左右兩個陣列。若大小與內容皆相同則回傳 ``true``\ ，否則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_gt_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_gt_Array>`

依序比較兩陣列元素。若本陣列元素第一次出現大於 ``right`` 的情況，立即回傳 ``true``\ ；若小於則回傳 ``false``\ ；相等則繼續比較。

若全部比較結果皆相等，則比較陣列長度：若本陣列長度大於 ``right``\ ，回傳 ``true``\ ，否則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_gte_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_gte_Array>`

依序比較兩陣列元素。若本陣列元素第一次出現大於 ``right`` 的情況，立即回傳 ``true``\ ；若小於則回傳 ``false``\ ；相等則繼續比較。

若全部比較結果皆相等，則比較陣列長度：若本陣列長度大於或等於 ``right``\ ，回傳 ``true``\ ，否則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Variant<class_Variant>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_operator_idx_int>`

回傳位於 ``index`` 的 :ref:`Variant<class_Variant>` 元素，索引自 0 起算。若 ``index`` 大於等於 0，則自陣列開頭計算；若為負值，則自陣列尾端反向計算。若索引越界，將於執行階段產生錯誤，並在編輯器中中斷專案執行。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
