:github_url: hide

.. _class_EditorImportPlugin:

EditorImportPlugin
==================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Реєструє митний імпортер ресурсів в редакторі. Використовуйте клас для оформлення будь-якого файлу і імпортувати його як новий тип ресурсу.

.. rst-class:: classref-introduction-group

Опис
--------

Плагіни **EditorImportPlugin** дають змогу розширити функціональність імпорту ресурсів редактора. Використовуйте їх, щоб імпортувати ресурси з власних файлів або надавати альтернативи існуючим імпортерам редактора. 

EditorImportPlugins працюють, асоціюючи певні розширення файлів і тип ресурсу. Перегляньте :ref:`_get_recognized_extensions()<class_EditorImportPlugin_private_method__get_recognized_extensions>` і :ref:`_get_resource_type()<class_EditorImportPlugin_private_method__get_resource_type>`. Вони можуть додатково вказати деякі стилі імпорту, які впливають на процес імпорту. EditorImportPlugins відповідають за створення ресурсів і їх збереження в каталозі ``.godot/imported`` (див. :ref:`ProjectSettings.application/config/use_hidden_project_data_directory<class_ProjectSettings_property_application/config/use_hidden_project_data_directory>`). 

Нижче наведено приклад EditorImportPlugin, який імпортує :ref:`Mesh<class_Mesh>` із файлу з розширенням ".special" або ".spec": 


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
        return "mesh" 

    func _get_preset_count(): 
        return 1 

    func _get_preset_name(preset_index): 
        return "Default" 

    func _get_import_options(path, preset_index): 
        return [{"name": "my_option", "default_value": false}] 

    func _import(source_file, save_path, options, platform_variants, gen_files): 
        var file = FileAccess.open(source_file, FileAccess.READ) 
        if file == null: 
            return ERROR
        var mesh = ArrayMesh.new() 
        # Заповніть Mesh даними, зчитаними у "файлі", залишеними як вправа для читача. 

        var filename = save_path + "." + _get_save_extension() 
        return ResourceSaver.save(mesh, name file)  

 .. code-tab:: csharp
 
    Using Godot; 

    public partial class MySpecialPlugin : EditorImportPlugin 
    {
        public override string _GetImporterName() 
        { 
            return "my.special.plugin"; 
        } 

        public override string _GetVisibleName() 
        { 
            return «Special mesh»; 
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
            return «mesh»; 
        } 

        public override int _GetPresetCount() 
        { 
            return 1; 
        } 

        public override string _GetPresetName(int presetIndex) 
        { 
            return "Default"; 
        } 

        public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetImportOptions(String path, int presetIndex) 
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
            Using var file = FileAccess.Open(sourceFile, FileAccess.ModeFlags.Read); 
            if (file.GetError() != Error.Ok) 
            { 
                return Error.Failed; 
            } 

            var mesh = new ArrayMesh(); 
            // Заповнити Mesh даними, зчитаними у "файлі", залишеними як вправа для читача. 
            string filename = $"{savePath}.{_GetSaveExtension()}"; 
            return ResourceSaver.Save(mesh, filename); 
        } 
    } 

 

Щоб використовувати **EditorImportPlugin**, спочатку зареєструйте його за допомогою методу :ref:`EditorPlugin.add_import_plugin()<class_EditorPlugin_method_add_import_plugin>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Імпорт плагінів <../tutorials/plugins/editor/import_plugins>`

.. rst-class:: classref-reftable-group

Методи
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

Описи методів
--------------------------

.. _class_EditorImportPlugin_private_method__can_import_threaded:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_import_threaded**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__can_import_threaded>`

Вказує, чи можна цей імпортер запускати паралельно в потоках, чи, навпаки, редактор може безпечно викликати його лише з головного потоку, для одного файлу за раз.

Якщо реалізація цього імпортера потокобезпечна та може запускатися паралельно, перевизначте це на ``true`` для оптимізації паралельності.

Якщо не перевизначено, повертає ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_format_version:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_format_version**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_format_version>`

Отримує версію формату цього засобу імпорту. Збільшує цю версію під час внесення несумісних змін до формату імпортованих ресурсів.

