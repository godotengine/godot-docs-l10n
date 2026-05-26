:github_url: hide

.. _class_GLTFDocument:

GLTFDocument
============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`FBXDocument<class_FBXDocument>`

Classe per importare ed esportare file glTF da Godot.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

GLTFDocument supporta la lettura di dati da un file glTF, buffer o scena Godot. È possibile successivamente scrivere questi dati nel file system, buffer o utilizzati per creare una scena Godot.

Tutti i dati in una scena glTF sono archiviati nella classe :ref:`GLTFState<class_GLTFState>`. GLTFDocument elabora oggetti di stato, ma esso stesso non contiene dati di scena. GLTFDocument ha variabili membro per memorizzare impostazioni d'esportazione come il formato immagine, ma è comunque stateless. È possibile elaborare più scene con le stesse impostazioni utilizzando lo stesso oggetto GLTFDocument e diversi oggetti :ref:`GLTFState<class_GLTFState>`.

GLTFDocument può essere esteso con funzionalità arbitrarie estendendo la classe :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` e registrandola con GLTFDocument tramite :ref:`register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>`. Ciò consente di importare ed esportare dati personalizzati.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

- `Guida 'What the duck?' glTF <https://www.khronos.org/files/gltf20-reference-guide.pdf>`__

- `Specifiche glTF Khronos <https://registry.khronos.org/glTF/>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Enumerazioni
------------------------

.. _enum_GLTFDocument_RootNodeMode:

.. rst-class:: classref-enumeration

enum **RootNodeMode**: :ref:`🔗<enum_GLTFDocument_RootNodeMode>`

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_SINGLE_ROOT** = ``0``

Tratta il nodo radice della scena Godot come nodo radice del file glTF e lo contrassegna come singolo nodo radice tramite l'estensione glTF ``GODOT_single_root``. Questo verrà elaborato allo stesso modo di :ref:`ROOT_NODE_MODE_KEEP_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT>` se l'implementazione non supporta ``GODOT_single_root``.

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_KEEP_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_KEEP_ROOT** = ``1``

Tratta il nodo radice della scena Godot come nodo radice del file glTF, ma non lo contrassegnar come qualcosa di speciale. Un ulteriore nodo radice sarà generato durante l'importazione in Godot. Questo utilizza solo le funzionalità vanilla glTF. Ciò equivale al comportamento in Godot 4.1 e precedenti.

.. _class_GLTFDocument_constant_ROOT_NODE_MODE_MULTI_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **ROOT_NODE_MODE_MULTI_ROOT** = ``2``

Tratta il nodo radice della scena Godot come il nome della scena glTF e aggiunge tutti i suoi figli come nodi radice del file glTF. Usa solo le funzionalità vanilla glTF. Ciò evita un ulteriore nodo radice, ma sarà preservato solo il nome del nodo radice della scena Godot, poiché non sarà salvato come nodo.

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

Se la scena contiene nodi non visibili, includili, segnali come non visibili con ``KHR_node_visibility`` e richiedi agli importatori di rispettarne la non visibilità. Svantaggio: se l'importatore non supporta ``KHR_node_visibility``, il file non può essere importato.

.. _class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_OPTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_INCLUDE_OPTIONAL** = ``1``

Se la scena contiene nodi non visibili, includili, segnali come non visibili con ``KHR_node_visibility`` e non imporre alcun requisito agli importatori. Svantaggio: se l'importatore non supporta ``KHR_node_visibility``, gli oggetti invisibili saranno visibili.

.. _class_GLTFDocument_constant_VISIBILITY_MODE_EXCLUDE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_GLTFDocument_VisibilityMode>` **VISIBILITY_MODE_EXCLUDE** = ``2``

Se la scena contiene nodi non visibili, non includerli nell'esportazione. Questo è lo stesso comportamento di Godot 4.4 e versioni precedenti. Svantaggio: i nodi invisibili non esisteranno nel file esportato.

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

