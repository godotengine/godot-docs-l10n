:github_url: hide

.. _class_RegEx:

RegEx
=====

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用正则表达式搜索文本的类。

.. rst-class:: classref-introduction-group

描述
----

正则表达式（或称 regex）是一种紧凑的语言，可用于识别遵循特定模式的字符串，如 URL、电子邮件地址、完整句子等。例如正则表达式 ``ab[0-9]`` 可以找到 ``ab`` 后面跟着 ``0`` 到 ``9`` 的任何数字的字符串。要想更深入地了解，你可以很容易地在互联网上找到各种教程和详细解释。

首先，在使用 RegEx 对象之前，需要用 :ref:`compile()<class_RegEx_method_compile>` 对其进行搜索模式的编译。

::

    var regex = RegEx.new()
    regex.compile("\\w-(\\d+)")

在为表达式转义之前，必须先为 GDScript 转义搜索模式。例如，\ ``compile("\\d+")`` 会被 RegEx 读成 ``\d+``\ 。同样，\ ``compile("\"(?:\\\\.|[^\"])*\")`` 会被读作 ``"(?:\\.|[^"])*"``\ 。在 GDScript 中，你还可以使用原始字符串文字（r-字符串）。例如，\ ``compile(r'"(?:\\.|[^"])*"')`` 将被读取为相同的。

使用 :ref:`search()<class_RegEx_method_search>`\ ，你可以在给定的文本中匹配模式。如果匹配到一个模式，将返回 :ref:`RegExMatch<class_RegExMatch>`\ ，你可以使用 :ref:`RegExMatch.get_string()<class_RegExMatch_method_get_string>` 和 :ref:`RegExMatch.get_start()<class_RegExMatch_method_get_start>` 等方法检索结果的细节。

::

    var regex = RegEx.new()
    regex.compile("\\w-(\\d+)")
    var result = regex.search("abc n-0123")
    if result:
        print(result.get_string()) # 输出“n-0123”

捕获组的结果 ``()`` 可以通过向 :ref:`RegExMatch<class_RegExMatch>` 中的各种方法传递组号来检索。默认是组 0，并且将总是指整个模式。在上面的例子中，调用 ``result.get_string(1)`` 会得到 ``0123``\ 。

这个版本的 RegEx 也支持命名的捕获组，名称可以用来检索结果。如果两个或更多的组有相同的名称，那么这个名称将只指第一个有匹配的组。

::

    var regex = RegEx.new()
    regex.compile("d(?<digit>[0-9]+)|x(?<digit>[0-9a-f]+)")
    var result = regex.search("数字是 x2f")
    if result:
        print(result.get_string("digit")) # 输出“2f”

如果你需要处理多个结果，\ :ref:`search_all()<class_RegEx_method_search_all>` 会生成一个所有不重叠的结果列表。为了方便起见，这可以和一个 ``for`` 循环结合起来。

::

    for result in regex.search_all("d01, d03, d0c, x3f and x42"):
        print(result.get_string("digit"))
    # 会输出 01 03 0 3f 42

\ **示例：**\ 使用 RegEx 分割字符串：

::

    var regex = RegEx.new()
    regex.compile("\\S+") # 非空白字符类。
    var results = []
    for result in regex.search_all("One  Two \n\tThree"):
        results.push_back(result.get_string())
    print(results) # 输出 ["One", "Two", "Three"]

\ **注意：**\ Godot 的 regex 实现基于的是 `PCRE2 <https://www.pcre.org/>`__\ 。你可以查看完整的模式参考\ `这里 <https://www.pcre.org/current/doc/html/pcre2pattern.html>`__\ 。

\ **提示：**\ 你可以使用 `Regexr <https://regexr.com/>`__ 来在线测试正则表达式。

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

方法说明
--------

.. _class_RegEx_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_RegEx_method_clear>`

这个方法重置了对象的状态，就像它是新创建的一样。也就是说，它取消了这个对象的正则表达式的赋值。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_compile:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **compile**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_RegEx_method_compile>`

编译并指定要使用的搜索模式。如果编译成功则返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。如果遇到错误则返回 :ref:`@GlobalScope.FAILED<class_@GlobalScope_constant_FAILED>`\ ，\ ``show_error`` 为 ``true`` 时会将细节打印到标准输出。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_create_from_string:

.. rst-class:: classref-method

:ref:`RegEx<class_RegEx>` **create_from_string**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static| :ref:`🔗<class_RegEx_method_create_from_string>`

创建并编译新 **RegEx** 对象。另见 :ref:`compile()<class_RegEx_method_compile>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_group_count>`

返回编译的模式中捕获组的数量。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_names**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_names>`

返回一个数组，元素为编译的模式中具名捕获组的名称，按出现顺序排序。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_pattern:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_pattern**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_pattern>`

返回被编译的原始搜索模式。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RegEx_method_is_valid>`

返回此对象是否分配了有效的搜索模式。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search:

.. rst-class:: classref-method

:ref:`RegExMatch<class_RegExMatch>` **search**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search>`

在文本中搜索编译后的模式。如果找到，则将首个匹配结果放在 :ref:`RegExMatch<class_RegExMatch>` 容器中返回，否则返回 ``null``\ 。

可以使用 ``offset`` 和 ``end`` 指定要搜索的区域。这对在上一次成功后再次调用该方法，以相同的 ``subject`` 搜索另一个匹配项时很有用。请注意，设置这些参数不同于传递缩短后的字符串。例如，起始锚点 ``^`` 不受 ``offset`` 的影响，会为单词边界 ``\b`` 检查 ``offset`` 之前的字符。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] **search_all**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search_all>`

在文本中搜索编译后的模式。返回 :ref:`RegExMatch<class_RegExMatch>` 容器的数组，其中每个容器包含的是互不重叠的匹配结果。如果没有找到结果，则返回一个空数组。

可以使用 ``offset`` 和 ``end`` 指定要搜索的区域。这对在上一次成功后再次调用该方法，以相同的 ``subject`` 搜索另一个匹配项时很有用。请注意，设置这些参数不同于传递缩短后的字符串。例如，起始锚点 ``^`` 不受 ``offset`` 的影响，会为单词边界 ``\b`` 检查 ``offset`` 之前的字符。

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_sub:

.. rst-class:: classref-method

:ref:`String<class_String>` **sub**\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_sub>`

在文本中搜索编译后的模式，并将其替换为指定的字符串。诸如 ``$1`` 和 ``$name`` 等转义和反向引用会被扩展和解析。默认情况下，只有第一个实例被替换，但可以修改为针对所有实例（全局替换）。

可以使用 ``offset`` 和 ``end`` 指定要搜索的区域。这对在上一次成功后再次调用该方法，以相同的 ``subject`` 搜索另一个匹配项时很有用。请注意，设置这些参数不同于传递缩短后的字符串。例如，起始锚点 ``^`` 不受 ``offset`` 的影响，会为单词边界 ``\b`` 检查 ``offset`` 之前的字符。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
