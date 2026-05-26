:github_url: hide

.. _class_EditorImportPlugin:

EditorImportPlugin
==================

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Registra un importador de recursos personalizados en el editor. Usa la clase para analizar cualquier archivo e importarlo como un nuevo tipo de recurso.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los **EditorImportPlugin** proporcionan una forma de ampliar la funcionalidad de importación de recursos del editor. Úsalos para importar recursos desde archivos personalizados o para ofrecer alternativas a los importadores existentes del editor.

Los EditorImportPlugin funcionan asociándo una extensión de archivo específica y un tipo de recurso. Véase :ref:`_get_recognized_extensions()<class_EditorImportPlugin_private_method__get_recognized_extensions>` y :ref:`_get_resource_type()<class_EditorImportPlugin_private_method__get_resource_type>`. Opcionalmente, se puede especificar algunos presets de importación que afectan el proceso de importación. Los EditorImportPlugin son responsables de crear los recursos y guardarlos en el directorio ``.godot/imported`` (ver :ref:`ProjectSettings.application/config/use_hidden_project_data_directory<class_ProjectSettings_property_application/config/use_hidden_project_data_directory>`).

A continuación se muestra un ejemplo de un EditorImportPlugin que importa un :ref:`Mesh<class_Mesh>` desde un archivo con la extensión ".special" o ".spec":


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
        # Rellenar el Mesh con los datos leídos en "file", queda como ejercicio para el lector.

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
            // Rellenar el Mesh con los datos leídos en "file", queda como ejercicio para el lector.
            string filename = $"{savePath}.{_GetSaveExtension()}";
            return ResourceSaver.Save(mesh, filename);
        }
    }



Para usar **EditorImportPlugin**, primero regístrelo utilizando el método :ref:`EditorPlugin.add_import_plugin()<class_EditorPlugin_method_add_import_plugin>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Importar plugins <../tutorials/plugins/editor/import_plugins>`

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

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

Gets the format version of this importer. Increment this version when making incompatible changes to the format of the imported resources.

If not overridden, the format version is ``0``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_import_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_import_options**\ (\ path\: :ref:`String<class_String>`, preset_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_import_options>`

Obtiene las opciones y los valores por defecto para el preajuste en este índice. Devuelve un array de diccionarios con las siguientes claves: ``name``, ``default_value``, ``property_hint`` (opcional), ``hint_string`` (opcional), ``uso`` (opcional).

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_import_order:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_import_order**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_import_order>`

Obtiene el orden de ejecución de este importador al importar recursos. Los importadores con órdenes de importación *inferiores* se llamarán primero y los valores superiores se llamarán después. Úsalo para garantizar que el importador se ejecute después de que se hayan importado las dependencias. El orden de importación predeterminado es ``0`` a menos que lo sobrescriba un importador específico. Véase :ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` para ver algunos valores predefinidos.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_importer_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_importer_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_importer_name>`

Obtiene el nombre único del importador.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, option_name\: :ref:`StringName<class_StringName>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_option_visibility>`

Obtiene si la opción de importación especificada por ``option_name`` debe estar visible en el panel de Importación. La implementación predeterminada siempre devuelve ``true``, haciendo que todas las opciones sean visibles. Esto es útil principalmente para ocultar opciones que dependen de otras si alguna de ellas está deshabilitada.


.. tabs::

 .. code-tab:: gdscript

    func _get_option_visibility(path, option_name, options):
        # Solo mostrar la configuración de calidad con pérdida si el modo de compresión está en "Lossy".
        if option_name == "compress/lossy_quality" and options.has("compress/mode"):
            return int(options["compress/mode"]) == COMPRESS_LOSSY # Esta es una constante que defines

        return true

 .. code-tab:: csharp

    public override bool _GetOptionVisibility(string path, StringName optionName, Godot.Collections.Dictionary options)
    {
        // Solo mostrar la configuración de calidad con pérdida si el modo de compresión está en "Lossy".
        if (optionName == "compress/lossy_quality" && options.ContainsKey("compress/mode"))
        {
            return (int)options["compress/mode"] == CompressLossy; // Esta es una constante que defines
        }

        return true;
    }



.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_preset_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_preset_count**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_preset_count>`

Gets the number of initial presets defined by the plugin. Use :ref:`_get_import_options()<class_EditorImportPlugin_private_method__get_import_options>` to get the default options for the preset and :ref:`_get_preset_name()<class_EditorImportPlugin_private_method__get_preset_name>` to get the name of the preset.

By default, there are no presets.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_preset_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_preset_name**\ (\ preset_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_preset_name>`

Obtiene el nombre de las opciones de preajuste en este índice.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_priority:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_priority>`

Obtiene la prioridad de este plugin para la extensión reconocida. Se preferirán los plugins de mayor prioridad. La prioridad por defecto es ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_recognized_extensions>`

Obtiene la lista de extensiones de archivos para asociar con este cargador (sin distinción de mayúsculas y minúsculas). Por ejemplo, ``["obj"]``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_type**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_resource_type>`

Obtiene el tipo de recurso Godot asociado a este cargador. Por ejemplo, ``"Mesh"`` o ``"Animation"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_save_extension:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_save_extension**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_save_extension>`

Obtiene la extensión utilizada para guardar este recurso en el directorio ``.godot/imported`` (véase :ref:`ProjectSettings.application/config/use_hidden_project_data_directory<class_ProjectSettings_property_application/config/use_hidden_project_data_directory>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_visible_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_visible_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_visible_name>`

Gets the name to display in the import window. You should choose this name as a continuation to "Import as", e.g. "Import as Special Mesh".

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__import:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import**\ (\ source_file\: :ref:`String<class_String>`, save_path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>`, platform_variants\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], gen_files\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__import>`

Imports ``source_file`` with the import ``options`` specified. Should return :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` if the import is successful, other values indicate failure.

The imported resource is expected to be saved to ``save_path + "." + _get_save_extension()``. If a different variant is preferred for a :doc:`feature tag <../tutorials/export/feature_tags>`, save the variant to ``save_path + "." + tag + "." + _get_save_extension()`` and add the feature tag to ``platform_variants``.

If additional resource files are generated in the resource filesystem (``res://``), add their full path to ``gen_files`` so that the editor knows they depend on ``source_file``.

This method must be overridden to do the actual importing work. See this class' description for an example of overriding this method.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_method_append_import_external_resource:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_import_external_resource**\ (\ path\: :ref:`String<class_String>`, custom_options\: :ref:`Dictionary<class_Dictionary>` = {}, custom_importer\: :ref:`String<class_String>` = "", generator_parameters\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_EditorImportPlugin_method_append_import_external_resource>`

This function can only be called during the :ref:`_import()<class_EditorImportPlugin_private_method__import>` callback and it allows manually importing resources from it. This is useful when the imported file generates external resources that require importing (as example, images). Custom parameters for the ".import" file can be passed via the ``custom_options``. Additionally, in cases where multiple importers can handle a file, the ``custom_importer`` can be specified to force a specific one. This function performs a resource import and returns immediately with a success or error code. ``generator_parameters`` defines optional extra metadata which will be stored as ``generator_parameters`` in the ``remap`` section of the ``.import`` file, for example to store a md5 hash of the source data.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
