:github_url: hide

.. _class_GLTFState:

GLTFState
=========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`FBXState<class_FBXState>`

Rappresenta tutti i dati di un file glTF.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Contiene tutti i nodi e le risorse di un file glTF. Questo è utilizzato da :ref:`GLTFDocument<class_GLTFDocument>` come archivio dati, che consente a :ref:`GLTFDocument<class_GLTFDocument>` e a tutte le classi :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` di rimanere stateless.

GLTFState può essere popolato da :ref:`GLTFDocument<class_GLTFDocument>` leggendo un file o convertendo una scena di Godot. Successivamente, è possibile utilizzare i dati per creare una scena di Godot o salvarli in un file glTF. Il codice che converte in/da una scena di Godot può essere intercettato in punti arbitrari dalle classi :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`. Ciò consente di memorizzare dati personalizzati nel file glTF o di convertire dati personalizzati in/da nodi di Godot.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

- `Schema dell'intestazione delle risorse glTF <https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/schema/asset.schema.json>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Enumerazioni
------------------------

.. _enum_GLTFState_HandleBinaryImageMode:

.. rst-class:: classref-enumeration

enum **HandleBinaryImageMode**: :ref:`🔗<enum_GLTFState_HandleBinaryImageMode>`

.. _class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_DISCARD_TEXTURES:

.. rst-class:: classref-enumeration-constant

:ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **HANDLE_BINARY_IMAGE_MODE_DISCARD_TEXTURES** = ``0``

When importing a glTF file with embedded binary images, discards all images and uses untextured materials in their place. Images stored as separate files in the ``res://`` folder are not affected by this; those will be used as Godot imported them.

.. _class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EXTRACT_TEXTURES:

.. rst-class:: classref-enumeration-constant

:ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **HANDLE_BINARY_IMAGE_MODE_EXTRACT_TEXTURES** = ``1``

When importing a glTF file with embedded binary images, extracts them and saves them to their own files. This allows the image to be imported by Godot's image importer, which can then have their import options customized by the user, including optionally compressing the image to VRAM texture formats.

This will save the images's bytes exactly as-is, without recompression. For image formats supplied by glTF extensions, the file will have a filename ending with the file extension supplied by :ref:`GLTFDocumentExtension._get_image_file_extension()<class_GLTFDocumentExtension_private_method__get_image_file_extension>` of the extension class.

\ **Note:** This option is editor-only. At runtime, this acts the same as :ref:`HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED>`.

.. _class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_BASISU:

.. rst-class:: classref-enumeration-constant

:ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **HANDLE_BINARY_IMAGE_MODE_EMBED_AS_BASISU** = ``2``

When importing a glTF file with embedded binary images, embeds textures VRAM compressed with Basis Universal into the generated scene. Images stored as separate files in the ``res://`` folder are not affected by this; those will be used as Godot imported them.

.. _class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED** = ``3``

When importing a glTF file with embedded binary images, embeds textures compressed losslessly into the generated scene. Images stored as separate files in the ``res://`` folder are not affected by this; those will be used as Godot imported them.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_GLTFState_constant_HANDLE_BINARY_DISCARD_TEXTURES:

.. rst-class:: classref-constant

**HANDLE_BINARY_DISCARD_TEXTURES** = ``0`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_DISCARD_TEXTURES>`

**Deprecato:** Use :ref:`HANDLE_BINARY_IMAGE_MODE_DISCARD_TEXTURES<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_DISCARD_TEXTURES>` instead.

Scarta tutte le texture incorporate e utilizza materiali senza texture.

.. _class_GLTFState_constant_HANDLE_BINARY_EXTRACT_TEXTURES:

.. rst-class:: classref-constant

**HANDLE_BINARY_EXTRACT_TEXTURES** = ``1`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EXTRACT_TEXTURES>`

**Deprecato:** Use :ref:`HANDLE_BINARY_IMAGE_MODE_EXTRACT_TEXTURES<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EXTRACT_TEXTURES>` instead.

Estrae le texture incorporate per essere reimportate e compresse. Solo per l'editor. Si comporta come non compresso in fase di esecuzione.

.. _class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_BASISU:

.. rst-class:: classref-constant

**HANDLE_BINARY_EMBED_AS_BASISU** = ``2`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_BASISU>`

**Deprecato:** Use :ref:`HANDLE_BINARY_IMAGE_MODE_EMBED_AS_BASISU<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_BASISU>` instead.

Incorpora texture VRAM compresse con Basis Universal nella scena generata.

.. _class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_UNCOMPRESSED:

.. rst-class:: classref-constant

**HANDLE_BINARY_EMBED_AS_UNCOMPRESSED** = ``3`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_UNCOMPRESSED>`

**Deprecato:** Use :ref:`HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED>` instead.

Incorpora texture compresse senza perdita di dati nella scena generata, il che corrisponde al comportamento in passato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GLTFState_property_bake_fps:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_fps** = ``30.0`` :ref:`🔗<class_GLTFState_property_bake_fps>`

.. rst-class:: classref-property-setget

- |void| **set_bake_fps**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_fps**\ (\ )

Gli FPS di elaborazione dell'animazione per l'importazione o l'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_base_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_path** = ``""`` :ref:`🔗<class_GLTFState_property_base_path>`

.. rst-class:: classref-property-setget

- |void| **set_base_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_path**\ (\ )

Il percorso della cartella associato a questi dati glTF. Serve per trovare altri file a cui fa riferimento il file glTF, come immagini o buffer binari. Sarà impostato durante l'importazione quando si aggiunge da un file e sarà impostato durante l'esportazione quando si scrive su un file.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_buffers:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`PackedByteArray<class_PackedByteArray>`\] **buffers** = ``[]`` :ref:`🔗<class_GLTFState_property_buffers>`

.. rst-class:: classref-property-setget

- |void| **set_buffers**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`PackedByteArray<class_PackedByteArray>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`PackedByteArray<class_PackedByteArray>`\] **get_buffers**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_copyright:

.. rst-class:: classref-property

:ref:`String<class_String>` **copyright** = ``""`` :ref:`🔗<class_GLTFState_property_copyright>`

.. rst-class:: classref-property-setget

- |void| **set_copyright**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_copyright**\ (\ )

La stringa del copyright nell'intestazione della risorsa nel file glTF. Questa è impostata durante l'importazione se presente e durante l'esportazione se non è vuota. Consulta la documentazione dell'intestazione delle risorse glTF per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_create_animations:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **create_animations** = ``true`` :ref:`🔗<class_GLTFState_property_create_animations>`

.. rst-class:: classref-property-setget

- |void| **set_create_animations**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_create_animations**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_filename:

.. rst-class:: classref-property

:ref:`String<class_String>` **filename** = ``""`` :ref:`🔗<class_GLTFState_property_filename>`

.. rst-class:: classref-property-setget

- |void| **set_filename**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_filename**\ (\ )

Il nome del file associato a questi dati glTF. Se termina con ``.gltf``, questo è un glTF basato su testo, altrimenti è GLB binario. Sarà impostato durante l'importazione quando si aggiunge da un file e durante l'esportazione quando si scrive su un file. Se si scrive su un buffer, sarà una stringa vuota.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_glb_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **glb_data** = ``PackedByteArray()`` :ref:`🔗<class_GLTFState_property_glb_data>`

.. rst-class:: classref-property-setget

- |void| **set_glb_data**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_glb_data**\ (\ )

Il buffer binario allegato a un file .glb.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_handle_binary_image_mode:

.. rst-class:: classref-property

:ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **handle_binary_image_mode** = ``1`` :ref:`🔗<class_GLTFState_property_handle_binary_image_mode>`

.. rst-class:: classref-property-setget

