:github_url: hide

.. _class_GLTFDocumentExtension:

GLTFDocumentExtension
=====================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`GLTFDocumentExtensionConvertImporterMesh<class_GLTFDocumentExtensionConvertImporterMesh>`

:ref:`GLTFDocument<class_GLTFDocument>` 扩展类。

.. rst-class:: classref-introduction-group

描述
----

通过允许在 glTF 导入或导出的各个阶段运行任意代码，来扩展 :ref:`GLTFDocument<class_GLTFDocument>` 类的功能。

使用时请创建一个扩展 GLTFDocumentExtension 的新类，覆盖需要的任何方法，创建你的类的实例，然后使用 :ref:`GLTFDocument.register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>` 注册。

\ **注意：**\ 与 GLTFDocument 本身一样，所有 GLTFDocumentExtension 类都必须是无状态的才能正常运行。如果需要存储数据，请使用 :ref:`GLTFState<class_GLTFState>` 或 :ref:`GLTFNode<class_GLTFNode>` 中的 ``set_additional_data`` 和 ``get_additional_data`` 方法。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`运行时文件加载与保存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`_convert_scene_node<class_GLTFDocumentExtension_private_method__convert_scene_node>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_node\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                 |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_export_node<class_GLTFDocumentExtension_private_method__export_node>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                         |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` | :ref:`_export_object_model_property<class_GLTFDocumentExtension_private_method__export_object_model_property>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`, target_object\: :ref:`Object<class_Object>`, target_depth\: :ref:`int<class_int>`\ ) |virtual| |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_export_post<class_GLTFDocumentExtension_private_method__export_post>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual|                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_export_post_convert<class_GLTFDocumentExtension_private_method__export_post_convert>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                  |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_export_preflight<class_GLTFDocumentExtension_private_method__export_preflight>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                        |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_export_preserialize<class_GLTFDocumentExtension_private_method__export_preserialize>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual|                                                                                                                                                                                                                                  |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`                                   | :ref:`_generate_scene_node<class_GLTFDocumentExtension_private_method__generate_scene_node>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_parent\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                             |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                   | :ref:`_get_image_file_extension<class_GLTFDocumentExtension_private_method__get_image_file_extension>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                   |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`_get_saveable_image_formats<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`\ (\ ) |virtual|                                                                                                                                                                                                                                                               |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`_get_supported_extensions<class_GLTFDocumentExtension_private_method__get_supported_extensions>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                   |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_import_node<class_GLTFDocumentExtension_private_method__import_node>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                         |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` | :ref:`_import_object_model_property<class_GLTFDocumentExtension_private_method__import_object_model_property>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, split_json_pointer\: :ref:`PackedStringArray<class_PackedStringArray>`, partial_paths\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ ) |virtual|                                                          |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_import_post<class_GLTFDocumentExtension_private_method__import_post>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                                  |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_import_post_parse<class_GLTFDocumentExtension_private_method__import_post_parse>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual|                                                                                                                                                                                                                                      |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_import_pre_generate<class_GLTFDocumentExtension_private_method__import_pre_generate>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual|                                                                                                                                                                                                                                  |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_import_preflight<class_GLTFDocumentExtension_private_method__import_preflight>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, extensions\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual|                                                                                                                                                                        |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_parse_image_data<class_GLTFDocumentExtension_private_method__parse_image_data>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image_data\: :ref:`PackedByteArray<class_PackedByteArray>`, mime_type\: :ref:`String<class_String>`, ret_image\: :ref:`Image<class_Image>`\ ) |virtual|                                                                                            |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_parse_node_extensions<class_GLTFDocumentExtension_private_method__parse_node_extensions>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, extensions\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual|                                                                                                                               |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_parse_texture_json<class_GLTFDocumentExtension_private_method__parse_texture_json>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, ret_gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`\ ) |virtual|                                                                                                                      |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_save_image_at_path<class_GLTFDocumentExtension_private_method__save_image_at_path>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, file_path\: :ref:`String<class_String>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual|                                                                 |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                 | :ref:`_serialize_image_to_bytes<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, image_dict\: :ref:`Dictionary<class_Dictionary>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual|                                            |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`_serialize_texture_json<class_GLTFDocumentExtension_private_method__serialize_texture_json>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`, image_format\: :ref:`String<class_String>`\ ) |virtual|                                                                      |
   +---------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GLTFDocumentExtension_private_method__convert_scene_node:

.. rst-class:: classref-method

|void| **_convert_scene_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__convert_scene_node>`

