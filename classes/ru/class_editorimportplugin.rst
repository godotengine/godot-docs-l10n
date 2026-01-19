:github_url: hide

.. _class_EditorImportPlugin:

EditorImportPlugin
==================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Регистрирует пользовательский импортер ресурсов в редакторе. Используйте класс для разбора любого файла и импорта его как нового типа ресурса.

.. rst-class:: classref-introduction-group

Описание
----------------

**EditorImportPlugin**-ы предоставляют способ расширить функциональность импорта ресурсов редактора. Используйте их для импорта ресурсов из пользовательских файлов или для предоставления альтернатив существующим импортерам редактора.

EditorImportPlugins работают, связываясь с определенными расширениями файлов и типом ресурса. См. :ref:`_get_recognized_extensions()<class_EditorImportPlugin_private_method__get_recognized_extensions>` и :ref:`_get_resource_type()<class_EditorImportPlugin_private_method__get_resource_type>`. Они могут опционально указывать некоторые предустановки импорта, которые влияют на процесс импорта. EditorImportPlugins отвечают за создание ресурсов и сохранение их в каталоге ``.godot/imported`` (см. :ref:`ProjectSettings.application/config/use_hidden_project_data_directory<class_ProjectSettings_property_application/config/use_hidden_project_data_directory>`).

Ниже приведен пример EditorImportPlugin, который импортирует :ref:`Mesh<class_Mesh>` из файла с расширением ".special" или ".spec":


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
        # Заполните сетку данными, считанными из «файла», оставленного в качестве упражнения для читателя.

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
            // Заполните сетку данными, считанными из «файла», оставленного в качестве упражнения для читателя.
            string filename = $"{savePath}.{_GetSaveExtension()}";
            return ResourceSaver.Save(mesh, filename);
        }
    }



Чтобы использовать **EditorImportPlugin**, сначала зарегистрируйте его с помощью метода :ref:`EditorPlugin.add_import_plugin()<class_EditorPlugin_method_add_import_plugin>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Импорт плагинов <../tutorials/plugins/editor/import_plugins>`

.. rst-class:: classref-reftable-group

Методы
------------

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

Описания метода
------------------------------

.. _class_EditorImportPlugin_private_method__can_import_threaded:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_import_threaded**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__can_import_threaded>`

Указывает, может ли этот импортер выполняться параллельно в потоках, или, наоборот, редактору безопасно вызывать его только из основного потока, для одного файла за раз.

Если реализация этого импортера потокобезопасна и может выполняться параллельно, переопределите это значение на ``true``, чтобы оптимизировать параллельное выполнение.

Если не переопределено, возвращает ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_format_version:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_format_version**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_format_version>`

Получает версию формата этого импортера. Увеличивайте эту версию при внесении несовместимых изменений в формат импортируемых ресурсов.

