:github_url: hide

.. _class_GLTFDocument:

GLTFDocument
============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`FBXDocument<class_FBXDocument>`

用於在 Godot 中匯入和匯出 glTF 檔案的類別。

.. rst-class:: classref-introduction-group

說明
----

GLTFDocument 支援從 glTF 檔案、緩衝區或 Godot 場景中讀取資料。然後可以將該資料寫入檔案系統、緩衝區或用於建立 Godot 場景。

glTF 場景中的所有資料都儲存在 :ref:`GLTFState<class_GLTFState>` 類中。GLTFDocument 處理狀態物件，但本身不包含任何場景資料。GLTFDocument 有成員變數來儲存如影像格式等匯出設定設定，但在其他方面是無狀態的。可以使用相同的 GLTFDocument 物件和不同的 :ref:`GLTFState<class_GLTFState>` 物件以相同的設定處理多個場景。

通過擴充 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類並通過 :ref:`register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>` 將其注冊到 GLTFDocument，則可以使用任意功能來擴充 GLTFDocument。這允許自訂資料被匯入和匯出。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

- `glTF '什麼鴨子？'指南 <https://www.khronos.org/files/gltf20-reference-guide.pdf>`__

- `Khronos glTF 規範 <https://registry.khronos.org/glTF/>`__

.. rst-class:: classref-reftable-group

屬性
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
   | :ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` | :ref:`texture_map_mode<class_GLTFDocument_property_texture_map_mode>`             | ``1``      |
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

列舉
----

.. _enum_GLTFDocument_RootNodeMode:

.. rst-class:: classref-enumeration

enum **RootNodeMode**: :ref:`🔗<enum_GLTFDocument_RootNodeMode>`

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_SINGLE_ROOT** = ``0``

將Godot場景的根節點視為glTF檔案的根節點，並透過\ ``GODOT_single_root`` glTF擴充將其標記為單一根節點。這如果實作不支援\ ``GODOT_single_root``\ ，則會與\ :ref:`ROOT_NODE_MODE_KEEP_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT>` 相同的解析。

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_KEEP_ROOT** = ``1``

將Godot場景的根節點視為glTF檔案的根節點，但不要將其標記為任何特殊的東西。匯入Godot時會產生一個額外的根節點。這僅使用普通glTF 功能。這相當於Godot 4.1 及更早版本中的行為。

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_MULTI_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_MULTI_ROOT** = ``2``

將 Godot 場景的根節點視為 glTF 場景的名稱，並將其所有子節點新增為 glTF 檔案的根節點。這只使用普通 glTF 功能。這避免了一個額外的根節點，但只會保留Godot 場景根節點的名稱，因為它不會儲存為節點。

.. rst-class:: classref-item-separator

----

.. _enum_GLTFDocument_TextureMapMode:

.. rst-class:: classref-enumeration

enum **TextureMapMode**: :ref:`🔗<enum_GLTFDocument_TextureMapMode>`

.. _class_GLTFDocument_constant_TEXTURE_MAP_MODE_DO_NOT_REMAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **TEXTURE_MAP_MODE_DO_NOT_REMAP** = ``0``

直接匯入 glTF 檔案中的紋理貼圖，而不嘗試將其適配到適合 Godot 內建材質的特定紋理槽位中。如果將 glTF 檔案與自訂著色器一起使用，這可能很理想；但在 Godot 的內建材質中可能無法正確顯示。此設定等同於 Godot 4.6 及更早版本中的行為。

.. _class_GLTFDocument_constant_TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL** = ``1``

將 glTF 檔案中的紋理貼圖重新映射到基於 Godot :ref:`StandardMaterial3D<class_StandardMaterial3D>` 類的最合適的紋理槽位中。這是預設行為。

.. rst-class:: classref-item-separator

----

.. _enum_GLTFDocument_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_GLTFDocument_VisibilityMode>`

.. _class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_INCLUDE_REQUIRED** = ``0``

如果場景中包含不可見節點，則會包含這些節點，使用 ``KHR_node_visibility`` 將它們標記為不可見，要求匯入器將這些節點處理為不可見。缺點：如果匯入器不支援 ``KHR_node_visibility`` 就無法匯入該檔案。

.. _class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_OPTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_INCLUDE_OPTIONAL** = ``1``

如果場景中包含不可見節點，則會包含這些節點，使用 ``KHR_node_visibility`` 將它們標記為不可見，但並不對匯入器施加任何要求。缺點：如果匯入器不支援 ``KHR_node_visibility``\ ，本應不可見的物件就會可見。

