:github_url: hide

.. _class_GLTFDocument:

GLTFDocument
============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`FBXDocument<class_FBXDocument>`

Clase para importar y exportar archivos glTF dentro y fuera de Godot.

.. rst-class:: classref-introduction-group

Descripción
----------------------

GLTFDocument admite la lectura de datos de un archivo glTF, un búfer o una escena de Godot. Estos datos pueden escribirse en el sistema de archivos, en el búfer o utilizarse para crear una escena de Godot.

Todos los datos de una escena glTF se almacenan en la clase :ref:`GLTFState<class_GLTFState>`. GLTFDocument procesa objetos de estado, pero no contiene ningún dato de escena en sí mismo. GLTFDocument tiene variables miembro para almacenar los ajustes de configuración de la exportación, como el formato de imagen, pero por lo demás no tiene estado. Se pueden procesar varias escenas con la misma configuración utilizando el mismo objeto GLTFDocument y diferentes objetos :ref:`GLTFState<class_GLTFState>`.

GLTFDocument puede ampliarse con funcionalidad arbitraria extendiendo la clase :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` y registrándola con GLTFDocument a través de :ref:`register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>`. Esto permite importar y exportar datos personalizados.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

- `glTF 'What the duck?' guide <https://www.khronos.org/files/gltf20-reference-guide.pdf>`__

- `Especificación glTF de Khronos <https://registry.khronos.org/glTF/>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_GLTFDocument_RootNodeMode:

.. rst-class:: classref-enumeration

enum **RootNodeMode**: :ref:`🔗<enum_GLTFDocument_RootNodeMode>`

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_SINGLE_ROOT** = ``0``

Treat the Godot scene's root node as the root node of the glTF file, and mark it as the single root node via the ``GODOT_single_root`` glTF extension. This will be parsed the same as :ref:`ROOT_NODE_MODE_KEEP_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT>` if the implementation does not support ``GODOT_single_root``.

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_KEEP_ROOT** = ``1``

Treat the Godot scene's root node as the root node of the glTF file, but do not mark it as anything special. An extra root node will be generated when importing into Godot. This uses only vanilla glTF features. This is equivalent to the behavior in Godot 4.1 and earlier.

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_MULTI_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_MULTI_ROOT** = ``2``

Treat the Godot scene's root node as the name of the glTF scene, and add all of its children as root nodes of the glTF file. This uses only vanilla glTF features. This avoids an extra root node, but only the name of the Godot scene's root node will be preserved, as it will not be saved as a node.

.. rst-class:: classref-item-separator

----

.. _enum_GLTFDocument_TextureMapMode:

.. rst-class:: classref-enumeration

enum **TextureMapMode**: :ref:`🔗<enum_GLTFDocument_TextureMapMode>`

.. _class_GLTFDocument_constant_TEXTURE_MAP_MODE_DO_NOT_REMAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **TEXTURE_MAP_MODE_DO_NOT_REMAP** = ``0``

Import the texture maps in the glTF file as they are, without trying to fit them into specific texture slots suitable for Godot's built-in materials. This may be desirable if using the glTF file with custom shaders, but may not display correctly with Godot's built-in materials. This is equivalent to the behavior in Godot 4.6 and earlier.

.. _class_GLTFDocument_constant_TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL:

.. rst-class:: classref-enumeration-constant

:ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL** = ``1``

Import the texture maps in the glTF file remapped to the most suitable texture slots based on Godot's :ref:`StandardMaterial3D<class_StandardMaterial3D>` class. This is the default behavior.

.. rst-class:: classref-item-separator

----

.. _enum_GLTFDocument_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_GLTFDocument_VisibilityMode>`

.. _class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_INCLUDE_REQUIRED** = ``0``

If the scene contains any non-visible nodes, include them, mark them as non-visible with ``KHR_node_visibility``, and require that importers respect their non-visibility. Downside: If the importer does not support ``KHR_node_visibility``, the file cannot be imported.

.. _class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_OPTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_INCLUDE_OPTIONAL** = ``1``

If the scene contains any non-visible nodes, include them, mark them as non-visible with ``KHR_node_visibility``, and do not impose any requirements on importers. Downside: If the importer does not support ``KHR_node_visibility``, invisible objects will be visible.

