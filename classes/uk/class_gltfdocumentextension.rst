:github_url: hide

.. _class_GLTFDocumentExtension:

GLTFDocumentExtension
=====================

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`GLTFDocumentExtensionConvertImporterMesh<class_GLTFDocumentExtensionConvertImporterMesh>`

:ref:`GLTFDocument<class_GLTFDocument>` класу розширення.

.. rst-class:: classref-introduction-group

Опис
--------

Extends the functionality of the :ref:`GLTFDocument<class_GLTFDocument>` class by allowing you to run arbitrary code at various stages of glTF import or export.

To use, make a new class extending GLTFDocumentExtension, override any methods you need, make an instance of your class, and register it using :ref:`GLTFDocument.register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>`.

\ **Note:** All GLTFDocumentExtension classes are duplicated when beginning the import or export process. Except for configuration values, these classes must be stateless in order to function properly. If you need to store data, use the ``set_additional_data`` and ``get_additional_data`` methods in :ref:`GLTFState<class_GLTFState>` or :ref:`GLTFNode<class_GLTFNode>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Завантаження та збереження файлів під час виконання <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Методи
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

Описи методів
--------------------------

.. _class_GLTFDocumentExtension_private_method__convert_scene_node:

.. rst-class:: classref-method

|void| **_convert_scene_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__convert_scene_node>`

Частина процесу експорту. Цей метод запускається після :ref:`_export_preflight()<class_GLTFDocumentExtension_private_method__export_preflight>` і перед :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>`.

Запускається під час перетворення даних із вузла сцени Godot. Цей метод можна використовувати для обробки даних вузла сцени Godot у формат, який може використовуватися :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`.

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

Частина процесу експорту. Цей метод запускається після :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` і перед :ref:`_export_post()<class_GLTFDocumentExtension_private_method__export_post>`. Якщо цей **GLTFDocumentExtension** використовується для експорту зображень, він запускається після :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

Цей метод можна використовувати для зміни остаточного JSON кожного вузла. Дані мають зберігатися в ``gltf_node`` перед серіалізацією JSON, але оригінальний Godot :ref:`Node<class_Node>` також надається, якщо доступний. ``node`` може мати значення ``null``, якщо він недоступний, наприклад, під час експорту даних glTF, не згенерованих зі сцени Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`, target_object\: :ref:`Object<class_Object>`, target_depth\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_object_model_property>`

Частина процесу експорту. Дозволяє класам GLTFDocumentExtension забезпечувати зіставлення властивостей вузлів у дереві сцени Godot з покажчиками JSON на властивості glTF, як визначено об’єктною моделлю glTF.

Повертає екземпляр :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`, який визначає, як має бути відображено властивість. Якщо ваше розширення не може обробити властивість, поверніть ``null`` або екземпляр без жодних покажчиків JSON (див. :ref:`GLTFObjectModelProperty.has_json_pointers()<class_GLTFObjectModelProperty_method_has_json_pointers>`). Вам слід використовувати :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>`, щоб установити типи та встановити покажчик(и) JSON за допомогою властивості :ref:`GLTFObjectModelProperty.json_pointers<class_GLTFObjectModelProperty_property_json_pointers>`.

Параметри надають контекст для властивості, включаючи NodePath, вузол Godot, індекс вузла GLTF і цільовий об’єкт. ``target_object`` дорівнюватиме ``godot_node``, якщо субоб’єкт не знайдено, інакше він вказуватиме на субоб’єкт. Наприклад, якщо шлях ``^"A/B/C/MeshInstance3D:mesh:surface_0/material:emission_intensity"``, він отримає вузол, потім сітку, а потім матеріал, тому ``target_object`` буде ресурсом :ref:`Material<class_Material>`, а ``target_depth`` матиме 2, оскільки для досягнення цілі було пройдено 2 рівні.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post>`

Частина процесу експорту. Цей метод запускається останнім, після всіх інших частин процесу експорту.

Цей метод можна використовувати для зміни остаточного JSON створеного файлу glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post_convert:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post_convert**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post_convert>`

Частина процесу експорту. Цей метод запускається після :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` і перед :ref:`_export_preserialize()<class_GLTFDocumentExtension_private_method__export_preserialize>`.

Цей метод можна використовувати для зміни перетворених структур даних вузла перед серіалізацією з будь-якими додатковими даними з дерева сцени.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preflight>`

Частина процесу експорту. Цей метод запускається першим, перед усіма іншими частинами процесу експорту.

Повернене значення використовується для визначення того, чи слід використовувати цей екземпляр **GLTFDocumentExtension** для експорту заданого файлу glTF. Якщо :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, експорт використовуватиме цей екземпляр **GLTFDocumentExtension**. Якщо не перевизначено, повертається :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preserialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preserialize**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preserialize>`

