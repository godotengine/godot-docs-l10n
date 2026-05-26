:github_url: hide

.. _class_GLTFState:

GLTFState
=========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`FBXState<class_FBXState>`

Representa todos los datos de un archivo glTF.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Contains all nodes and resources of a glTF file. This is used by :ref:`GLTFDocument<class_GLTFDocument>` as data storage, which allows :ref:`GLTFDocument<class_GLTFDocument>` and all :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` classes to remain stateless.

GLTFState can be populated by :ref:`GLTFDocument<class_GLTFDocument>` reading a file or by converting a Godot scene. Then the data can either be used to create a Godot scene or save to a glTF file. The code that converts to/from a Godot scene can be intercepted at arbitrary points by :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` classes. This allows for custom data to be stored in the glTF file or for custom data to be converted to/from Godot nodes.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

- `glTF asset header schema <https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/schema/asset.schema.json>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Enumeraciones
--------------------------

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

Constantes
--------------------

.. _class_GLTFState_constant_HANDLE_BINARY_DISCARD_TEXTURES:

.. rst-class:: classref-constant

**HANDLE_BINARY_DISCARD_TEXTURES** = ``0`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_DISCARD_TEXTURES>`

**Obsoleto:** Use :ref:`HANDLE_BINARY_IMAGE_MODE_DISCARD_TEXTURES<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_DISCARD_TEXTURES>` instead.

Descarta todas las texturas incrustadas y usa materiales sin textura.

.. _class_GLTFState_constant_HANDLE_BINARY_EXTRACT_TEXTURES:

.. rst-class:: classref-constant

**HANDLE_BINARY_EXTRACT_TEXTURES** = ``1`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EXTRACT_TEXTURES>`

**Obsoleto:** Use :ref:`HANDLE_BINARY_IMAGE_MODE_EXTRACT_TEXTURES<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EXTRACT_TEXTURES>` instead.

Extrae las texturas incrustadas para ser reimportadas y comprimidas. Solo en el editor. Actúa como sin comprimir en tiempo de ejecución.

.. _class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_BASISU:

.. rst-class:: classref-constant

**HANDLE_BINARY_EMBED_AS_BASISU** = ``2`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_BASISU>`

**Obsoleto:** Use :ref:`HANDLE_BINARY_IMAGE_MODE_EMBED_AS_BASISU<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_BASISU>` instead.

Incrusta texturas comprimidas para VRAM con Basis Universal en la escena generada.

.. _class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_UNCOMPRESSED:

.. rst-class:: classref-constant

**HANDLE_BINARY_EMBED_AS_UNCOMPRESSED** = ``3`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_UNCOMPRESSED>`

**Obsoleto:** Use :ref:`HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED<class_GLTFState_constant_HANDLE_BINARY_IMAGE_MODE_EMBED_AS_UNCOMPRESSED>` instead.

Incrusta texturas comprimidas sin pérdida en la escena generada, coincidiendo con el comportamiento anterior.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GLTFState_property_bake_fps:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_fps** = ``30.0`` :ref:`🔗<class_GLTFState_property_bake_fps>`

.. rst-class:: classref-property-setget

- |void| **set_bake_fps**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_fps**\ (\ )

Los FPS de procesado de la animación para la importación o exportación.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_base_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_path** = ``""`` :ref:`🔗<class_GLTFState_property_base_path>`

.. rst-class:: classref-property-setget

- |void| **set_base_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_path**\ (\ )

La ruta de la carpeta asociada con estos datos glTF. Se utiliza para encontrar otros archivos a los que hace referencia el archivo glTF, como imágenes o búferes binarios. Esto se establecerá durante la importación al adjuntar desde un archivo, y se establecerá durante la exportación al escribir en un archivo.

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

La string de copyright en la cabecera del activo del archivo glTF. Esto se establece durante la importación si está presente y en la exportación si no está vacío. Véase la documentación de la cabecera de activos glTF para obtener más información.

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

El nombre de archivo asociado a estos datos glTF. Si termina con ``.gltf``, se trata de un glTF basado en texto; de lo contrario, es un GLB binario. Esto se establecerá durante la importación al añadir desde un archivo, y se establecerá durante la exportación al escribir en un archivo. Si se escribe en un búfer, será una string vacía.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_glb_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **glb_data** = ``PackedByteArray()`` :ref:`🔗<class_GLTFState_property_glb_data>`

.. rst-class:: classref-property-setget

- |void| **set_glb_data**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_glb_data**\ (\ )

El búfer binario adjunto a un archivo .glb.

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

Si es ``true``, fuerza a todos los GLTFNodes del documento a ser huesos de un único nodo :ref:`Skeleton3D<class_Skeleton3D>` de Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_json:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **json** = ``{}`` :ref:`🔗<class_GLTFState_property_json>`

.. rst-class:: classref-property-setget

- |void| **set_json**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_json**\ (\ )

El documento JSON crudo original correspondiente a este GLTFState.

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

Los nodos raíz del archivo glTF. Típicamente, un archivo glTF solo tendrá una escena y, por lo tanto, un nodo raíz. Sin embargo, un archivo glTF puede tener múltiples escenas y, por lo tanto, múltiples nodos raíz, que se generarán como hermanos entre sí y como hijos del nodo raíz de la escena de Godot generada.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_scene_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **scene_name** = ``""`` :ref:`🔗<class_GLTFState_property_scene_name>`

.. rst-class:: classref-property-setget

- |void| **set_scene_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_name**\ (\ )

El nombre de la escena. Al importar, si no se especifica, este será el nombre del archivo. Al exportar, si se especifica, el nombre de la escena se guardará en el archivo glTF.

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

Descripciones de Métodos
------------------------------------------------

.. _class_GLTFState_method_add_used_extension:

.. rst-class:: classref-method

|void| **add_used_extension**\ (\ extension_name\: :ref:`String<class_String>`, required\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GLTFState_method_add_used_extension>`