.. _class_GLTFDocument_constant_VISIBILITY_MODE_EXCLUDE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_EXCLUDE** = ``2``

如果場景中包含不可見節點，則匯出的場景中不包含這些節點。與 Godot 4.4 及之前版本的行為一致。缺點：匯出後的檔案中不存在不可見節點。

.. rst-class:: classref-item-separator

----

.. _enum_GLTFDocument_ImportFlags:

.. rst-class:: classref-enumeration

flags **ImportFlags**: :ref:`🔗<enum_GLTFDocument_ImportFlags>`

.. _class_GLTFDocument_constant_IMPORT_FLAG_GENERATE_TANGENT_ARRAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_GENERATE_TANGENT_ARRAYS** = ``8``

如果設為 ``true``\ ，當輸入的網格體（meshes）沒有切線資料時，將使用 `Mikktspace <http://www.mikktspace.com/>`__ 算法來生成頂點切線。如果條件允許，更推薦讓 3D 建模軟體在匯出模型時直接生成切線，而不是相依性這個選項。法線貼圖（normal maps）和高度貼圖（height maps），以及任何需要切線的材質或著色器（shader）功能，都必須要有切線資料才能正確顯示。

如果你不需要那些相依性切線的材質功能，停用此選項可以在源 3D 檔案不包含切線的情況下，減小輸出檔案的大小，並加快匯入速度。

.. _class_GLTFDocument_constant_IMPORT_FLAG_USE_NAMED_SKIN_BINDS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_USE_NAMED_SKIN_BINDS** = ``16``

如果勾選此項，動畫將使用帶名稱的 :ref:`Skin<class_Skin>`\ （皮膚）資源。\ :ref:`MeshInstance3D<class_MeshInstance3D>`\ （網格實例 3D）節點在這裡包含 3 個關鍵屬性：一個指向 :ref:`Skeleton3D<class_Skeleton3D>`\ （骨骼 3D）節點的骨架 :ref:`NodePath<class_NodePath>`\ （節點路徑，通常是 ``..``\ ）、一個網格（mesh），以及一個皮膚（skin）。

- :ref:`Skeleton3D<class_Skeleton3D>` 節點包含一個骨骼清單，其中記錄了骨骼的名稱、姿態（pose）和靜止狀態（rest），以及父級骨骼的資訊。

- 網格（mesh）包含了顯示模型所需的所有原始頂點資料。就網格本身而言，它知道頂點是如何進行權重繪製（weight-painted）的，並且使用了一些通常從 3D 建模軟體匯入的內部編號。

- 皮膚（skin）包含了將這個網格綁定到該 :ref:`Skeleton3D<class_Skeleton3D>` 上所需的必要資訊。對於 3D 建模軟體選定的每一個內部骨骼 ID，它都包含兩項內容。首先，是一個被稱為“綁定姿態矩陣”、“反向綁定矩陣”或簡稱 IBM 的矩陣。其次，\ :ref:`Skin<class_Skin>` 還包含每根骨骼的名稱（如果啟用了此標誌），或者包含該骨骼在 :ref:`Skeleton3D<class_Skeleton3D>` 清單中的索引（如果停用了此標誌）。

綜合這些資訊，就足以告訴 Godot 如何利用 :ref:`Skeleton3D<class_Skeleton3D>` 節點中的骨骼姿態，來渲染每個 :ref:`MeshInstance3D<class_MeshInstance3D>`\ 。請注意，每個 :ref:`MeshInstance3D<class_MeshInstance3D>` 可以共享綁定資訊（這在從 Blender 匯出的模型中很常見），或者每個 :ref:`MeshInstance3D<class_MeshInstance3D>` 也可以使用獨立的 :ref:`Skin<class_Skin>` 物件（這在從 Maya 等其他工具匯出的模型中很常見）。

.. _class_GLTFDocument_constant_IMPORT_FLAG_DISCARD_MESHES_AND_MATERIALS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_DISCARD_MESHES_AND_MATERIALS** = ``32``

在匯入時忽略網格（Meshes）和材質（Materials）。當將場景作為 :ref:`AnimationLibrary<class_AnimationLibrary>`\ （動畫庫）進行匯入時，此選項會始終處於啟用狀態。

.. _class_GLTFDocument_constant_IMPORT_FLAG_FORCE_DISABLE_MESH_COMPRESSION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_FORCE_DISABLE_MESH_COMPRESSION** = ``64``