Частина процесу експорту. Цей метод запускається після :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>` і перед :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`.

Цей метод можна використовувати для зміни стану перед виконанням серіалізації. Він запускається кожного разу, коли створюється буфер за допомогою :ref:`GLTFDocument.generate_buffer()<class_GLTFDocument_method_generate_buffer>` або записується у файлову систему за допомогою :ref:`GLTFDocument.write_to_filesystem()<class_GLTFDocument_method_write_to_filesystem>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__generate_scene_node:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **_generate_scene_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_parent\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__generate_scene_node>`

Частина процесу імпорту. Цей метод запускається після :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>` і перед :ref:`_import_node()<class_GLTFDocumentExtension_private_method__import_node>`.

Запускається під час генерації вузла сцени Godot з GLTFNode. Повернений вузол буде додано до дерева сцени. На цьому кроці можна створити кілька вузлів, якщо їх додати як дочірні вузли повернутого вузла.

\ **Примітка: ** Параметр ``scene_parent`` може мати значення ``null``, якщо це єдиний кореневий вузол.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_image_file_extension:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_image_file_extension**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_image_file_extension>`

Повертає розширення файлу для збереження даних зображення, наприклад, ``".png"``. Якщо визначено, коли це розширення використовується для обробки зображень і зображення зберігаються в окремому файлі, байти зображення буде скопійовано до файлу з цим розширенням. Якщо це встановлено, має бути клас :ref:`ResourceImporter<class_ResourceImporter>`, здатний імпортувати файл. Якщо не визначено або пусте, Godot збереже зображення у файл PNG.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_saveable_image_formats:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_saveable_image_formats**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`

Частина процесу експорту. Цей метод запускається після :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` і перед :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`.

Повертає масив форматів зображень, які можна зберегти/експортувати цим розширенням. Це розширення буде вибрано як засіб експорту зображень, лише якщо :ref:`GLTFDocument.image_format<class_GLTFDocument_property_image_format>` :ref:`GLTFDocument<class_GLTFDocument>` міститься в цьому масиві. Якщо цей **GLTFDocumentExtension** вибрано як засіб експорту зображень, один із методів :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` або :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>` буде запущено наступним, інакше :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>` буде запущено наступним. Якщо назва формату містить ``"Lossy"``, відображатиметься повзунок якості з втратами.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_supported_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_extensions**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_supported_extensions>`

Частина процесу імпорту. Цей метод запускається після :ref:`_import_preflight()<class_GLTFDocumentExtension_private_method__import_preflight>` і перед :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>`.

Повертає масив розширень glTF, які підтримуються цим класом GLTFDocumentExtension. Це використовується для перевірки того, чи можна завантажити файл glTF із потрібними розширеннями.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_node:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_node>`

Частина імпортного процесу. Цей метод працює після :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` і перед :ref:`_імпорт_пост()<class_GLTFDocumentExtension_private_method__імпорт_пост>`.

Цей метод може бути використаний для внесення змін до кожного з створених вузлів сцени Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, split_json_pointer\: :ref:`PackedStringArray<class_PackedStringArray>`, partial_paths\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_object_model_property>`

Частина процесу імпорту. Дозволяє класам GLTFDocumentExtension забезпечувати зіставлення покажчиків JSON на властивості glTF, як визначено об’єктною моделлю glTF, на властивості вузлів у дереві сцени Godot.

Повертає екземпляр :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`, який визначає, як має бути відображено властивість. Якщо ваше розширення не може обробити властивість, поверніть ``null`` або екземпляр без будь-яких NodePaths (див. :ref:`GLTFObjectModelProperty.has_node_paths()<class_GLTFObjectModelProperty_method_has_node_paths>`). Для встановлення типів слід використовувати :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>`, а функція :ref:`GLTFObjectModelProperty.append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` корисна для більшості простих випадків.

У багатьох випадках ``partial_paths`` міститиме початок шляху, дозволяючи розширенню завершити шлях. Наприклад, для ``/nodes/3/extensions/MY_ext/prop`` Godot передасть вам NodePath, який веде до вузла 3, тому клас GLTFDocumentExtension має розпізнати лише останню частину шляху ``MY_ext/prop``. У цьому прикладі розширення має перевірити ``split.size() > 4 і split[0] == "nodes" і split[2] == "extensions" і split[3] == "MY_ext"`` на початку функції, щоб перевірити, чи цей покажчик JSON застосовується до нього, тоді воно може використовувати ``partial_paths`` і обробляти ``split[4]``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_post:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_post**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_post>`

