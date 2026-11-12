:github_url: hide

.. _class_EditorImportPlugin:

EditorImportPlugin
==================

**Hérite de :** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Enregistre un importateur de ressources personnalisée dans l'éditeur. Utilisez cette classe pour interpréter n'importe quel fichier pour l'importer comme nouveau type de ressource.

.. rst-class:: classref-introduction-group

Description
-----------

Les **EditorImportPlugin** fournissent un moyen d'étendre la fonctionnalité d'importation des ressources de l'éditeur. Utilisez-les pour importer des ressources depuis des fichiers personnalisés ou pour proposer une alternative aux importateurs existants de l'éditeur.

Les EditorImportPlugins fonctionnent en associant certaines extensions de fichiers avec un type de ressource. Voir :ref:`_get_recognized_extensions()<class_EditorImportPlugin_private_method__get_recognized_extensions>` et :ref:`_get_resource_type()<class_EditorImportPlugin_private_method__get_resource_type>`. Ils peuvent aussi spécifier des préréglages d'importation qui changeront le processus d'importation. Les EditorImportPlugins sont responsables pour créer les ressources et les enregistrer dans le dossier ``.godot/imported`` (voir :ref:`ProjectSettings.application/config/use_hidden_project_data_directory<class_ProjectSettings_property_application/config/use_hidden_project_data_directory>`).

L'exemple ci-dessous définit un EditorImportPlugin qui importe un :ref:`Mesh<class_Mesh>` depuis un fichier avec l'extension ".special" ou ".spec" :


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorImportPlugin

    func _get_importer_name():
        return "mon.plugin.special"

    func _get_visible_name():
        return "Maillage Special"

    func _get_recognized_extensions():
        return ["special", "spec"]

    func _get_save_extension():
        return "mesh"

    func _get_resource_type():
        return "Mesh"

    func _get_preset_count():
        return 1

    func _get_preset_name(i):
        return "Default"

    func _get_import_options(i):
        return [{"name": "mon_option", "default_value": false}]

    func _import(source_file, save_path, options, platform_variants, gen_files):
        var fichier = File.new()
        if file == null:
            return FAILED
        var maillage = Mesh.new()
        # Remplir le maillage avec des données lues depuis "fichier" (exercice laissé au lecteur)

        var nom_de_fichier = save_path + "." + get_save_extension()
        return ResourceSaver.save(maillage, nom_de_fichier)

 .. code-tab:: csharp

    using Godot;

    public partial class MySpecialPlugin : EditorImportPlugin
    {
        public override string _GetImporterName()
        {
            return "mon.plugin.special";
        }

        public override string _GetVisibleName()
        {
            return "Maillage Special";
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
                    { "name", "mon_option" },
                    { "default_value", false },
                },
            ];
        }

        public override Error _Import(string sourceFile, string savePath, Godot.Collections.Dictionary options, Godot.Collections.Array<string> platformVariants, Godot.Collections.Array<string> genFiles)
        {
            using var fichier = FileAccess.Open(sourceFile, FileAccess.ModeFlags.Read);
            if (fichier.GetError() != Error.Ok)
            {
                return Error.Failed;
            }

            var mesh = new ArrayMesh();
            // Remplir le maillage avec des données lues depuis "fichier" (exercice laissé au lecteur)
            string filename = $"{savePath}.{_GetSaveExtension()}";
            return ResourceSaver.Save(maillage, nom_de_fichier);
        }
    }



Pour utiliser un **EditorImportPlugin**, enregistrez-le d'abord avec la méthode :ref:`EditorPlugin.add_import_plugin()<class_EditorPlugin_method_add_import_plugin>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Importer des plugins <../tutorials/plugins/editor/import_plugins>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Descriptions des méthodes
--------------------------------------------------

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

