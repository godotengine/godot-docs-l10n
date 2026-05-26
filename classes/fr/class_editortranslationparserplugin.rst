:github_url: hide

.. _class_EditorTranslationParserPlugin:

EditorTranslationParserPlugin
=============================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Plugin for adding custom parsers to extract strings that are to be translated from custom files (.csv, .json etc.).

.. rst-class:: classref-introduction-group

Description
-----------

**EditorTranslationParserPlugin** is invoked when a file is being parsed to extract strings that require translation. To define the parsing and string extraction logic, override the :ref:`_parse_file()<class_EditorTranslationParserPlugin_private_method__parse_file>` method in script.

The return value should be an :ref:`Array<class_Array>` of :ref:`PackedStringArray<class_PackedStringArray>`\ s, one for each extracted translatable string. Each entry should contain ``[msgid, msgctxt, msgid_plural, comment, source_line]``, where all except ``msgid`` are optional. Empty strings will be ignored.

The extracted strings will be written into a translation template file selected by user under "Template Generation" in "Localization" tab in "Project Settings" menu.

Below shows an example of a custom parser that extracts strings from a CSV file to write into a template.


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



To add a translatable string associated with a context, plural, comment, or source line:


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



\ **Note:** If you override parsing logic for standard script types (GDScript, C#, etc.), it would be better to load the ``path`` argument using :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`. This is because built-in scripts are loaded as :ref:`Resource<class_Resource>` type, not :ref:`FileAccess<class_FileAccess>` type. For example:


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



Alternatively, the plugin can directly modify the final list of strings, by implementing :ref:`_customize_strings()<class_EditorTranslationParserPlugin_private_method__customize_strings>`.

To use **EditorTranslationParserPlugin**, register it using the :ref:`EditorPlugin.add_translation_parser_plugin()<class_EditorPlugin_method_add_translation_parser_plugin>` method first.

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorTranslationParserPlugin_private_method__customize_strings:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **_customize_strings**\ (\ strings\: :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\]\ ) |virtual| |const| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__customize_strings>`

Called after parsing all files. You can modify the ``strings`` array to add or remove entries from the final list of strings, then return it after modifications. Each entry is a :ref:`PackedStringArray<class_PackedStringArray>` like explained in the **EditorTranslationParserPlugin**'s description.

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

Gets the list of file extensions to associate with this parser, e.g. ``["csv"]``.

.. rst-class:: classref-item-separator

----

.. _class_EditorTranslationParserPlugin_private_method__parse_file:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **_parse_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__parse_file>`

Override this method to define a custom parsing logic to extract the translatable strings.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
