:github_url: hide

.. _class_GLTFState:

GLTFState
=========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`FBXState<class_FBXState>`

代表 glTF 檔案中的所有資料。

.. rst-class:: classref-introduction-group

說明
----

包含 glTF 檔案中的所有節點和資源。用於 :ref:`GLTFDocument<class_GLTFDocument>` 的資料儲存，能夠讓 :ref:`GLTFDocument<class_GLTFDocument>` 和所有 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類保持無狀態。

GLTFState 的填寫可以通過 :ref:`GLTFDocument<class_GLTFDocument>` 讀取檔案進行，也可以通過轉換 Godot 場景進行。填寫完成後，可以將資料用於 Godot 場景的建立或者 glTF 檔案的儲存。與 Godot 場景之間進行轉換的程式碼可以通過 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類在任意時刻攔截。這樣就能夠在 glTF 檔案中儲存自訂資料，也可以將自訂資料儲存到 Godot 節點或者從 Godot 節點讀取。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

- `glTF 素材頭的模式 <https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/schema/asset.schema.json>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`                                                  | :ref:`bake_fps<class_GLTFState_property_bake_fps>`                                 | ``30.0``               |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`String<class_String>`                                                | :ref:`base_path<class_GLTFState_property_base_path>`                               | ``""``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedByteArray<class_PackedByteArray>`\] | :ref:`buffers<class_GLTFState_property_buffers>`                                   | ``[]``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`String<class_String>`                                                | :ref:`copyright<class_GLTFState_property_copyright>`                               | ``""``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`create_animations<class_GLTFState_property_create_animations>`               | ``true``               |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`String<class_String>`                                                | :ref:`filename<class_GLTFState_property_filename>`                                 | ``""``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                              | :ref:`glb_data<class_GLTFState_property_glb_data>`                                 | ``PackedByteArray()``  |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>`         | :ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>` | ``1``                  |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`import_as_skeleton_bones<class_GLTFState_property_import_as_skeleton_bones>` | ``false``              |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`json<class_GLTFState_property_json>`                                         | ``{}``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`major_version<class_GLTFState_property_major_version>`                       | ``0``                  |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`minor_version<class_GLTFState_property_minor_version>`                       | ``0``                  |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                            | :ref:`root_nodes<class_GLTFState_property_root_nodes>`                             | ``PackedInt32Array()`` |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`String<class_String>`                                                | :ref:`scene_name<class_GLTFState_property_scene_name>`                             | ``""``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`use_named_skin_binds<class_GLTFState_property_use_named_skin_binds>`         | ``false``              |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`add_used_extension<class_GLTFState_method_add_used_extension>`\ (\ extension_name\: :ref:`String<class_String>`, required\: :ref:`bool<class_bool>`\ )                                               |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`append_data_to_buffers<class_GLTFState_method_append_data_to_buffers>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`, deduplication\: :ref:`bool<class_bool>`\ )                          |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`append_gltf_node<class_GLTFState_method_append_gltf_node>`\ (\ gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, godot_scene_node\: :ref:`Node<class_Node>`, parent_node_index\: :ref:`int<class_int>`\ ) |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFAccessor<class_GLTFAccessor>`\]             | :ref:`get_accessors<class_GLTFState_method_get_accessors>`\ (\ ) |const|                                                                                                                                   |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                                    | :ref:`get_additional_data<class_GLTFState_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                 |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationPlayer<class_AnimationPlayer>`                                    | :ref:`get_animation_player<class_GLTFState_method_get_animation_player>`\ (\ anim_player_index\: :ref:`int<class_int>`\ ) |const|                                                                          |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`get_animation_players_count<class_GLTFState_method_get_animation_players_count>`\ (\ anim_player_index\: :ref:`int<class_int>`\ ) |const|                                                            |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\]           | :ref:`get_animations<class_GLTFState_method_get_animations>`\ (\ ) |const|                                                                                                                                 |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFBufferView<class_GLTFBufferView>`\]         | :ref:`get_buffer_views<class_GLTFState_method_get_buffer_views>`\ (\ ) |const|                                                                                                                             |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFCamera<class_GLTFCamera>`\]                 | :ref:`get_cameras<class_GLTFState_method_get_cameras>`\ (\ ) |const|                                                                                                                                       |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`get_handle_binary_image<class_GLTFState_method_get_handle_binary_image>`\ (\ ) |const|                                                                                                               |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\]                   | :ref:`get_images<class_GLTFState_method_get_images>`\ (\ ) |const|                                                                                                                                         |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\]                   | :ref:`get_lights<class_GLTFState_method_get_lights>`\ (\ ) |const|                                                                                                                                         |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\]                     | :ref:`get_materials<class_GLTFState_method_get_materials>`\ (\ ) |const|                                                                                                                                   |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFMesh<class_GLTFMesh>`\]                     | :ref:`get_meshes<class_GLTFState_method_get_meshes>`\ (\ ) |const|                                                                                                                                         |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`get_node_index<class_GLTFState_method_get_node_index>`\ (\ scene_node\: :ref:`Node<class_Node>`\ ) |const|                                                                                           |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\]                     | :ref:`get_nodes<class_GLTFState_method_get_nodes>`\ (\ ) |const|                                                                                                                                           |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                                          | :ref:`get_scene_node<class_GLTFState_method_get_scene_node>`\ (\ gltf_node_index\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\]             | :ref:`get_skeletons<class_GLTFState_method_get_skeletons>`\ (\ ) |const|                                                                                                                                   |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\]                     | :ref:`get_skins<class_GLTFState_method_get_skins>`\ (\ ) |const|                                                                                                                                           |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\] | :ref:`get_texture_samplers<class_GLTFState_method_get_texture_samplers>`\ (\ ) |const|                                                                                                                     |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFTexture<class_GLTFTexture>`\]               | :ref:`get_textures<class_GLTFState_method_get_textures>`\ (\ ) |const|                                                                                                                                     |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]                         | :ref:`get_unique_animation_names<class_GLTFState_method_get_unique_animation_names>`\ (\ ) |const|                                                                                                         |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]                         | :ref:`get_unique_names<class_GLTFState_method_get_unique_names>`\ (\ ) |const|                                                                                                                             |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_accessors<class_GLTFState_method_set_accessors>`\ (\ accessors\: :ref:`Array<class_Array>`\[:ref:`GLTFAccessor<class_GLTFAccessor>`\]\ )                                                         |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_additional_data<class_GLTFState_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ )                        |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_animations<class_GLTFState_method_set_animations>`\ (\ animations\: :ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\]\ )                                                    |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_buffer_views<class_GLTFState_method_set_buffer_views>`\ (\ buffer_views\: :ref:`Array<class_Array>`\[:ref:`GLTFBufferView<class_GLTFBufferView>`\]\ )                                            |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_cameras<class_GLTFState_method_set_cameras>`\ (\ cameras\: :ref:`Array<class_Array>`\[:ref:`GLTFCamera<class_GLTFCamera>`\]\ )                                                                   |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_handle_binary_image<class_GLTFState_method_set_handle_binary_image>`\ (\ method\: :ref:`int<class_int>`\ )                                                                                       |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_images<class_GLTFState_method_set_images>`\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\]\ )                                                                        |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_lights<class_GLTFState_method_set_lights>`\ (\ lights\: :ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\]\ )                                                                        |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_materials<class_GLTFState_method_set_materials>`\ (\ materials\: :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\]\ )                                                                 |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_meshes<class_GLTFState_method_set_meshes>`\ (\ meshes\: :ref:`Array<class_Array>`\[:ref:`GLTFMesh<class_GLTFMesh>`\]\ )                                                                          |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_nodes<class_GLTFState_method_set_nodes>`\ (\ nodes\: :ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\]\ )                                                                             |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_skeletons<class_GLTFState_method_set_skeletons>`\ (\ skeletons\: :ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\]\ )                                                         |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_skins<class_GLTFState_method_set_skins>`\ (\ skins\: :ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\]\ )                                                                             |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_texture_samplers<class_GLTFState_method_set_texture_samplers>`\ (\ texture_samplers\: :ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\]\ )                        |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_textures<class_GLTFState_method_set_textures>`\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`GLTFTexture<class_GLTFTexture>`\]\ )                                                              |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_unique_animation_names<class_GLTFState_method_set_unique_animation_names>`\ (\ unique_animation_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ )                              |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_unique_names<class_GLTFState_method_set_unique_names>`\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ )                                                            |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_GLTFState_HandleBinaryImageMode:

.. rst-class:: classref-enumeration

enum **HandleBinaryImageMode**: :ref:`🔗<enum_GLTFState_HandleBinaryImageMode>`

.. _class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_DISCARD_TEXTURES:

.. rst-class:: classref-enumeration-constant

:ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **HANDLE_BINARY_IMAGE_MODE_DISCARD_TEXTURES** = ``0``

匯入包含嵌入式二進位影像的 glTF 檔案時，會丟棄所有影像，並使用未應用紋理的材質代替它們。以獨立檔案儲存在 ``res://`` 資料夾中的影像不受此影響；Godot 會按照匯入時的設定使用這些影像。

.. _class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EXTRACT_TEXTURES:

.. rst-class:: classref-enumeration-constant

:ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **HANDLE_BINARY_IMAGE_MODE_EXTRACT_TEXTURES** = ``1``

When importing a glTF file with embedded binary images, extracts them and saves them to their own files. This allows the image to be imported by Godot's image importer, which can then have their import options customized by the user, including optionally compressing the image to VRAM texture formats.

This will save the images' bytes exactly as-is, without recompression. For image formats supplied by glTF extensions, the file will have a filename ending with the file extension supplied by :ref:`GLTFDocumentExtension._get_image_file_extension()<class_GLTFDocumentExtension_private_method__get_image_file_extension>` of the extension class.

