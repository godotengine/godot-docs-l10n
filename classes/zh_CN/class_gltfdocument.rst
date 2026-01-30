:github_url: hide

.. _class_GLTFDocument:

GLTFDocument
============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`FBXDocument<class_FBXDocument>`

用于在 Godot 中导入和导出 glTF 文件的类。

.. rst-class:: classref-introduction-group

描述
----

GLTFDocument 支持从 glTF 文件、缓冲区或 Godot 场景中读取数据。然后可以将该数据写入文件系统、缓冲区或用于创建 Godot 场景。

glTF 场景中的所有数据都存储在 :ref:`GLTFState<class_GLTFState>` 类中。GLTFDocument 处理状态对象，但本身不包含任何场景数据。GLTFDocument 有成员变量来存储如图像格式等导出配置设置，但在其他方面是无状态的。可以使用相同的 GLTFDocument 对象和不同的 :ref:`GLTFState<class_GLTFState>` 对象以相同的设置处理多个场景。

通过扩展 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 类并通过 :ref:`register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>` 将其注册到 GLTFDocument，则可以使用任意功能来扩展 GLTFDocument。这允许自定义数据被导入和导出。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`运行时文件加载与保存 <../tutorials/io/runtime_file_loading_and_saving>`

- `glTF '鸭子是什么？' 指南 <https://www.khronos.org/files/gltf20-reference-guide.pdf>`__

- `Khronos glTF 规范 <https://registry.khronos.org/glTF/>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`String<class_String>`                             | :ref:`fallback_image_format<class_GLTFDocument_property_fallback_image_format>`   | ``"None"`` |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                               | :ref:`fallback_image_quality<class_GLTFDocument_property_fallback_image_quality>` | ``0.25``   |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`String<class_String>`                             | :ref:`image_format<class_GLTFDocument_property_image_format>`                     | ``"PNG"``  |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                               | :ref:`lossy_quality<class_GLTFDocument_property_lossy_quality>`                   | ``0.75``   |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>`     | :ref:`root_node_mode<class_GLTFDocument_property_root_node_mode>`                 | ``0``      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+
   | :ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` | :ref:`visibility_mode<class_GLTFDocument_property_visibility_mode>`               | ``0``      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------+------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`append_from_buffer<class_GLTFDocument_method_append_from_buffer>`\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, base_path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ )                       |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`append_from_file<class_GLTFDocument_method_append_from_file>`\ (\ path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0, base_path\: :ref:`String<class_String>` = ""\ )                                         |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`append_from_scene<class_GLTFDocument_method_append_from_scene>`\ (\ node\: :ref:`Node<class_Node>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ )                                                                                         |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` | :ref:`export_object_model_property<class_GLTFDocument_method_export_object_model_property>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`\ ) |static| |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                 | :ref:`generate_buffer<class_GLTFDocument_method_generate_buffer>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ )                                                                                                                                                                |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                       | :ref:`generate_scene<class_GLTFDocument_method_generate_scene>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, bake_fps\: :ref:`float<class_float>` = 30, trimming\: :ref:`bool<class_bool>` = false, remove_immutable_tracks\: :ref:`bool<class_bool>` = true\ )                 |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_supported_gltf_extensions<class_GLTFDocument_method_get_supported_gltf_extensions>`\ (\ ) |static|                                                                                                                                                                      |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` | :ref:`import_object_model_property<class_GLTFDocument_method_import_object_model_property>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, json_pointer\: :ref:`String<class_String>`\ ) |static|                                                                                 |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`register_gltf_document_extension<class_GLTFDocument_method_register_gltf_document_extension>`\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, first_priority\: :ref:`bool<class_bool>` = false\ ) |static|                                       |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`unregister_gltf_document_extension<class_GLTFDocument_method_unregister_gltf_document_extension>`\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`\ ) |static|                                                                                     |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`write_to_filesystem<class_GLTFDocument_method_write_to_filesystem>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`, path\: :ref:`String<class_String>`\ )                                                                                                                    |
   +---------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GLTFDocument_RootNodeMode:

.. rst-class:: classref-enumeration

enum **RootNodeMode**: :ref:`🔗<enum_GLTFDocument_RootNodeMode>`

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_SINGLE_ROOT** = ``0``

将 Godot 场景的根节点视为 glTF 文件的根节点，并通过 ``GODOT_single_root`` glTF 扩展将其标记为单根节点。如果实现不支持 ``GODOT_single_root``\ ，这将与 :ref:`ROOT_NODE_MODE_KEEP_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT>` 进行相同的解析。

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_KEEP_ROOT** = ``1``

将 Godot 场景的根节点视为 glTF 文件的根节点，但不要将其标记为任何特殊的东西。导入 Godot 时会生成一个额外的根节点。这仅使用普通 glTF 功能。这相当于 Godot 4.1 及更早版本中的行为。

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_MULTI_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_MULTI_ROOT** = ``2``

将 Godot 场景的根节点视为 glTF 场景的名称，并将其所有子节点添加为 glTF 文件的根节点。这仅使用普通 glTF 功能。这避免了额外的根节点，但只会保留 Godot 场景根节点的名称，因为它不会被保存为节点。

.. rst-class:: classref-item-separator

----

.. _enum_GLTFDocument_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_GLTFDocument_VisibilityMode>`