.. _class_GLTFDocument_constant_VISIBILITY_MODE_EXCLUDE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_EXCLUDE** = ``2``

If the scene contains any non-visible nodes, do not include them in the export. This is the same as the behavior in Godot 4.4 and earlier. Downside: Invisible nodes will not exist in the exported file.

.. rst-class:: classref-item-separator

----

.. _enum_GLTFDocument_ImportFlags:

.. rst-class:: classref-enumeration

flags **ImportFlags**: :ref:`🔗<enum_GLTFDocument_ImportFlags>`

.. _class_GLTFDocument_constant_IMPORT_FLAG_GENERATE_TANGENT_ARRAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_GENERATE_TANGENT_ARRAYS** = ``8``

If ``true``, generate vertex tangents using `Mikktspace <http://www.mikktspace.com/>`__ if the input meshes don't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead of relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

.. _class_GLTFDocument_constant_IMPORT_FLAG_USE_NAMED_SKIN_BINDS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_USE_NAMED_SKIN_BINDS** = ``16``

If checked, use named :ref:`Skin<class_Skin>`\ s for animation. The :ref:`MeshInstance3D<class_MeshInstance3D>` node contains 3 properties of relevance here: a skeleton :ref:`NodePath<class_NodePath>` pointing to the :ref:`Skeleton3D<class_Skeleton3D>` node (usually ``..``), a mesh, and a skin:

- The :ref:`Skeleton3D<class_Skeleton3D>` node contains a list of bones with names, their pose and rest, a name, and a parent bone.

- The mesh is all of the raw vertex data needed to display a mesh. In terms of the mesh, it knows how vertices are weight-painted and uses some internal numbering often imported from 3D modeling software.

- The skin contains the information necessary to bind this mesh onto this Skeleton3D. For each of the internal bone IDs chosen by the 3D modeling software, it contains two things. Firstly, a matrix known as the Bind Pose Matrix, Inverse Bind Matrix, or IBM for short. Secondly, the :ref:`Skin<class_Skin>` contains each bone's name (if this flag is enabled), or the bone's index within the :ref:`Skeleton3D<class_Skeleton3D>` list (if this flag is disabled).

Together, this information is enough to tell Godot how to use the bone poses in the :ref:`Skeleton3D<class_Skeleton3D>` node to render the mesh from each :ref:`MeshInstance3D<class_MeshInstance3D>`. Note that each :ref:`MeshInstance3D<class_MeshInstance3D>` may share binds, as is common in models exported from Blender, or each :ref:`MeshInstance3D<class_MeshInstance3D>` may use a separate :ref:`Skin<class_Skin>` object, as is common in models exported from other tools such as Maya.

.. _class_GLTFDocument_constant_IMPORT_FLAG_DISCARD_MESHES_AND_MATERIALS:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_DISCARD_MESHES_AND_MATERIALS** = ``32``

Ignore meshes and materials on import. When importing a scene as an :ref:`AnimationLibrary<class_AnimationLibrary>`, this flag is always enabled.

.. _class_GLTFDocument_constant_IMPORT_FLAG_FORCE_DISABLE_MESH_COMPRESSION:

.. rst-class:: classref-enumeration-constant

:ref:`ImportFlags<enum_GLTFDocument_ImportFlags>` **IMPORT_FLAG_FORCE_DISABLE_MESH_COMPRESSION** = ``64``