\ **Note:** This option is editor-only. At runtime, this acts the same as :ref:`HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED>`.

.. _class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_BASISU:

.. rst-class:: classref-enumeration-constant

:ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **HANDLE_BINARY_IMAGE_MODE_EMBED_AS_BASISU** = ``2``

匯入包含嵌入的二進位影像的 glTF 檔案時，會將使用 Basis Universal 壓縮的 VRAM 紋理嵌入到生成的場景中。以獨立檔案儲存在 ``res://`` 資料夾中的影像不受此影響；這些影像將按照 Godot 匯入的方式使用。

.. _class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED** = ``3``

匯入包含嵌入的二進位影像的 glTF 檔案時，程式會將紋理以無損壓縮方式嵌入到生成的場景中。以獨立檔案儲存在 ``res://`` 資料夾中的影像不受此影響；這些檔案將按照 Godot 匯入的方式使用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_GLTFState_constant_HANDLE_BINARY_DISCARD_TEXTURES:

.. rst-class:: classref-constant

**HANDLE_BINARY_DISCARD_TEXTURES** = ``0`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_DISCARD_TEXTURES>`

**已棄用：** Use :ref:`HANDLE_BINARY_IMAGE_MODE_DISCARD_TEXTURES<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_DISCARD_TEXTURES>` instead.

丟棄所有內嵌的紋理，並使用無紋理的材質。

.. _class_GLTFState_constant_HANDLE_BINARY_EXTRACT_TEXTURES:

.. rst-class:: classref-constant

**HANDLE_BINARY_EXTRACT_TEXTURES** = ``1`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EXTRACT_TEXTURES>`

**已棄用：** Use :ref:`HANDLE_BINARY_IMAGE_MODE_EXTRACT_TEXTURES<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EXTRACT_TEXTURES>` instead.

提取內嵌的紋理以重新匯入和壓縮。僅限編輯器。在運作時充當未壓縮的。

.. _class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_BASISU:

.. rst-class:: classref-constant

**HANDLE_BINARY_EMBED_AS_BASISU** = ``2`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_BASISU>`

**已棄用：** Use :ref:`HANDLE_BINARY_IMAGE_MODE_EMBED_AS_BASISU<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_BASISU>` instead.

將使用 Basis Universal 壓縮的紋理 VRAM 嵌入到生成的場景中。

.. _class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_UNCOMPRESSED:

.. rst-class:: classref-constant

**HANDLE_BINARY_EMBED_AS_UNCOMPRESSED** = ``3`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_UNCOMPRESSED>`

**已棄用：** Use :ref:`HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED>` instead.

