:github_url: hide

.. _class_GLTFDocumentExtension:

GLTFDocumentExtension
=====================

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`GLTFDocumentExtensionConvertImporterMesh<class_GLTFDocumentExtensionConvertImporterMesh>`

:ref:`GLTFDocument<class_GLTFDocument>` extension class.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Extends the functionality of the :ref:`GLTFDocument<class_GLTFDocument>` class by allowing you to run arbitrary code at various stages of glTF import or export.

To use, make a new class extending GLTFDocumentExtension, override any methods you need, make an instance of your class, and register it using :ref:`GLTFDocument.register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>`.

\ **Note:** All GLTFDocumentExtension classes are duplicated when beginning the import or export process. Except for configuration values, these classes must be stateless in order to function properly. If you need to store data, use the ``set_additional_data`` and ``get_additional_data`` methods in :ref:`GLTFState<class_GLTFState>` or :ref:`GLTFNode<class_GLTFNode>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_convert_scene_node<class_GLTFDocumentExtension_private_method__convert_scene_node>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_node\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                 |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_export_get_property_list<class_GLTFDocumentExtension_private_method__export_get_property_list>`\ (\ root_node\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                                              |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_node<class_GLTFDocumentExtension_private_method__export_node>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                         |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`    | :ref:`_export_object_model_property<class_GLTFDocumentExtension_private_method__export_object_model_property>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`, target_object\: :ref:`Object<class_Object>`, target_depth\: :ref:`int<class_int>`\ ) |virtual| |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_post<class_GLTFDocumentExtension_private_method__export_post>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual|                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_post_convert<class_GLTFDocumentExtension_private_method__export_post_convert>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_preflight<class_GLTFDocumentExtension_private_method__export_preflight>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                        |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_preserialize<class_GLTFDocumentExtension_private_method__export_preserialize>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual|                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`                                      | :ref:`_generate_scene_node<class_GLTFDocumentExtension_private_method__generate_scene_node>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_parent\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                             |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_image_file_extension<class_GLTFDocumentExtension_private_method__get_image_file_extension>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_saveable_image_formats<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`\ (\ ) |virtual|                                                                                                                                                                                                                                                               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_supported_extensions<class_GLTFDocumentExtension_private_method__get_supported_extensions>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_import_node<class_GLTFDocumentExtension_private_method__import_node>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                         |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`    | :ref:`_import_object_model_property<class_GLTFDocumentExtension_private_method__import_object_model_property>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, split_json_pointer\: :ref:`PackedStringArray<class_PackedStringArray>`, partial_paths\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ ) |virtual|                                                          |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_import_post<class_GLTFDocumentExtension_private_method__import_post>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_import_post_parse<class_GLTFDocumentExtension_private_method__import_post_parse>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual|                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_import_pre_generate<class_GLTFDocumentExtension_private_method__import_pre_generate>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual|                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_import_preflight<class_GLTFDocumentExtension_private_method__import_preflight>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, extensions\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual|                                                                                                                                                                        |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_parse_image_data<class_GLTFDocumentExtension_private_method__parse_image_data>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image_data\: :ref:`PackedByteArray<class_PackedByteArray>`, mime_type\: :ref:`String<class_String>`, ret_image\: :ref:`Image<class_Image>`\ ) |virtual|                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_parse_node_extensions<class_GLTFDocumentExtension_private_method__parse_node_extensions>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, extensions\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual|                                                                                                                               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_parse_texture_json<class_GLTFDocumentExtension_private_method__parse_texture_json>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, ret_gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`\ ) |virtual|                                                                                                                      |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_save_image_at_path<class_GLTFDocumentExtension_private_method__save_image_at_path>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, file_path\: :ref:`String<class_String>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual|                                                                 |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                    | :ref:`_serialize_image_to_bytes<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, image_dict\: :ref:`Dictionary<class_Dictionary>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual|                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_serialize_texture_json<class_GLTFDocumentExtension_private_method__serialize_texture_json>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`, image_format\: :ref:`String<class_String>`\ ) |virtual|                                                                      |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GLTFDocumentExtension_private_method__convert_scene_node:

.. rst-class:: classref-method

|void| **_convert_scene_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__convert_scene_node>`

