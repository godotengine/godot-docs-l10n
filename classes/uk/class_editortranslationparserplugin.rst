:github_url: hide

.. _class_EditorTranslationParserPlugin:

EditorTranslationParserPlugin
=============================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Плагін для додавання користувацьких парсерів для вилучення рядків, які повинні бути перекладені з користувацьких файлів (.csv, .json тощо).

.. rst-class:: classref-introduction-group

Опис
--------

**EditorTranslationParserPlugin** викликається під час аналізу файлу для вилучення рядків, що потребують перекладу. Щоб визначити логіку аналізу та вилучення рядків, переопределіть метод :ref:`_parse_file()<class_EditorTranslationParserPlugin_private_method__parse_file>` у скрипті.

Значенням, що повертається, має бути масив :ref:`Array<class_Array>` з елементами типу :ref:`PackedStringArray<class_PackedStringArray>`, по одному для кожного вилученого рядка, що підлягає перекладу. Кожен запис повинен містити ``[msgid, msgctxt, msgid_plural, comment, source_line]``, де всі елементи, крім ``msgid``, є необов'язковими. Порожні рядки будуть проігноровані.

Витягнуті рядки будуть записані у файл шаблону перекладу, обраний користувачем у розділі «Створення шаблону» на вкладці «Локалізація» в меню «Налаштування проекту».

Нижче наведено приклад власного парсера, який витягує рядки з файлу CSV для запису в шаблон.


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
     #print("Витягнутий рядок: " + s)

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
     //GD.Print($"Витягнутий рядок: {s}");
     }
     return ret;
     }

     public override string[] _GetRecognizedExtensions()
     {
     return ["csv"];
     }
    }



Щоб додати перекладний рядок, пов'язаний із контекстом, множиною, коментарем або рядком джерела:


.. tabs::

 .. code-tab:: gdscript

    # Це додасть повідомлення з msgid "Test 1", msgctxt "context", msgid_plural "test 1 plurals", comment "test 1 comment" та рядком джерела "7".
    ret.append(PackedStringArray(["Test 1", "context", "test 1 plurals", "test 1 comment", "7"]))
    # Це додасть повідомлення з msgid "A test without context" та msgid_plural "plurals".
    ret.append(PackedStringArray(["A test without context", "", "plurals"]))
    # Це додасть повідомлення з msgid "Only with context" та msgctxt "a friendly context".
    ret.append(PackedStringArray(["Тільки з контекстом", "дружній контекст"]))

 .. code-tab:: csharp

    // Це додасть повідомлення з msgid "Тест 1", msgctxt "контекст", msgid_plural "тест 1 множини", коментарем "коментар до тесту 1" та рядком джерела "7".
    ret.Add(["Test 1", "context", "test 1 plurals", "test 1 comment", "7"]);
    // Це додасть повідомлення з msgid "A test without context" та msgid_plural "plurals".
    ret.Add(["A test without context", "", "plurals"]);
    // Це додасть повідомлення з msgid "Only with context" та msgctxt "a friendly context".
    ret.Add(["Only with context", "a friendly context"]);



\ **Примітка:** Якщо ви перевизначаєте логіку розбору для стандартних типів скриптів (GDScript, C# тощо), краще завантажувати аргумент ``path`` за допомогою :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`. Це пов’язано з тим, що вбудовані скрипти завантажуються як тип :ref:`Resource<class_Resource>`, а не як тип :ref:`FileAccess<class_FileAccess>`. Наприклад:


.. tabs::

 .. code-tab:: gdscript

    func _parse_file(path):
     var res = ResourceLoader.load(path, "Script")
     var text = res.source_code
     # Логіка розбору.

    func _get_recognized_extensions():
     return ["gd"]

 .. code-tab:: csharp

    public override Godot.Collections.Array<string[]> _ParseFile(string path)
    {
     var res = ResourceLoader.Load<Script>(path, "Script");
     string text = res.SourceCode;
     // Логіка розбору.
    }

    public override string[] _GetRecognizedExtensions()
    {
     return ["gd"];
    }



Крім того, плагін може безпосередньо змінювати кінцевий список рядків, реалізувавши :ref:`_customize_strings()<class_EditorTranslationParserPlugin_private_method__customize_strings>`.

Щоб використовувати :ref:`EditorTranslationParserPlugin()<class_EditorTranslationParserPlugin_method_EditorTranslationParserPlugin>`, спочатку зареєструйте його за допомогою методу :ref:`EditorPlugin.add_translation_parser_plugin()<class_EditorPlugin_method_add_translation_parser_plugin>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] | :ref:`_customize_strings<class_EditorTranslationParserPlugin_private_method__customize_strings>`\ (\ strings\: :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\]\ ) |virtual| |const| |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                              | :ref:`_get_recognized_extensions<class_EditorTranslationParserPlugin_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const|                                                                           |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] | :ref:`_parse_file<class_EditorTranslationParserPlugin_private_method__parse_file>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|                                                                             |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorTranslationParserPlugin_private_method__customize_strings:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **_customize_strings**\ (\ strings\: :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\]\ ) |virtual| |const| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__customize_strings>`

Викликається після аналізу всіх файлів. Ви можете змінити масив ``strings``, щоб додати або видалити елементи з остаточного списку рядків, а потім повернути його після внесення змін. Кожен елемент є масивом :ref:`PackedStringArray<class_PackedStringArray>`, як описано в описі **EditorTranslationParserPlugin**.

::

    @tool
    extends EditorTranslationParserPlugin

    func _customize_strings(strings):
        # Add new string.
        strings.append(["Test 1", "context", "test 1 plurals", "test 1 comment"])

        # Remove all strings that begin with $.
        strings = strings.filter(func(s): return not s[0].begins_with("$"))

        return strings

.. rst-class:: classref-item-separator

----

.. _class_EditorTranslationParserPlugin_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__get_recognized_extensions>`

Список розширень файлів, пов'язаних з цим парсером, наприклад ``["csv"]``.

.. rst-class:: classref-item-separator

----

.. _class_EditorTranslationParserPlugin_private_method__parse_file:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **_parse_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__parse_file>`

Зазначте цей метод, щоб визначити логіку, що підписує перекладацькі рядки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