Якщо не перевизначено, версія формату — ``0``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_import_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_import_options**\ (\ path\: :ref:`String<class_String>`, preset_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_import_options>`

Отримує параметри та значення за замовчуванням для заміщення в цьому індексі. Повертає Арра словників з наступними ключами: ``name``, ``default_value``, ``property_hint`` (опціонально), ``hint_string`` (опціонально), ``usage`` (опційно).

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_import_order:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_import_order**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_import_order>`

При імпорті ресурсів запрошують замовлення цього імпортера. Імпортери з * lower* імпортні замовлення будуть називатися першими, а більш високі значення будуть називатися пізніше. Використовуйте це, щоб забезпечити імпортер, який вже імпортується. Замовлення імпорту за замовчуванням ``0``, якщо перейменувати конкретним імпортером. Див. :ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` для деяких визначених значень.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_importer_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_importer_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_importer_name>`

Одержує унікальну назву імпортера.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, option_name\: :ref:`StringName<class_StringName>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_option_visibility>`

Отримує значення, чи має бути видимим параметр імпорту, вказаний параметром ``option_name``, у панелі імпорту. Реалізація за замовчуванням завжди повертає ``true``, роблячи всі параметри видимими. Це головним чином корисно для приховування параметрів, які залежать від інших, якщо один з них вимкнено.


.. tabs::

 .. code-tab:: gdscript

    func _get_option_visibility(path, option_name, options):
    # Показувати налаштування якості з втратами, лише якщо режим стиснення встановлено на "З втратами".
    if option_name == "compress/lossy_quality" and options.has("compress/mode"):
    return int(options["compress/mode"]) == COMPRESS_LOSSY # Це константа, яку ви встановлюєте

    return true

 .. code-tab:: csharp

    public override bool _GetOptionVisibility(string path, StringName optionName, Godot.Collections.Dictionary options)
    {
    // Показувати налаштування якості з втратами лише тоді, коли режим стиснення встановлено на "З втратами".
    if (optionName == "compress/lossy_quality" && options.ContainsKey("compress/mode"))
    {
    return (int)options["compress/mode"] == CompressLossy; // Це константа, яку ви встановлюєте
    }

    return true;
    }



.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_preset_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_preset_count**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_preset_count>`

Отримує кількість початкових пресетів, визначених плагіном. Використовуйте :ref:`_get_import_options()<class_EditorImportPlugin_private_method__get_import_options>`, щоб отримати параметри за замовчуванням для пресету, та :ref:`_get_preset_name()<class_EditorImportPlugin_private_method__get_preset_name>`, щоб отримати назву пресету.

За замовчуванням пресетів немає.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_preset_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_preset_name**\ (\ preset_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_preset_name>`

Одержує ім'я параметрів, встановлених в цьому індексі.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_priority:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_priority>`

Прийміть пріоритет цього плагіна для визнаного розширення. Найвищі пріоритетні плагіни будуть кращими. ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_recognized_extensions>`

Отримати список розширень файлів, пов'язаних з цим навантажувачем (результатом). ``["obj"]``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_type**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_resource_type>`

Gets the Godot ресурсний тип, пов'язаний з цим навантажувачем. e.g. ``"Маш""`` або ``"Animation"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_save_extension:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_save_extension**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_save_extension>`

Збережіть цей ресурс у каталозі ``.godot/imported`` (див. ``члени ПроектуНалаштування.application/config/use_hidden_project_data_directory``).

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_visible_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_visible_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_visible_name>`

Отримати назву для відображення в імпортному вікні. Ви повинні вибрати таку назву як продовження «Імпорт як», наприклад «Імпорт як Спеціальна сітка».

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__import:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import**\ (\ source_file\: :ref:`String<class_String>`, save_path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>`, platform_variants\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], gen_files\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__import>`

Імпортує ``source_file`` із зазначеним параметром import ``options``. Якщо імпорт успішний, має повертати :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, інші значення вказують на невдачу.

Очікується, що імпортований ресурс буде збережено в ``save_path + "." + _get_save_extension()``. Якщо для тегу feature [url=$DOCS_URL/tutorials/export/feature_tags.html]бажано інший варіант, збережіть варіант в [code]save_path + "." + tag + "." + _get_save_extension()[/code] та додайте тег feature до [param platform_variants].

Якщо у файловій системі ресурсів ([code]res://[/code]) генеруються додаткові файли ресурсів, додайте їхній повний шлях до [param gen_files], щоб редактор знав, що вони залежать від [param source_file].

Цей метод має бути перевизначений для виконання фактичної роботи з імпорту. Дивіться опис цього класу для прикладу перевизначення цього методу.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_method_append_import_external_resource:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_import_external_resource**\ (\ path\: :ref:`String<class_String>`, custom_options\: :ref:`Dictionary<class_Dictionary>` = {}, custom_importer\: :ref:`String<class_String>` = "", generator_parameters\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_EditorImportPlugin_method_append_import_external_resource>`

Цю функцію можна викликати лише під час зворотного виклику :ref:`_import()<class_EditorImportPlugin_private_method__import>`, і вона дозволяє вручну імпортувати ресурси з нього. Це корисно, коли імпортований файл генерує зовнішні ресурси, які потребують імпорту (наприклад, зображення). Користувацькі параметри для ".import" файлу можна передати через ``custom_options``. Крім того, у випадках, коли декілька імпортерів можуть працювати з файлом, можна вказати параметр ``custom_importer``, щоб примусово вибрати певний імпортер. Ця функція виконує імпорт ресурсу і негайно повертає код успіху або помилки. ``generator_parameters`` визначає необов'язкові додаткові метадані, які буде збережено як ``generator_parameters`` у розділі ``remap`` файлу ``.import``, наприклад, для зберігання хешу md5 вихідних даних.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
