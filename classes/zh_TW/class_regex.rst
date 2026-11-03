:github_url: hide

.. _class_RegEx:

RegEx
=====

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用規則運算式搜尋文字的類。

.. rst-class:: classref-introduction-group

說明
----

正則運算式（或稱 regex）是一種緊湊的語言，可用於識別遵循特定模式的字串，如 URL、電子郵件位址、完整句子等。例如正則運算式 ``ab[0-9]`` 可以找到 ``ab`` 後面跟著 ``0`` 到 ``9`` 的任何數字的字串。要想更深入地瞭解，你可以很容易地在互連網上找到各種教學和詳細解釋。

首先，在使用 RegEx 物件之前，需要用 :ref:`compile()<class_RegEx_method_compile>` 對其進行搜尋模式的編譯。或者，可以使用靜態方法 :ref:`create_from_string()<class_RegEx_method_create_from_string>` 在單次方法呼叫中建立並編譯一個 RegEx 物件。

::

    var regex = RegEx.new()
    regex.compile("\\w-(\\d+)")
    # 用於建立和編譯正則運算式的簡寫（如下例所示）：
    var regex2 = RegEx.create_from_string("\\w-(\\d+)")

在為運算式跳脫之前，必須先為 GDScript 跳脫搜尋模式。例如，\ ``compile("\\d+")`` 會被 RegEx 讀成 ``\d+``\ 。同樣，\ ``compile("\"(?:\\\\.|[^\"])*\")`` 會被讀作 ``"(?:\\.|[^"])*"``\ 。在 GDScript 中，你還可以使用原始字串文字（r-字串）。例如，\ ``compile(r'"(?:\\.|[^"])*"')`` 將被讀取為相同的。

使用 :ref:`search()<class_RegEx_method_search>`\ ，你可以在給定的文字中匹配模式。如果匹配到一個模式，將回傳 :ref:`RegExMatch<class_RegExMatch>`\ ，你可以使用 :ref:`RegExMatch.get_string()<class_RegExMatch_method_get_string>` 和 :ref:`RegExMatch.get_start()<class_RegExMatch_method_get_start>` 等方法檢索結果的細節。

::

    var regex = RegEx.create_from_string("\\w-(\\d+)")
    var result = regex.search("abc n-0123")
    if result:
        print(result.get_string()) # 輸出“n-0123”

捕獲組的結果 ``()`` 可以通過向 :ref:`RegExMatch<class_RegExMatch>` 中的各種方法傳遞組號來檢索。預設是組 0，並且將總是指整個模式。在上面的例子中，呼叫 ``result.get_string(1)`` 會得到 ``0123``\ 。

這個版本的 RegEx 也支援命名的捕獲組，名稱可以用來檢索結果。如果兩個或更多的組有相同的名稱，那麼這個名稱將只指第一個有匹配的組。

::

    var regex = RegEx.create_from_string("d(?<digit>[0-9]+)|x(?<digit>[0-9a-f]+)")
    var result = regex.search("數字是 x2f")
    if result:
        print(result.get_string("digit")) # 輸出“2f”

如果你需要處理多個結果，\ :ref:`search_all()<class_RegEx_method_search_all>` 會生成一個所有不重疊的結果清單。為了方便起見，這可以和一個 ``for`` 循環結合起來。

::

    for result in regex.search_all("d01, d03, d0c, x3f and x42"):
        print(result.get_string("digit"))
    # 會輸出 01 03 0 3f 42

\ **範例：**\ 使用 RegEx 分割字串：

::

    var regex = RegEx.create_from_string("\\S+") # 非空白字元類。
    var results = []
    for result in regex.search_all("One  Two \n\tThree"):
        results.push_back(result.get_string())
    print(results) # 輸出 ["One", "Two", "Three"]

\ **注意：**\ Godot 的 regex 實作基於的是 `PCRE2 <https://www.pcre.org/>`__\ 。你可以查看完整的模式參考\ `這裡 <https://www.pcre.org/current/doc/html/pcre2pattern.html>`__\ 。

\ **提示：**\ 你可以使用 `Regexr <https://regexr.com/>`__ 來線上測試正則運算式。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear<class_RegEx_method_clear>`\ (\ )                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`compile<class_RegEx_method_compile>`\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ )                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RegEx<class_RegEx>`                                        | :ref:`create_from_string<class_RegEx_method_create_from_string>`\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static|                                                                             |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_group_count<class_RegEx_method_get_group_count>`\ (\ ) |const|                                                                                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_names<class_RegEx_method_get_names>`\ (\ ) |const|                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_pattern<class_RegEx_method_get_pattern>`\ (\ ) |const|                                                                                                                                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_valid<class_RegEx_method_is_valid>`\ (\ ) |const|                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RegExMatch<class_RegExMatch>`                              | :ref:`search<class_RegEx_method_search>`\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const|                                                                             |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] | :ref:`search_all<class_RegEx_method_search_all>`\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const|                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`sub<class_RegEx_method_sub>`\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RegEx_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_RegEx_method_clear>`

這個方法重設了物件的狀態，就像它是新建立的一樣。也就是說，它取消了這個物件的規則運算式的賦值。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_compile:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **compile**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_RegEx_method_compile>`

編譯並指定要使用的搜尋模式。如果編譯成功則回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。如果遇到錯誤則回傳 :ref:`@GlobalScope.FAILED<class_@GlobalScope_constant_FAILED>`\ ，\ ``show_error`` 為 ``true`` 時會將細節輸出到標準輸出。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_create_from_string:

.. rst-class:: classref-method

:ref:`RegEx<class_RegEx>` **create_from_string**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static| :ref:`🔗<class_RegEx_method_create_from_string>`

建立並編譯新 **RegEx** 物件。另見 :ref:`compile()<class_RegEx_method_compile>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_group_count>`

返回編譯模式中捕獲組的數量。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_names**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_names>`

返回一個陣列，該陣列是編譯模式中命名的捕獲組的名稱。它們是按外觀排序的。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_pattern:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_pattern**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_pattern>`

返回被編譯的原始搜尋模式。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RegEx_method_is_valid>`

返回此物件是否分配了有效的搜尋模式。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search:

.. rst-class:: classref-method

:ref:`RegExMatch<class_RegExMatch>` **search**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search>`

在文字中搜尋編譯後的模式。如果找到，則將首個配對結果放在 :ref:`RegExMatch<class_RegExMatch>` 容器中返回，否則返回 ``null``\ 。

可以使用 ``offset`` 和 ``end`` 指定要搜尋的區域。這對在上一次成功後再次呼叫該方法，以相同的 ``subject`` 搜尋另一個配對項時很有用。請注意，設定這些參數不同於傳遞縮短後的字串。例如，起始錨點 ``^`` 不受 ``offset`` 的影響，會為單詞邊界 ``\b`` 檢查 ``offset`` 之前的字元。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] **search_all**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search_all>`

在文字中搜尋編譯後的模式。返回 :ref:`RegExMatch<class_RegExMatch>` 容器的陣列，其中每個容器包含的是互不重疊的配對結果。如果沒有找到結果，則返回一個空陣列。

可以使用 ``offset`` 和 ``end`` 指定要搜尋的區域。這對在上一次成功後再次呼叫該方法，以相同的 ``subject`` 搜尋另一個配對項時很有用。請注意，設定這些參數不同於傳遞縮短後的字串。例如，起始錨點 ``^`` 不受 ``offset`` 的影響，會為單詞邊界 ``\b`` 檢查 ``offset`` 之前的字元。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_sub:

.. rst-class:: classref-method

:ref:`String<class_String>` **sub**\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_sub>`

在文字中搜尋編譯後的模式，並將其替換為指定的字串。諸如 ``$1`` 和 ``$name`` 等轉義和反向引用會被擴充和解析。預設情況下，只有第一個實例被替換，但可以修改為針對所有實例（全域替換）。

可以使用 ``offset`` 和 ``end`` 指定要搜尋的區域。這對在上一次成功後再次呼叫該方法，以相同的 ``subject`` 搜尋另一個配對項時很有用。請注意，設定這些參數不同於傳遞縮短後的字串。例如，起始錨點 ``^`` 不受 ``offset`` 的影響，會為單詞邊界 ``\b`` 檢查 ``offset`` 之前的字元。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
