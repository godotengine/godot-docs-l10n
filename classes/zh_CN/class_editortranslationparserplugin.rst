:github_url: hide

.. _class_EditorTranslationParserPlugin:

EditorTranslationParserPlugin
=============================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于添加自定义解析器，以从自定义文件（.csv、.json等）提取已翻译的字符串的插件。

.. rst-class:: classref-introduction-group

描述
----

解析文件提取需要翻译的字符串时会调用 **EditorTranslationParserPlugin**\ 。要定义文件解析和字符串提取逻辑，请在脚本中覆盖 :ref:`_parse_file()<class_EditorTranslationParserPlugin_private_method__parse_file>` 方法。

返回值应当为元素为 :ref:`PackedStringArray<class_PackedStringArray>` 的 :ref:`Array<class_Array>`\ ，每个元素对应一个提取到的可翻译字符串。每个条目都应该包含 ``[msgid, msgctxt, msgid_plural, comment]``\ ，除 ``msgid`` 外都是可选的。空字符串会被忽略。

提取到的字符串会被写入到一个 POT 文件中，该文件由用户在“项目设置”菜单“本地化”选项卡的“POT 生成”中选择。

下面是一个自定义解析器的示例，会从 CSV 文件中提取字符串，写入到 POT 文件中。


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
            #print("提取到字符串：" + s)

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
                //GD.Print($"提取到字符串：{s}");
            }
            return ret;
        }

        public override string[] _GetRecognizedExtensions()
        {
            return ["csv"];
        }
    }



添加带有上下文、复数形式、注释的可翻译字符串：


.. tabs::

 .. code-tab:: gdscript

    # 添加 msgid 为“Test 1”、msgctxt 为“context”、msgid_plural 为“test 1 plurals”、注释为“test 1 comment”的消息。
    ret.append(PackedStringArray(["Test 1", "context", "test 1 plurals", "test 1 comment"]))
    # 添加 msgid 为“A test without context”、msgid_plural 为“plurals”的消息。
    ret.append(PackedStringArray(["A test without context", "", "plurals"]))
    # 添加 msgid 为“Only with context”、msgctxt 为“a friendly context”的消息。
    ret.append(PackedStringArray(["Only with context", "a friendly context"]))

 .. code-tab:: csharp

    // 添加 msgid 为“Test 1”、msgctxt 为“context”、msgid_plural 为“test 1 plurals”、注释为“test 1 comment”的消息。
    ret.Add(["Test 1", "context", "test 1 plurals", "test 1 comment"]);
    // 添加 msgid 为“A test without context”、msgid_plural 为“plurals”的消息。
    ret.Add(["A test without context", "", "plurals"]);
    // 添加 msgid 为“Only with context”、msgctxt 为“a friendly context”的消息。
    ret.Add(["Only with context", "a friendly context"]);



\ **注意：**\ 如果你覆盖了标准脚本类型（GDScript、C# 等）的解析逻辑，最好使用 :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` 来加载 ``path`` 参数。因为内置脚本会以 :ref:`Resource<class_Resource>` 类型的形式加载，而非 :ref:`FileAccess<class_FileAccess>` 类型。例如：


.. tabs::

 .. code-tab:: gdscript

    func _parse_file(path):
        var res = ResourceLoader.load(path, "Script")
        var text = res.source_code
        # 解析逻辑。

    func _get_recognized_extensions():
        return ["gd"]

 .. code-tab:: csharp

    public override Godot.Collections.Array<string[]> _ParseFile(string path)
    {
        var res = ResourceLoader.Load<Script>(path, "Script");
        string text = res.SourceCode;
        // 解析逻辑。
    }

    public override string[] _GetRecognizedExtensions()
    {
        return ["gd"];
    }



要使用 **EditorTranslationParserPlugin**\ ，请先使用 :ref:`EditorPlugin.add_translation_parser_plugin()<class_EditorPlugin_method_add_translation_parser_plugin>` 方法注册。

.. rst-class:: classref-reftable-group

方法
----

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

方法说明
--------

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