Частина імпортного процесу. Цей метод працює останнім, після всіх інших частин процесу імпорту.

Цей метод може бути використаний для зміни кінцевої сцени Godot, створеної процесом імпорту.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_post_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_post_parse**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_post_parse>`

Частина процесу імпорту. Цей метод запускається після :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` і перед :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>`.

Цей метод можна використовувати для зміни будь-яких даних, імпортованих на даний момент після аналізу кожного вузла, але перед генерацією сцени або будь-якого з її вузлів.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_pre_generate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_pre_generate**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_pre_generate>`

Частина імпортного процесу. Цей метод працює після :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` і перед :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`.

Цей метод може бути використаний для зміни будь-яких даних, що імпортуються так далеко після парсингу, перед створенням вузлів, а потім запуску кінцевого / без імпортного кроку.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, extensions\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_preflight>`

Частина процесу імпорту. Цей метод запускається першим, перед усіма іншими частинами процесу імпорту.

Повернене значення використовується для визначення того, чи слід використовувати цей екземпляр **GLTFDocumentExtension** для імпорту даного файлу glTF. Якщо :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, імпорт використовуватиме цей екземпляр **GLTFDocumentExtension**. Якщо не перевизначено, повертається :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_image_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_image_data**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image_data\: :ref:`PackedByteArray<class_PackedByteArray>`, mime_type\: :ref:`String<class_String>`, ret_image\: :ref:`Image<class_Image>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_image_data>`

Частина процесу імпорту. Цей метод запускається після :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` і перед :ref:`_parse_texture_json()<class_GLTFDocumentExtension_private_method__parse_texture_json>`.

Запускається під час аналізу даних зображення з файлу glTF. Дані можуть бути отримані з окремого файлу, URI або буфера, а потім передаються як масив байтів.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_node_extensions:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_node_extensions**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, extensions\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_node_extensions>`

Частина імпортного процесу. Цей метод працює після :ref:`_supported_extensions()<class_GLTFDocumentExtension_private_method__supported_extensions>` і перед :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>`.

Запускає при парсуванні розширення вузлів GLTFNode. Цей метод можна використовувати для обробки розширення даних JSON у форматі, який можна використовувати за допомогою ``метод_generate_scene_node``. Вартість повернення повинна бути членом :ref:`Error<enum_@GlobalScope_Error>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, ret_gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_texture_json>`

Частина процесу імпорту. Цей метод запускається після :ref:`_parse_image_data()<class_GLTFDocumentExtension_private_method__parse_image_data>` і перед :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`.

Запускається під час аналізу JSON текстури з масиву текстур glTF. Це можна використовувати для встановлення індексу вихідного зображення для використання як текстури.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__save_image_at_path:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save_image_at_path**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, file_path\: :ref:`String<class_String>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__save_image_at_path>`

Частина процесу експорту. Цей метод запускається після :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` і перед :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

Цей метод запускається під час збереження зображень окремо від файлу glTF. Коли зображення вбудовані, замість них виконується :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`. Зауважте, що ці методи запускаються лише тоді, коли **GLTFDocumentExtension** вибрано як експортер зображень.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_image_to_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_serialize_image_to_bytes**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, image_dict\: :ref:`Dictionary<class_Dictionary>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`

Частина процесу експорту. Цей метод запускається після :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` і перед :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

Цей метод запускається під час вбудовування зображень у файл glTF. Коли зображення зберігаються окремо, замість них виконується :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>`. Зауважте, що ці методи запускаються лише тоді, коли **GLTFDocumentExtension** вибрано як експортер зображень.

Цей метод має встановити тип MIME зображення в ``image_dict`` за допомогою ключа ``"mimeType"``. Наприклад, для зображення PNG буде встановлено значення ``"image/png"``. Поверненим значенням має бути :ref:`PackedByteArray<class_PackedByteArray>`, що містить дані зображення.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_serialize_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`, image_format\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_texture_json>`

Частина експортного процесу. Цей метод працює після :ref:`_image_at_path()<class_GLTFDocumentExtension_private_method__image_at_path>` або :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`, а перед :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`. Зверніть увагу, що цей метод тільки працює, коли це **GLTFDocumentExtension** вибрано як експортер зображень.

Цей метод можна використовувати для налаштування розширень для текстури JSON шляхом редагування ``texture_json``. Розширення також повинна бути додана, як використовується розширення з :ref:`GLTFState.add_used_extension()<class_GLTFState_method_add_used_extension>`, обов'язково, щоб встановити ``0`` до ``true``, якщо ви не надаєте зворотному зв'язку.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
