:github_url: hide

.. _class_SyntaxHighlighter:

SyntaxHighlighter
=================

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`CodeHighlighter<class_CodeHighlighter>`, :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`

Базовий клас для висвітлення синтаксису. Забезпечує синтаксис виділення даних до :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий клас для висвітлення синтаксису. Забезпечує синтаксис виділення даних до :ref:`TextEdit<class_TextEdit>`. Асоційований :ref:`TextEdit<class_TextEdit>` зателефонує в **SyntaxHighlighter** на основі, що закривається.

\ **Примітка:** А **SyntaxHighlighter** екземпляр не повинен використовуватися через кілька :ref:`TextEdit<class_TextEdit>` вузлів.

.. rst-class:: classref-reftable-group

Методи
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

Описи методів
--------------------------

.. _class_SyntaxHighlighter_private_method__clear_highlighting_cache:

.. rst-class:: classref-method

|void| **_clear_highlighting_cache**\ (\ ) |virtual| :ref:`🔗<class_SyntaxHighlighter_private_method__clear_highlighting_cache>`

Віртуальний метод, який може передаватися для очищення будь-яких локальних кешів.

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_private_method__get_line_syntax_highlighting:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_line_syntax_highlighting**\ (\ line\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_SyntaxHighlighter_private_method__get_line_syntax_highlighting>`

Віртуальний метод, який може передаватися, щоб повернути дані синтаксису.

Детальніше :ref:`get_line_syntax_highlighting()<class_SyntaxHighlighter_method_get_line_syntax_highlighting>`.

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_private_method__update_cache:

.. rst-class:: classref-method

|void| **_update_cache**\ (\ ) |virtual| :ref:`🔗<class_SyntaxHighlighter_private_method__update_cache>`

Віртуальний метод, який може передаватися для оновлення будь-яких локальних кешів.

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_method_clear_highlighting_cache:

.. rst-class:: classref-method

|void| **clear_highlighting_cache**\ (\ ) :ref:`🔗<class_SyntaxHighlighter_method_clear_highlighting_cache>`

Очищає всі дані, що висвітлюють синтаксису.

Потім виклики перевантажувального методу :ref:`_clear_highlighting_cache()<class_SyntaxHighlighter_private_method__clear_highlighting_cache>`.

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

Повертає асоційований вузол :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_SyntaxHighlighter_method_update_cache:

.. rst-class:: classref-method

|void| **update_cache**\ (\ ) :ref:`🔗<class_SyntaxHighlighter_method_update_cache>`

Очищає потім оновлює **SyntaxHighlighter** кеші. Override :ref:`_update_cache()<class_SyntaxHighlighter_private_method__update_cache>` для зворотного дзвінка.

\ **Примітка:** Це називається автоматично, коли асоціюється :ref:`TextEdit<class_TextEdit>` вершина, оновлює власний кеш.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