- |void| **set_handle_binary_image_mode**\ (\ value\: :ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>`\ )
- :ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` **get_handle_binary_image_mode**\ (\ )

When importing a glTF file with unimported raw binary images embedded inside of binary blob buffers, in data URIs, or separate files not imported by Godot, this controls how the images are handled. Images can be discarded, saved as separate files, or embedded in the scene lossily or losslessly. See :ref:`HandleBinaryImageMode<enum_GLTFState_HandleBinaryImageMode>` for options.

This property does nothing for image files in the ``res://`` folder imported by Godot, as those are handled by Godot's image importer directly, and then the Godot scene generated from the glTF file will use the images as Godot imported them.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_import_as_skeleton_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **import_as_skeleton_bones** = ``false`` :ref:`🔗<class_GLTFState_property_import_as_skeleton_bones>`

.. rst-class:: classref-property-setget

- |void| **set_import_as_skeleton_bones**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_import_as_skeleton_bones**\ (\ )

Se ``true``, forza tutti i GLTFNode nel documento a essere ossa di un singolo nodo :ref:`Skeleton3D<class_Skeleton3D>` di Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_json:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **json** = ``{}`` :ref:`🔗<class_GLTFState_property_json>`

.. rst-class:: classref-property-setget

- |void| **set_json**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_json**\ (\ )

Il documento JSON originale non elaborato corrispondente a questo GLTFState.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_major_version:

.. rst-class:: classref-property

:ref:`int<class_int>` **major_version** = ``0`` :ref:`🔗<class_GLTFState_property_major_version>`

.. rst-class:: classref-property-setget

- |void| **set_major_version**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_major_version**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_minor_version:

.. rst-class:: classref-property

:ref:`int<class_int>` **minor_version** = ``0`` :ref:`🔗<class_GLTFState_property_minor_version>`

.. rst-class:: classref-property-setget

- |void| **set_minor_version**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_minor_version**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_root_nodes:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **root_nodes** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFState_property_root_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_root_nodes**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_root_nodes**\ (\ )

I nodi radice del file glTF. In genere, un file glTF avrà solo una scena e quindi un solo nodo radice. Tuttavia, un file glTF può avere più scene e quindi più nodi radice, che saranno generati come fratelli l'uno dell'altro e come figli del nodo radice della scena generata di Godot.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_scene_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **scene_name** = ``""`` :ref:`🔗<class_GLTFState_property_scene_name>`

.. rst-class:: classref-property-setget

- |void| **set_scene_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_name**\ (\ )

Il nome della scena. Quando si importa, se non specificato, questo sarà il nome del file. Quando si esporta, se specificato, il nome della scena sarà salvato nel file glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_use_named_skin_binds:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_named_skin_binds** = ``false`` :ref:`🔗<class_GLTFState_property_use_named_skin_binds>`

.. rst-class:: classref-property-setget

- |void| **set_use_named_skin_binds**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_named_skin_binds**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GLTFState_method_add_used_extension:

.. rst-class:: classref-method

|void| **add_used_extension**\ (\ extension_name\: :ref:`String<class_String>`, required\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GLTFState_method_add_used_extension>`

Aggiunge un'estensione alla lista delle estensioni utilizzate da questo file glTF durante la serializzazione. Se ``required`` è ``true``, l'estensione sarà aggiunta anche alla lista delle estensioni obbligatorie. Non eseguirlo in :ref:`GLTFDocumentExtension._export_post()<class_GLTFDocumentExtension_private_method__export_post>`, poiché durante questa fase è troppo tardi per aggiungere estensioni. La lista finale è ordinata alfabeticamente.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_append_data_to_buffers:

.. rst-class:: classref-method

:ref:`int<class_int>` **append_data_to_buffers**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`, deduplication\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GLTFState_method_append_data_to_buffers>`

Aggiunge i dati dell'array di byte specificato ai buffer e crea un :ref:`GLTFBufferView<class_GLTFBufferView>` per esso. Viene restituito l'indice della :ref:`GLTFBufferView<class_GLTFBufferView>` di destinazione. Se ``deduplication`` è ``true``, i buffer saranno prima analizzati per dati duplicati, altrimenti saranno sempre aggiunti nuovi byte.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_append_gltf_node:

.. rst-class:: classref-method

:ref:`int<class_int>` **append_gltf_node**\ (\ gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, godot_scene_node\: :ref:`Node<class_Node>`, parent_node_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFState_method_append_gltf_node>`

Aggiungi il :ref:`GLTFNode<class_GLTFNode>` fornito allo stato e restituisci il suo nuovo indice. Questo può essere usato per esportare un nodo di Godot come più nodi glTF o per iniettare nuovi nodi glTF al momento dell'importazione. All'importazione, è necessario chiamare questo metodo prima che :ref:`GLTFDocumentExtension._generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` termini per il nodo padre. All'esportazione, è necessario chiamarlo prima che :ref:`GLTFDocumentExtension._export_node()<class_GLTFDocumentExtension_private_method__export_node>` sia eseguito per il nodo padre.

Il parametro ``godot_scene_node`` è il nodo di scena di Godot che corrisponde a questo nodo glTF. Si consiglia vivamente di impostarlo su un nodo valido, ma potrebbe essere ``null`` se non esiste un nodo di scena di Godot corrispondente. Un nodo di scena di Godot può essere usato per più nodi glTF, quindi se si esportano più nodi glTF per un nodo di scena di Godot, usa lo stesso nodo di scena di Godot per ciascuno.

Il parametro ``parent_node_index`` è l'indice del :ref:`GLTFNode<class_GLTFNode>` padre nello stato. Se ``-1``, il nodo sarà un nodo radice, altrimenti il nuovo nodo verrà aggiunto alla lista dei figli del padre. L'indice verrà anche scritto nella proprietà :ref:`GLTFNode.parent<class_GLTFNode_property_parent>` del nuovo nodo.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_accessors:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFAccessor<class_GLTFAccessor>`\] **get_accessors**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_accessors>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_additional_data>`

Ottiene ulteriori dati arbitrari in questa istanza **GLTFState**. Può essere utilizzato per mantenere i dati di stato per ogni file nelle classi :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, il che è importante perché sono stateless.

L'argomento dovrebbe essere il nome del :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (non deve corrispondere al nome dell'estensione nel file glTF) e il valore restituito può essere qualsiasi cosa tu imposti. Se niente è stato impostato, il valore restituito è ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animation_player:

.. rst-class:: classref-method

:ref:`AnimationPlayer<class_AnimationPlayer>` **get_animation_player**\ (\ anim_player_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_animation_player>`

Restituisce il nodo :ref:`AnimationPlayer<class_AnimationPlayer>` con l'indice specificato. Questi nodi sono utilizzati solo durante il processo di esportazione quando si convertono i nodi :ref:`AnimationPlayer<class_AnimationPlayer>` di Godot in animazioni glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animation_players_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_animation_players_count**\ (\ anim_player_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_animation_players_count>`

Restituisce il numero di nodi :ref:`AnimationPlayer<class_AnimationPlayer>` in questo **GLTFState**. Questi nodi sono utilizzati solo durante il processo di esportazione quando si convertono i nodi :ref:`AnimationPlayer<class_AnimationPlayer>` di Godot in animazioni glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\] **get_animations**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_animations>`

Restituisce un array di tutti i :ref:`GLTFAnimation<class_GLTFAnimation>` nel file glTF. Durante l'importazione, questi saranno generati come animazioni in un nodo :ref:`AnimationPlayer<class_AnimationPlayer>`. Durante l'esportazione, questi saranno generati dai nodi :ref:`AnimationPlayer<class_AnimationPlayer>` di Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_buffer_views:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFBufferView<class_GLTFBufferView>`\] **get_buffer_views**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_buffer_views>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_cameras:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFCamera<class_GLTFCamera>`\] **get_cameras**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_cameras>`