將無失真壓縮的紋理嵌入到生成的場景中，配對舊行為。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFState_property_bake_fps:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_fps** = ``30.0`` :ref:`🔗<class_GLTFState_property_bake_fps>`

.. rst-class:: classref-property-setget

- |void| **set_bake_fps**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_fps**\ (\ )

用於匯入或匯出的動畫的烘焙 fps。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_base_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_path** = ``""`` :ref:`🔗<class_GLTFState_property_base_path>`

.. rst-class:: classref-property-setget

- |void| **set_base_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_path**\ (\ )

與該 glTF 資料關聯的資料夾路徑。這用於尋找該 glTF 檔案參照的其他檔案，例如影像或二進位緩衝區。這將在匯入期間從檔案追加時設定，並將在匯出期間寫入檔案時設定。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_buffers:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`PackedByteArray<class_PackedByteArray>`\] **buffers** = ``[]`` :ref:`🔗<class_GLTFState_property_buffers>`

.. rst-class:: classref-property-setget

- |void| **set_buffers**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`PackedByteArray<class_PackedByteArray>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`PackedByteArray<class_PackedByteArray>`\] **get_buffers**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_copyright:

.. rst-class:: classref-property

:ref:`String<class_String>` **copyright** = ``""`` :ref:`🔗<class_GLTFState_property_copyright>`

.. rst-class:: classref-property-setget

- |void| **set_copyright**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_copyright**\ (\ )

GLTF 檔案素材標頭中的版權字串。如果存在，則在匯入期間設定，如果非空，則在匯出期間設定。有關詳細資訊，請參閱 GLTF 素材標頭說明文件。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_create_animations:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **create_animations** = ``true`` :ref:`🔗<class_GLTFState_property_create_animations>`

.. rst-class:: classref-property-setget

- |void| **set_create_animations**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_create_animations**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_filename:

.. rst-class:: classref-property

:ref:`String<class_String>` **filename** = ``""`` :ref:`🔗<class_GLTFState_property_filename>`

.. rst-class:: classref-property-setget

- |void| **set_filename**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_filename**\ (\ )

與該 glTF 資料關聯的檔名。如果它以 ``.gltf`` 結尾，則這是基於文字的 glTF，否則這是二進位 GLB。這將在匯入期間從檔案追加時設定，並將在匯出期間寫入檔案時設定。如果寫入到緩衝區，這將是一個空字串。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_glb_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **glb_data** = ``PackedByteArray()`` :ref:`🔗<class_GLTFState_property_glb_data>`

.. rst-class:: classref-property-setget

- |void| **set_glb_data**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_glb_data**\ (\ )

附加到 .glb 檔案的二進位緩衝區。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_handle_binary_image_mode:

.. rst-class:: classref-property

:ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **handle_binary_image_mode** = ``1`` :ref:`🔗<class_GLTFState_property_handle_binary_image_mode>`

.. rst-class:: classref-property-setget

- |void| **set_handle_binary_image_mode**\ (\ value\: :ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>`\ )
- :ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **get_handle_binary_image_mode**\ (\ )

