:github_url: hide

.. _class_GLTFDocument:

GLTFDocument
============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`FBXDocument<class_FBXDocument>`

Classe pour l'importation et l'exportation de fichiers glTF dans et hors de Godot.

.. rst-class:: classref-introduction-group

Description
-----------

GLTFDocument prend en charge la lecture de données d'un fichier glTF, d'un buffer ou d'une scène Godot. Ces données peuvent ensuite être écrites vers le système de fichiers, un buffer ou être utilisées pour créer une scène Godot.

Toutes les données d'une scène glTF sont stockées dans la classe :ref:`GLTFState<class_GLTFState>`. GLTFDocument traite des objets d'état, mais ne contient aucune donnée de scène elle-même. GLTFDocument a des variables membres pour stocker des paramètres de configuration d'exportation tels que le format d'image, mais est autrement sans état. Plusieurs scènes peuvent être traitées avec les mêmes paramètres en utilisant le même objet GLTFDocument et des objets :ref:`GLTFState<class_GLTFState>` différents.

GLTFDocument peut être étendue avec des fonctionnalités arbitraires en étendant la classe :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` et en l’enregistrant avec GLTFDocument via :ref:`register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>`. Cela permet d'importer et d'exporter des données personnalisées.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Chargement et sauvegarde de fichiers durant l’exécution <../tutorials/io/runtime_file_loading_and_saving>`

- `Guide 'What the duck ?' glTF <https://www.khronos.org/files/gltf20-reference-guide.pdf>`__

- `Spécification de glTF Khronos <https://registry.khronos.org/glTF/>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Méthodes
----------------

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

Énumérations
------------------------

.. _enum_GLTFDocument_RootNodeMode:

.. rst-class:: classref-enumeration

enum **RootNodeMode**: :ref:`🔗<enum_GLTFDocument_RootNodeMode>`

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_SINGLE_ROOT** = ``0``

Traite le nœud racine de la scène Godot comme nœud racine du fichier glTF, et le marque comme le nœud racine unique via l'extension glTF ``GODOT_single_root``. Cela sera parsé de la même manière que :ref:`ROOT_NODE_MODE_KEEP_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT>` si l'implémentation ne supporte pas ``GODOT_single_root``.

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_KEEP_ROOT** = ``1``

Traite le nœud racine de la scène Godot comme nœud racine du fichier glTF, mais ne le marque pas comme quelque chose de spécial. Un nœud racine supplémentaire sera généré lors de l'import dans Godot. Ceci utilise seulement les fonctionnalités de base du glTF. C'est équivalent au comportement dans Godot 4.1 et antérieur.

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_MULTI_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_MULTI_ROOT** = ``2``

Traite le nœud racine de la scène Godot comme le nom de la scène glTF, et ajoute tous ses enfants comme nœuds racines du fichier glTF. Ceci utilise seulement les fonctionnalités de base du glTF. Cela évite un nœud racine supplémentaire, mais seulement le nom du nœud racine de la scène Godot sera préservé, car il ne sera pas sauvegardé comme nœud.

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

Si la scène contient des nœuds non visibles, les inclut, les marque comme non visibles avec ``KHR_node_visibility``, et exige que les importeurs respectent leur non-visibilité. Désavantage : Si l'importateur ne supporte pas ``KHR_node_visibility``, le fichier ne peut pas être importé.

.. _class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_OPTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_INCLUDE_OPTIONAL** = ``1``

Si la scène contient des nœuds non visibles, les inclut, les marque comme non visibles avec ``KHR_node_visibility``, et n'impose pas d'exigences sur les importeurs. Désavantage : Si l'importateur ne supporte pas ``KHR_node_visibility``, les objets invisibles seront visibles.

.. _class_GLTFDocument_constant_VISIBILITY_MODE_EXCLUDE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_EXCLUDE** = ``2``

Si la scène contient des nœuds non visibles, ne les inclut pas dans l'export. Il s'agit du comportement de Godot 4.4 et antérieur. Désavantage : Les nœuds invisibles n'existeront pas dans le fichier exporté.

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

Si ``true``, la compression du maillage ne sera pas utilisée. Envisagez d'activer ceci si vous remarquez des artéfacts de blocs dans vos normales ou UVs du maillage, ou si vous avez des maillages plus grands que quelques milliers de mètres dans chaque direction.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

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

La qualité de l'image de repli, le cas échéant. Pour les fichiers PNG, cela réduit l'image sur les deux dimensions par ce facteur. Pour les fichiers JPEG, c'est la qualité de perte de l'image. Une faible valeur est recommandée, puisque l'inclusion de multiples images de haute qualité dans un fichier glTF annule les gains de taille de fichier grâce à l'utilisation d'un format d'image plus efficace.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_image_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **image_format** = ``"PNG"`` :ref:`🔗<class_GLTFDocument_property_image_format>`

.. rst-class:: classref-property-setget

- |void| **set_image_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_image_format**\ (\ )

Le nom facilement lisible du format d'image d'exportation. Ceci est utilisé lors de l'exportation du fichier glTF, y compris l'écriture vers un fichier et l'écriture vers un tableau d'octets.

Par défaut, Godot permet les options suivantes : "None", "PNG", "JPEG", "Lossless WebP", et "Lossy WebP". Le support pour plus de formats d'image peut être ajouté dans des classes :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`. Une seule classe d'extension peut fournir plusieurs options pour le format spécifique à utiliser, ou même une option qui utilise plusieurs formats à la fois.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **lossy_quality** = ``0.75`` :ref:`🔗<class_GLTFDocument_property_lossy_quality>`

