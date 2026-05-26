:github_url: hide

.. _class_GLTFDocumentExtension:

GLTFDocumentExtension
=====================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`GLTFDocumentExtensionConvertImporterMesh<class_GLTFDocumentExtensionConvertImporterMesh>`

:ref:`GLTFDocument<class_GLTFDocument>` 擴充類。

.. rst-class:: classref-introduction-group

說明
----

Extends the functionality of the :ref:`GLTFDocument<class_GLTFDocument>` class by allowing you to run arbitrary code at various stages of glTF import or export.

To use, make a new class extending GLTFDocumentExtension, override any methods you need, make an instance of your class, and register it using :ref:`GLTFDocument.register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>`.

\ **Note:** All GLTFDocumentExtension classes are duplicated when beginning the import or export process. Except for configuration values, these classes must be stateless in order to function properly. If you need to store data, use the ``set_additional_data`` and ``get_additional_data`` methods in :ref:`GLTFState<class_GLTFState>` or :ref:`GLTFNode<class_GLTFNode>`.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

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

傳回用於將映像資料儲存到的檔案副檔名，例如\ ``".png"``\ 。如果已定義，則使用此副檔名時處理圖像，並且圖像保存到單獨的檔案中，圖像位元組將被複製到具有此副檔名的檔案中。如果設定了此選項，則應該有一個\ :ref:`ResourceImporter<class_ResourceImporter>` 類別能夠匯入該檔案。如果未定義或為空時，Godot 會將影像儲存為 PNG 檔案。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_saveable_image_formats:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_saveable_image_formats**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`

匯出過程的一部分。此方法在 :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` 之後和 :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>` 之前執行。

傳回可以由此擴充保存/匯出的影像格式的陣列。只有當 :ref:`GLTFDocument<class_GLTFDocument>` 的 :ref:`GLTFDocument.image_format<class_GLTFDocument_property_image_format>` 在此陣列中時，才會選擇此擴充功能作為影像匯出器。如果選擇此 **GLTFDocumentExtension** 作為映像匯出器，則接下來將執行 :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` 或 :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>` 方法之一，否則接下來將執行 :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`\ 。如果格式名稱包含 ``"Lossy"``\ ，將顯示有損品質滑桿。

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

匯入過程的一部分。該方法在 :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>` 之後 :ref:`_import_post()<class_GLTFDocumentExtension_private_method__import_post>` 之前運作。

該方法可用於對每個生成的 Godot 場景節點進行修改。

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

匯入過程的一部分。該方法在最後運作，在匯入過程的所有其他部分之後。

該方法可用於修改匯入過程生成的最終 Godot 場景。

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

匯入過程的一部分。該方法在 :ref:`_get_supported_extensions()<class_GLTFDocumentExtension_private_method__get_supported_extensions>` 之後和 :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` 之前運作。

在解析 GLTFNode 的節點擴充時運作。該方法可用於將擴充 JSON 資料，處理成可被 :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` 使用的格式。該返回值應該是 :ref:`Error<enum_@GlobalScope_Error>` 列舉中的一個成員。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, ret_gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_texture_json>`

Part of the import process. This method is run after :ref:`_parse_image_data()<class_GLTFDocumentExtension_private_method__parse_image_data>` and before :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`.

Runs when parsing the texture JSON from the glTF textures array. This can be used to set the source image index to use as the texture.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__save_image_at_path:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save_image_at_path**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, file_path\: :ref:`String<class_String>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__save_image_at_path>`

Part of the export process. This method is run after :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` and before :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

This method is run when saving images separately from the glTF file. When images are embedded, :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>` runs instead. Note that these methods only run when this **GLTFDocumentExtension** is selected as the image exporter.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_image_to_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_serialize_image_to_bytes**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, image_dict\: :ref:`Dictionary<class_Dictionary>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`

Part of the export process. This method is run after :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` and before :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

This method is run when embedding images in the glTF file. When images are saved separately, :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` runs instead. Note that these methods only run when this **GLTFDocumentExtension** is selected as the image exporter.

This method must set the image MIME type in the ``image_dict`` with the ``"mimeType"`` key. For example, for a PNG image, it would be set to ``"image/png"``. The return value must be a :ref:`PackedByteArray<class_PackedByteArray>` containing the image data.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_serialize_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`, image_format\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_texture_json>`

匯出過程的一部分。此方法在\ :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` 或\ :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>` 之後、\ :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>` 之前執行下列情況，此方法僅在下列情況下執行下列情況。 ：選擇 **GLTFDocumentExtension** 作為影像匯出器。

此方法可用於透過編輯 ``texture_json`` 設定紋理 JSON 的擴充。也必須使用 :ref:`GLTFState.add_used_extension()<class_GLTFState_method_add_used_extension>` 將擴充新增為已用擴充，如果您不提供後備，請務必將 ``required`` 設為 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