导出过程的一部分。该方法在 :ref:`_export_preflight()<class_GLTFDocumentExtension_private_method__export_preflight>` 之后、\ :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>` 之前运行。

在转换来自 Godot 场景节点的数据时运行。该方法可用于将 Godot 场景节点的数据处理成可以被 :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>` 使用的格式。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_node:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_node>`

导出过程的一部分。该方法在 :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` 之后、\ :ref:`_export_post()<class_GLTFDocumentExtension_private_method__export_post>` 之前运行。如果该 **GLTFDocumentExtension** 用于导出图像，则会在 :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>` 之后运行。

该方法可用于修改每个节点的最终 JSON。在序列化 JSON 之前，数据应主要被存储在 ``gltf_node`` 中，但如果原始 Godot :ref:`Node<class_Node>` 可用，它也将被提供。\ ``node`` 不可用时可能为 ``null``\ ，例如导出不是从 Godot 场景生成的 glTF 数据的场合。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`, target_object\: :ref:`Object<class_Object>`, target_depth\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_object_model_property>`

导出过程的一部分。允许 GLTFDocumentExtension 类为 Godot 场景树中节点的属性提供映射，映射到 glTF 属性的 JSON 指针，这些属性由 glTF 对象模型定义。

返回 :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` 实例，定义属性的映射方式。如果你的扩展无法处理该属性，请返回 ``null`` 或返回一个没有任何 JSON 指针的实例（见 :ref:`GLTFObjectModelProperty.has_json_pointers()<class_GLTFObjectModelProperty_method_has_json_pointers>`\ ）。你应当使用 :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>` 来设置类型，通过 :ref:`GLTFObjectModelProperty.json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` 属性设置 JSON 指针。

参数为属性提供了上下文，包括 NodePath、Godot 节点、GLTF 节点索引和目标对象。如果没有找到子对象，则 ``target_object`` 等于 ``godot_node``\ ，否则将指向子对象。例如路径为 ``^"A/B/C/MeshInstance3D:mesh:surface_0/material:emission_intensity"`` 时，会首先获取节点，然后是网格，接着是材质，因此 ``target_object`` 就是 :ref:`Material<class_Material>` 资源，而 ``target_depth`` 则为 2，因为到达目标时经过了 2 个层级。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post>`

导出过程的一部分。该方法在最后运行，在导出过程的所有其他部分之后。

该方法可用于修改生成的 glTF 文件的最终 JSON。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post_convert:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post_convert**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post_convert>`

导出过程的一部分。该方法在 :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` 之后、\ :ref:`_export_preserialize()<class_GLTFDocumentExtension_private_method__export_preserialize>` 之前运行。

该方法可用于在序列化之前修改转换后的节点数据结构，可以使用来自场景树的任何额外数据。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preflight>`

导出过程的一部分。该方法是最先运行的，在导出过程的所有其他部分之前。

返回值用于确定该 **GLTFDocumentExtension** 实例是否应该用于导出一个给定的 glTF 文件。如果为 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，则导出将使用该 **GLTFDocumentExtension** 实例。如果没有重写则返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preserialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preserialize**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preserialize>`

导出过程的一部分。该方法在 :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>` 之后、\ :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` 之前运行。

