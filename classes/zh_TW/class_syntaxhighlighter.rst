:github_url: hide

.. _class_SyntaxHighlighter:

SyntaxHighlighter
=================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`CodeHighlighter<class_CodeHighlighter>`, :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`

語法高亮器的基底類別。可以向 :ref:`TextEdit<class_TextEdit>` 提供語法高亮資料。

.. rst-class:: classref-introduction-group

說明
----

語法高亮器的基底類別。向 :ref:`TextEdit<class_TextEdit>` 提供語法高亮資料。關聯的 :ref:`TextEdit<class_TextEdit>` 節點會根據需要呼叫 **SyntaxHighlighter**\ 。

\ **注意：**\ 不應在多個 :ref:`TextEdit<class_TextEdit>` 節點間共用 **SyntaxHighlighter** 實例。

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

方法說明
--------

.. _class_SyntaxHighlighter_private_method__clear_highlighting_cache:

.. rst-class:: classref-method

|void| **_clear_highlighting_cache**\ (\ ) |virtual| :ref:`🔗<class_SyntaxHighlighter_private_method__clear_highlighting_cache>`

虛方法，覆蓋後可以清空本地快取。

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_private_method__get_line_syntax_highlighting:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_line_syntax_highlighting**\ (\ line\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_SyntaxHighlighter_private_method__get_line_syntax_highlighting>`

虛方法，覆蓋後可以返回語法高亮資料。

詳情見 :ref:`get_line_syntax_highlighting()<class_SyntaxHighlighter_method_get_line_syntax_highlighting>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_private_method__update_cache:

.. rst-class:: classref-method

|void| **_update_cache**\ (\ ) |virtual| :ref:`🔗<class_SyntaxHighlighter_private_method__update_cache>`

虛方法，覆蓋後可以更新本地快取。

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_method_clear_highlighting_cache:

.. rst-class:: classref-method

|void| **clear_highlighting_cache**\ (\ ) :ref:`🔗<class_SyntaxHighlighter_method_clear_highlighting_cache>`

清空所有快取的語法高亮資料。

然後呼叫可覆蓋的 :ref:`_clear_highlighting_cache()<class_SyntaxHighlighter_private_method__clear_highlighting_cache>` 方法。

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

返回關聯的 :ref:`TextEdit<class_TextEdit>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_method_update_cache:

.. rst-class:: classref-method

|void| **update_cache**\ (\ ) :ref:`🔗<class_SyntaxHighlighter_method_update_cache>`

清除然後更新 **SyntaxHighlighter** 快取。為一個回呼函式覆蓋 :ref:`_update_cache()<class_SyntaxHighlighter_private_method__update_cache>`\ 。

\ **注意：**\ 當關聯的 :ref:`TextEdit<class_TextEdit>` 節點更新它自己的快取時，該函式會被自動呼叫。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