Se ``true``, la compressione della mesh non sarà utilizzata. Considera di abilitarla se noti artefatti a blocchi nelle normali o UV della mesh, o se hai mesh più grandi di qualche migliaio di metri in ogni direzione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GLTFDocument_property_fallback_image_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **fallback_image_format** = ``"None"`` :ref:`🔗<class_GLTFDocument_property_fallback_image_format>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_image_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_fallback_image_format**\ (\ )

Il nome leggibile in chiaro del formato di immagine di riserva. Viene utilizzato quando si esporta il file glTF, incluso durante la scrittura su un file o su un array di byte.

Questa proprietà può essere solo "None", "PNG" o "JPEG" ed è utilizzata solo quando :ref:`image_format<class_GLTFDocument_property_image_format>` non è "None", "PNG" o "JPEG". Se si desidera avere più estensioni di formato di immagine, è possibile farlo tramite una classe :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`: questa proprietà copre solo il caso d'uso di fornire un'immagine base glTF di riserva quando si utilizza un formato immagine personalizzato.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_fallback_image_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **fallback_image_quality** = ``0.25`` :ref:`🔗<class_GLTFDocument_property_fallback_image_quality>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_image_quality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fallback_image_quality**\ (\ )

La qualità dell'immagine di riserva, se presente. Per i file PNG, questa opzione riduce l'immagine su entrambe le dimensioni di questo fattore. Per i file JPEG, questa opzione rappresenta la qualità lossy dell'immagine. Si consiglia un valore basso, poiché includere più immagini ad alta qualità in un file glTF vanifica i guadagni in dimensioni del file derivanti dall'utilizzo di un formato immagine più efficiente.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_image_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **image_format** = ``"PNG"`` :ref:`🔗<class_GLTFDocument_property_image_format>`

.. rst-class:: classref-property-setget

- |void| **set_image_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_image_format**\ (\ )

Il nome leggibile in chiaro del formato di immagine d'esportazione. Viene utilizzato quando si esporta il file glTF, incluso durante la scrittura su un file o su un array di byte.

Per impostazione predefinita, Godot consente le seguenti opzioni: "None", "PNG", "JPEG", "Lossless WebP" e "Lossy WebP". È possibile aggiungere supporto per altri formati di immagine nelle classi :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`. Una singola classe di estensione può fornire più opzioni per il formato specifico da utilizzare o persino un'opzione che utilizza più formati alla volta.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **lossy_quality** = ``0.75`` :ref:`🔗<class_GLTFDocument_property_lossy_quality>`

.. rst-class:: classref-property-setget

- |void| **set_lossy_quality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lossy_quality**\ (\ )

Se :ref:`image_format<class_GLTFDocument_property_image_format>` è un formato immagine con perdita di dati, questo determina la qualità con perdita dell'immagine. Su un intervallo da ``0.0`` a ``1.0``, dove ``0.0`` è la qualità più bassa e ``1.0`` è la qualità più alta. Una qualità con perdita di ``1.0`` non è la stessa cosa di una qualità senza perdita.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_property_root_node_mode:

.. rst-class:: classref-property

:ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **root_node_mode** = ``0`` :ref:`🔗<class_GLTFDocument_property_root_node_mode>`

.. rst-class:: classref-property-setget