匯入包含未匯入的原始二進位影像（這些影像可能嵌入在二進位資料塊緩衝區中、資料 URI 中或 Godot 未匯入的單獨檔案中）的 glTF 檔案時，該設定控製影像的處理方式。影像可以被丟棄，儲存為單獨的檔案，或以有損或無損方式嵌入到場景中。有關選項見 :ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>`\ 。

該屬性對 Godot 匯入的位於 ``res://`` 資料夾中的影像檔案不起作用，因為這些檔案由 Godot 的影像匯入器直接處理，然後從 glTF 檔案生成的 Godot 場景將使用 Godot 匯入的影像。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_import_as_skeleton_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **import_as_skeleton_bones** = ``false`` :ref:`🔗<class_GLTFState_property_import_as_skeleton_bones>`

.. rst-class:: classref-property-setget

- |void| **set_import_as_skeleton_bones**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_import_as_skeleton_bones**\ (\ )

如果為 ``true``\ ，則強制文件中的所有 GLTFNode 成為單個 :ref:`Skeleton3D<class_Skeleton3D>` Godot 節點的骨骼。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_json:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **json** = ``{}`` :ref:`🔗<class_GLTFState_property_json>`

.. rst-class:: classref-property-setget

- |void| **set_json**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_json**\ (\ )

與該 GLTFState 對應的原始 JSON 文件。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_major_version:

.. rst-class:: classref-property

:ref:`int<class_int>` **major_version** = ``0`` :ref:`🔗<class_GLTFState_property_major_version>`

.. rst-class:: classref-property-setget

- |void| **set_major_version**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_major_version**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_minor_version:

.. rst-class:: classref-property

:ref:`int<class_int>` **minor_version** = ``0`` :ref:`🔗<class_GLTFState_property_minor_version>`

.. rst-class:: classref-property-setget

- |void| **set_minor_version**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_minor_version**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_root_nodes:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **root_nodes** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFState_property_root_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_root_nodes**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_root_nodes**\ (\ )

glTF 檔案的根節點。通常一個 glTF 檔案只有一個場景，因此只有一個根節點。然而 glTF 檔案可能有多個場景，因此可以有多個根節點，它們將作為彼此的同級節點生成，並作為生成的 Godot 場景的根節點的子節點生成。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_scene_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **scene_name** = ``""`` :ref:`🔗<class_GLTFState_property_scene_name>`

.. rst-class:: classref-property-setget

- |void| **set_scene_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_name**\ (\ )

場景的名稱。匯入時，如果沒有指定，這將是檔名。匯出時，如果指定，場景名稱將被儲存到 glTF 檔案中。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_use_named_skin_binds:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_named_skin_binds** = ``false`` :ref:`🔗<class_GLTFState_property_use_named_skin_binds>`

.. rst-class:: classref-property-setget

- |void| **set_use_named_skin_binds**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_named_skin_binds**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFState_method_add_used_extension:

.. rst-class:: classref-method

|void| **add_used_extension**\ (\ extension_name\: :ref:`String<class_String>`, required\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GLTFState_method_add_used_extension>`

在序列化期間，將一個副檔名追加到該 glTF 檔案使用的副檔名清單在。如果 ``required`` 為 ``true``\ ，則該副檔名也將被新增到所需副檔名清單中。不要在 :ref:`GLTFDocumentExtension._export_post()<class_GLTFDocumentExtension_private_method__export_post>` 中執行它，因為那個階段已來不及新增擴充。最終的清單將按字母順序排序。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_append_data_to_buffers:

.. rst-class:: classref-method

:ref:`int<class_int>` **append_data_to_buffers**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`, deduplication\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GLTFState_method_append_data_to_buffers>`

將位元組陣列資料 ``data`` 附加到緩衝區並為其建立一個 :ref:`GLTFBufferView<class_GLTFBufferView>`\ 。回傳目標 :ref:`GLTFBufferView<class_GLTFBufferView>` 的索引。如果 ``deduplication`` 為 ``true``\ ，則會首先在緩衝區中搜尋重複資料，否則會始終追加新位元組。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_append_gltf_node:

.. rst-class:: classref-method

:ref:`int<class_int>` **append_gltf_node**\ (\ gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, godot_scene_node\: :ref:`Node<class_Node>`, parent_node_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFState_method_append_gltf_node>`

將給定的 :ref:`GLTFNode<class_GLTFNode>` 追加到狀態中並回傳其索引。可以用來將一個 Godot 節點匯出為多個 glTF 節點，或是在匯入時注入新的 glTF 節點。匯入時必須在父節點完成 :ref:`GLTFDocumentExtension._generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` 前呼叫。匯出時父節點執行 :ref:`GLTFDocumentExtension._export_node()<class_GLTFDocumentExtension_private_method__export_node>` 前呼叫。

參數 ``godot_scene_node`` 是與該 glTF 節點對應的 Godot 場景節點。強烈建議將其設為有效節點，但如果沒有對應的 Godot 場景節點的話也可以設為 ``null``\ 。一個 Godot 場景節點可以用於多個 glTF 節點，因此為單一 Godot 場景節點匯出多個 glTF 節點時，每一個都可以使用相同的 Godot 場景節點。

參數 ``parent_node_index`` 是狀態中父 :ref:`GLTFNode<class_GLTFNode>` 的索引。如果為 ``-1`` 則該節點為根節點，否則會將新節點加入父節點的子節點清單。該索引也會寫入新節點的 :ref:`GLTFNode.parent<class_GLTFNode_property_parent>` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_accessors:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFAccessor<class_GLTFAccessor>`\] **get_accessors**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_accessors>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_additional_data>`

在 **GLTFState** 實例中取得額外的任意資料。這可用於保留在 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類中的每個檔案的狀態資料，這很重要，因為它們是無狀態的。

參數應該是 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 的名稱（不必與 glTF 檔案中的副檔名相匹配），而回傳值可以是你設定的任何東西。如果沒有設定任何東西，則回傳值為 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animation_player:

.. rst-class:: classref-method

:ref:`AnimationPlayer<class_AnimationPlayer>` **get_animation_player**\ (\ anim_player_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_animation_player>`