该方法可用于在执行序列化之前更改状态。每次使用 :ref:`GLTFDocument.generate_buffer()<class_GLTFDocument_method_generate_buffer>` 生成缓冲区或使用 :ref:`GLTFDocument.write_to_filesystem()<class_GLTFDocument_method_write_to_filesystem>` 写入文件系统时，都会运行该方法。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__generate_scene_node:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **_generate_scene_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_parent\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__generate_scene_node>`

导入过程的一部分。该方法在 :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>` 之后、\ :ref:`_import_node()<class_GLTFDocumentExtension_private_method__import_node>` 之前运行。

当从 GLTFNode 生成 Godot 场景节点时运行。返回的节点将被添加到场景树中。如果将多个节点添加为返回节点的子节点，则可以在该步骤中生成这些节点。

\ **注意：**\ 如果这是单个根节点，则 ``scene_parent`` 参数可以为 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_image_file_extension:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_image_file_extension**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_image_file_extension>`

返回用于保存图像数据的文件的文件扩展名，例如 ``".png"``\ 。如果定义了，当使用该扩展名处理图像并将图像保存到单独的文件时，图像字节将被复制到具有该扩展名的文件中。如果设置了该选项，则应该有一个能够导入该文件的 :ref:`ResourceImporter<class_ResourceImporter>` 类。如果未定义或为空，则 Godot 会将该图像保存到 PNG 文件中。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_saveable_image_formats:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_saveable_image_formats**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`

导出过程的一部分。该方法在 :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` 之后和 :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>` 之前运行。

返回可以由该扩展保存/导出的图像格式的数组。仅当 :ref:`GLTFDocument<class_GLTFDocument>` 的 :ref:`GLTFDocument.image_format<class_GLTFDocument_property_image_format>` 在该数组中时，才会选择该扩展作为图像导出器。如果选择该 **GLTFDocumentExtension** 作为图像导出器，则接下来将运行 :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` 或 :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>` 方法之一，否则接下来将运行 :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`\ 。如果格式名称包含 ``"Lossy"``\ ，则会显示有损质量滑块。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_supported_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_extensions**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_supported_extensions>`

导入过程的一部分。该方法在 :ref:`_import_preflight()<class_GLTFDocumentExtension_private_method__import_preflight>` 之后、\ :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` 之前运行。

返回一个数组，元素为该 GLTFDocumentExtension 类支持的 glTF 扩展。用于验证是否可以加载具有所需扩展名的 glTF 文件。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_node:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_node>`

导入过程的一部分。该方法在 :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` 之后 :ref:`_import_post()<class_GLTFDocumentExtension_private_method__import_post>` 之前运行。

该方法可用于对生成的每个 Godot 场景节点进行修改。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, split_json_pointer\: :ref:`PackedStringArray<class_PackedStringArray>`, partial_paths\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_object_model_property>`

导入过程的一部分。该功能允许 GLTFDocumentExtension 类为 JSON 指针提供映射到 glTF 属性，这些属性由 glTF 对象模型定义，并映射到 Godot 场景树中节点的属性。

返回 :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` 实例，定义属性的映射方式。如果扩展无法处理该属性，请返回 ``null`` 或一个没有任何 NodePath 的实例（见 :ref:`GLTFObjectModelProperty.has_node_paths()<class_GLTFObjectModelProperty_method_has_node_paths>`\ ）。你应当使用 :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>` 来设置类型，\ :ref:`GLTFObjectModelProperty.append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` 函数在大多数简单情况下非常有用。

在许多情况下，\ ``partial_paths`` 包含了路径的起始部分，允许扩展来补全路径。例如对于 ``/nodes/3/extensions/MY_ext/prop``\ ，Godot 会传递给你一个指向节点 3 的 NodePath，因此 GLTFDocumentExtension 类只需解析路径最后的 ``MY_ext/prop`` 部分。在这个例子中，扩展应在函数开始时检查 ``split.size() > 4 and split[0] == "nodes" and split[2] == "extensions" and split[3] == "MY_ext"``\ ，确认该 JSON 指针是否适用，然后可以使用 ``partial_paths`` 并处理 ``split[4]``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_post:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_post**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_post>`

导入过程的一部分。该方法在最后运行，在导入过程的所有其他部分之后。

该方法可用于修改导入过程生成的最终 Godot 场景。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_post_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_post_parse**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_post_parse>`