- |void| **set_root_node_mode**\ (\ value\: :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>`\ )
- :ref:`RootNodeMode<enum_GLTFDocument_RootNodeMode>` **get_root_node_mode**\ (\ )

Come elaborare il nodo radice durante l'esportazione. Il valore predefinito e consigliato è :ref:`ROOT_NODE_MODE_SINGLE_ROOT<class_GLTFDocument_constant_ROOT_NODE_MODE_SINGLE_ROOT>`.

\ **Nota:** A prescindere da come viene esportato il file glTF, durante l'importazione, è possibile sovrascrivere il tipo e il nome del nodo radice nella scheda delle impostazioni di importazione della scena.

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

Come gestire la visibilità dei nodi durante l'esportazione. Questa impostazione non ha alcun effetto se tutti i nodi sono visibili. Il valore predefinito e consigliato è :ref:`VISIBILITY_MODE_INCLUDE_REQUIRED<class_GLTFDocument_constant_VISIBILITY_MODE_INCLUDE_REQUIRED>`, che utilizza l'estensione ``KHR_node_visibility``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GLTFDocument_method_append_from_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_buffer**\ (\ bytes\: :ref:`PackedByteArray<class_PackedByteArray>`, base_path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_buffer>`

Accetta un :ref:`PackedByteArray<class_PackedByteArray>` che definisce un glTF e importa i dati nell'oggetto :ref:`GLTFState<class_GLTFState>` specificato tramite il parametro ``state``.

\ **Nota:** Il parametro ``base_path`` indica a :ref:`append_from_buffer()<class_GLTFDocument_method_append_from_buffer>` dove trovare le dipendenze e può essere vuoto.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_file**\ (\ path\: :ref:`String<class_String>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0, base_path\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_GLTFDocument_method_append_from_file>`

Accetta un percorso verso un file glTF e importa i dati in quel percorso file nell'oggetto :ref:`GLTFState<class_GLTFState>` specificato tramite il parametro ``state``.

\ **Nota:** Il parametro ``base_path`` indica a :ref:`append_from_buffer()<class_GLTFDocument_method_append_from_buffer>` dove trovare le dipendenze e può essere vuoto.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_append_from_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **append_from_scene**\ (\ node\: :ref:`Node<class_Node>`, state\: :ref:`GLTFState<class_GLTFState>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GLTFDocument_method_append_from_scene>`

Accetta un nodo di scena del motore Godot ed esporta esso e i suoi discendenti nell'oggetto :ref:`GLTFState<class_GLTFState>` specificato tramite il parametro ``state``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_export_object_model_property>`

Determina una mappatura tra il percorso di nodo ``node_path`` di Godot e i corrispondenti puntatori JSON del modello d'oggetto glTF nel file glTF generato. I dettagli di questa mappatura vengono restituiti in un oggetto :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`. È possibile fornire ulteriori mappature tramite il metodo di callback :ref:`GLTFDocumentExtension._import_object_model_property()<class_GLTFDocumentExtension_private_method__import_object_model_property>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_buffer:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **generate_buffer**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) :ref:`🔗<class_GLTFDocument_method_generate_buffer>`

Accetta un oggetto :ref:`GLTFState<class_GLTFState>` tramite il parametro ``state`` e restituisce un :ref:`PackedByteArray<class_PackedByteArray>` glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_generate_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **generate_scene**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, bake_fps\: :ref:`float<class_float>` = 30, trimming\: :ref:`bool<class_bool>` = false, remove_immutable_tracks\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_GLTFDocument_method_generate_scene>`

Accetta un oggetto :ref:`GLTFState<class_GLTFState>` tramite il parametro ``state`` e restituisce un nodo scena di Godot Engine.

Il parametro ``bake_fps`` sostituisce bake_fps in ``state``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_get_supported_gltf_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_supported_gltf_extensions**\ (\ ) |static| :ref:`🔗<class_GLTFDocument_method_get_supported_gltf_extensions>`

Restituisce una lista di tutte le estensioni glTF supportate, incluse le estensioni supportate direttamente dal motore e le estensioni supportate dalle estensioni utente che registrano le classi :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`.

\ **Nota:** Se questo metodo viene eseguito prima che un GLTFDocumentExtension sia registrato, le sue estensioni non saranno incluse nella lista. Assicurati di eseguire questo metodo solo dopo che tutte le estensioni sono state registrate. Se viene eseguito all'avvio del motore, considera di attendere un frame prima di chiamare questo metodo per assicurarti che tutte le estensioni siano state registrate.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, json_pointer\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_import_object_model_property>`

Determina una mappatura tra il puntatore JSON ``json_pointer`` del modello d'oggetto glTF e i percorsi dei nodi Godot corrispondenti nella scena generata di Godot. I dettagli di questa mappatura vengono restituiti in un oggetto :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>`. È possibile fornire ulteriori mappature tramite il metodo di callback :ref:`GLTFDocumentExtension._export_object_model_property()<class_GLTFDocumentExtension_private_method__export_object_model_property>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_register_gltf_document_extension:

.. rst-class:: classref-method

|void| **register_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, first_priority\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_GLTFDocument_method_register_gltf_document_extension>`

Registra l'istanza :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` specificata con GLTFDocument. Se ``first_priority`` è ``true``, questa estensione sarà eseguita per prima. Altrimenti, sarà eseguita per ultima.

\ **Nota:** Come GLTFDocument stesso, tutte le classi GLTFDocumentExtension devono essere stateless per funzionare correttamente. Se è necessario memorizzare dati, usa i metodi ``set_additional_data`` e ``get_additional_data`` in :ref:`GLTFState<class_GLTFState>` o :ref:`GLTFNode<class_GLTFNode>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_unregister_gltf_document_extension:

.. rst-class:: classref-method

|void| **unregister_gltf_document_extension**\ (\ extension\: :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`\ ) |static| :ref:`🔗<class_GLTFDocument_method_unregister_gltf_document_extension>`

Annulla la registrazione dell'istanza :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` specificata.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocument_method_write_to_filesystem:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_to_filesystem**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GLTFDocument_method_write_to_filesystem>`

Accetta un oggetto :ref:`GLTFState<class_GLTFState>` tramite il parametro ``state`` e scrive un file glTF nel file system.

\ **Nota:** L'estensione del file glTF determina se si tratta di un file binario .glb o di un file di testo .gltf.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