.. _class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_INCLUDE_REQUIRED** = ``0``

如果场景中包含不可见节点，则会包含这些节点，使用 ``KHR_node_visibility`` 将它们标记为不可见，要求导入器将这些节点处理为不可见。缺点：如果导入器不支持 ``KHR_node_visibility`` 就无法导入该文件。

.. _class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_OPTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_INCLUDE_OPTIONAL** = ``1``

如果场景中包含不可见节点，则会包含这些节点，使用 ``KHR_node_visibility`` 将它们标记为不可见，但并不对导入器施加任何要求。缺点：如果导入器不支持 ``KHR_node_visibility``\ ，本应不可见的对象就会可见。

.. _class_GLTFDocument_constant_VISIBILITY_MODE_EXCLUDE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_EXCLUDE** = ``2``

如果场景中包含不可见节点，则导出的场景中不包含这些节点。与 Godot 4.4 及之前版本的行为一致。缺点：导出后的文件中不存在不可见节点。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GLTFDocument_property_fallback_image_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **fallback_image_format** = ``"None"`` :ref:`🔗<class_GLTFDocument_property_fallback_image_format>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_image_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_fallback_image_format**\ (\ )

回退图像格式的用户友好名称，用于导出 glTF 文件，包括写入文件和写入字节数组。

该选项只能在“None”“PNG”“JPEG”中选择一个，只有在 :ref:`image_format<class_GLTFDocument_property_image_format>` 不是“None”“PNG”“JPEG”三者之一时会用到。如果希望有多个扩展图像格式，可以使用 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 类来实现——此属性只适合在使用自定义图像格式时提供基本的 glTF 回退图像。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_fallback_image_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **fallback_image_quality** = ``0.25`` :ref:`🔗<class_GLTFDocument_property_fallback_image_quality>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_image_quality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fallback_image_quality**\ (\ )

回退图像的质量，可能不存在。对于 PNG 文件而言，会根据这个系数缩小图像的宽高。对于 JPEG 文件而言，则是图像的失真质量。建议使用较低的值，因为在 glTF 文件中包含多个高质量图像会抵消使用更高效图像格式所带来的文件大小优势。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_image_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **image_format** = ``"PNG"`` :ref:`🔗<class_GLTFDocument_property_image_format>`

.. rst-class:: classref-property-setget

- |void| **set_image_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_image_format**\ (\ )

导出图像格式的用户友好名称，用于导出 glTF 文件，包括写入文件和写入字节数组。

默认情况下，Godot 允许在“None”“PNG”“JPEG”“Lossless WebP”“Lossy WebP”中选择一个。可以在 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 类中添加对更多图像格式的支持。一个扩展类可以提供对特定格式的多种选项，甚至可以提供一个同时使用多种格式的选项。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **lossy_quality** = ``0.75`` :ref:`🔗<class_GLTFDocument_property_lossy_quality>`

.. rst-class:: classref-property-setget

- |void| **set_lossy_quality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lossy_quality**\ (\ )

如果 :ref:`image_format<class_GLTFDocument_property_image_format>` 是有损图像格式，则这决定了该图像的有损质量。在 ``0.0`` 到 ``1.0`` 范围内，其中 ``0.0`` 是最低质量，\ ``1.0`` 是最高质量。\ ``1.0`` 的有损质量不同于无损质量。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_root_node_mode:

.. rst-class:: classref-property

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **root_node_mode** = ``0`` :ref:`🔗<class_GLTFDocument_property_root_node_mode>`

.. rst-class:: classref-property-setget