Si es ``true``, la compresión de la malla no se utilizará. Considera activar esta opción si observas artefactos de bloques en tus normales de malla o UV, o si tienes mallas que son más grandes que unos pocos miles de metros en cada dirección.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GLTFDocument_property_fallback_image_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **fallback_image_format** = ``"None"`` :ref:`🔗<class_GLTFDocument_property_fallback_image_format>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_image_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_fallback_image_format**\ (\ )

The user-friendly name of the fallback image format. This is used when exporting the glTF file, including writing to a file and writing to a byte array.

This property may only be one of "None", "PNG", or "JPEG", and is only used when the :ref:`image_format<class_GLTFDocument_property_image_format>` is not one of "None", "PNG", or "JPEG". If having multiple extension image formats is desired, that can be done using a :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` class - this property only covers the use case of providing a base glTF fallback image when using a custom image format.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_fallback_image_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **fallback_image_quality** = ``0.25`` :ref:`🔗<class_GLTFDocument_property_fallback_image_quality>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_image_quality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fallback_image_quality**\ (\ )

The quality of the fallback image, if any. For PNG files, this downscales the image on both dimensions by this factor. For JPEG files, this is the lossy quality of the image. A low value is recommended, since including multiple high quality images in a glTF file defeats the file size gains of using a more efficient image format.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_image_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **image_format** = ``"PNG"`` :ref:`🔗<class_GLTFDocument_property_image_format>`

.. rst-class:: classref-property-setget

- |void| **set_image_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_image_format**\ (\ )

The user-friendly name of the export image format. This is used when exporting the glTF file, including writing to a file and writing to a byte array.

By default, Godot allows the following options: "None", "PNG", "JPEG", "Lossless WebP", and "Lossy WebP". Support for more image formats can be added in :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` classes. A single extension class can provide multiple options for the specific format to use, or even an option that uses multiple formats at once.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **lossy_quality** = ``0.75`` :ref:`🔗<class_GLTFDocument_property_lossy_quality>`

.. rst-class:: classref-property-setget

- |void| **set_lossy_quality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lossy_quality**\ (\ )

If :ref:`image_format<class_GLTFDocument_property_image_format>` is a lossy image format, this determines the lossy quality of the image. On a range of ``0.0`` to ``1.0``, where ``0.0`` is the lowest quality and ``1.0`` is the highest quality. A lossy quality of ``1.0`` is not the same as lossless.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_root_node_mode:

.. rst-class:: classref-property

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **root_node_mode** = ``0`` :ref:`🔗<class_GLTFDocument_property_root_node_mode>`

.. rst-class:: classref-property-setget

- |void| **set_root_node_mode**\ (\ value\: :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>`\ )
- :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **get_root_node_mode**\ (\ )

How to process the root node during export. The default and recommended value is :ref:`ROOT_NODE_MODE_SINGLE_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT>`.

\ **Note:** Regardless of how the glTF file is exported, when importing, the root node type and name can be overridden in the scene import settings tab.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_texture_map_mode:

.. rst-class:: classref-property

:ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **texture_map_mode** = ``1`` :ref:`🔗<class_GLTFDocument_property_texture_map_mode>`

.. rst-class:: classref-property-setget

- |void| **set_texture_map_mode**\ (\ value\: :ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>`\ )
- :ref:`TextureMapMode<enum_GLTFDocument_TextureMapMode>` **get_texture_map_mode**\ (\ )

How to handle texture maps during import. The default and recommended value is :ref:`TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL<class_GLTFDocument_constant_TEXTURE_MAP_MODE_REMAP_TO_STANDARD_MATERIAL>`, which automatically remaps from glTF's flexible texture map system to the more specific texture map slots in Godot's :ref:`StandardMaterial3D<class_StandardMaterial3D>` class. Alternatively, :ref:`TEXTURE_MAP_MODE_DO_NOT_REMAP<class_GLTFDocument_constant_TEXTURE_MAP_MODE_DO_NOT_REMAP>` can be used to preserve the original texture maps from the glTF file, which may be desirable if using the glTF file with custom shaders, but may not display correctly with Godot's built-in materials.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_GLTFDocument_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **get_visibility_mode**\ (\ )

How to deal with node visibility during export. This setting does nothing if all nodes are visible. The default and recommended value is :ref:`VISIBILITY_MODE_INCLUDE_REQUIRED<class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_REQUIRED>`, which uses the ``KHR_node_visibility`` extension.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GLTFDocument_method_append_from_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_buffer**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, base_path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_buffer>`

Toma un :ref:`PackedByteArray<class_PackedByteArray>` que define un glTF e importa los datos al objeto :ref:`GLTFState<class_GLTFState>` dado a través del parámetro ``state``.

\ **Nota:** El ``base_path`` le dice a :ref:`append_from_buffer()<class_GLTFDocument_method_append_from_buffer>` dónde encontrar las dependencias y puede estar vacío.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_file**\ (\ path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0, base_path\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_GLTFDocument_method_append_from_file>`