回傳具有給定索引的 :ref:`AnimationPlayer<class_AnimationPlayer>` 節點。這些節點僅在將 Godot :ref:`AnimationPlayer<class_AnimationPlayer>` 節點轉換為 glTF 動畫時的匯出過程中使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animation_players_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_animation_players_count**\ (\ anim_player_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_animation_players_count>`

回傳該 **GLTFState** 中 :ref:`AnimationPlayer<class_AnimationPlayer>` 節點的數量。這些節點僅在將 Godot :ref:`AnimationPlayer<class_AnimationPlayer>` 節點轉換為 glTF 動畫時的匯出過程中使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\] **get_animations**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_animations>`

回傳 glTF 檔案中所有 :ref:`GLTFAnimation<class_GLTFAnimation>` 的陣列。匯入時，這些將在一個 :ref:`AnimationPlayer<class_AnimationPlayer>` 節點生成為動畫。匯出時，這些將從 Godot :ref:`AnimationPlayer<class_AnimationPlayer>` 節點生成。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_buffer_views:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFBufferView<class_GLTFBufferView>`\] **get_buffer_views**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_buffer_views>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_cameras:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFCamera<class_GLTFCamera>`\] **get_cameras**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_cameras>`

回傳 glTF 檔案中所有 :ref:`GLTFCamera<class_GLTFCamera>` 的陣列。這些是 :ref:`GLTFNode.camera<class_GLTFNode_property_camera>` 索引參照的相機。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_handle_binary_image:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_handle_binary_image**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_handle_binary_image>`

**已棄用：** Use :ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>` instead.

:ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>` 的已棄用無型別別名。當匯入包含未匯入的原始二進位影像（這些影像可能嵌入在二進位資料塊緩衝區中、資料 URI 中或 Godot 未匯入的單獨檔案中）的 glTF 檔案時，該選項控製影像的處理方式。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_images:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\] **get_images**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_images>`

以 :ref:`Texture2D<class_Texture2D>` 陣列的形式取得 glTF 檔案中的影像。這些是 :ref:`GLTFTexture.src_image<class_GLTFTexture_property_src_image>` 索引參照的影像。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_lights:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\] **get_lights**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_lights>`

回傳 glTF 檔案中所有 :ref:`GLTFLight<class_GLTFLight>` 的陣列。這些是 :ref:`GLTFNode.light<class_GLTFNode_property_light>` 索引參照的燈。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_materials:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] **get_materials**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_materials>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFMesh<class_GLTFMesh>`\] **get_meshes**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_meshes>`