- |void| **set_root_node_mode**\ (\ value\: :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>`\ )
- :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **get_root_node_mode**\ (\ )

导出时如何处理根节点。默认和推荐值为 :ref:`ROOT_NODE_MODE_SINGLE_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT>`\ 。

\ **注意：**\ 无论 glTF 文件如何导出，导入时，根节点类型和名称都可以在场景导入设置选项卡中被覆盖。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_GLTFDocument_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **get_visibility_mode**\ (\ )

导出时如何处理节点的可见性。如果所有节点都可见，则该设置不做任何事情。默认推荐值为 :ref:`VISIBILITY_MODE_INCLUDE_REQUIRED<class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_REQUIRED>`\ ，使用 ``KHR_node_visibility`` 扩展。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GLTFDocument_method_append_from_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_buffer**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, base_path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_buffer>`

接受定义 glTF 的 :ref:`PackedByteArray<class_PackedByteArray>`\ ，将数据导入通过 ``state`` 参数给定的 :ref:`GLTFState<class_GLTFState>` 对象。

\ **注意：**\ ``base_path`` 代表 :ref:`append_from_buffer()<class_GLTFDocument_method_append_from_buffer>` 寻找依赖项的位置，可以为空。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_file**\ (\ path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0, base_path\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_GLTFDocument_method_append_from_file>`

接受 glTF 文件的路径，将文件路径处的数据导入通过 ``state`` 参数给定的 :ref:`GLTFState<class_GLTFState>` 对象。

\ **注意：**\ ``base_path`` 代表 :ref:`append_from_file()<class_GLTFDocument_method_append_from_file>` 寻找依赖项的位置，可以为空。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_scene**\ (\ node\: :ref:`Node<class_Node>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_scene>`

接收一个 Godot 引擎的场景节点，并通过 ``state`` 参数将其及其后代导出到给定的 :ref:`GLTFState<class_GLTFState>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_export_object_model_property>`

确定给定 Godot ``node_path`` 与生成的 glTF 文件中相应的 glTF 对象模型 JSON 指针之间的映射。该映射的详细信息以 :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` 对象的形式返回。可以通过 :ref:`GLTFDocumentExtension._import_object_model_property()<class_GLTFDocumentExtension_private_method__import_object_model_property>` 回调方法提供额外的映射。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_buffer:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **generate_buffer**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) :ref:`🔗<class_GLTFDocument_method_generate_buffer>`

通过 ``state`` 参数接收一个 :ref:`GLTFState<class_GLTFState>` 对象，并返回一个 glTF :ref:`PackedByteArray<class_PackedByteArray>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **generate_scene**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, bake_fps\: :ref:`float<class_float>` = 30, trimming\: :ref:`bool<class_bool>` = false, remove_immutable_tracks\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_GLTFDocument_method_generate_scene>`

通过 ``state`` 参数接收一个 :ref:`GLTFState<class_GLTFState>` 对象，并返回一个 Godot 引擎的场景节点。

\ ``bake_fps`` 参数会覆盖 ``state`` 中的 bake_fps。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_get_supported_gltf_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_supported_gltf_extensions**\ (\ ) |static| :ref:`🔗<class_GLTFDocument_method_get_supported_gltf_extensions>`

返回所有支持的 glTF 扩展列表，包括引擎直接支持的扩展和用户插件注册的 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 类支持的扩展。

\ **注意：**\ 如果在注册 GLTFDocumentExtension 之前运行该方法，则列表中不会包含它所对应的扩展。请确保在注册所有扩展后再运行该方法。如果在引擎启动时运行该方法，请考虑在调用g该方法之前等待一帧，确保所有扩展都已注册。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, json_pointer\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_import_object_model_property>`

确定给定 glTF 对象模型 ``json_pointer`` 与生成的 Godot 场景中相应的 Godot 节点路径之间的映射。该映射的详细信息以 :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` 对象的形式返回。可以通过 :ref:`GLTFDocumentExtension._export_object_model_property()<class_GLTFDocumentExtension_private_method__export_object_model_property>` 回调方法提供额外的映射。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_register_gltf_document_extension:

.. rst-class:: classref-method

|void| **register_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, first_priority\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_GLTFDocument_method_register_gltf_document_extension>`

使用 GLTFDocument 注册给定的 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 实例。如果 ``first_priority`` 为 ``true``\ ，则该扩展将被首先运行。否则，它将被最后运行。

\ **注意：**\ 与 GLTFDocument 本身一样，所有 GLTFDocumentExtension 类都必须是无状态的才能正常运行。如果需要存储数据，使用 :ref:`GLTFState<class_GLTFState>` 或 :ref:`GLTFNode<class_GLTFNode>` 中的 ``set_additional_data`` 和 ``get_additional_data`` 方法。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_unregister_gltf_document_extension:

.. rst-class:: classref-method

|void| **unregister_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_unregister_gltf_document_extension>`

将给定的 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 实例取消注册。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_write_to_filesystem:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_to_filesystem**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GLTFDocument_method_write_to_filesystem>`

通过 ``state`` 参数接收一个 :ref:`GLTFState<class_GLTFState>` 对象，并将一个 glTF 文件写入文件系统。

\ **注意：**\ glTF 文件的扩展名决定了它是一个 .glb 二进制文件还是一个 .gltf 文本文件。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
