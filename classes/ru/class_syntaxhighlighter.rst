:github_url: hide

.. _class_SyntaxHighlighter:

SyntaxHighlighter
=================

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`CodeHighlighter<class_CodeHighlighter>`, :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`

Базовый класс для подсветки синтаксиса. Предоставляет данные подсветки синтаксиса в :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый класс для подсветки синтаксиса. Предоставляет данные подсветки синтаксиса для :ref:`TextEdit<class_TextEdit>`. Связанный :ref:`TextEdit<class_TextEdit>` будет вызывать **SyntaxHighlighter** по мере необходимости.

\ **Примечание:** Экземпляр **SyntaxHighlighter** не следует использовать в нескольких узлах :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-reftable-group

Методы
------------

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

Описания метода
------------------------------

.. _class_SyntaxHighlighter_private_method__clear_highlighting_cache:

.. rst-class:: classref-method

|void| **_clear_highlighting_cache**\ (\ ) |virtual| :ref:`🔗<class_SyntaxHighlighter_private_method__clear_highlighting_cache>`

Виртуальный метод, который можно переопределить для очистки любых локальных кэшей.

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_private_method__get_line_syntax_highlighting:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_line_syntax_highlighting**\ (\ line\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_SyntaxHighlighter_private_method__get_line_syntax_highlighting>`

Виртуальный метод, который можно переопределить для возврата данных подсветки синтаксиса.

Подробнее см. :ref:`get_line_syntax_highlighting()<class_SyntaxHighlighter_method_get_line_syntax_highlighting>`.

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_private_method__update_cache:

.. rst-class:: classref-method

|void| **_update_cache**\ (\ ) |virtual| :ref:`🔗<class_SyntaxHighlighter_private_method__update_cache>`

Виртуальный метод, который можно переопределить для обновления любых локальных кэшей.

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_method_clear_highlighting_cache:

.. rst-class:: classref-method

|void| **clear_highlighting_cache**\ (\ ) :ref:`🔗<class_SyntaxHighlighter_method_clear_highlighting_cache>`

Очищает все кэшированные данные подсветки синтаксиса.

Затем вызывает переопределяемый метод :ref:`_clear_highlighting_cache()<class_SyntaxHighlighter_private_method__clear_highlighting_cache>`.

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

Возвращает связанный узел :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_method_update_cache:

.. rst-class:: classref-method

|void| **update_cache**\ (\ ) :ref:`🔗<class_SyntaxHighlighter_method_update_cache>`

Очищает, а затем обновляет кэши **SyntaxHighlighter**. Переопределяет :ref:`_update_cache()<class_SyntaxHighlighter_private_method__update_cache>` для обратного вызова.

\ **Примечание:** Это вызывается автоматически, когда связанный узел :ref:`TextEdit<class_TextEdit>` обновляет свой собственный кэш.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