导入过程的一部分。该方法在 :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` 之后、\ :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>` 之前运行。

该方法可用于在解析后、生成节点并运行最终的各节点导入步骤之前，修改到目前为止导入的任何数据。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_pre_generate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_pre_generate**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_pre_generate>`

导入过程的一部分。该方法在 :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>` 之后、\ :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` 之前运行。

该方法可用于在解析后、生成节点并运行最终的各节点导入步骤之前，修改到目前为止导入的任何数据。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, extensions\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_preflight>`

导入过程的一部分。该方法是最先运行的，在导入过程的所有其他部分之前。

返回值用于确定该 **GLTFDocumentExtension** 实例是否应该用于导入一个给定的 glTF 文件。如果为 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，则导入将使用该 **GLTFDocumentExtension** 实例。如果没有重写则返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_image_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_image_data**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image_data\: :ref:`PackedByteArray<class_PackedByteArray>`, mime_type\: :ref:`String<class_String>`, ret_image\: :ref:`Image<class_Image>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_image_data>`

导入过程的一部分。该方法在 :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` 之后、\ :ref:`_parse_texture_json()<class_GLTFDocumentExtension_private_method__parse_texture_json>` 之前运行。

解析 glTF 文件中的图像数据时会执行该方法。数据可以来自单独的文件、URI 或缓冲区，然后作为字节数组传递。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_node_extensions:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_node_extensions**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, extensions\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_node_extensions>`

导入过程的一部分。该方法在 :ref:`_get_supported_extensions()<class_GLTFDocumentExtension_private_method__get_supported_extensions>` 之后和 :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>` 之前运行。

在解析 GLTFNode 的节点扩展时运行。该方法可用于将扩展 JSON 数据，处理成可被 :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` 使用的格式。该返回值应该是 :ref:`Error<enum_@GlobalScope_Error>` 枚举中的一个成员。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, ret_gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_texture_json>`

导入过程的一部分。该方法在 :ref:`_parse_image_data()<class_GLTFDocumentExtension_private_method__parse_image_data>` 之后、\ :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` 之前运行。

该方法在解析 glTF 纹理数组中的纹理 JSON 时执行。可以使用该方法设置作为纹理使用的源图像索引。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__save_image_at_path:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save_image_at_path**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, file_path\: :ref:`String<class_String>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__save_image_at_path>`

导出过程的一部分。该方法在 :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` 之后、\ :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>` 之前运行。

该方法在将图像单独保存到 glTF 文件时执行。当图像为嵌入图像时会改为运行 :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`\ 。请注意，这些方法仅在选择该 **GLTFDocumentExtension** 作为图像导出器时运行。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_image_to_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_serialize_image_to_bytes**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, image_dict\: :ref:`Dictionary<class_Dictionary>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`

导出过程的一部分。该方法在 :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` 之后、\ :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>` 之前运行。

该方法在将图像嵌入到 glTF 文件时执行。当图像单独保存时，将改为运行 :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>`\ 。请注意，这些方法仅在选择该 **GLTFDocumentExtension** 作为图像导出器时运行。

该方法必须在 ``image_dict`` 中使用 ``"mimeType"`` 键设置图像的 MIME 类型。例如对于 PNG 图像，应该设置为 ``"image/png"``\ 。返回值必须是一个包含图像数据的 :ref:`PackedByteArray<class_PackedByteArray>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_serialize_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`, image_format\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_texture_json>`

导出过程的一部分。该方法在 :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` 或 :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>` 之后、\ :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>` 之前运行。请注意，该方法仅在选择该 **GLTFDocumentExtension** 作为图像导出器时运行。

该方法可用于通过编辑 ``texture_json`` 设置该纹理 JSON 的扩展。还必须使用 :ref:`GLTFState.add_used_extension()<class_GLTFState_method_add_used_extension>` 将该扩展添加为使用的扩展，如果你不提供后备，请务必将 ``required`` 设置为 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