如果為 ``true``\ ，則不會使用網格壓縮。如果你在網格法線或 UV 中發現塊狀偽影，或者如果你的網格在每個方向都大於幾千米，請考慮啟用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFDocument_property_fallback_image_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **fallback_image_format** = ``"None"`` :ref:`🔗<class_GLTFDocument_property_fallback_image_format>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_image_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_fallback_image_format**\ (\ )

回退影像格式的使用者友好名稱，用於匯出 glTF 檔案，包括寫入檔案和寫入位元組陣列。

該選項只能在“None”“PNG”“JPEG”中選擇一個，只有在 :ref:`image_format<class_GLTFDocument_property_image_format>` 不是“None”“PNG”“JPEG”三者之一時會用到。如果希望有多個擴充影像格式，可以使用 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類來實現——此屬性只適合在使用自訂影像格式時提供基本的 glTF 回退影像。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_fallback_image_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **fallback_image_quality** = ``0.25`` :ref:`🔗<class_GLTFDocument_property_fallback_image_quality>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_image_quality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fallback_image_quality**\ (\ )

回退影像的品質，可能不存在。對於 PNG 檔案而言，會根據這個係數縮小影像的寬高。對於 JPEG 檔案而言，則是影像的失真品質。建議使用較低的值，因為在 glTF 檔案中包含多個高品質影像會抵消使用更高效影像格式所帶來的檔案大小優勢。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_image_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **image_format** = ``"PNG"`` :ref:`🔗<class_GLTFDocument_property_image_format>`

.. rst-class:: classref-property-setget

- |void| **set_image_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_image_format**\ (\ )

匯出影像格式的使用者友好名稱，用於匯出 glTF 檔案，包括寫入檔案和寫入位元組陣列。

預設情況下，Godot 允許在“None”“PNG”“JPEG”“Lossless WebP”“Lossy WebP”中選擇一個。可以在 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類中新增對更多影像格式的支援。一個擴充類可以提供對特定格式的多種選項，甚至可以提供一個同時使用多種格式的選項。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **lossy_quality** = ``0.75`` :ref:`🔗<class_GLTFDocument_property_lossy_quality>`

.. rst-class:: classref-property-setget

- |void| **set_lossy_quality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lossy_quality**\ (\ )

如果\ :ref:`image_format<class_GLTFDocument_property_image_format>`\ 是有損影像格式，則這決定了影像的有損品質。範圍在\ ``0.0``\ 到\ ``1.0 ``\ ，其中\ ``0.0`` 是最低質量，\ ``1.0`` 是最高品質。\ ``1.0`` 有損質量與無損不同。“，““，“ “，“錯誤的”，””，”，””

modules/gltf/doc_classes/GLTFDocument.xml"

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_root_node_mode:

.. rst-class:: classref-property

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **root_node_mode** = ``0`` :ref:`🔗<class_GLTFDocument_property_root_node_mode>`

.. rst-class:: classref-property-setget

- |void| **set_root_node_mode**\ (\ value\: :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>`\ )
- :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **get_root_node_mode**\ (\ )

匯出時如何處理根節點。預設和推薦值為 :ref:`ROOT_NODE_MODE_SINGLE_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT>`\ 。

\ **注意：**\ 無論 glTF 檔案如何匯出，匯入時，根節點型別和名稱都可以在場景匯入設定分頁中被覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_texture_map_mode:

.. rst-class:: classref-property

:ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **texture_map_mode** = ``1`` :ref:`🔗<class_GLTFDocument_property_texture_map_mode>`

.. rst-class:: classref-property-setget

- |void| **set_texture_map_mode**\ (\ value\: :ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>`\ )
- :ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **get_texture_map_mode**\ (\ )

匯入時如何處理紋理貼圖。預設且推薦的值是 :ref:`TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL<class_GLTFDocument_constant_TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL>`\ ，它會自動將 glTF 靈活的紋理映射系統重新映射到 Godot 的 :ref:`StandardMaterial3D<class_StandardMaterial3D>` 類中更具體的紋理貼圖槽位。或者，可以使用 :ref:`TEXTURE_MAP_MODE_DO_NOT_REMAP<class_GLTFDocument_constant_TEXTURE_MAP_MODE_DO_NOT_REMAP>` 來保留 glTF 檔案中的原始紋理貼圖，這在將 glTF 檔案與自訂著色器一起使用時可能很理想，但在 Godot 的內建材質中可能無法正確顯示。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_GLTFDocument_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **get_visibility_mode**\ (\ )