Appends an extension to the list of extensions used by this glTF file during serialization. If ``required`` is ``true``, the extension will also be added to the list of required extensions. Do not run this in :ref:`GLTFDocumentExtension._export_post()<class_GLTFDocumentExtension_private_method__export_post>`, as that stage is too late to add extensions. The final list is sorted alphabetically.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_append_data_to_buffers:

.. rst-class:: classref-method

:ref:`int<class_int>` **append_data_to_buffers**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`, deduplication\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GLTFState_method_append_data_to_buffers>`

Añade el array de bytes dado ``data`` a los búferes y crea una :ref:`GLTFBufferView<class_GLTFBufferView>` para él. Se devuelve el índice del destino :ref:`GLTFBufferView<class_GLTFBufferView>`. Si ``deduplication`` es ``true``, los búferes se buscan primero para datos duplicados, de lo contrario, siempre se añaden nuevos bytes.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_append_gltf_node:

.. rst-class:: classref-method

:ref:`int<class_int>` **append_gltf_node**\ (\ gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, godot_scene_node\: :ref:`Node<class_Node>`, parent_node_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFState_method_append_gltf_node>`

Añade el :ref:`GLTFNode<class_GLTFNode>` dado al estado, y devuelve su nuevo índice. Esto se puede usar para exportar un nodo de Godot como múltiples nodos glTF, o inyectar nuevos nodos glTF en tiempo de importación. En la importación, esto debe ser llamado antes de que :ref:`GLTFDocumentExtension._generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` termine para el nodo padre. En la exportación, esto debe ser llamado antes de que :ref:`GLTFDocumentExtension._export_node()<class_GLTFDocumentExtension_private_method__export_node>` se ejecute para el nodo padre.

El parámetro ``godot_scene_node`` es el nodo de la escena de Godot que corresponde a este nodo glTF. Se recomienda encarecidamente que se establezca en un nodo válido, pero puede ser ``null`` si no hay un nodo de escena de Godot correspondiente. Un nodo de escena de Godot se puede usar para múltiples nodos glTF, así que si se exportan múltiples nodos glTF para un nodo de escena de Godot, use el mismo nodo de escena de Godot para cada uno.

El parámetro ``parent_node_index`` es el índice del :ref:`GLTFNode<class_GLTFNode>` padre en el estado. Si ``-1``, el nodo será un nodo raíz, de lo contrario, el nuevo nodo se añadirá a la lista de hijos del padre. El índice también se escribirá en la propiedad :ref:`GLTFNode.parent<class_GLTFNode_property_parent>` del nuevo nodo.

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

Obtiene datos arbitrarios adicionales en esta instancia de **GLTFState**. Esto se puede usar para mantener datos de estado por archivo en las clases :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, lo cual es importante porque no tienen estado.

El argumento debe ser el nombre de :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (no tiene que coincidir con el nombre de la extensión en el archivo glTF), y el valor de retorno puede ser cualquier cosa que establezcas. Si no se estableció nada, el valor de retorno es ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animation_player:

.. rst-class:: classref-method

:ref:`AnimationPlayer<class_AnimationPlayer>` **get_animation_player**\ (\ anim_player_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_animation_player>`

Devuelve el nodo :ref:`AnimationPlayer<class_AnimationPlayer>` con el índice dado. Estos nodos solo se usan durante el proceso de exportación al convertir los nodos :ref:`AnimationPlayer<class_AnimationPlayer>` de Godot en animaciones glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animation_players_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_animation_players_count**\ (\ anim_player_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_animation_players_count>`

Devuelve el número de nodos :ref:`AnimationPlayer<class_AnimationPlayer>` en este **GLTFState**. Estos nodos solo se utilizan durante el proceso de exportación al convertir los nodos :ref:`AnimationPlayer<class_AnimationPlayer>` de Godot en animaciones glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\] **get_animations**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_animations>`

Devuelve un array de todos los :ref:`GLTFAnimation<class_GLTFAnimation>`\ s en el archivo glTF. Al importar, estos se generarán como animaciones en un nodo :ref:`AnimationPlayer<class_AnimationPlayer>`. Al exportar, estos se generarán a partir de nodos :ref:`AnimationPlayer<class_AnimationPlayer>` de Godot.

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

Devuelve un array de todos los :ref:`GLTFCamera<class_GLTFCamera>` en el archivo glTF. Estas son las cámaras a las que se refiere el índice :ref:`GLTFNode.camera<class_GLTFNode_property_camera>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_handle_binary_image:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_handle_binary_image**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_handle_binary_image>`

**Obsoleto:** Use :ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>` instead.

Deprecated untyped alias for :ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>`. When importing a glTF file with unimported raw binary images embedded inside of binary blob buffers, in data URIs, or separate files not imported by Godot, this controls how the images are handled.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_images:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\] **get_images**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_images>`

Obtiene las imágenes del archivo glTF como un array de :ref:`Texture2D<class_Texture2D>`\ s. Estas son las imágenes a las que se refiere el índice :ref:`GLTFTexture.src_image<class_GLTFTexture_property_src_image>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_lights:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\] **get_lights**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_lights>`

Devuelve un array de todas las :ref:`GLTFLight<class_GLTFLight>`\ s en el archivo glTF. Estas son las luces a las que se refiere el índice :ref:`GLTFNode.light<class_GLTFNode_property_light>`.

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

Devuelve un array de todos los :ref:`GLTFMesh<class_GLTFMesh>` del archivo glTF. Estas son las mallas a las que se refiere el índice :ref:`GLTFNode.mesh<class_GLTFNode_property_mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_node_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_index**\ (\ scene_node\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_node_index>`

Devuelve el índice del :ref:`GLTFNode<class_GLTFNode>` correspondiente a este nodo de escena de Godot. Esta es la inversa de :ref:`get_scene_node()<class_GLTFState_method_get_scene_node>`. Útil durante el proceso de exportación.

\ **Nota:** No todos los nodos de escena de Godot tendrán un :ref:`GLTFNode<class_GLTFNode>` correspondiente, y no todos los :ref:`GLTFNode<class_GLTFNode>` tendrán un nodo de escena generado. Si no hay un índice :ref:`GLTFNode<class_GLTFNode>` para este nodo de escena, se devuelve ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\] **get_nodes**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_nodes>`

Devuelve un array de todos los :ref:`GLTFNode<class_GLTFNode>`\ s en el archivo glTF. Estos son los nodos a los que :ref:`GLTFNode.children<class_GLTFNode_property_children>` y :ref:`root_nodes<class_GLTFState_property_root_nodes>` se refieren. Esto incluye los nodos que pueden no ser generados en la escena de Godot, o los nodos que pueden generar múltiples nodos de la escena de Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_scene_node:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_scene_node**\ (\ gltf_node_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GLTFState_method_get_scene_node>`

Devuelve el nodo de la escena de Godot que corresponde al mismo índice que el :ref:`GLTFNode<class_GLTFNode>` del que fue generado. Esta es la inversa de :ref:`get_node_index()<class_GLTFState_method_get_node_index>`. Útil durante el proceso de importación.

\ **Nota:** No todos los :ref:`GLTFNode<class_GLTFNode>` tendrán un nodo de escena generado, y no todos los nodos de escena generados tendrán un :ref:`GLTFNode<class_GLTFNode>` correspondiente. Si no hay ningún nodo de escena para este índice de :ref:`GLTFNode<class_GLTFNode>`, se devuelve ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_skeletons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\] **get_skeletons**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_skeletons>`

Devuelve un array de todos los :ref:`GLTFSkeleton<class_GLTFSkeleton>`\ s en el archivo glTF. Estos son los esqueletos a los que se refiere el índice de :ref:`GLTFNode.skeleton<class_GLTFNode_property_skeleton>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_skins:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\] **get_skins**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_skins>`

Devuelve un array de todos los :ref:`GLTFSkin<class_GLTFSkin>`\ s en el archivo glTF. Estos son las pieles a las que se refiere el índice de :ref:`GLTFNode.skin<class_GLTFNode_property_skin>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_texture_samplers:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\] **get_texture_samplers**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_texture_samplers>`

Retrieves the array of texture samplers that are used by the textures contained in the glTF.

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

Devuelve una lista de nombres de animación únicos. Esto solo se usa durante el proceso de importación.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_unique_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **get_unique_names**\ (\ ) |const| :ref:`🔗<class_GLTFState_method_get_unique_names>`

Devuelve una lista de nombres de nodo únicos. Esto se usa tanto en el proceso de importación como en el de exportación.

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

Establece datos arbitrarios adicionales en esta instancia de **GLTFState**. Esto se puede usar para mantener datos de estado por archivo en las clases :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, lo cual es importante porque no tienen estado.

El primer argumento debe ser el nombre de :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (no tiene que coincidir con el nombre de la extensión en el archivo glTF), y el segundo argumento puede ser cualquier cosa que desees.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_animations:

.. rst-class:: classref-method

|void| **set_animations**\ (\ animations\: :ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\]\ ) :ref:`🔗<class_GLTFState_method_set_animations>`

Establece las :ref:`GLTFAnimation<class_GLTFAnimation>`\ s en el estado. Al importar, estas se generarán como animaciones en un nodo :ref:`AnimationPlayer<class_AnimationPlayer>`. Al exportar, estas se generarán a partir de nodos :ref:`AnimationPlayer<class_AnimationPlayer>` de Godot.

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

Establece las :ref:`GLTFCamera<class_GLTFCamera>`\ s en el estado. Estas son las cámaras a las que se refiere el índice de :ref:`GLTFNode.camera<class_GLTFNode_property_camera>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_handle_binary_image:

.. rst-class:: classref-method

|void| **set_handle_binary_image**\ (\ method\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFState_method_set_handle_binary_image>`

**Obsoleto:** Use :ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>` instead.

Deprecated untyped alias for :ref:`handle_binary_image_mode<class_GLTFState_property_handle_binary_image_mode>`. When importing a glTF file with unimported raw binary images embedded inside of binary blob buffers, in data URIs, or separate files not imported by Godot, this controls how the images are handled.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_images:

.. rst-class:: classref-method

|void| **set_images**\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\]\ ) :ref:`🔗<class_GLTFState_method_set_images>`

Establece las imágenes en el estado almacenado como un array de :ref:`Texture2D<class_Texture2D>`\ s. Esto puede ser usado durante la exportación. Estas son las imágenes a las que se refiere el índice de :ref:`GLTFTexture.src_image<class_GLTFTexture_property_src_image>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_lights:

.. rst-class:: classref-method

|void| **set_lights**\ (\ lights\: :ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\]\ ) :ref:`🔗<class_GLTFState_method_set_lights>`