Restituisce un array di tutte le :ref:`GLTFCamera<class_GLTFCamera>` nel file glTF. Queste sono le telecamere a cui fa riferimento l'indice :ref:`GLTFNode.camera<class_GLTFNode_property_camera>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_handle_binary_image:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_handle_binary_image**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_handle_binary_image>`

**Deprecato:** Use :ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>` instead.

Deprecated untyped alias for :ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>`. When importing a glTF file with unimported raw binary images embedded inside of binary blob buffers, in data URIs, or separate files not imported by Godot, this controls how the images are handled.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_images:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\] **get_images**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_images>`

Ottiene le immagini del file glTF come un array di :ref:`Texture2D<class_Texture2D>`. Queste sono le immagini a cui fa riferimento l'indice :ref:`GLTFTexture.src_image<class_GLTFTexture_property_src_image>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_lights:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\] **get_lights**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_lights>`

Restituisce un array di tutte le :ref:`GLTFLight<class_GLTFLight>` nel file glTF. Queste sono le luci a cui fa riferimento l'indice :ref:`GLTFNode.light<class_GLTFNode_property_light>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_materials:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] **get_materials**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_materials>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFMesh<class_GLTFMesh>`\] **get_meshes**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_meshes>`

Restituisce un array di tutte le :ref:`GLTFMesh<class_GLTFMesh>` nel file glTF. Queste sono le mesh a cui fa riferimento l'indice :ref:`GLTFNode.mesh<class_GLTFNode_property_mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_node_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_index**\ (\ scene_node\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_node_index>`

Restituisce l'indice del :ref:`GLTFNode<class_GLTFNode>` corrispondente a questo nodo di scena di Godot. Questo è l'inverso di :ref:`get_scene_node()<class_GLTFState_method_get_scene_node>`. Utile durante il processo di esportazione.

\ **Nota:** Non tutti i nodi di scena di Godot avranno un :ref:`GLTFNode<class_GLTFNode>` corrispondente e non tutti i :ref:`GLTFNode<class_GLTFNode>` avranno un nodo di scena generato. Se non c'è un indice :ref:`GLTFNode<class_GLTFNode>` per questo nodo di scena, viene restituito ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\] **get_nodes**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_nodes>`

