:github_url: hide

.. _class_EditorTranslationParserPlugin:

EditorTranslationParserPlugin
=============================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Плагін для додавання користувацьких парсерів для вилучення рядків, які повинні бути перекладені з користувацьких файлів (.csv, .json тощо).

.. rst-class:: classref-introduction-group

Опис
--------

**EditorTranslationParserPlugin** викликається, коли файл аналізується для вилучення рядків, які потребують перекладу. Щоб визначити логіку парсингу та вилучення рядків, перевизначте метод :ref:`_parse_file()<class_EditorTranslationParserPlugin_private_method__parse_file>` у скрипті.

Поверненим значенням має бути :ref:`Array<class_Array>` :ref:`PackedStringArray<class_PackedStringArray>`\ s, по одному для кожного вилученого перекладуваного рядка. Кожен запис має містити ``[msgid, msgctxt, msgid_plural, comment]``, де всі, крім ``msgid``, є необов’язковими. Порожні рядки ігноруватимуться. 

Витягнуті рядки будуть записані у POT-файл, вибраний користувачем у розділі "Генерація POT" на вкладці "Локалізація" в меню "Налаштування проекту".

Нижче наведено приклад спеціального аналізатора, який витягує рядки з файлу CSV для запису в POT. 


.. tabs:: 

 .. code-tab:: gdscript
 
    @tool 
    extends EditorTranslationParserPlugin

    func _parse_file(path): 
        було правильно: Array[PackedStringArray] = [] 
        var file = FileAccess.open(шлях, FileAccess.READ) 
        var text = file.get_as_text() 
        var split_strs = text.split(",", false) 
        для s у split_strs: 
            ret.append(PackedStringArray([s])) 
            #print("Видобутий рядок: " + s) 

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
            foreach (String s у splitStrs) 
            { 
                ret.Add([s]); 
                //GD.Print($"Видобутий рядок: {s}"); 
            } 
            return ret; 
        } 

        public override string[] _GetRecognizedExtensions() 
        { 
            return ["csv"]; 
        } 
    } 

 

Щоб додати перекладний рядок, пов’язаний із контекстом, множиною чи коментарем: 


.. tabs:: 

 .. code-tab:: gdscript
 
    # Це додасть повідомлення з msgid «Тест 1», msgctxt «контекст», msgid_plural «тест 1 множини» та коментар «тест 1 коментар». 
    ret.append(PackedStringArray(["Тест 1", "контекст", "тест 1 множини", "тест 1 коментар"])) 
    # Це додасть повідомлення з msgid "Тест без контексту" та msgid_plural "множина". 
    ret.append(PackedStringArray(["Тест без контексту", "", "множина"])) 
    # Це додасть повідомлення з msgid "Тільки з контекстом" і msgctxt "дружній контекст". 
    ret.append(PackedStringArray(["Тільки з контекстом", "дружній контекст"]))  

 .. code-tab:: csharp
 
    // Це додасть повідомлення з msgid "Test 1", msgctxt "context", msgid_plural "test 1 plurals" і коментарем "test 1 comment". 
    ret.Add(["Тест 1", "контекст", "тест 1 множини", "тест 1 коментар"]); 
    // Це додасть повідомлення з msgid "Тест без контексту" та msgid_plural "plurals". 
    ret.Add(["Тест без контексту", "", "множина"]); 
    // Це додасть повідомлення з msgid "Тільки з контекстом" і msgctxt "дружній контекст". 
    ret.Add(["Тільки з контекстом", "дружній контекст"]);  

 

\ **Примітка:** Якщо ви замінюєте логіку аналізу для стандартних типів сценаріїв (GDScript, C# тощо), було б краще завантажити аргумент ``path`` за допомогою :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`. Це тому, що вбудовані сценарії завантажуються як тип :ref:`Resource<class_Resource>`, а не як тип :ref:`FileAccess<class_FileAccess>`. Наприклад: 


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
        var res = ResourceLoader.Load<Script>(String, "Script"); 
        string text = res.SourceCode; 
        // Розбір логіки. 
    }

    public override string[] _GetRecognizedExtensions() 
    {
        return ["gd"]; 
    } 

 

Щоб використовувати **EditorTranslationParserPlugin**, спочатку зареєструйте його за допомогою методу :ref:`EditorPlugin.add_translation_parser_plugin()<class_EditorPlugin_method_add_translation_parser_plugin>`.

.. rst-class:: classref-reftable-group

Методи
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

Описи методів
--------------------------

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