回傳 glTF 檔案中所有 :ref:`GLTFMesh<class_GLTFMesh>` 的陣列。這些是 :ref:`GLTFNode.mesh<class_GLTFNode_property_mesh>` 索引參照的網格。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_node_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_index**\ (\ scene_node\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_node_index>`

返回與該 Godot 場景節點對應的 :ref:`GLTFNode<class_GLTFNode>` 的索引。這個方法與 :ref:`get_scene_node()<class_GLTFState_method_get_scene_node>` 互逆。可以在匯出過程中使用。

\ **注意：**\ 並不是所有 Godot 場景節點都有對應的 :ref:`GLTFNode<class_GLTFNode>`\ ，也並不是所有 :ref:`GLTFNode<class_GLTFNode>` 都會生成場景節點。如果該場景節點沒有 :ref:`GLTFNode<class_GLTFNode>` 索引，則會返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\] **get_nodes**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_nodes>`

回傳 glTF 檔案中所有 :ref:`GLTFNode<class_GLTFNode>` 的陣列。這些是 :ref:`GLTFNode.children<class_GLTFNode_property_children>` 和 :ref:`root_nodes<class_GLTFState_property_root_nodes>` 參照的節點。這包括可能不會在 Godot 場景中生成的節點，或者可能生成多個 Godot 場景節點的節點。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_scene_node:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_scene_node**\ (\ gltf_node_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_scene_node>`

返回指定索引的 :ref:`GLTFNode<class_GLTFNode>` 對應生成的 Godot 場景節點。這個方法與 :ref:`get_node_index()<class_GLTFState_method_get_node_index>` 互逆。可以在匯入過程中使用。

\ **注意：**\ 並不是所有 :ref:`GLTFNode<class_GLTFNode>` 都會生成場景節點，也並不是所有 Godot 場景節點都有對應的 :ref:`GLTFNode<class_GLTFNode>`\ 。如果該 :ref:`GLTFNode<class_GLTFNode>` 索引沒有場景節點，則會返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_skeletons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\] **get_skeletons**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_skeletons>`

回傳 glTF 檔案中所有 :ref:`GLTFSkeleton<class_GLTFSkeleton>` 的陣列。這些是 :ref:`GLTFNode.skeleton<class_GLTFNode_property_skeleton>` 索引參照的骨架。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_skins:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\] **get_skins**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_skins>`

回傳 glTF 檔案中所有 :ref:`GLTFSkin<class_GLTFSkin>` 的陣列。這些是 :ref:`GLTFNode.skin<class_GLTFNode_property_skin>` 索引參照的皮膚。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_texture_samplers:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\] **get_texture_samplers**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_texture_samplers>`

檢索 glTF 中包含的紋理所使用的紋理取樣器的陣列。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_textures:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFTexture<class_GLTFTexture>`\] **get_textures**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_textures>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_unique_animation_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **get_unique_animation_names**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_unique_animation_names>`

返回一組唯一的動畫名稱。這僅在匯入過程中使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_unique_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **get_unique_names**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_unique_names>`

返回唯一節點名稱的陣列。這用於匯入過程和匯出過程。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_accessors:

.. rst-class:: classref-method

|void| **set_accessors**\ (\ accessors\: :ref:`Array<class_Array>`\[:ref:`GLTFAccessor<class_GLTFAccessor>`\]\ ) :ref:`🔗<class_GLTFState_method_set_accessors>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFState_method_set_additional_data>`

在這個 **GLTFState** 實例中設定額外的任意資料。這可以用來保留在 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類中的每個檔案的狀態資料，這很重要，因為它們是無狀態的。

第一個參數應該是 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 的名稱（不必與 glTF 檔案中的副檔名相匹配），第二個參數可以是任何你想要的東西。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_animations:

.. rst-class:: classref-method

|void| **set_animations**\ (\ animations\: :ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\]\ ) :ref:`🔗<class_GLTFState_method_set_animations>`

設定該狀態中的 :ref:`GLTFAnimation<class_GLTFAnimation>`\ 。匯入時，這些將在 :ref:`AnimationPlayer<class_AnimationPlayer>` 節點中生成為動畫。匯出時，這些將由 Godot :ref:`AnimationPlayer<class_AnimationPlayer>` 節點生成。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_buffer_views:

.. rst-class:: classref-method

|void| **set_buffer_views**\ (\ buffer_views\: :ref:`Array<class_Array>`\[:ref:`GLTFBufferView<class_GLTFBufferView>`\]\ ) :ref:`🔗<class_GLTFState_method_set_buffer_views>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_cameras:

.. rst-class:: classref-method

|void| **set_cameras**\ (\ cameras\: :ref:`Array<class_Array>`\[:ref:`GLTFCamera<class_GLTFCamera>`\]\ ) :ref:`🔗<class_GLTFState_method_set_cameras>`

設定該狀態中的 :ref:`GLTFCamera<class_GLTFCamera>`\ 。這些是 :ref:`GLTFNode.camera<class_GLTFNode_property_camera>` 索引引用的相機。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_handle_binary_image:

.. rst-class:: classref-method

|void| **set_handle_binary_image**\ (\ method\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFState_method_set_handle_binary_image>`

**已棄用：** Use :ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>` instead.

:ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>` 的已棄用無型別別名。當匯入包含未匯入的原始二進位影像（這些影像可能嵌入在二進位資料塊緩衝區中、資料 URI 中或 Godot 未匯入的單獨檔案中）的 glTF 檔案時，該選項控製影像的處理方式。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_images:

.. rst-class:: classref-method

|void| **set_images**\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\]\ ) :ref:`🔗<class_GLTFState_method_set_images>`

設定狀態中以 :ref:`Texture2D<class_Texture2D>` 陣列形式儲存的影像。可以在匯出時使用。這些是 :ref:`GLTFTexture.src_image<class_GLTFTexture_property_src_image>` 索引所引用的影像。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_lights:

.. rst-class:: classref-method

|void| **set_lights**\ (\ lights\: :ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\]\ ) :ref:`🔗<class_GLTFState_method_set_lights>`

設定該狀態中的 :ref:`GLTFLight<class_GLTFLight>`\ 。這些是 :ref:`GLTFNode.light<class_GLTFNode_property_light>` 索引引用的燈。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_materials:

.. rst-class:: classref-method

|void| **set_materials**\ (\ materials\: :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\]\ ) :ref:`🔗<class_GLTFState_method_set_materials>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_meshes:

.. rst-class:: classref-method

|void| **set_meshes**\ (\ meshes\: :ref:`Array<class_Array>`\[:ref:`GLTFMesh<class_GLTFMesh>`\]\ ) :ref:`🔗<class_GLTFState_method_set_meshes>`

設定該狀態中的 :ref:`GLTFMesh<class_GLTFMesh>`\ 。這些是 :ref:`GLTFNode.mesh<class_GLTFNode_property_mesh>` 索引引用的網格。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_nodes:

.. rst-class:: classref-method

|void| **set_nodes**\ (\ nodes\: :ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\]\ ) :ref:`🔗<class_GLTFState_method_set_nodes>`

設定該狀態中的 :ref:`GLTFNode<class_GLTFNode>`\ 。這些是 :ref:`GLTFNode.children<class_GLTFNode_property_children>` 和 :ref:`root_nodes<class_GLTFState_property_root_nodes>` 引用的節點。這裡設定的一些節點在 Godot 場景中可能不會生成，也可能會生成多個 Godot 場景節點。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_skeletons:

.. rst-class:: classref-method

|void| **set_skeletons**\ (\ skeletons\: :ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\]\ ) :ref:`🔗<class_GLTFState_method_set_skeletons>`

