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

通過允許你在 glTF 匯入或匯出的各個階段執行任意程式碼，來擴充 :ref:`GLTFDocument<class_GLTFDocument>` 類的功能。

要使用它，請建立一個繼承自 GLTFDocumentExtension 的新類，覆寫（override）任何你需要的方法，建立該類的實例，然後使用 :ref:`GLTFDocument.register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>` 方法進行注冊。

\ **注意：** 所有 GLTFDocumentExtension 類在開始匯入或匯出流程時都會被複製（duplication）。除了設定值之外，這些類必須是無狀態的（stateless）才能正常工作。如果你需要儲存資料，請使用 :ref:`GLTFState<class_GLTFState>` 或 :ref:`GLTFNode<class_GLTFNode>` 中的 ``set_additional_data`` 和 ``get_additional_data`` 方法。

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

匯出過程的一部分。該方法在 :ref:`_export_preflight()<class_GLTFDocumentExtension_private_method__export_preflight>` 之後、\ :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>` 之前執行。

在轉換來自 Godot 場景節點的資料時執行。該方法可用於將 Godot 場景節點的資料處理成可以被 :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>` 使用的格式。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_export_get_property_list**\ (\ root_node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_get_property_list>`

在匯出過程之前執行。在編輯器中匯出場景時，該方法會在 :ref:`_export_preflight()<class_GLTFDocumentExtension_private_method__export_preflight>` 之前執行；但在其他情況下可能完全不執行。

與其餘的匯出方法不同，這不會在按順序呼叫 :ref:`GLTFDocument<class_GLTFDocument>` 的匯出方法時執行，而是在整個過程發生之前執行，從而允許預先進行設定，可能比 :ref:`_export_preflight()<class_GLTFDocumentExtension_private_method__export_preflight>` 提前數分鐘或數小時。這允許擴充根據場景的內容決定在編輯器匯出設定對話框中顯示哪些屬性，並隱藏對該場景不相關的任何設定。\ ``root_node`` 參數可能為 ``null``\ ，此時應顯示所有屬性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_node:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_node>`

匯出過程的一部分。該方法在 :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` 之後、\ :ref:`_export_post()<class_GLTFDocumentExtension_private_method__export_post>` 之前執行。如果該 **GLTFDocumentExtension** 用於匯出影像，則會在 :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>` 之後執行。

該方法可用於修改每個節點的最終 JSON。在序列化 JSON 之前，資料應主要被儲存在 ``gltf_node`` 中，但如果原始 Godot :ref:`Node<class_Node>` 可用，它也將被提供。\ ``node`` 不可用時可能為 ``null``\ ，例如匯出不是從 Godot 場景生成的 glTF 資料的場合。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`, target_object\: :ref:`Object<class_Object>`, target_depth\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_object_model_property>`

匯出過程的一部分。允許 GLTFDocumentExtension 類為 Godot 場景樹中節點的屬性提供映射，映射到 glTF 屬性的 JSON 指針，這些屬性由 glTF 物件模型定義。

回傳 :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` 實例，定義屬性的映射方式。如果你的擴充無法處理該屬性，請回傳 ``null`` 或回傳一個沒有任何 JSON 指針的實例（見 :ref:`GLTFObjectModelProperty.has_json_pointers()<class_GLTFObjectModelProperty_method_has_json_pointers>`\ ）。你應當使用 :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>` 來設定型別，通過 :ref:`GLTFObjectModelProperty.json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` 屬性設定 JSON 指針。

參數為屬性提供了情境，包括 NodePath、Godot 節點、GLTF 節點索引和目標物件。如果沒有找到子物件，則 ``target_object`` 等於 ``godot_node``\ ，否則將指向子物件。例如路徑為 ``^"A/B/C/MeshInstance3D:mesh:surface_0/material:emission_intensity"`` 時，會首先取得節點，然後是網格，接著是材質，因此 ``target_object`` 就是 :ref:`Material<class_Material>` 資源，而 ``target_depth`` 則為 2，因為到達目標時經過了 2 個層級。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post>`

匯出過程的一部分。該方法在最後執行，在匯出過程的所有其他部分之後。

該方法可用於修改生成的 glTF 檔案的最終 JSON。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post_convert:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post_convert**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post_convert>`

匯出過程的一部分。該方法在 :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` 之後、\ :ref:`_export_preserialize()<class_GLTFDocumentExtension_private_method__export_preserialize>` 之前執行。

該方法可用於在序列化之前修改轉換後的節點資料結構，可以使用來自場景樹的任何額外資料。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preflight>`

匯出過程的一部分。該方法是最先執行的，在匯出過程的所有其他部分之前。

回傳值用於確定該 **GLTFDocumentExtension** 實例是否應該用於匯出一個給定的 glTF 檔案。如果為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，則匯出將使用該 **GLTFDocumentExtension** 實例。如果沒有重寫則回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preserialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preserialize**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preserialize>`

匯出過程的一部分。該方法在 :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>` 之後、\ :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` 之前執行。

該方法可用於在執行序列化之前更改狀態。每次使用 :ref:`GLTFDocument.generate_buffer()<class_GLTFDocument_method_generate_buffer>` 生成緩衝區或使用 :ref:`GLTFDocument.write_to_filesystem()<class_GLTFDocument_method_write_to_filesystem>` 寫入檔案系統時，都會執行該方法。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__generate_scene_node:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **_generate_scene_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_parent\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__generate_scene_node>`

匯入過程的一部分。該方法在 :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>` 之後、\ :ref:`_import_node()<class_GLTFDocumentExtension_private_method__import_node>` 之前執行。

當從 GLTFNode 生成 Godot 場景節點時執行。回傳的節點將被新增到場景樹中。如果將多個節點新增為回傳節點的子節點，則可以在該步驟中生成這些節點。

\ **注意：**\ 如果這是單個根節點，則 ``scene_parent`` 參數可以為 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_image_file_extension:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_image_file_extension**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_image_file_extension>`

傳回用於將映像資料儲存到的檔案副檔名，例如\ ``".png"``\ 。如果已定義，則使用此副檔名時處理影像，並且影像保存到單獨的檔案中，影像位元組將被複製到具有此副檔名的檔案中。如果設定了此選項，則應該有一個\ :ref:`ResourceImporter<class_ResourceImporter>` 類別能夠匯入該檔案。如果未定義或為空時，Godot 會將影像儲存為 PNG 檔案。

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

匯入過程的一部分。該方法在 :ref:`_import_preflight()<class_GLTFDocumentExtension_private_method__import_preflight>` 之後、\ :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` 之前執行。

回傳一個陣列，元素為該 GLTFDocumentExtension 類支援的 glTF 擴充。用於驗證是否可以載入具有所需副檔名的 glTF 檔案。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_node:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_node>`

匯入過程的一部分。該方法在 :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` 之後 :ref:`_import_post()<class_GLTFDocumentExtension_private_method__import_post>` 之前執行。

該方法可用於對生成的每個 Godot 場景節點進行修改。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, split_json_pointer\: :ref:`PackedStringArray<class_PackedStringArray>`, partial_paths\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_object_model_property>`

匯入過程的一部分。該功能允許 GLTFDocumentExtension 類為 JSON 指針提供映射到 glTF 屬性，這些屬性由 glTF 物件模型定義，並映射到 Godot 場景樹中節點的屬性。

回傳 :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` 實例，定義屬性的映射方式。如果擴充無法處理該屬性，請回傳 ``null`` 或一個沒有任何 NodePath 的實例（見 :ref:`GLTFObjectModelProperty.has_node_paths()<class_GLTFObjectModelProperty_method_has_node_paths>`\ ）。你應當使用 :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>` 來設定型別，\ :ref:`GLTFObjectModelProperty.append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` 函式在大多數簡單情況下非常有用。

在許多情況下，\ ``partial_paths`` 包含了路徑的起始部分，允許擴充來補全路徑。例如對於 ``/nodes/3/extensions/MY_ext/prop``\ ，Godot 會傳遞給你一個指向節點 3 的 NodePath，因此 GLTFDocumentExtension 類只需解析路徑最後的 ``MY_ext/prop`` 部分。在這個例子中，擴充應在函式開始時檢查 ``split.size() > 4 and split[0] == "nodes" and split[2] == "extensions" and split[3] == "MY_ext"``\ ，確認該 JSON 指針是否適用，然後可以使用 ``partial_paths`` 並處理 ``split[4]``\ 。

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

匯入過程的一部分。該方法在 :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` 之後、\ :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>` 之前執行。

該方法可用於在解析後、生成節點並執行最終的各節點匯入步驟之前，修改到目前為止匯入的任何資料。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_pre_generate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_pre_generate**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_pre_generate>`

匯入過程的一部分。該方法在 :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>` 之後、\ :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` 之前執行。

該方法可用於在解析後、生成節點並執行最終的各節點匯入步驟之前，修改到目前為止匯入的任何資料。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, extensions\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_preflight>`

匯入過程的一部分。該方法是最先執行的，在匯入過程的所有其他部分之前。

回傳值用於確定該 **GLTFDocumentExtension** 實例是否應該用於匯入一個給定的 glTF 檔案。如果為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，則匯入將使用該 **GLTFDocumentExtension** 實例。如果沒有重寫則回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_image_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_image_data**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image_data\: :ref:`PackedByteArray<class_PackedByteArray>`, mime_type\: :ref:`String<class_String>`, ret_image\: :ref:`Image<class_Image>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_image_data>`

匯入過程的一部分。該方法在 :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` 之後、\ :ref:`_parse_texture_json()<class_GLTFDocumentExtension_private_method__parse_texture_json>` 之前執行。

解析 glTF 檔案中的影像資料時會執行該方法。資料可以來自單獨的檔案、URI 或緩衝區，然後作為位元組陣列傳遞。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_node_extensions:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_node_extensions**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, extensions\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_node_extensions>`

匯入過程的一部分。該方法在 :ref:`_get_supported_extensions()<class_GLTFDocumentExtension_private_method__get_supported_extensions>` 之後和 :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>` 之前執行。

在解析 GLTFNode 的節點擴充時執行。該方法可用於將擴充 JSON 資料，處理成可被 :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` 使用的格式。該回傳值應該是 :ref:`Error<enum_@GlobalScope_Error>` 列舉中的一個成員。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, ret_gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_texture_json>`

匯入過程的一部分。該方法在 :ref:`_parse_image_data()<class_GLTFDocumentExtension_private_method__parse_image_data>` 之後、\ :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` 之前執行。

該方法在解析 glTF 紋理陣列中的紋理 JSON 時執行。可以使用該方法設定作為紋理使用的源影像索引。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__save_image_at_path:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save_image_at_path**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, file_path\: :ref:`String<class_String>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__save_image_at_path>`

匯出過程的一部分。該方法在 :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` 之後、\ :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>` 之前執行。

該方法在將影像單獨儲存到 glTF 檔案時執行。當影像為嵌入影像時會改為執行 :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`\ 。請注意，這些方法僅在選擇該 **GLTFDocumentExtension** 作為影像匯出器時執行。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_image_to_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_serialize_image_to_bytes**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, image_dict\: :ref:`Dictionary<class_Dictionary>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`

匯出過程的一部分。該方法在 :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` 之後、\ :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>` 之前執行。

該方法在將影像嵌入到 glTF 檔案時執行。當影像單獨儲存時，將改為執行 :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>`\ 。請注意，這些方法僅在選擇該 **GLTFDocumentExtension** 作為影像匯出器時執行。

該方法必須在 ``image_dict`` 中使用 ``"mimeType"`` 鍵設定影像的 MIME 型別。例如對於 PNG 影像，應該設定為 ``"image/png"``\ 。回傳值必須是一個包含影像資料的 :ref:`PackedByteArray<class_PackedByteArray>`\ 。

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
