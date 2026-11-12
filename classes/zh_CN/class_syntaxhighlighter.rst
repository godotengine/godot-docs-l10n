:github_url: hide

.. _class_SyntaxHighlighter:

SyntaxHighlighter
=================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`CodeHighlighter<class_CodeHighlighter>`, :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`

语法高亮器的基类。可以向 :ref:`TextEdit<class_TextEdit>` 提供语法高亮数据。

.. rst-class:: classref-introduction-group

描述
----

语法高亮器的基类。向 :ref:`TextEdit<class_TextEdit>` 提供语法高亮数据。关联的 :ref:`TextEdit<class_TextEdit>` 节点会根据需要调用 **SyntaxHighlighter**\ 。

\ **注意：**\ 不应在多个 :ref:`TextEdit<class_TextEdit>` 节点间共享 **SyntaxHighlighter** 实例。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_clear_highlighting_cache<class_SyntaxHighlighter_private_method__clear_highlighting_cache>`\ (\ ) |virtual|                                               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`_get_line_syntax_highlighting<class_SyntaxHighlighter_private_method__get_line_syntax_highlighting>`\ (\ line\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_update_cache<class_SyntaxHighlighter_private_method__update_cache>`\ (\ ) |virtual|                                                                       |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`clear_highlighting_cache<class_SyntaxHighlighter_method_clear_highlighting_cache>`\ (\ )                                                                   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`get_line_syntax_highlighting<class_SyntaxHighlighter_method_get_line_syntax_highlighting>`\ (\ line\: :ref:`int<class_int>`\ )                             |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextEdit<class_TextEdit>`     | :ref:`get_text_edit<class_SyntaxHighlighter_method_get_text_edit>`\ (\ ) |const|                                                                                 |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`update_cache<class_SyntaxHighlighter_method_update_cache>`\ (\ )                                                                                           |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SyntaxHighlighter_private_method__clear_highlighting_cache:

.. rst-class:: classref-method

|void| **_clear_highlighting_cache**\ (\ ) |virtual| :ref:`🔗<class_SyntaxHighlighter_private_method__clear_highlighting_cache>`

虚方法，覆盖后可以清空本地缓存。

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_private_method__get_line_syntax_highlighting:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_line_syntax_highlighting**\ (\ line\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_SyntaxHighlighter_private_method__get_line_syntax_highlighting>`

虚方法，覆盖后可以返回语法高亮数据。

详见 :ref:`get_line_syntax_highlighting()<class_SyntaxHighlighter_method_get_line_syntax_highlighting>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_private_method__update_cache:

.. rst-class:: classref-method

|void| **_update_cache**\ (\ ) |virtual| :ref:`🔗<class_SyntaxHighlighter_private_method__update_cache>`

虚方法，覆盖后可以更新本地缓存。

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_method_clear_highlighting_cache:

.. rst-class:: classref-method

|void| **clear_highlighting_cache**\ (\ ) :ref:`🔗<class_SyntaxHighlighter_method_clear_highlighting_cache>`

清空所有缓存的语法高亮数据。

然后调用可覆盖的 :ref:`_clear_highlighting_cache()<class_SyntaxHighlighter_private_method__clear_highlighting_cache>` 方法。

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_method_get_line_syntax_highlighting:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_line_syntax_highlighting**\ (\ line\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SyntaxHighlighter_method_get_line_syntax_highlighting>`

Returns the syntax highlighting data for the line at index ``line``. If the line is not cached, calls :ref:`_get_line_syntax_highlighting()<class_SyntaxHighlighter_private_method__get_line_syntax_highlighting>` first to calculate the data.

Each entry is a column number containing a nested :ref:`Dictionary<class_Dictionary>`. The column number denotes the start of a region, the region will end if another region is found, or at the end of the line. The nested :ref:`Dictionary<class_Dictionary>` contains the data for that region. Currently only the key ``"color"`` is supported.

\ **Example:** Possible return value. This means columns ``0`` to ``4`` should be red, and columns ``5`` to the end of the line should be green:

::

    {
        0: {
            "color": Color(1, 0, 0)
        },
        5: {
            "color": Color(0, 1, 0)
        }
    }

\ **Example:** Sample implementation. Colors the word ``Godot`` blue.


.. tabs::

 .. code-tab:: gdscript

    func _get_line_syntax_highlighting(line: int) -> Dictionary:
        var pattern_text = "Godot"
        var result = Dictionary()
        var text_edit = get_text_edit()
        var line_text = text_edit.get_line(line)

        var pos = line_text.find(pattern_text)
        while pos != -1:
            result[pos] = { "color": Color(0.0, 0.0, 1.0) }
            var end_pos = pos + pattern_text.length()
            pos = line_text.find(pattern_text, end_pos)
            if pos != end_pos:
                result[end_pos] = { "color": Color(1.0, 1.0, 1.0) }

        return result

 .. code-tab:: csharp

    public override Dictionary _GetLineSyntaxHighlighting(int line)
    {
        string patternText = "Godot";
        Dictionary result = new Dictionary();
        TextEdit textEdit = GetTextEdit();
        string lineText = textEdit.GetLine(line);

        var pos = lineText.Find(patternText);
        while (pos != -1)
        {
            result[pos] = new Dictionary()
            {
                { "color", new Color(0.0f, 0.0f, 1.0f) }
            };
            var endPos = pos + patternText.Length;
            pos = lineText.Find(patternText, endPos);
            if (pos != endPos)
            {
                result[endPos] = new Dictionary()
                {
                    { "color", new Color(1.0f, 1.0f, 1.0f) }
                };
            }
        }

        return result;
    }



.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_method_get_text_edit:

.. rst-class:: classref-method

:ref:`TextEdit<class_TextEdit>` **get_text_edit**\ (\ ) |const| :ref:`🔗<class_SyntaxHighlighter_method_get_text_edit>`

返回关联的 :ref:`TextEdit<class_TextEdit>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_method_update_cache:

.. rst-class:: classref-method

|void| **update_cache**\ (\ ) :ref:`🔗<class_SyntaxHighlighter_method_update_cache>`

清除然后更新 **SyntaxHighlighter** 缓存。为一个回调覆盖 :ref:`_update_cache()<class_SyntaxHighlighter_private_method__update_cache>`\ 。

\ **注意：**\ 当关联的 :ref:`TextEdit<class_TextEdit>` 节点更新它自己的缓存时，该函数会被自动调用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