Obtient les options et les valeurs par défaut pour le préréglage à cet index. Renvoie un :ref:`Array<class_Array>` de :ref:`Dictionary<class_Dictionary>` avec les clés suivantes : ``name``, ``default_value``, ``property_hint`` (optionnel), ``hint_string`` (optionnel) et ``usage`` (optionnel).

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_import_order:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_import_order**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_import_order>`

Obtient l'ordre de lancement de cet importateur lors de l'importation de ressources. Les importateurs avec un ordre d'importation plus *bas* seront appelés en premier, et des valeurs supérieures seront appelées après. Utilisez-le pour s'assurer que l'importateur fonctionne après l'importation des dépendances. L'ordre d'importation par défaut est ``0`` à moins d'être remplacé par un importateur spécifique. Voir :ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` pour certaines valeurs prédéfinies.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_importer_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_importer_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_importer_name>`

Obtient le nom unique de l'importateur.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, option_name\: :ref:`StringName<class_StringName>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_option_visibility>`

Obtient si l'option d'importation spécifiée par ``option_name`` devrait être visible dans le dock Import. L'implémentation par défaut renvoie toujours ``true``, rendant toutes les options visibles. Ceci est principalement utile pour cacher des options qui dépendent des autres si l'une d'entre elle est désactivée.


.. tabs::

 .. code-tab:: gdscript

    func _get_option_visibility(path, option_name, options):
        # Affiche seulement le réglage de la qualité avec perte si le mode de compression est défini à "Lossy".
        if option_name == "compress/lossy_quality" and options.has("compress/mode"):
            return int(options["compress/mode"]) == COMPRESS_LOSSY # Il s'agit d'une constante que vous définissez

        return true

 .. code-tab:: csharp

    public override bool _GetOptionVisibility(string path, StringName optionName, Godot.Collections.Dictionary options)
    {
        // Affiche seulement le réglage de la qualité avec perte si le mode de compression est défini à "Lossy".
        if (optionName == "compress/lossy_quality" && options.ContainsKey("compress/mode"))
        {
            return (int)options["compress/mode"] == CompressLossy; // Il s'agit d'une constante que vous définissez
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

Obtient le nom des préréglages de l'option à cette position.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_priority:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_priority>`

Obtient la priorité de ce greffon pour l'extension reconnue. Des greffons le plus prioritaires seront préférés. La priorité par défaut est ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_recognized_extensions>`

Obtient la liste des extensions de fichier à associer à ce chargeur (insensible à la casse). Par exemple ``["obj"]``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_type**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_resource_type>`

Obtient le type de ressource de Godot associé avec ce chargeur, par ex. : ``"Mesh"`` ou ``"Animation"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_save_extension:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_save_extension**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_save_extension>`

Gets the extension used to save this resource in the ``.godot/imported`` directory (see :ref:`ProjectSettings.application/config/use_hidden_project_data_directory<class_ProjectSettings_property_application/config/use_hidden_project_data_directory>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__get_visible_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_visible_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__get_visible_name>`

Obtient le nom à afficher dans la fenêtre d'importation. Vous devriez choisir ce nom comme une suite à "Importer comme", par exemple "Importer comme Maillage Spécial".

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_private_method__import:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import**\ (\ source_file\: :ref:`String<class_String>`, save_path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>`, platform_variants\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], gen_files\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) |virtual| |required| |const| :ref:`🔗<class_EditorImportPlugin_private_method__import>`

Imports ``source_file`` with the specified import ``options``. Should return :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` if the import is successful.

The imported resource is expected to be saved to ``save_path + "." + _get_save_extension()``. If a different variant is preferred for a :doc:`feature tag <../tutorials/export/feature_tags>`, save the variant to ``save_path + "." + tag + "." + _get_save_extension()`` and add the feature tag to ``platform_variants``.

If additional resource files are generated in the resource filesystem (\ ``res://``), add their full path to ``gen_files`` so that the editor knows they depend on ``source_file``.

This method must be overridden to do the actual importing work. See this class's description for an example of overriding this method.

.. rst-class:: classref-item-separator

----

.. _class_EditorImportPlugin_method_append_import_external_resource:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_import_external_resource**\ (\ path\: :ref:`String<class_String>`, custom_options\: :ref:`Dictionary<class_Dictionary>` = {}, custom_importer\: :ref:`String<class_String>` = "", generator_parameters\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_EditorImportPlugin_method_append_import_external_resource>`

This function can only be called during the :ref:`_import()<class_EditorImportPlugin_private_method__import>` callback and it allows manually importing resources from it. This is useful when the imported file generates external resources that require importing (as example, images). Custom parameters for the ".import" file can be passed via the ``custom_options``. Additionally, in cases where multiple importers can handle a file, the ``custom_importer`` can be specified to force a specific one. This function performs a resource import and returns immediately with a success or error code. ``generator_parameters`` defines optional extra metadata which will be stored as ``generator_parameters`` in the ``remap`` section of the ``.import`` file, for example to store a md5 hash of the source data.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