Restituisce un array di tutti i :ref:`GLTFNode<class_GLTFNode>` nel file glTF. Questi sono i nodi a cui fanno riferimento :ref:`GLTFNode.children<class_GLTFNode_property_children>` e :ref:`root_nodes<class_GLTFState_property_root_nodes>`. Ciò include i nodi che potrebbero non essere generati nella scena di Godot o i nodi che potrebbero generare più nodi di scena di Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_scene_node:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_scene_node**\ (\ gltf_node_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_scene_node>`

Restituisce il nodo di scena di Godot che corrisponde allo stesso indice del :ref:`GLTFNode<class_GLTFNode>` da cui è stato generato. Questo è l'inverso di :ref:`get_node_index()<class_GLTFState_method_get_node_index>`. Utile durante il processo di importazione.

\ **Nota:** Non tutti i :ref:`GLTFNode<class_GLTFNode>` avranno un nodo di scena generato e non tutti i nodi di scena generati avranno un :ref:`GLTFNode<class_GLTFNode>` corrispondente. Se non c'è alcun nodo di scena per questo indice di :ref:`GLTFNode<class_GLTFNode>`, viene restituito ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_skeletons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\] **get_skeletons**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_skeletons>`

Restituisce un array di tutti i :ref:`GLTFSkeleton<class_GLTFSkeleton>` nel file glTF. Questi sono gli scheletri a cui fa riferimento l'indice :ref:`GLTFNode.skeleton<class_GLTFNode_property_skeleton>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_skins:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\] **get_skins**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_skins>`

Restituisce un array di tutte le :ref:`GLTFSkin<class_GLTFSkin>` nel file glTF. Queste sono le skin a cui fa riferimento l'indice :ref:`GLTFNode.skin<class_GLTFNode_property_skin>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_texture_samplers:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\] **get_texture_samplers**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_texture_samplers>`

Recupera l'array dei campionatori di texture utilizzati dalle texture contenute nel glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_textures:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFTexture<class_GLTFTexture>`\] **get_textures**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_textures>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_unique_animation_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **get_unique_animation_names**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_unique_animation_names>`

Restituisce un array di nomi univoci di animazione. È utilizzato solo durante il processo di importazione.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_unique_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **get_unique_names**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_unique_names>`

Restituisce un array di nomi univoci di nodi. È utilizzato sia nel processo di importazione sia in quello di esportazione.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_accessors:

.. rst-class:: classref-method

|void| **set_accessors**\ (\ accessors\: :ref:`Array<class_Array>`\[:ref:`GLTFAccessor<class_GLTFAccessor>`\]\ ) :ref:`🔗<class_GLTFState_method_set_accessors>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFState_method_set_additional_data>`

Imposta ulteriori dati arbitrari in questa istanza **GLTFState**. Può essere utilizzato per mantenere i dati di stato per ogni file nelle classi :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, il che è importante perché sono stateless.

Il primo argomento dovrebbe essere il nome del :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (non deve corrispondere al nome dell'estensione nel file glTF) e il secondo argomento può essere qualsiasi cosa tu voglia.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_animations:

.. rst-class:: classref-method

|void| **set_animations**\ (\ animations\: :ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\]\ ) :ref:`🔗<class_GLTFState_method_set_animations>`

Imposta le :ref:`GLTFAnimation<class_GLTFAnimation>` nello stato. Durante l'importazione, queste saranno generate come animazioni in un nodo :ref:`AnimationPlayer<class_AnimationPlayer>`. Durante l'esportazione, queste saranno generate dai nodi :ref:`AnimationPlayer<class_AnimationPlayer>` di Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_buffer_views:

.. rst-class:: classref-method

|void| **set_buffer_views**\ (\ buffer_views\: :ref:`Array<class_Array>`\[:ref:`GLTFBufferView<class_GLTFBufferView>`\]\ ) :ref:`🔗<class_GLTFState_method_set_buffer_views>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_cameras:

.. rst-class:: classref-method

|void| **set_cameras**\ (\ cameras\: :ref:`Array<class_Array>`\[:ref:`GLTFCamera<class_GLTFCamera>`\]\ ) :ref:`🔗<class_GLTFState_method_set_cameras>`

Imposta le :ref:`GLTFCamera<class_GLTFCamera>` nello stato. Queste sono le telecamere a cui fa riferimento l'indice :ref:`GLTFNode.camera<class_GLTFNode_property_camera>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_handle_binary_image:

.. rst-class:: classref-method

|void| **set_handle_binary_image**\ (\ method\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFState_method_set_handle_binary_image>`

**Deprecato:** Use :ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>` instead.

Deprecated untyped alias for :ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>`. When importing a glTF file with unimported raw binary images embedded inside of binary blob buffers, in data URIs, or separate files not imported by Godot, this controls how the images are handled.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_images:

.. rst-class:: classref-method

|void| **set_images**\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\]\ ) :ref:`🔗<class_GLTFState_method_set_images>`

Imposta le immagini nello stato memorizzato come un array di :ref:`Texture2D<class_Texture2D>`. Può essere utilizzato durante l'esportazione. Queste sono le immagini a cui fa riferimento l'indice :ref:`GLTFTexture.src_image<class_GLTFTexture_property_src_image>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_lights:

.. rst-class:: classref-method

|void| **set_lights**\ (\ lights\: :ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\]\ ) :ref:`🔗<class_GLTFState_method_set_lights>`

Imposta i :ref:`GLTFLight<class_GLTFLight>` nello stato. Queste sono le luci a cui fa riferimento l'indice :ref:`GLTFNode.light<class_GLTFNode_property_light>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_materials:

.. rst-class:: classref-method

|void| **set_materials**\ (\ materials\: :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\]\ ) :ref:`🔗<class_GLTFState_method_set_materials>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_meshes:

.. rst-class:: classref-method

|void| **set_meshes**\ (\ meshes\: :ref:`Array<class_Array>`\[:ref:`GLTFMesh<class_GLTFMesh>`\]\ ) :ref:`🔗<class_GLTFState_method_set_meshes>`

Imposta le :ref:`GLTFMesh<class_GLTFMesh>` nello stato. Queste sono le mesh a cui fa riferimento l'indice :ref:`GLTFNode.mesh<class_GLTFNode_property_mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_nodes:

.. rst-class:: classref-method

|void| **set_nodes**\ (\ nodes\: :ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\]\ ) :ref:`🔗<class_GLTFState_method_set_nodes>`

Imposta i :ref:`GLTFNode<class_GLTFNode>` nello stato. Questi sono i nodi a cui fanno riferimento :ref:`GLTFNode.children<class_GLTFNode_property_children>` e :ref:`root_nodes<class_GLTFState_property_root_nodes>`. Alcuni dei nodi impostati qui potrebbero non essere generati nella scena di Godot o potrebbero generare più nodi di scena di Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_skeletons:

.. rst-class:: classref-method

|void| **set_skeletons**\ (\ skeletons\: :ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\]\ ) :ref:`🔗<class_GLTFState_method_set_skeletons>`

Imposta i :ref:`GLTFSkeleton<class_GLTFSkeleton>` nello stato. Questi sono gli scheletri a cui fa riferimento l'indice :ref:`GLTFNode.skeleton<class_GLTFNode_property_skeleton>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_skins:

.. rst-class:: classref-method

|void| **set_skins**\ (\ skins\: :ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\]\ ) :ref:`🔗<class_GLTFState_method_set_skins>`

Imposta le :ref:`GLTFSkin<class_GLTFSkin>` nello stato. Queste sono le skin a cui fa riferimento l'indice :ref:`GLTFNode.skin<class_GLTFNode_property_skin>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_texture_samplers:

.. rst-class:: classref-method

|void| **set_texture_samplers**\ (\ texture_samplers\: :ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\]\ ) :ref:`🔗<class_GLTFState_method_set_texture_samplers>`

Imposta l'array dei campionatori di texture utilizzati dalle texture contenute nel glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_textures:

.. rst-class:: classref-method

|void| **set_textures**\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`GLTFTexture<class_GLTFTexture>`\]\ ) :ref:`🔗<class_GLTFState_method_set_textures>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_unique_animation_names:

.. rst-class:: classref-method

|void| **set_unique_animation_names**\ (\ unique_animation_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) :ref:`🔗<class_GLTFState_method_set_unique_animation_names>`

Imposta i nomi univoci delle animazioni nello stato. È utilizzato solo durante il processo di importazione.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_unique_names:

.. rst-class:: classref-method

|void| **set_unique_names**\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) :ref:`🔗<class_GLTFState_method_set_unique_names>`

Imposta i nomi univoci dei nodi nello stato. È utilizzato sia nel processo di importazione sia in quello di esportazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
