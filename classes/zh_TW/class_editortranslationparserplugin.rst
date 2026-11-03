:github_url: hide

.. _class_EditorTranslationParserPlugin:

EditorTranslationParserPlugin
=============================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於新增自訂解析器，以從自訂檔案（.csv、.json等）提取已翻譯的字串的外掛。

.. rst-class:: classref-introduction-group

說明
----

當 Godot 解析檔案並提取需要翻譯的字串時，\ **EditorTranslationParserPlugin** 就會被觸發。你需要在腳本中覆寫 :ref:`_parse_file()<class_EditorTranslationParserPlugin_private_method__parse_file>` 方法，來定義具體的解析和字串提取邏輯。

該方法的回傳值應該是一個包含多個 :ref:`PackedStringArray<class_PackedStringArray>` 的 :ref:`Array<class_Array>`\ ，每一個陣列對應一條提取出的可翻譯字串。每條資料應包含 ``[msgid, msgctxt, msgid_plural, comment, source_line]``\ ，其中除了 ``msgid``\ （原文）是必填項外，其他都是可選項。如果填入空字串，將會被自動忽略。

提取出來的字串最終會被寫入到翻譯範本檔案中。這個範本檔案的路徑，可以在“項目設定”選單的“在地化”分頁下的“範本生成”選項中進行指定。

下面展示了一個自訂解析器的範例，它會從 CSV 檔案中提取字串並寫入到翻譯範本里。


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



要新增一條附帶情境（context）、複數形式（plural）、注釋（comment）或原始碼行號（source line）的可翻譯字串：


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



\ **注意：** 如果你覆寫了標準腳本型別（比如 GDScript、C# 等）的解析邏輯，最好使用 :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>` 方法來載入 ``path`` 參數。這是因為內建腳本（Built-in scripts）在 Godot 里是被當作 :ref:`Resource<class_Resource>`\ （資源）型別來載入的，而不是 :ref:`FileAccess<class_FileAccess>`\ （檔案存取）型別。舉個例子：


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



或者，外掛也可以通過實作 :ref:`_customize_strings()<class_EditorTranslationParserPlugin_private_method__customize_strings>` 方法，來直接修改最終的字串清單。

如果要使用 **EditorTranslationParserPlugin**\ ，你需要先通過 :ref:`EditorPlugin.add_translation_parser_plugin()<class_EditorPlugin_method_add_translation_parser_plugin>` 方法將它注冊到編輯器中。

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

方法說明
--------

.. _class_EditorTranslationParserPlugin_private_method__customize_strings:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **_customize_strings**\ (\ strings\: :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\]\ ) |virtual| |const| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__customize_strings>`

解析完所有檔案後呼叫。你可以修改 ``strings`` 陣列，以向最終的字串清單中新增或移除條目，修改完成後請將其回傳。每個條目都是一個 :ref:`PackedStringArray<class_PackedStringArray>`\ ，具體格式如 **EditorTranslationParserPlugin** 描述中所述。

::

    @tool
    extends EditorTranslationParserPlugin

    func _customize_strings(strings):
        # 新增新字串。
        strings.append(["Test 1", "context", "test 1 plurals", "test 1 comment"])

        # 移除所有以 $ 開頭的字串。
        strings = strings.filter(func(s): return not s[0].begins_with("$"))

        return strings

.. rst-class:: classref-item-separator

----

.. _class_EditorTranslationParserPlugin_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__get_recognized_extensions>`

取得與該解析器關聯的檔副檔名列表，例如 ``["csv"]``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorTranslationParserPlugin_private_method__parse_file:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **_parse_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__parse_file>`

覆蓋該方法，定義自訂解析邏輯以提取可翻譯的字串。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
