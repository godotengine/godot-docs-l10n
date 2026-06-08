:github_url: hide

.. _class_EditorTranslationParserPlugin:

EditorTranslationParserPlugin
=============================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于添加自定义解析器，以从自定义文件（.csv、.json等）提取已翻译的字符串的插件。

.. rst-class:: classref-introduction-group

描述
----

当 Godot 解析文件并提取需要翻译的字符串时，\ **EditorTranslationParserPlugin** 就会被触发。你需要在脚本中重写 :ref:`_parse_file()<class_EditorTranslationParserPlugin_private_method__parse_file>` 方法，来定义具体的解析和字符串提取逻辑。

该方法的返回值应该是一个包含多个 :ref:`PackedStringArray<class_PackedStringArray>` 的 :ref:`Array<class_Array>`\ ，每一个数组对应一条提取出的可翻译字符串。每条数据应包含 ``[msgid, msgctxt, msgid_plural, comment, source_line]``\ ，其中除了 ``msgid``\ （原文）是必填项外，其他都是可选项。如果填入空字符串，将会被自动忽略。

提取出来的字符串最终会被写入到翻译模板文件中。这个模板文件的路径，可以在“项目设置”菜单的“本地化”标签页下的“模板生成”选项中进行指定。

下面展示了一个自定义解析器的示例，它会从 CSV 文件中提取字符串并写入到翻译模板里。


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
            #print("Extracted string: " + s)

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
                //GD.Print($"Extracted string: {s}");
            }
            return ret;
        }

        public override string[] _GetRecognizedExtensions()
        {
            return ["csv"];
        }
    }



要添加一条附带上下文（context）、复数形式（plural）、注释（comment）或源代码行号（source line）的可翻译字符串：


.. tabs::

 .. code-tab:: gdscript

    # This will add a message with msgid "Test 1", msgctxt "context", msgid_plural "test 1 plurals", comment "test 1 comment", and source line "7".
    ret.append(PackedStringArray(["Test 1", "context", "test 1 plurals", "test 1 comment", "7"]))
    # This will add a message with msgid "A test without context" and msgid_plural "plurals".
    ret.append(PackedStringArray(["A test without context", "", "plurals"]))
    # This will add a message with msgid "Only with context" and msgctxt "a friendly context".
    ret.append(PackedStringArray(["Only with context", "a friendly context"]))

 .. code-tab:: csharp

    // This will add a message with msgid "Test 1", msgctxt "context", msgid_plural "test 1 plurals", comment "test 1 comment", and source line "7".
    ret.Add(["Test 1", "context", "test 1 plurals", "test 1 comment", "7"]);
    // This will add a message with msgid "A test without context" and msgid_plural "plurals".
    ret.Add(["A test without context", "", "plurals"]);
    // This will add a message with msgid "Only with context" and msgctxt "a friendly context".
    ret.Add(["Only with context", "a friendly context"]);



\ **注意：** 如果你重写了标准脚本类型（比如 GDScript、C# 等）的解析逻辑，最好使用 :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` 方法来加载 ``path`` 参数。这是因为内置脚本（Built-in scripts）在 Godot 里是被当作 :ref:`Resource<class_Resource>`\ （资源）类型来加载的，而不是 :ref:`FileAccess<class_FileAccess>`\ （文件访问）类型。举个例子：


.. tabs::

 .. code-tab:: gdscript

    func _parse_file(path):
        var res = ResourceLoader.load(path, "Script")
        var text = res.source_code
        # Parsing logic.

    func _get_recognized_extensions():
        return ["gd"]

 .. code-tab:: csharp

    public override Godot.Collections.Array<string[]> _ParseFile(string path)
    {
        var res = ResourceLoader.Load<Script>(path, "Script");
        string text = res.SourceCode;
        // Parsing logic.
    }

    public override string[] _GetRecognizedExtensions()
    {
        return ["gd"];
    }



或者，插件也可以通过实现 :ref:`_customize_strings()<class_EditorTranslationParserPlugin_private_method__customize_strings>` 方法，来直接修改最终的字符串列表。

如果要使用 **EditorTranslationParserPlugin**\ ，你需要先通过 :ref:`EditorPlugin.add_translation_parser_plugin()<class_EditorPlugin_method_add_translation_parser_plugin>` 方法将它注册到编辑器中。

.. rst-class:: classref-reftable-group

方法
----

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

方法说明
--------

.. _class_EditorTranslationParserPlugin_private_method__customize_strings:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **_customize_strings**\ (\ strings\: :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\]\ ) |virtual| |const| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__customize_strings>`

解析完所有文件后调用。你可以修改 ``strings`` 数组，以向最终的字符串列表中添加或移除条目，修改完成后请将其返回。每个条目都是一个 :ref:`PackedStringArray<class_PackedStringArray>`\ ，具体格式如 **EditorTranslationParserPlugin** 描述中所述。

::

    @tool
    extends EditorTranslationParserPlugin

    func _customize_strings(strings):
        # 添加新字符串。
        strings.append(["Test 1", "context", "test 1 plurals", "test 1 comment"])

        # 移除所有以 $ 开头的字符串。
        strings = strings.filter(func(s): return not s[0].begins_with("$"))

        return strings

.. rst-class:: classref-item-separator

----

.. _class_EditorTranslationParserPlugin_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__get_recognized_extensions>`

获取与该解析器关联的文件扩展名列表，例如 ``["csv"]``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorTranslationParserPlugin_private_method__parse_file:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **_parse_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__parse_file>`

覆盖该方法，定义自定义解析逻辑以提取可翻译的字符串。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