Part of the export process. This method is run after :ref:`_export_preflight()<class_GLTFDocumentExtension_private_method__export_preflight>` and before :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>`.

Runs when converting the data from a Godot scene node. This method can be used to process the Godot scene node data into a format that can be used by :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_export_get_property_list**\ (\ root_node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_get_property_list>`

Runs prior to the export process. This method is run before :ref:`_export_preflight()<class_GLTFDocumentExtension_private_method__export_preflight>` when exporting a scene from the editor, or it may not be run at all in other situations.

Unlike the rest of the export methods, this does not run when calling a :ref:`GLTFDocument<class_GLTFDocument>`'s export methods in sequence with everything else, but rather runs before that entire process occurs, allowing configuration to occur beforehand, potentially minutes or hours in advance of :ref:`_export_preflight()<class_GLTFDocumentExtension_private_method__export_preflight>`. This allows extensions to decide which properties to show in the editor export settings dialog based on the contents of the scene, hiding any settings that are not relevant for that scene. The ``root_node`` parameter may be ``null``, in which case all properties should be shown.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_node:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_node>`

Part of the export process. This method is run after :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` and before :ref:`_export_post()<class_GLTFDocumentExtension_private_method__export_post>`. If this **GLTFDocumentExtension** is used for exporting images, this runs after :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

This method can be used to modify the final JSON of each node. Data should be primarily stored in ``gltf_node`` prior to serializing the JSON, but the original Godot :ref:`Node<class_Node>` is also provided if available. ``node`` may be ``null`` if not available, such as when exporting glTF data not generated from a Godot scene.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`, target_object\: :ref:`Object<class_Object>`, target_depth\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_object_model_property>`

Part of the export process. Allows GLTFDocumentExtension classes to provide mappings for properties of nodes in the Godot scene tree, to JSON pointers to glTF properties, as defined by the glTF object model.

Returns a :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` instance that defines how the property should be mapped. If your extension can't handle the property, return ``null`` or an instance without any JSON pointers (see :ref:`GLTFObjectModelProperty.has_json_pointers()<class_GLTFObjectModelProperty_method_has_json_pointers>`). You should use :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>` to set the types, and set the JSON pointer(s) using the :ref:`GLTFObjectModelProperty.json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` property.

The parameters provide context for the property, including the NodePath, the Godot node, the GLTF node index, and the target object. The ``target_object`` will be equal to ``godot_node`` if no sub-object can be found, otherwise it will point to a sub-object. For example, if the path is ``^"A/B/C/MeshInstance3D:mesh:surface_0/material:emission_intensity"``, it will get the node, then the mesh, and then the material, so ``target_object`` will be the :ref:`Material<class_Material>` resource, and ``target_depth`` will be 2 because 2 levels were traversed to get to the target.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post>`

Part of the export process. This method is run last, after all other parts of the export process.

This method can be used to modify the final JSON of the generated glTF file.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post_convert:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post_convert**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post_convert>`

Part of the export process. This method is run after :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` and before :ref:`_export_preserialize()<class_GLTFDocumentExtension_private_method__export_preserialize>`.

This method can be used to modify the converted node data structures before serialization with any additional data from the scene tree.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preflight>`

Part of the export process. This method is run first, before all other parts of the export process.

The return value is used to determine if this **GLTFDocumentExtension** instance should be used for exporting a given glTF file. If :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, the export will use this **GLTFDocumentExtension** instance. If not overridden, :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` is returned.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preserialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preserialize**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preserialize>`

Part of the export process. This method is run after :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>` and before :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`.

