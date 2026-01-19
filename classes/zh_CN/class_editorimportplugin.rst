:github_url: hide

.. _class_EditorImportPlugin:

EditorImportPlugin
==================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在编辑器中注册一个自定义资源导入器。使用该类来解析任何文件，并将其作为新的资源类型导入。

.. rst-class:: classref-introduction-group

描述
----

**EditorImportPlugin** 提供了一种方法来扩展编辑器的资源导入功能。使用它们从自定义文件中导入资源，或为编辑器的现有导入器提供替代方案。

EditorImportPlugin 通过与特定的文件扩展名和资源类型相关联来工作。请参见 :ref:`_get_recognized_extensions()<class_EditorImportPlugin_private_method__get_recognized_extensions>` 和 :ref:`_get_resource_type()<class_EditorImportPlugin_private_method__get_resource_type>`\ 。它们可以选择性地指定一些影响导入过程的导入预设。EditorImportPlugin 负责创建资源并将它们保存在 ``.godot/imported`` 目录中（见 :ref:`ProjectSettings.application/config/use_hidden_project_data_directory<class_ProjectSettings_property_application/config/use_hidden_project_data_directory>`\ ）。

下面是一个 EditorImportPlugin 的示例，它从扩展名为“.special”或“.spec”的文件中导入 :ref:`Mesh<class_Mesh>`\ ：


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorImportPlugin

    func _get_importer_name():
        return "my.special.plugin"

    func _get_visible_name():
        return "Special Mesh"

    func _get_recognized_extensions():
        return ["special", "spec"]

    func _get_save_extension():
        return "mesh"

    func _get_resource_type():
        return "Mesh"

    func _get_preset_count():
        return 1

    func _get_preset_name(preset_index):
        return "Default"

    func _get_import_options(path, preset_index):
        return [{"name": "my_option", "default_value": false}]

    func _import(source_file, save_path, options, platform_variants, gen_files):
        var file = FileAccess.open(source_file, FileAccess.READ)
        if file == null:
            return FAILED
        var mesh = ArrayMesh.new()
        # 使用从“file”中读取的数据填充 Mesh，留作读者的练习。

        var filename = save_path + "." + _get_save_extension()
        return ResourceSaver.save(mesh, filename)

 .. code-tab:: csharp

    using Godot;

    public partial class MySpecialPlugin : EditorImportPlugin
    {
        public override string _GetImporterName()
        {
            return "my.special.plugin";
        }

        public override string _GetVisibleName()
        {
            return "Special Mesh";
        }

        public override string[] _GetRecognizedExtensions()
        {
            return ["special", "spec"];
        }

        public override string _GetSaveExtension()
        {
            return "mesh";
        }

        public override string _GetResourceType()
        {
            return "Mesh";
        }

        public override int _GetPresetCount()
        {
            return 1;
        }

        public override string _GetPresetName(int presetIndex)
        {
            return "Default";
        }

        public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetImportOptions(string path, int presetIndex)
        {
            return
            [
                new Godot.Collections.Dictionary
                {
                    { "name", "myOption" },
                    { "default_value", false },
                },
            ];
        }

        public override Error _Import(string sourceFile, string savePath, Godot.Collections.Dictionary options, Godot.Collections.Array<string> platformVariants, Godot.Collections.Array<string> genFiles)
        {
            using var file = FileAccess.Open(sourceFile, FileAccess.ModeFlags.Read);
            if (file.GetError() != Error.Ok)
            {
                return Error.Failed;
            }

            var mesh = new ArrayMesh();
            // 使用从“file”中读取的数据填充 Mesh，留作读者的练习
            string filename = $"{savePath}.{_GetSaveExtension()}";
            return ResourceSaver.Save(mesh, filename);
        }
    }



要使用 **EditorImportPlugin**\ ，请先使用 :ref:`EditorPlugin.add_import_plugin()<class_EditorPlugin_method_add_import_plugin>` 方法注册它。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导入插件 <../tutorials/plugins/editor/import_plugins>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_can_import_threaded<class_EditorImportPlugin_private_method__can_import_threaded>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_format_version<class_EditorImportPlugin_private_method__get_format_version>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                           |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_import_options<class_EditorImportPlugin_private_method__get_import_options>`\ (\ path\: :ref:`String<class_String>`, preset_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_import_order<class_EditorImportPlugin_private_method__get_import_order>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_importer_name<class_EditorImportPlugin_private_method__get_importer_name>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_get_option_visibility<class_EditorImportPlugin_private_method__get_option_visibility>`\ (\ path\: :ref:`String<class_String>`, option_name\: :ref:`StringName<class_StringName>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const|                                                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_preset_count<class_EditorImportPlugin_private_method__get_preset_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_preset_name<class_EditorImportPlugin_private_method__get_preset_name>`\ (\ preset_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                                                                                                                                                                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_get_priority<class_EditorImportPlugin_private_method__get_priority>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                       |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_recognized_extensions<class_EditorImportPlugin_private_method__get_recognized_extensions>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_resource_type<class_EditorImportPlugin_private_method__get_resource_type>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_save_extension<class_EditorImportPlugin_private_method__get_save_extension>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_visible_name<class_EditorImportPlugin_private_method__get_visible_name>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_import<class_EditorImportPlugin_private_method__import>`\ (\ source_file\: :ref:`String<class_String>`, save_path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>`, platform_variants\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], gen_files\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) |virtual| |required| |const| |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`append_import_external_resource<class_EditorImportPlugin_method_append_import_external_resource>`\ (\ path\: :ref:`String<class_String>`, custom_options\: :ref:`Dictionary<class_Dictionary>` = {}, custom_importer\: :ref:`String<class_String>` = "", generator_parameters\: :ref:`Variant<class_Variant>` = null\ )                                                             |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorImportPlugin_private_method__can_import_threaded:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_import_threaded**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__can_import_threaded>`

Tells whether this importer can be run in parallel on threads, or, on the contrary, it's only safe for the editor to call it from the main thread, for one file at a time.

If this importer's implementation is thread-safe and can be run in parallel, override this with ``true`` to optimize for concurrency.

If not overridden, returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_format_version:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_format_version**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_format_version>`

