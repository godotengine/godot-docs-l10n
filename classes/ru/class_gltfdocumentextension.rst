:github_url: hide

.. _class_GLTFDocumentExtension:

GLTFDocumentExtension
=====================

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`GLTFDocumentExtensionConvertImporterMesh<class_GLTFDocumentExtensionConvertImporterMesh>`

Класс расширения :ref:`GLTFDocument<class_GLTFDocument>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Extends the functionality of the :ref:`GLTFDocument<class_GLTFDocument>` class by allowing you to run arbitrary code at various stages of glTF import or export.

To use, make a new class extending GLTFDocumentExtension, override any methods you need, make an instance of your class, and register it using :ref:`GLTFDocument.register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>`.

\ **Note:** All GLTFDocumentExtension classes are duplicated when beginning the import or export process. Except for configuration values, these classes must be stateless in order to function properly. If you need to store data, use the ``set_additional_data`` and ``get_additional_data`` methods in :ref:`GLTFState<class_GLTFState>` or :ref:`GLTFNode<class_GLTFNode>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Загрузка и сохранение файла времени выполнения <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Методы
------------

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

Описания метода
------------------------------

.. _class_GLTFDocumentExtension_private_method__convert_scene_node:

.. rst-class:: classref-method

|void| **_convert_scene_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__convert_scene_node>`

Часть процесса экспорта. Этот метод запускается после :ref:`_export_preflight()<class_GLTFDocumentExtension_private_method__export_preflight>` и до :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>`.

Запускается при конвертации данных из узла сцены Godot. Этот метод можно использовать для обработки данных узла сцены Godot в формат, который может использоваться :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`.

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

Часть процесса экспорта. Этот метод запускается после :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` и до :ref:`_export_post()<class_GLTFDocumentExtension_private_method__export_post>`. Если этот **GLTFDocumentExtension** используется для экспорта изображений, он запускается после :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

Этот метод можно использовать для изменения окончательного JSON каждого узла. Данные должны быть в первую очередь сохранены в ``gltf_node`` до сериализации JSON, но исходный :ref:`Node<class_Node>` Godot также предоставляется, если он доступен. ``node`` может быть ``null``, если он недоступен, например, при экспорте данных glTF, не сгенерированных из сцены Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`, target_object\: :ref:`Object<class_Object>`, target_depth\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_object_model_property>`

Часть процесса экспорта. Позволяет классам GLTFDocumentExtension предоставлять сопоставления для свойств узлов в дереве сцены Godot, указателям JSON на свойства glTF, как определено объектной моделью glTF.

Возвращает экземпляр :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`, который определяет, как свойство должно быть сопоставлено. Если ваше расширение не может обработать свойство, верните ``null`` или экземпляр без каких-либо указателей JSON (см. :ref:`GLTFObjectModelProperty.has_json_pointers()<class_GLTFObjectModelProperty_method_has_json_pointers>`). Вам следует использовать :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>` для установки типов и задать указатель(и) JSON с помощью свойства :ref:`GLTFObjectModelProperty.json_pointers<class_GLTFObjectModelProperty_property_json_pointers>`.

Параметры предоставляют контекст для свойства, включая NodePath, узел Godot, индекс узла GLTF и целевой объект. ``target_object`` будет равен ``godot_node``, если не может быть найден ни один подобъект, в противном случае он будет указывать на подобъект. Например, если путь ``^"A/B/C/MeshInstance3D:mesh:surface_0/material:emission_intensity"``, он получит узел, затем сетку, а затем материал, поэтому ``target_object`` будет ресурсом :ref:`Material<class_Material>`, а ``target_depth`` будет равен 2, поскольку для достижения цели было пройдено 2 уровня.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post>`

Часть процесса экспорта. Этот метод запускается последним, после всех остальных частей процесса экспорта.

Этот метод можно использовать для изменения окончательного JSON сгенерированного файла glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post_convert:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post_convert**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post_convert>`

Часть процесса экспорта. Этот метод запускается после :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` и перед :ref:`_export_preserialize()<class_GLTFDocumentExtension_private_method__export_preserialize>`.

Этот метод можно использовать для изменения структур данных преобразованного узла перед сериализацией с любыми дополнительными данными из дерева сцены.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preflight>`

Часть процесса экспорта. Этот метод запускается первым, до всех остальных частей процесса экспорта.

