:github_url: hide

.. _class_EditorTranslationParserPlugin:

EditorTranslationParserPlugin
=============================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Плагин для добавления пользовательских парсеров для извлечения строк, которые необходимо перевести, из пользовательских файлов (.csv, .json и т. д.).

.. rst-class:: classref-introduction-group

Описание
----------------

**EditorTranslationParserPlugin** вызывается при разборе файла для извлечения строк, требующих перевода. Для определения логики разбора и извлечения строк переопределите метод :ref:`_parse_file()<class_EditorTranslationParserPlugin_private_method__parse_file>` в скрипте.

Возвращаемое значение должно представлять собой массив :ref:`Array<class_Array>` из :ref:`PackedStringArray<class_PackedStringArray>`, по одному для каждой извлеченной переводимой строки. Каждая запись должна содержать ``[msgid, msgctxt, msgid_plural, comment, source_line]``, где все, кроме ``msgid``, являются необязательными. Пустые строки будут игнорироваться.

Извлеченные строки будут записаны в файл шаблона перевода, выбранный пользователем в разделе «Генерация шаблонов» на вкладке «Локализация» в меню «Настройки проекта».

Ниже приведен пример пользовательского парсера, который извлекает строки из CSV-файла для записи в шаблон.


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorTranslationParserPlugin

    func _parse_file(path):
        var ret: Array[PackedStringArray] = []
        var file = FileAccess.open(path, FileAccess.READ)
        var text = file.get_as_text()
        var split_strs = text.split(",", false)
        for s in split_strs:
            ret.append(PackedStringArray([s]))
            #print("Извлеченная строка: " + s)

        return ret

    func _get_recognized_extensions():
        return ["csv"]

 .. code-tab:: csharp

    using Godot;

    [Tool]
    public partial class CustomParser : EditorTranslationParserPlugin
    {
        public override Godot.Collections.Array<string[]> _ParseFile(string path)
        {
            Godot.Collections.Array<string[]> ret;
            using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
            string text = file.GetAsText();
            string[] splitStrs = text.Split(",", allowEmpty: false);
            foreach (string s in splitStrs)
            {
                ret.Add([s]);
                //GD.Print($"Извлеченная строка: {s}");
            }
            return ret;
        }

        public override string[] _GetRecognizedExtensions()
        {
            return ["csv"];
        }
    }



Чтобы добавить переводимую строку, связанную с контекстом, множественным числом, комментарием или исходной строкой:


.. tabs::

 .. code-tab:: gdscript

    # Это добавит сообщение с msgid "Test 1", msgctxt "context", msgid_plural "test 1 plurals", comment "test 1 comment" и строкой источника "7".
    ret.append(PackedStringArray(["Test 1", "context", "test 1 plurals", "test 1 comment", "7"]))
    # Это добавит сообщение с идентификатором msgid "Тест без контекста" и значением msgid_plural "множественное число".
    ret.append(PackedStringArray(["A test without context", "", "plurals"]))
    # Это добавит сообщение с идентификатором msgid "Только с контекстом" и текстом msgctxt "дружественный контекст".
    ret.append(PackedStringArray(["Only with context", "a friendly context"]))

 .. code-tab:: csharp

    // Это добавит сообщение с msgid "Test 1", msgctxt "context", msgid_plural "test 1 plurals", comment "test 1 comment" и строкой источника "7".
    ret.Add(["Test 1", "context", "test 1 plurals", "test 1 comment", "7"]);
    // Это добавит сообщение с идентификатором msgid "Тест без контекста" и значением msgid_plural "множественное число".
    ret.Add(["A test without context", "", "plurals"]);
    // Это добавит сообщение с идентификатором msgid "Только с контекстом" и текстом msgctxt "дружественный контекст".
    ret.Add(["Only with context", "a friendly context"]);



\ **Примечание:** Если вы переопределяете логику парсинга для стандартных типов скриптов (GDScript, C# и т. д.), лучше загружать аргумент ``path`` с помощью :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`. Это связано с тем, что встроенные скрипты загружаются как тип :ref:`Resource<class_Resource>`, а не :ref:`FileAccess<class_FileAccess>`. Например:


.. tabs::

 .. code-tab:: gdscript

    func _parse_file(path):
        var res = ResourceLoader.load(path, "Script")
        var text = res.source_code
        # Логика синтаксического анализа.

    func _get_recognized_extensions():
        return ["gd"]

 .. code-tab:: csharp

    public override Godot.Collections.Array<string[]> _ParseFile(string path)
    {
        var res = ResourceLoader.Load<Script>(path, "Script");
        string text = res.SourceCode;
        // Логика синтаксического анализа.
    }

    public override string[] _GetRecognizedExtensions()
    {
        return ["gd"];
    }



Чтобы использовать **EditorTranslationParserPlugin**, сначала зарегистрируйте его с помощью :ref:`EditorPlugin.add_translation_parser_plugin()<class_EditorPlugin_method_add_translation_parser_plugin>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                              | :ref:`_get_recognized_extensions<class_EditorTranslationParserPlugin_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const| |
   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] | :ref:`_parse_file<class_EditorTranslationParserPlugin_private_method__parse_file>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|   |
   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorTranslationParserPlugin_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__get_recognized_extensions>`

Получает список расширений файлов для связи с этим анализатором, например, ``["csv"]``.

.. rst-class:: classref-item-separator

----

.. _class_EditorTranslationParserPlugin_private_method__parse_file:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **_parse_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__parse_file>`

Переопределите этот метод, чтобы определить пользовательскую логику анализа для извлечения переводимых строк.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