This method can be used to alter the state before performing serialization. It runs every time when generating a buffer with :ref:`GLTFDocument.generate_buffer()<class_GLTFDocument_method_generate_buffer>` or writing to the file system with :ref:`GLTFDocument.write_to_filesystem()<class_GLTFDocument_method_write_to_filesystem>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__generate_scene_node:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **_generate_scene_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_parent\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__generate_scene_node>`

Part of the import process. This method is run after :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>` and before :ref:`_import_node()<class_GLTFDocumentExtension_private_method__import_node>`.

Runs when generating a Godot scene node from a GLTFNode. The returned node will be added to the scene tree. Multiple nodes can be generated in this step if they are added as a child of the returned node.

\ **Note:** The ``scene_parent`` parameter may be ``null`` if this is the single root node.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_image_file_extension:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_image_file_extension**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_image_file_extension>`

Returns the file extension to use for saving image data into, for example, ``".png"``. If defined, when this extension is used to handle images, and the images are saved to a separate file, the image bytes will be copied to a file with this extension. If this is set, there should be a :ref:`ResourceImporter<class_ResourceImporter>` class able to import the file. If not defined or empty, Godot will save the image into a PNG file.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_saveable_image_formats:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_saveable_image_formats**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`

Part of the export process. This method is run after :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` and before :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`.

Returns an array of the image formats that can be saved/exported by this extension. This extension will only be selected as the image exporter if the :ref:`GLTFDocument<class_GLTFDocument>`'s :ref:`GLTFDocument.image_format<class_GLTFDocument_property_image_format>` is in this array. If this **GLTFDocumentExtension** is selected as the image exporter, one of the :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` or :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>` methods will run next, otherwise :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>` will run next. If the format name contains ``"Lossy"``, the lossy quality slider will be displayed.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_supported_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_extensions**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_supported_extensions>`

Part of the import process. This method is run after :ref:`_import_preflight()<class_GLTFDocumentExtension_private_method__import_preflight>` and before :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>`.

Returns an array of the glTF extensions supported by this GLTFDocumentExtension class. This is used to validate if a glTF file with required extensions can be loaded.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_node:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_node>`

Part of the import process. This method is run after :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` and before :ref:`_import_post()<class_GLTFDocumentExtension_private_method__import_post>`.

This method can be used to make modifications to each of the generated Godot scene nodes.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, split_json_pointer\: :ref:`PackedStringArray<class_PackedStringArray>`, partial_paths\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_object_model_property>`

Part of the import process. Allows GLTFDocumentExtension classes to provide mappings for JSON pointers to glTF properties, as defined by the glTF object model, to properties of nodes in the Godot scene tree.

Returns a :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` instance that defines how the property should be mapped. If your extension can't handle the property, return ``null`` or an instance without any NodePaths (see :ref:`GLTFObjectModelProperty.has_node_paths()<class_GLTFObjectModelProperty_method_has_node_paths>`). You should use :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>` to set the types, and :ref:`GLTFObjectModelProperty.append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` function is useful for most simple cases.

In many cases, ``partial_paths`` will contain the start of a path, allowing the extension to complete the path. For example, for ``/nodes/3/extensions/MY_ext/prop``, Godot will pass you a NodePath that leads to node 3, so the GLTFDocumentExtension class only needs to resolve the last ``MY_ext/prop`` part of the path. In this example, the extension should check ``split.size() > 4 and split[0] == "nodes" and split[2] == "extensions" and split[3] == "MY_ext"`` at the start of the function to check if this JSON pointer applies to it, then it can use ``partial_paths`` and handle ``split[4]``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_post:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_post**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_post>`

Part of the import process. This method is run last, after all other parts of the import process.

This method can be used to modify the final Godot scene generated by the import process.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_post_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_post_parse**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_post_parse>`

Part of the import process. This method is run after :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` and before :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>`.