Toma una ruta a un archivo glTF e importa los datos en esa ruta de archivo al objeto :ref:`GLTFState<class_GLTFState>` dado a través del parámetro ``state``.

\ **Nota:** El ``base_path`` le dice a :ref:`append_from_file()<class_GLTFDocument_method_append_from_file>` dónde encontrar las dependencias y puede estar vacío.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_scene**\ (\ node\: :ref:`Node<class_Node>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_scene>`

Toma un nodo de escena de Godot Engine y lo exporta a él y a sus descendientes al objeto :ref:`GLTFState<class_GLTFState>` dado a través del parámetro ``state``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_export_object_model_property>`

Determina una asignación entre el ``node_path`` de Godot dado y los punteros JSON del Modelo de Objeto glTF correspondientes en el archivo glTF generado. Los detalles de esta asignación se devuelven en un objeto :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`. Se pueden proporcionar asignaciones adicionales a través del método de devolución de llamada :ref:`GLTFDocumentExtension._import_object_model_property()<class_GLTFDocumentExtension_private_method__import_object_model_property>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_buffer:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **generate_buffer**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) :ref:`🔗<class_GLTFDocument_method_generate_buffer>`

Toma un objeto :ref:`GLTFState<class_GLTFState>` a través del parámetro ``state`` y devuelve un :ref:`PackedByteArray<class_PackedByteArray>` glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **generate_scene**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, bake_fps\: :ref:`float<class_float>` = 30, trimming\: :ref:`bool<class_bool>` = false, remove_immutable_tracks\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_GLTFDocument_method_generate_scene>`

Toma un objeto :ref:`GLTFState<class_GLTFState>` a través del parámetro ``state`` y devuelve un nodo de escena de Godot Engine.

El parámetro ``bake_fps`` anula el bake_fps en ``state``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_get_supported_gltf_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_supported_gltf_extensions**\ (\ ) |static| :ref:`🔗<class_GLTFDocument_method_get_supported_gltf_extensions>`

Devuelve una lista de todas las extensiones glTF compatibles, incluyendo las extensiones compatibles directamente con el motor, y las extensiones compatibles con plugins de usuario que registran clases :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`.

\ **Nota:** Si este método se ejecuta antes de que se registre un GLTFDocumentExtension, sus extensiones no se incluirán en la lista. Asegúrate de ejecutar este método sólo después de que todas las extensiones estén registradas. Si ejecutas esto cuando arranca el motor, considera esperar un frame antes de llamar a este método para asegurar que todas las extensiones estén registradas.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, json_pointer\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_import_object_model_property>`

Determina una asignación entre el Modelo de Objetos glTF dado ``json_pointer`` y la(s) ruta(s) de nodo de Godot correspondientes en la escena Godot generada. Los detalles de esta asignación se devuelven en un objeto :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`. Se pueden proporcionar asignaciones adicionales a través del método de retorno :ref:`GLTFDocumentExtension._export_object_model_property()<class_GLTFDocumentExtension_private_method__export_object_model_property>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_register_gltf_document_extension:

.. rst-class:: classref-method

|void| **register_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, first_priority\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_GLTFDocument_method_register_gltf_document_extension>`

Registra la instancia :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` dada con GLTFDocument. Si ``first_priority`` es ``true``, esta extensión se ejecutará primero. De lo contrario, se ejecutará al final.

\ **Nota:** Al igual que el propio GLTFDocument, todas las clases GLTFDocumentExtension deben ser sin estado para que funcionen correctamente. Si necesitas almacenar datos, utiliza los métodos ``set_additional_data`` y ``get_additional_data`` en :ref:`GLTFState<class_GLTFState>` o :ref:`GLTFNode<class_GLTFNode>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_unregister_gltf_document_extension:

.. rst-class:: classref-method

|void| **unregister_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_unregister_gltf_document_extension>`

Anula el registro de la instancia :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` dada.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_write_to_filesystem:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_to_filesystem**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GLTFDocument_method_write_to_filesystem>`

Toma un objeto :ref:`GLTFState<class_GLTFState>` a través del parámetro ``state`` y escribe un archivo glTF en el sistema de archivos.

\ **Nota:** La extensión del archivo glTF determina si es un archivo binario .glb o un archivo de texto .gltf.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