获取此导入器的格式版本号。当对导入资源的格式进行不兼容的更改时，应递增此版本号。

若未覆写，格式版本号默认为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_import_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_import_options**\ (\ path\: :ref:`String<class_String>`, preset_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_import_options>`

获取该索引下预设的选项和默认值。返回一个字典数组，包含以下键名：\ ``name``\ 、\ ``default_value``\ 、\ ``property_hint``\ （可选）、\ ``hint_string``\ （可选）、\ ``usage``\ （可选）。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_import_order:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_import_order**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_import_order>`

获取该导入器在导入资源时的运行顺序。具有\ *较低*\ 导入顺序的导入器将被首先调用，较高值的将被其后调用。使用这个来确保导入器在依赖项已经被导入后执行。默认的导入顺序是 ``0``\ ，除非被指定的导入器重写。参阅 :ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` 了解相关预定义的值。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_importer_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_importer_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_importer_name>`

获取导入器的唯一名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, option_name\: :ref:`StringName<class_StringName>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_option_visibility>`

获取名为 ``option_name`` 的导入选项是否应当在“导入”面板中可见。默认实现始终返回 ``true``\ ，即所有选项均可见。主要用于在禁用某个选项时隐藏与其存在依赖关系的选项。


.. tabs::

 .. code-tab:: gdscript

    func _get_option_visibility(path, option_name, options):
        # 只有在压缩模式为“Lossy”时显示 Lossy 质量设置。
        if option_name == "compress/lossy_quality" and options.has("compress/mode"):
            return int(options["compress/mode"]) == COMPRESS_LOSSY # 这是你设置的常量

        return true

 .. code-tab:: csharp

    public override bool _GetOptionVisibility(string path, StringName optionName, Godot.Collections.Dictionary options)
    {
        // 只有在压缩模式为“Lossy”时显示 Lossy 质量设置。
        if (optionName == "compress/lossy_quality" && options.ContainsKey("compress/mode"))
        {
            return (int)options["compress/mode"] == CompressLossy; // 这是你设置的常量
        }

        return true;
    }



.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_preset_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_preset_count**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_preset_count>`

获取插件定义的初始预设的数量。使用 :ref:`_get_import_options()<class_EditorImportPlugin_private_method__get_import_options>` 获取预设的默认选项，使用 :ref:`_get_preset_name()<class_EditorImportPlugin_private_method__get_preset_name>` 获取预设的名称。

默认情况下，不提供任何预设。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_preset_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_preset_name**\ (\ preset_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_preset_name>`

获取该索引处预设的选项名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_priority:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_priority>`

获取该插件对识别的扩展的优先级。优先级越高的插件会被优先选择。默认的优先级是 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_recognized_extensions>`

获取与该加载器相关联的文件扩展名列表（不区分大小写），例如 ``["obj"]``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_type**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_resource_type>`

获取与此加载程序关联的 Godot 资源类型，例如 ``"Mesh"`` 或 ``"Animation"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_save_extension:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_save_extension**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_save_extension>`

获取用于在 ``.godot/imported`` 目录中保存此资源的扩展名（请参阅 :ref:`ProjectSettings.application/config/use_hidden_project_data_directory<class_ProjectSettings_property_application/config/use_hidden_project_data_directory>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_visible_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_visible_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_visible_name>`

获取在导入窗口中显示的名称。你应该选择这个名字作为“导入为”的延续，例如“导入为 Special Mesh”。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__import:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import**\ (\ source_file\: :ref:`String<class_String>`, save_path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>`, platform_variants\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], gen_files\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__import>`

使用导入选项 ``options`` 导入源文件 ``source_file``\ 。如果导入成功应返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，其他值表示失败。

导入的资源应保存至 ``save_path + "." + _get_save_extension()``\ 。如果希望针对某个\ :doc:`特性标签 <../tutorials/export/feature_tags>`\ 优先使用不同的版本，请将该版本的资源保存至 ``save_path + "." + 标签 + "." + _get_save_extension()``\ ，并将该特性标签添加至 ``platform_variants``\ 。

如果在资源文件系统（\ ``res://``\ ）中生成了额外的资源文件，请将其完整路径添加至 ``gen_files``\ ，从而使编辑器得知这些文件依赖于 ``source_file``\ 。

必须覆盖这个方法进行实际的导入工作。覆盖示例见这个类的描述。

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_method_append_import_external_resource:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_import_external_resource**\ (\ path\: :ref:`String<class_String>`, custom_options\: :ref:`Dictionary<class_Dictionary>` = {}, custom_importer\: :ref:`String<class_String>` = "", generator_parameters\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_EditorImportPlugin_method_append_import_external_resource>`

该函数只能在 :ref:`_import()<class_EditorImportPlugin_private_method__import>` 回调期间调用，它允许从中手动导入资源。当导入的文件生成需要导入的外部资源（例如图像）时，这很有用。“.import”文件的自定义参数可以通过 ``custom_options`` 传递。此外，在多个导入器可以处理一个文件的情况下，可以指定 ``custom_importer`` 以强制使用某个特定的导入器。该函数会执行一次资源导入并立即返回成功或错误代码。\ ``generator_parameters`` 定义可选的额外元数据，这些元数据将作为 ``generator_parameters`` 存储在 ``.import`` 文件的 ``remap`` 小节中，例如存储源数据的一个 md5 散列值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