Возвращаемое значение используется для определения того, следует ли использовать этот экземпляр **GLTFDocumentExtension** для экспорта заданного файла glTF. Если :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, экспорт будет использовать этот экземпляр **GLTFDocumentExtension**. Если не переопределено, возвращается :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preserialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preserialize**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preserialize>`

Часть процесса экспорта. Этот метод запускается после :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>` и до :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`.

Этот метод можно использовать для изменения состояния перед выполнением сериализации. Он запускается каждый раз при генерации буфера с помощью :ref:`GLTFDocument.generate_buffer()<class_GLTFDocument_method_generate_buffer>` или записи в файловую систему с помощью :ref:`GLTFDocument.write_to_filesystem()<class_GLTFDocument_method_write_to_filesystem>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__generate_scene_node:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **_generate_scene_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_parent\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__generate_scene_node>`

Часть процесса импорта. Этот метод запускается после :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>` и до :ref:`_import_node()<class_GLTFDocumentExtension_private_method__import_node>`.

Запускается при генерации узла сцены Godot из GLTFNode. Возвращаемый узел будет добавлен в дерево сцены. На этом этапе можно сгенерировать несколько узлов, если они добавляются как дочерние элементы возвращаемого узла.

\ **Примечание:** Параметр ``scene_parent`` может быть ``null``, если это единственный корневой узел.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_image_file_extension:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_image_file_extension**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_image_file_extension>`

Возвращает расширение файла, используемое для сохранения данных изображения, например, ``".png"``. Если определено, когда это расширение используется для обработки изображений, и изображения сохраняются в отдельный файл, байты изображения будут скопированы в файл с этим расширением. Если это задано, должен быть класс :ref:`ResourceImporter<class_ResourceImporter>`, способный импортировать файл. Если не определено или пусто, Godot сохранит изображение в файл PNG.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_saveable_image_formats:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_saveable_image_formats**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`

Часть процесса экспорта. Этот метод запускается после :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` и до :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`.

Возвращает массив форматов изображений, которые могут быть сохранены/экспортированы этим расширением. Это расширение будет выбрано в качестве экспортера изображений, только если :ref:`GLTFDocument.image_format<class_GLTFDocument_property_image_format>` :ref:`GLTFDocument<class_GLTFDocument>` находится в этом массиве. Если этот **GLTFDocumentExtension** выбран в качестве экспортера изображений, следующим будет запущен один из методов :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` или :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`, в противном случае следующим будет запущен :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`. Если имя формата содержит ``"Lossy"``, будет отображен ползунок качества с потерями.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_supported_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_extensions**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_supported_extensions>`

Часть процесса импорта. Этот метод запускается после :ref:`_import_preflight()<class_GLTFDocumentExtension_private_method__import_preflight>` и до :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>`.

Возвращает массив расширений glTF, поддерживаемых этим классом GLTFDocumentExtension. Используется для проверки возможности загрузки файла glTF с требуемыми расширениями.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_node:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_node>`

Часть процесса импорта. Этот метод запускается после :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` и перед :ref:`_import_post()<class_GLTFDocumentExtension_private_method__import_post>`.

Этот метод можно использовать для внесения изменений в каждый из сгенерированных узлов сцены Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, split_json_pointer\: :ref:`PackedStringArray<class_PackedStringArray>`, partial_paths\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_object_model_property>`

Часть процесса импорта. Позволяет классам GLTFDocumentExtension предоставлять сопоставления для указателей JSON на свойства glTF, как определено объектной моделью glTF, со свойствами узлов в дереве сцены Godot.

Возвращает экземпляр :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`, который определяет, как свойство должно быть сопоставлено. Если ваше расширение не может обработать свойство, верните ``null`` или экземпляр без NodePaths (см. :ref:`GLTFObjectModelProperty.has_node_paths()<class_GLTFObjectModelProperty_method_has_node_paths>`). Вам следует использовать :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>` для установки типов, а функция :ref:`GLTFObjectModelProperty.append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` полезна для большинства простых случаев.

Во многих случаях ``partial_paths`` будет содержать начало пути, позволяя расширению завершить путь. Например, для ``/nodes/3/extensions/MY_ext/prop`` Godot передаст вам NodePath, который ведет к узлу 3, поэтому классу GLTFDocumentExtension нужно разрешить только последнюю часть пути ``MY_ext/prop``. В этом примере расширение должно проверить ``split.size() > 4 and split[0] == "nodes" and split[2] == "extensions" and split[3] == "MY_ext"`` в начале функции, чтобы проверить, применяется ли к ней этот указатель JSON, затем он может использовать ``partial_paths`` и обработать ``split[4]``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_post:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_post**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_post>`

Часть процесса импорта. Этот метод запускается последним, после всех остальных частей процесса импорта.

Этот метод можно использовать для изменения финальной сцены Godot, созданной в процессе импорта.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_post_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_post_parse**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_post_parse>`