匯出時如何處理節點的可見性。如果所有節點都可見，則該設定不做任何事情。預設推薦值為 :ref:`VISIBILITY_MODE_INCLUDE_REQUIRED<class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_REQUIRED>`\ ，使用 ``KHR_node_visibility`` 擴充。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFDocument_method_append_from_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_buffer**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, base_path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_buffer>`

接受定義 glTF 的 :ref:`PackedByteArray<class_PackedByteArray>`\ ，將資料匯入通過 ``state`` 參數給定的 :ref:`GLTFState<class_GLTFState>` 物件。

\ **注意：**\ ``base_path`` 代表 :ref:`append_from_buffer()<class_GLTFDocument_method_append_from_buffer>` 尋找相依項目的位置，可以為空。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_file**\ (\ path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0, base_path\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_GLTFDocument_method_append_from_file>`

接受 glTF 檔案的路徑，將檔案路徑處的資料匯入通過 ``state`` 參數給定的 :ref:`GLTFState<class_GLTFState>` 物件。

\ **注意：**\ ``base_path`` 代表 :ref:`append_from_file()<class_GLTFDocument_method_append_from_file>` 尋找相依項目的位置，可以為空。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_scene**\ (\ node\: :ref:`Node<class_Node>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_scene>`

接收一個 Godot 引擎的場景節點，並通過 ``state`` 參數將其及其後代匯出到給定的 :ref:`GLTFState<class_GLTFState>` 對象。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_export_object_model_property>`

確定給定 Godot ``node_path`` 與生成的 glTF 檔案中相應的 glTF 物件模型 JSON 指針之間的映射。該映射的詳細資訊以 :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` 物件的形式回傳。可以通過 :ref:`GLTFDocumentExtension._import_object_model_property()<class_GLTFDocumentExtension_private_method__import_object_model_property>` 回呼方法提供額外的映射。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_buffer:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **generate_buffer**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) :ref:`🔗<class_GLTFDocument_method_generate_buffer>`

通過 ``state`` 參數接收一個 :ref:`GLTFState<class_GLTFState>` 物件，並回傳一個 glTF :ref:`PackedByteArray<class_PackedByteArray>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **generate_scene**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, bake_fps\: :ref:`float<class_float>` = 30, trimming\: :ref:`bool<class_bool>` = false, remove_immutable_tracks\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_GLTFDocument_method_generate_scene>`

通過 ``state`` 參數接收一個 :ref:`GLTFState<class_GLTFState>` 物件，並回傳一個 Godot 引擎的場景節點。

\ ``bake_fps`` 參數會覆蓋 ``state`` 中的 bake_fps。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_get_supported_gltf_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_supported_gltf_extensions**\ (\ ) |static| :ref:`🔗<class_GLTFDocument_method_get_supported_gltf_extensions>`

回傳所有支援的 glTF 擴充清單，包括引擎直接支援的擴充和使用者外掛注冊的 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類支援的擴充。

\ **注意：**\ 如果在注冊 GLTFDocumentExtension 之前執行該方法，則清單中不會包含它所對應的擴充。請確保在注冊所有擴充後再執行該方法。如果在引擎啟動時執行該方法，請考慮在呼叫g該方法之前等待一影格，確保所有擴充都已注冊。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, json_pointer\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_import_object_model_property>`

確定給定 glTF 物件模型 ``json_pointer`` 與生成的 Godot 場景中相應的 Godot 節點路徑之間的映射。該映射的詳細資訊以 :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` 物件的形式回傳。可以通過 :ref:`GLTFDocumentExtension._export_object_model_property()<class_GLTFDocumentExtension_private_method__export_object_model_property>` 回呼方法提供額外的映射。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_register_gltf_document_extension:

.. rst-class:: classref-method

|void| **register_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, first_priority\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_GLTFDocument_method_register_gltf_document_extension>`

使用 GLTFDocument 注冊給定的 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 實例。如果 ``first_priority`` 為 ``true``\ ，則該擴充將被首先執行。否則，它將被最後執行。

\ **注意：**\ 與 GLTFDocument 本身一樣，所有 GLTFDocumentExtension 類都必須是無狀態的才能正常執行。如果需要儲存資料，使用 :ref:`GLTFState<class_GLTFState>` 或 :ref:`GLTFNode<class_GLTFNode>` 中的 ``set_additional_data`` 和 ``get_additional_data`` 方法。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_unregister_gltf_document_extension:

.. rst-class:: classref-method

|void| **unregister_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_unregister_gltf_document_extension>`

將給定的 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 實例取消註冊。

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_write_to_filesystem:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_to_filesystem**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GLTFDocument_method_write_to_filesystem>`

通過 ``state`` 參數接收一個 :ref:`GLTFState<class_GLTFState>` 物件，並將一個 glTF 檔案寫入檔案系統。

\ **注意：**\ glTF 檔案的副檔名決定了它是一個 .glb 二進位檔案還是一個 .gltf 文字檔案。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