Если не переопределено, версия формата равна ``0``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_import_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_import_options**\ (\ path\: :ref:`String<class_String>`, preset_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_import_options>`

Получает параметры и значения по умолчанию для предустановки по этому индексу. Возвращает массив словарей со следующими ключами: ``name``, ``default_value``, ``property_hint`` (необязательно), ``hint_string`` (необязательно), ``usage`` (необязательно).

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_import_order:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_import_order**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_import_order>`

Получает порядок этого импортера, который будет запущен при импорте ресурсов. Импортеры с *более низким* порядком импорта будут вызваны первыми, а более высокие значения будут вызваны позже. Используйте это, чтобы гарантировать запуск импортера после того, как зависимости уже импортированы. Порядок импорта по умолчанию — ``0``, если он не переопределен определенным импортером. См. :ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` для некоторых предопределенных значений.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_importer_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_importer_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_importer_name>`

Получает уникальное имя импортера.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, option_name\: :ref:`StringName<class_StringName>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_option_visibility>`

Определяет, должен ли параметр импорта, заданный параметром ``option_name``, быть видимым в панели импорта. Реализация по умолчанию всегда возвращает ``true``, делая все параметры видимыми. Это в основном полезно для скрытия параметров, зависящих от других, если один из них отключен.


.. tabs::

 .. code-tab:: gdscript

    func _get_option_visibility(path, option_name, options):
        # Показывать настройку качества с потерями только в том случае, если режим сжатия установлен на "Lossy".
        if option_name == "compress/lossy_quality" and options.has("compress/mode"):
            return int(options["compress/mode"]) == COMPRESS_LOSSY # Это константа, которую вы устанавливаете

        return true

 .. code-tab:: csharp

    public override bool _GetOptionVisibility(string path, StringName optionName, Godot.Collections.Dictionary options)
    {
        // Показывать настройку качества с потерями только в том случае, если режим сжатия установлен на "Lossy".
        if (optionName == "compress/lossy_quality" && options.ContainsKey("compress/mode"))
        {
            return (int)options["compress/mode"] == CompressLossy; // Это константа, которую вы устанавливаете
        }

        return true;
    }



.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_preset_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_preset_count**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_preset_count>`

Получает количество начальных предустановок, определенных плагином. Используйте :ref:`_get_import_options()<class_EditorImportPlugin_private_method__get_import_options>`, чтобы получить параметры по умолчанию для предустановки, и :ref:`_get_preset_name()<class_EditorImportPlugin_private_method__get_preset_name>`, чтобы получить имя предустановки.

По умолчанию предустановок нет.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_preset_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_preset_name**\ (\ preset_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_preset_name>`

Получает имя предустановленных параметров по данному индексу.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_priority:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_priority>`

Получает приоритет этого плагина для распознанного расширения. Плагины с более высоким приоритетом будут иметь приоритет. Приоритет по умолчанию — ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_recognized_extensions>`

Получает список расширений файлов, которые необходимо связать с этим загрузчиком (без учета регистра). Например, ``["obj"]``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_type**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_resource_type>`

Получает тип ресурса Godot, связанный с этим загрузчиком. Например, ``"Mesh"`` или ``"Animation"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_save_extension:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_save_extension**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_save_extension>`

Получает расширение, используемое для сохранения этого ресурса в каталоге ``.godot/imported`` (см. :ref:`ProjectSettings.application/config/use_hidden_project_data_directory<class_ProjectSettings_property_application/config/use_hidden_project_data_directory>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_visible_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_visible_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_visible_name>`

Получает имя для отображения в окне импорта. Вы должны выбрать это имя как продолжение "Импортировать как", например, "Импортировать как специальную сетку".

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__import:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import**\ (\ source_file\: :ref:`String<class_String>`, save_path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>`, platform_variants\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], gen_files\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__import>`

Импортирует ``source_file`` с указанным импортом ``options``. Должен возвращать :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, если импорт выполнен успешно, другие значения указывают на сбой.

Импортированный ресурс должен быть сохранен в ``save_path + "." + _get_save_extension()``. Если для :doc:`тега feature <../tutorials/export/feature_tags>` предпочтителен другой вариант, сохраните вариант в ``save_path + "." + tag + "." + _get_save_extension()`` и добавьте тег feature в ``platform_variants``.

Если в файловой системе ресурсов (``res://``) генерируются дополнительные файлы ресурсов, добавьте их полный путь в ``gen_files``, чтобы редактор знал, что они зависят от ``source_file``.

Этот метод необходимо переопределить для выполнения фактической работы по импорту. Пример переопределения этого метода см. в описании этого класса.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_method_append_import_external_resource:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_import_external_resource**\ (\ path\: :ref:`String<class_String>`, custom_options\: :ref:`Dictionary<class_Dictionary>` = {}, custom_importer\: :ref:`String<class_String>` = "", generator_parameters\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_EditorImportPlugin_method_append_import_external_resource>`

Эту функцию можно вызвать только во время обратного вызова :ref:`_import()<class_EditorImportPlugin_private_method__import>`, и она позволяет вручную импортировать из нее ресурсы. Это полезно, когда импортируемый файл генерирует внешние ресурсы, требующие импорта (например, изображения). Пользовательские параметры для файла ".import" можно передать через ``custom_options``. Кроме того, в случаях, когда несколько импортеров могут обрабатывать файл, можно указать ``custom_importer``, чтобы принудительно выбрать определенный. Эта функция выполняет импорт ресурсов и немедленно возвращает код успеха или ошибки. ``generator_parameters`` определяет необязательные дополнительные метаданные, которые будут сохранены как ``generator_parameters`` в разделе ``remap`` файла ``.import``, например, для хранения хэша md5 исходных данных.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