Часть процесса импорта. Этот метод запускается после :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` и перед :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>`.

Этот метод можно использовать для изменения любых данных, импортированных до сих пор после анализа каждого узла, но до генерации сцены или любого из ее узлов.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_pre_generate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_pre_generate**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_pre_generate>`

Часть процесса импорта. Этот метод запускается после :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>` и перед :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`.

Этот метод можно использовать для изменения или чтения из любой обработанной структуры данных перед генерацией узлов и последующим запуском последнего шага импорта по узлам.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, extensions\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_preflight>`

Часть процесса импорта. Этот метод запускается первым, до всех остальных частей процесса импорта.

Возвращаемое значение используется для определения того, следует ли использовать этот экземпляр **GLTFDocumentExtension** для импорта заданного файла glTF. Если :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, импорт будет использовать этот экземпляр **GLTFDocumentExtension**. Если не переопределено, возвращается :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_image_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_image_data**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image_data\: :ref:`PackedByteArray<class_PackedByteArray>`, mime_type\: :ref:`String<class_String>`, ret_image\: :ref:`Image<class_Image>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_image_data>`

Часть процесса импорта. Этот метод запускается после :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` и до :ref:`_parse_texture_json()<class_GLTFDocumentExtension_private_method__parse_texture_json>`.

Запускается при разборе данных изображения из файла glTF. Данные могут быть получены из отдельного файла, URI или буфера, а затем переданы как массив байтов.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_node_extensions:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_node_extensions**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, extensions\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_node_extensions>`

Часть процесса импорта. Этот метод запускается после :ref:`_get_supported_extensions()<class_GLTFDocumentExtension_private_method__get_supported_extensions>` и до :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>`.

Запускается при разборе расширений узлов GLTFNode. Этот метод можно использовать для обработки данных расширения JSON в формат, который может использоваться :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`. Возвращаемое значение должно быть членом перечисления :ref:`Error<enum_@GlobalScope_Error>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, ret_gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_texture_json>`

Часть процесса импорта. Этот метод запускается после :ref:`_parse_image_data()<class_GLTFDocumentExtension_private_method__parse_image_data>` и до :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`.

Запускается при разборе текстуры JSON из массива текстур glTF. Это можно использовать для установки индекса исходного изображения для использования в качестве текстуры.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__save_image_at_path:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save_image_at_path**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, file_path\: :ref:`String<class_String>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__save_image_at_path>`

Часть процесса экспорта. Этот метод запускается после :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` и до :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

Этот метод запускается при сохранении изображений отдельно от файла glTF. Если изображения встроены, вместо него запускается :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`. Обратите внимание, что эти методы запускаются только тогда, когда в качестве экспортера изображений выбрано **GLTFDocumentExtension**.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_image_to_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_serialize_image_to_bytes**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, image_dict\: :ref:`Dictionary<class_Dictionary>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`

Часть процесса экспорта. Этот метод запускается после :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` и до :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

Этот метод запускается при встраивании изображений в файл glTF. Когда изображения сохраняются отдельно, вместо него запускается :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>`. Обратите внимание, что эти методы запускаются только тогда, когда в качестве экспортера изображений выбрано **GLTFDocumentExtension**.

Этот метод должен задать тип MIME изображения в ``image_dict`` с ключом ``"mimeType"``. Например, для изображения PNG он будет установлен на ``"image/png"``. Возвращаемое значение должно быть :ref:`PackedByteArray<class_PackedByteArray>`, содержащим данные изображения.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_serialize_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`, image_format\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_texture_json>`

Часть процесса экспорта. Этот метод запускается после :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` или :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>` и перед :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`. Обратите внимание, что этот метод запускается только тогда, когда этот **GLTFDocumentExtension** выбран в качестве экспортера изображений.

Этот метод можно использовать для настройки расширений для текстуры JSON путем редактирования ``texture_json``. Расширение также должно быть добавлено как используемое расширение с :ref:`GLTFState.add_used_extension()<class_GLTFState_method_add_used_extension>`, обязательно установите ``required`` на ``true``, если вы не предоставляете запасной вариант.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