.. rst-class:: classref-property-setget

- |void| **set_lossy_quality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lossy_quality**\ (\ )

Si :ref:`image_format<class_GLTFDocument_property_image_format>` est un format d'image avec pertes, cela détermine la qualité de la perte de l'image. Sur un intervalle de ``0.0`` à ``1.0``, où ``0.0`` est la plus basse qualité et ``1.0`` est la plus haute qualité. Une qualité de perde de ``1.0`` n'est pas la même chose que le sans-perte.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_root_node_mode:

.. rst-class:: classref-property

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **root_node_mode** = ``0`` :ref:`🔗<class_GLTFDocument_property_root_node_mode>`

.. rst-class:: classref-property-setget

- |void| **set_root_node_mode**\ (\ value\: :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>`\ )
- :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **get_root_node_mode**\ (\ )

Comment traiter le nœud racine pendant l'export. La valeur par défaut et recommandée est :ref:`ROOT_NODE_MODE_SINGLE_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT>`.

\ **Note :** Quelle que soit la façon dont le fichier glTF est exporté, lors de l'importation, le type et le nom du nœud racine peuvent être redéfinis dans l'onglet Paramètres d'import de la scène.

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

Comment gérer la visibilité du nœud lors de l'export. Ce paramètre ne fait rien si tous les nœuds sont visibles. La valeur par défaut et recommandée est :ref:`VISIBILITY_MODE_INCLUDE_REQUIRED<class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_REQUIRED>`, qui utilise l'extension ``KHR_node_visibility``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GLTFDocument_method_append_from_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_buffer**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, base_path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_buffer>`

Prend un :ref:`PackedByteArray<class_PackedByteArray>` définissant un glTF et importe les données dans l'objet :ref:`GLTFState<class_GLTFState>` donné par le paramètre ``state``.

\ **Note :** Le chemin de base ``base_path`` indique à :ref:`append_from_buffer()<class_GLTFDocument_method_append_from_buffer>` où trouver les dépendances et peut être vide.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_file**\ (\ path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0, base_path\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_GLTFDocument_method_append_from_file>`

Prend un chemin vers un fichier glTF et importe les données à ce chemin de fichier vers l'objet :ref:`GLTFState<class_GLTFState>` donné par le paramètre ``state``.

\ **Note :** Le chemin de base ``base_path`` indique à :ref:`append_from_buffer()<class_GLTFDocument_method_append_from_buffer>` où trouver les dépendances et peut être vide.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_scene**\ (\ node\: :ref:`Node<class_Node>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_scene>`

Prend un nœud de scène Godot Engine et l'exporte lui et ses descendants vers l'objet :ref:`GLTFState<class_GLTFState>` donné par le paramètre ``state``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_export_object_model_property>`

Détermine une association entre le chemin de nœud Godot ``node_path`` donné et le(s) pointeur(s) JSON de modèle d'objet glTF correspondant(s) dans le fichier glTF généré. Les détails de cette association sont renvoyés dans un objet :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`. Des associations supplémentaires peuvent être fournies via la méthode de callback :ref:`GLTFDocumentExtension._import_object_model_property()<class_GLTFDocumentExtension_private_method__import_object_model_property>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_buffer:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **generate_buffer**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) :ref:`🔗<class_GLTFDocument_method_generate_buffer>`

Prend un objet :ref:`GLTFState<class_GLTFState>` à travers le paramètre ``state`` et renvoie un :ref:`PackedByteArray<class_PackedByteArray>` de glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **generate_scene**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, bake_fps\: :ref:`float<class_float>` = 30, trimming\: :ref:`bool<class_bool>` = false, remove_immutable_tracks\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_GLTFDocument_method_generate_scene>`

Prend un objet :ref:`GLTFState<class_GLTFState>` à travers le paramètre ``state`` et renvoie un nœud de scène Godot Engine.

Le paramètre ``bake_fps`` remplace le bake_fps dans ``state``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_get_supported_gltf_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_supported_gltf_extensions**\ (\ ) |static| :ref:`🔗<class_GLTFDocument_method_get_supported_gltf_extensions>`

Renvoie une liste de toutes les extensions glTF supportées, y compris les extensions supportées directement par le moteur, et les extensions supportées par les plugins d'utilisateurs enregistrant des classes :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`.

\ **Note :** Si cette méthode est exécutée avant l'enregistrement d'une GLTFDocumentExtension, ses extensions ne seront pas incluses dans la liste. Assurez-vous de seulement exécuter cette méthode après que toutes les extensions soient enregistrées. Si vous exécutez cela lorsque le moteur démarre, envisagez d'attendre une trame avant d'appeler cette méthode pour vous assurer que toutes les extensions sont enregistrées.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, json_pointer\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_import_object_model_property>`

Détermine une association entre le pointeur JSON ``json_pointer`` de modèle d'objet glTF donné et le chemin de nœud Godot correspondant dans la scène Godot générée. Les détails de cette association sont renvoyés dans un objet :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`. Des associations supplémentaires peuvent être fournies via la méthode de callback :ref:`GLTFDocumentExtension._export_object_model_property()<class_GLTFDocumentExtension_private_method__export_object_model_property>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_register_gltf_document_extension:

.. rst-class:: classref-method

|void| **register_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, first_priority\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_GLTFDocument_method_register_gltf_document_extension>`

Enregistre l'instance :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` donnée avec le GLTFDocument. Si ``first_priority`` vaut ``true``, cette extension sera exécutée en premier. Sinon, elle le sera en dernier.

\ **Note :** Comme GLTFDocument lui-même, toutes les classes GLTFDocumentExtension doivent être sans état afin de fonctionner correctement. Si vous devez stocker des données, utilisez les méthodes ``set_additional_data`` et ``get_additional_data`` dans :ref:`GLTFState<class_GLTFState>` ou :ref:`GLTFNode<class_GLTFNode>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_unregister_gltf_document_extension:

.. rst-class:: classref-method

|void| **unregister_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_unregister_gltf_document_extension>`

Désenregistre l'instance :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` donnée.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_write_to_filesystem:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_to_filesystem**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GLTFDocument_method_write_to_filesystem>`

Prend un objet :ref:`GLTFState<class_GLTFState>` à travers le paramètre ``state`` et écrit un fichier glTF dans le système de fichiers.

\ **Note :** L'extension du fichier glTF détermine si c'est un fichier binaire .glb ou un fichier texte .gltf.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
