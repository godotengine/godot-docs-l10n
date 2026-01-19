:github_url: hide

.. _class_RegEx:

RegEx
=====

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用規則運算式搜索文字的類。

.. rst-class:: classref-introduction-group

說明
----

A regular expression (or regex) is a compact language that can be used to recognize strings that follow a specific pattern, such as URLs, email addresses, complete sentences, etc. For example, a regex of ``ab[0-9]`` would find any string that is ``ab`` followed by any number from ``0`` to ``9``. For a more in-depth look, you can easily find various tutorials and detailed explanations on the Internet.

To begin, the RegEx object needs to be compiled with the search pattern using :ref:`compile()<class_RegEx_method_compile>` before it can be used. Alternatively, the static method :ref:`create_from_string()<class_RegEx_method_create_from_string>` can be used to create and compile a RegEx object in a single method call.

::

    var regex = RegEx.new()
    regex.compile("\\w-(\\d+)")
    # Shorthand to create and compile a regex (used in the examples below):
    var regex2 = RegEx.create_from_string("\\w-(\\d+)")

The search pattern must be escaped first for GDScript before it is escaped for the expression. For example, ``compile("\\d+")`` would be read by RegEx as ``\d+``. Similarly, ``compile("\"(?:\\\\.|[^\"])*\"")`` would be read as ``"(?:\\.|[^"])*"``. In GDScript, you can also use raw string literals (r-strings). For example, ``compile(r'"(?:\\.|[^"])*"')`` would be read the same.

Using :ref:`search()<class_RegEx_method_search>`, you can find the pattern within the given text. If a pattern is found, :ref:`RegExMatch<class_RegExMatch>` is returned and you can retrieve details of the results using methods such as :ref:`RegExMatch.get_string()<class_RegExMatch_method_get_string>` and :ref:`RegExMatch.get_start()<class_RegExMatch_method_get_start>`.

::

    var regex = RegEx.create_from_string("\\w-(\\d+)")
    var result = regex.search("abc n-0123")
    if result:
        print(result.get_string()) # Prints "n-0123"

The results of capturing groups ``()`` can be retrieved by passing the group number to the various methods in :ref:`RegExMatch<class_RegExMatch>`. Group 0 is the default and will always refer to the entire pattern. In the above example, calling ``result.get_string(1)`` would give you ``0123``.

This version of RegEx also supports named capturing groups, and the names can be used to retrieve the results. If two or more groups have the same name, the name would only refer to the first one with a match.

::

    var regex = RegEx.create_from_string("d(?<digit>[0-9]+)|x(?<digit>[0-9a-f]+)")
    var result = regex.search("the number is x2f")
    if result:
        print(result.get_string("digit")) # Prints "2f"

If you need to process multiple results, :ref:`search_all()<class_RegEx_method_search_all>` generates a list of all non-overlapping results. This can be combined with a ``for`` loop for convenience.

::

    # Prints "01 03 0 3f 42"
    for result in regex.search_all("d01, d03, d0c, x3f and x42"):
        print(result.get_string("digit"))

\ **Example:** Split a string using a RegEx:

::

    var regex = RegEx.create_from_string("\\S+") # Negated whitespace character class.
    var results = []
    for result in regex.search_all("One  Two \n\tThree"):
        results.push_back(result.get_string())
    print(results) # Prints ["One", "Two", "Three"]

\ **Note:** Godot's regex implementation is based on the `PCRE2 <https://www.pcre.org/>`__ library. You can view the full pattern reference `here <https://www.pcre.org/current/doc/html/pcre2pattern.html>`__.

\ **Tip:** You can use `Regexr <https://regexr.com/>`__ to test regular expressions online.

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

Compiles and assign the search pattern to use. Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` if the compilation is successful. If compilation fails, returns :ref:`@GlobalScope.FAILED<class_@GlobalScope_constant_FAILED>` and when ``show_error`` is ``true``, details are printed to standard output.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_create_from_string:

.. rst-class:: classref-method

:ref:`RegEx<class_RegEx>` **create_from_string**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static| :ref:`🔗<class_RegEx_method_create_from_string>`

Creates and compiles a new **RegEx** object. See also :ref:`compile()<class_RegEx_method_compile>`.

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

返回被編譯的原始搜索模式。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RegEx_method_is_valid>`

返回此物件是否分配了有效的搜索模式。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search:

.. rst-class:: classref-method

:ref:`RegExMatch<class_RegExMatch>` **search**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search>`

在文字中搜索編譯後的模式。如果找到，則將首個配對結果放在 :ref:`RegExMatch<class_RegExMatch>` 容器中返回，否則返回 ``null``\ 。

可以使用 ``offset`` 和 ``end`` 指定要搜索的區域。這對在上一次成功後再次呼叫該方法，以相同的 ``subject`` 搜索另一個配對項時很有用。請注意，設定這些參數不同於傳遞縮短後的字串。例如，起始錨點 ``^`` 不受 ``offset`` 的影響，會為單詞邊界 ``\b`` 檢查 ``offset`` 之前的字符。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] **search_all**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search_all>`

在文字中搜索編譯後的模式。返回 :ref:`RegExMatch<class_RegExMatch>` 容器的陣列，其中每個容器包含的是互不重疊的配對結果。如果沒有找到結果，則返回一個空陣列。

可以使用 ``offset`` 和 ``end`` 指定要搜索的區域。這對在上一次成功後再次呼叫該方法，以相同的 ``subject`` 搜索另一個配對項時很有用。請注意，設定這些參數不同於傳遞縮短後的字串。例如，起始錨點 ``^`` 不受 ``offset`` 的影響，會為單詞邊界 ``\b`` 檢查 ``offset`` 之前的字符。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_sub:

.. rst-class:: classref-method

:ref:`String<class_String>` **sub**\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_sub>`

在文字中搜索編譯後的模式，並將其替換為指定的字串。諸如 ``$1`` 和 ``$name`` 等轉義和反向引用會被擴充和解析。預設情況下，只有第一個實例被替換，但可以修改為針對所有實例（全域替換）。

可以使用 ``offset`` 和 ``end`` 指定要搜索的區域。這對在上一次成功後再次呼叫該方法，以相同的 ``subject`` 搜索另一個配對項時很有用。請注意，設定這些參數不同於傳遞縮短後的字串。例如，起始錨點 ``^`` 不受 ``offset`` 的影響，會為單詞邊界 ``\b`` 檢查 ``offset`` 之前的字符。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