Establece las :ref:`GLTFLight<class_GLTFLight>`\ s en el estado. Estas son las luces a las que se refiere el índice de :ref:`GLTFNode.light<class_GLTFNode_property_light>`.

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

Establece los :ref:`GLTFMesh<class_GLTFMesh>`\ es en el estado. Estas son las mallas a las que se refiere el índice de :ref:`GLTFNode.mesh<class_GLTFNode_property_mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_nodes:

.. rst-class:: classref-method

|void| **set_nodes**\ (\ nodes\: :ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\]\ ) :ref:`🔗<class_GLTFState_method_set_nodes>`

Establece los :ref:`GLTFNode<class_GLTFNode>`\ s en el estado. Estos son los nodos a los que se refieren :ref:`GLTFNode.children<class_GLTFNode_property_children>` y :ref:`root_nodes<class_GLTFState_property_root_nodes>`. Algunos de los nodos establecidos aquí pueden no ser generados en la escena de Godot, o pueden generar múltiples nodos de escena de Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_skeletons:

.. rst-class:: classref-method

|void| **set_skeletons**\ (\ skeletons\: :ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\]\ ) :ref:`🔗<class_GLTFState_method_set_skeletons>`

Establece los :ref:`GLTFSkeleton<class_GLTFSkeleton>`\ s en el estado. Estos son los esqueletos a los que se refiere el índice de :ref:`GLTFNode.skeleton<class_GLTFNode_property_skeleton>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_skins:

.. rst-class:: classref-method

|void| **set_skins**\ (\ skins\: :ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\]\ ) :ref:`🔗<class_GLTFState_method_set_skins>`

Sets the :ref:`GLTFSkin<class_GLTFSkin>`\ s in the state. These are the skins that the :ref:`GLTFNode.skin<class_GLTFNode_property_skin>` index refers to.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_texture_samplers:

.. rst-class:: classref-method

|void| **set_texture_samplers**\ (\ texture_samplers\: :ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\]\ ) :ref:`🔗<class_GLTFState_method_set_texture_samplers>`

Establece el array de muestreadores de texturas que son utilizados por las texturas contenidas en el glTF.

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

Establece los nombres de animación únicos en el estado. Esto solo se usa durante el proceso de importación.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_unique_names:

.. rst-class:: classref-method

|void| **set_unique_names**\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) :ref:`🔗<class_GLTFState_method_set_unique_names>`

Establece los nombres de nodos únicos en el estado. Esto se usa tanto en el proceso de importación como en el de exportación.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