This method can be used to modify any of the data imported so far after parsing each node, but before generating the scene or any of its nodes.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_pre_generate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_pre_generate**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_pre_generate>`

Part of the import process. This method is run after :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>` and before :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`.

This method can be used to modify or read from any of the processed data structures, before generating the nodes and then running the final per-node import step.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, extensions\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_preflight>`

Part of the import process. This method is run first, before all other parts of the import process.

The return value is used to determine if this **GLTFDocumentExtension** instance should be used for importing a given glTF file. If :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, the import will use this **GLTFDocumentExtension** instance. If not overridden, :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` is returned.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_image_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_image_data**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image_data\: :ref:`PackedByteArray<class_PackedByteArray>`, mime_type\: :ref:`String<class_String>`, ret_image\: :ref:`Image<class_Image>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_image_data>`

Part of the import process. This method is run after :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` and before :ref:`_parse_texture_json()<class_GLTFDocumentExtension_private_method__parse_texture_json>`.

Runs when parsing image data from a glTF file. The data could be sourced from a separate file, a URI, or a buffer, and then is passed as a byte array.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_node_extensions:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_node_extensions**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, extensions\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_node_extensions>`

Parte del proceso de importación. Este método se ejecuta después de :ref:`_get_supported_extensions()<class_GLTFDocumentExtension_private_method__get_supported_extensions>` y antes de :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>`.

Se ejecuta al analizar las extensiones de nodo de un GLTFNode. Este método se puede utilizar para procesar los datos JSON de la extensión en un formato que pueda ser utilizado por :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`. El valor de retorno debe ser un miembro de la enumeración :ref:`Error<enum_@GlobalScope_Error>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, ret_gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_texture_json>`

Parte del proceso de importación. Este método se ejecuta después de :ref:`_parse_image_data()<class_GLTFDocumentExtension_private_method__parse_image_data>` y antes de :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`.

Se ejecuta al analizar el JSON de la textura desde el array de texturas glTF. Esto se puede utilizar para establecer el índice de la imagen de origen a utilizar como textura.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__save_image_at_path:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save_image_at_path**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, file_path\: :ref:`String<class_String>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__save_image_at_path>`

Parte del proceso de exportación. Este método se ejecuta después de :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` y antes de :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

Este método se ejecuta al guardar imágenes separadas del archivo glTF. Cuando las imágenes están incrustadas, se ejecuta :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>` en su lugar. Ten en cuenta que estos métodos solo se ejecutan cuando esta **GLTFDocumentExtension** está seleccionada como el exportador de imágenes.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_image_to_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_serialize_image_to_bytes**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, image_dict\: :ref:`Dictionary<class_Dictionary>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`

Parte del proceso de exportación. Este método se ejecuta después de :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` y antes de :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

Este método se ejecuta al incrustar imágenes en el archivo glTF. Cuando las imágenes se guardan por separado, se ejecuta :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` en su lugar. Ten en cuenta que estos métodos solo se ejecutan cuando esta **GLTFDocumentExtension** se selecciona como el exportador de imágenes.

Este método debe establecer el tipo MIME de la imagen en el ``image_dict`` con la clave ``"mimeType"``. Por ejemplo, para una imagen PNG, se establecería en ``"image/png"``. El valor de retorno debe ser un :ref:`PackedByteArray<class_PackedByteArray>` que contenga los datos de la imagen.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_serialize_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`, image_format\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_texture_json>`

Parte del proceso de exportación. Este método se ejecuta después de :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` o :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`, y antes de :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`. Ten en cuenta que este método solo se ejecuta cuando esta **GLTFDocumentExtension** se selecciona como el exportador de imágenes.

Este método se puede utilizar para configurar las extensiones para el JSON de la textura editando ``texture_json``. La extensión también debe añadirse como extensión utilizada con :ref:`GLTFState.add_used_extension()<class_GLTFState_method_add_used_extension>`, asegúrate de establecer ``required`` a ``true`` si no estás proporcionando una alternativa.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