設定該狀態中的 :ref:`GLTFSkeleton<class_GLTFSkeleton>`\ 。這些是 :ref:`GLTFNode.skeleton<class_GLTFNode_property_skeleton>` 索引引用的骨架。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_skins:

.. rst-class:: classref-method

|void| **set_skins**\ (\ skins\: :ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\]\ ) :ref:`🔗<class_GLTFState_method_set_skins>`

設定該狀態中的 :ref:`GLTFSkin<class_GLTFSkin>`\ 。這些是 :ref:`GLTFNode.skin<class_GLTFNode_property_skin>` 索引引用的皮膚。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_texture_samplers:

.. rst-class:: classref-method

|void| **set_texture_samplers**\ (\ texture_samplers\: :ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\]\ ) :ref:`🔗<class_GLTFState_method_set_texture_samplers>`

設定由 glTF 中包含的紋理所使用的紋理取樣器的陣列。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_textures:

.. rst-class:: classref-method

|void| **set_textures**\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`GLTFTexture<class_GLTFTexture>`\]\ ) :ref:`🔗<class_GLTFState_method_set_textures>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_unique_animation_names:

.. rst-class:: classref-method

|void| **set_unique_animation_names**\ (\ unique_animation_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) :ref:`🔗<class_GLTFState_method_set_unique_animation_names>`

設定該狀態中的唯一動畫名稱。這僅在匯入過程中使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_unique_names:

.. rst-class:: classref-method

|void| **set_unique_names**\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) :ref:`🔗<class_GLTFState_method_set_unique_names>`

設定該狀態中的唯一節點名稱。這用於匯入過程和匯出過程。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
