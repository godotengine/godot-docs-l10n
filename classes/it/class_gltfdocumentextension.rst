:github_url: hide

.. _class_GLTFDocumentExtension:

GLTFDocumentExtension
=====================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`GLTFDocumentExtensionConvertImporterMesh<class_GLTFDocumentExtensionConvertImporterMesh>`

Classe di estensione :ref:`GLTFDocument<class_GLTFDocument>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Extends the functionality of the :ref:`GLTFDocument<class_GLTFDocument>` class by allowing you to run arbitrary code at various stages of glTF import or export.

To use, make a new class extending GLTFDocumentExtension, override any methods you need, make an instance of your class, and register it using :ref:`GLTFDocument.register_gltf_document_extension()<class_GLTFDocument_method_register_gltf_document_extension>`.

\ **Note:** All GLTFDocumentExtension classes are duplicated when beginning the import or export process. Except for configuration values, these classes must be stateless in order to function properly. If you need to store data, use the ``set_additional_data`` and ``get_additional_data`` methods in :ref:`GLTFState<class_GLTFState>` or :ref:`GLTFNode<class_GLTFNode>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Metodi
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

Descrizioni dei metodi
--------------------------------------------

.. _class_GLTFDocumentExtension_private_method__convert_scene_node:

.. rst-class:: classref-method

|void| **_convert_scene_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__convert_scene_node>`

Parte del processo di esportazione. Questo metodo viene eseguito dopo :ref:`_export_preflight()<class_GLTFDocumentExtension_private_method__export_preflight>` e prima di :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>`.

Viene eseguito quando si convertono i dati da un nodo di una scena di Godot. Questo metodo può essere utilizzato per elaborare i dati dei nodi in una scena di Godot in un formato che può essere utilizzato da :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`.

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

Parte del processo di esportazione. Questo metodo viene eseguito dopo :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` e prima di :ref:`_export_post()<class_GLTFDocumentExtension_private_method__export_post>`. Se questo **GLTFDocumentExtension** viene utilizzato per esportare le immagini, viene eseguito dopo :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

Questo metodo può essere utilizzato per modificare il JSON finale di ogni nodo. I dati devono essere principalmente memorizzati in ``gltf_node`` prima di serializzare il JSON, ma viene anche fornito il nodo originale di Godot (``node``) se disponibile. Il nodo potrebbe essere ``null`` se non disponibile, ad esempio quando si esportano dati glTF non generati da una scena di Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_export_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, node_path\: :ref:`NodePath<class_NodePath>`, godot_node\: :ref:`Node<class_Node>`, gltf_node_index\: :ref:`int<class_int>`, target_object\: :ref:`Object<class_Object>`, target_depth\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_object_model_property>`

Parte del processo di esportazione. Consente alle classi GLTFDocumentExtension di fornire mappature per le proprietà dei nodi nell'albero di scene di Godot, ai puntatori JSON alle proprietà glTF, come definito dal modello d'oggetto glTF.

Restituisce un'istanza :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` che definisce come la proprietà deve essere mappata. Se l'estensione non riesce a gestire la proprietà, restituire ``null`` o un'istanza senza puntatori JSON (vedi :ref:`GLTFObjectModelProperty.has_json_pointers()<class_GLTFObjectModelProperty_method_has_json_pointers>`). Dovresti usare :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>` per impostare i tipi, e impostare i puntatori JSON tramite la proprietà :ref:`GLTFObjectModelProperty.json_pointers<class_GLTFObjectModelProperty_property_json_pointers>`.

I parametri forniscono un contesto per la proprietà, inclusi il NodePath, il nodo Godot, l'indice del nodo GLTF e l'oggetto di destinazione. ``target_object`` sarà uguale a ``godot_node`` se non è possibile trovare alcun sotto-oggetto, altrimenti punterà a un sotto-oggetto. Ad esempio, se il percorso è ``^"A/B/C/MeshInstance3D:mesh:surface_0/material:emission_intensity"``, otterrà il nodo, po la mesh e po il materiale, poi ``target_object`` sarà la risorsa :ref:`Material<class_Material>` e ``target_depth`` sarà 2 perché sono stati attraversati 2 livelli per arrivare alla destinazione.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post>`

Parte del processo di esportazione. Questo metodo viene eseguito per ultimo, dopo tutte le altre parti del processo di esportazione.

Questo metodo può essere utilizzato per modificare il JSON finale del file glTF generato.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_post_convert:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_post_convert**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_post_convert>`

Parte del processo di esportazione. Questo metodo viene eseguito dopo :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` e prima di :ref:`_export_preserialize()<class_GLTFDocumentExtension_private_method__export_preserialize>`.

Questo metodo può essere utilizzato per apportare modifiche alle strutture dati del nodo convertito prima della serializzazione, con eventuali dati aggiuntivi dall'albero di scene.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preflight>`

Parte del processo di esportazione. Questo metodo viene eseguito per primo, prima di tutte le altre parti del processo di esportazione.

Il valore restituito serve per determinare se questa istanza di **GLTFDocumentExtension** deve essere utilizzata per esportare un determinato file glTF. Se :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, l'esportazione utilizzerà questa istanza di **GLTFDocumentExtension**. Se non sovrascritto, viene restituito :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__export_preserialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_preserialize**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__export_preserialize>`

Parte del processo di esportazione. Questo metodo viene eseguito dopo :ref:`_export_post_convert()<class_GLTFDocumentExtension_private_method__export_post_convert>` e prima di :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`.

Questo metodo può essere utilizzato per alterare lo stato prima di eseguire la serializzazione. È eseguito ogni volta che si genera un buffer con :ref:`GLTFDocument.generate_buffer()<class_GLTFDocument_method_generate_buffer>` o si scrive sul file system con :ref:`GLTFDocument.write_to_filesystem()<class_GLTFDocument_method_write_to_filesystem>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__generate_scene_node:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **_generate_scene_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, scene_parent\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__generate_scene_node>`

Parte del processo di importazione. Questo metodo viene eseguito dopo :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>` e prima di :ref:`_import_node()<class_GLTFDocumentExtension_private_method__import_node>`.

È eseguito quando si genera un nodo di scena di Godot da un GLTFNode. Il nodo restituito sarà aggiunto all'albero di scene. In questo passaggio è possibile generare più nodi se vengono aggiunti come figli del nodo restituito.

\ **Nota:** Il parametro ``scene_parent`` potrebbe essere ``null`` se questo è il singolo nodo radice.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_image_file_extension:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_image_file_extension**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_image_file_extension>`

Restituisce l'estensione di file da usare per salvare i dati dell'immagine, ad esempio, ``".png"``. Se definita, quando questa estensione è usata per gestire le immagini e le immagini sono salvate in un file separato, i byte saranno copiati in un file con questa estensione. Se tutto ciò è impostato, dovrebbe esserci una classe :ref:`ResourceImporter<class_ResourceImporter>` in grado di importare il file. Se non definita o vuota, Godot salverà l'immagine in un file PNG.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_saveable_image_formats:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_saveable_image_formats**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>`

Parte del processo di esportazione. Questo metodo viene eseguito dopo :ref:`_convert_scene_node()<class_GLTFDocumentExtension_private_method__convert_scene_node>` e prima di :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`.

Restituisce un array dei formati immagine che possono essere salvati o esportati da questa estensione. Questa estensione sarà selezionata come esportatore di immagini solo se il :ref:`GLTFDocument.image_format<class_GLTFDocument_property_image_format>` di :ref:`GLTFDocument<class_GLTFDocument>` è presente in questo array. Se questa **GLTFDocumentExtension** è selezionata come esportatore di immagini, uno dei metodi :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` o :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>` sarà eseguito in seguito, altrimenti sarà eseguito :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`. Se il nome del formato contiene ``"Lossy"``, sarà visualizzato il cursore della qualità lossy.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__get_supported_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_extensions**\ (\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__get_supported_extensions>`

Parte del processo di importazione. Questo metodo viene eseguito dopo :ref:`_import_preflight()<class_GLTFDocumentExtension_private_method__import_preflight>` e prima di :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>`.

Restituisce un array delle estensioni glTF supportate da questa classe GLTFDocumentExtension. Serve per verificare se è possibile caricare un file glTF con le estensioni richieste.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_node:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_node**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, json\: :ref:`Dictionary<class_Dictionary>`, node\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_node>`

Parte del processo di importazione. Questo metodo viene eseguito dopo :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` e prima di :ref:`_import_post()<class_GLTFDocumentExtension_private_method__import_post>`.

Questo metodo può essere utilizzato per apportare modifiche a ciascuno dei nodi di scena Godot generati.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_object_model_property:

.. rst-class:: classref-method

:ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` **_import_object_model_property**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, split_json_pointer\: :ref:`PackedStringArray<class_PackedStringArray>`, partial_paths\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_object_model_property>`

Parte del processo di importazione. Consente alle classi GLTFDocumentExtension di fornire mappature per i puntatori JSON alle proprietà glTF, come definito dal modello d'oggetto glTF, alle proprietà dei nodi nell'albero di scene di Godot.

Restituisce un'istanza :ref:`GLTFObjectModelProperty<class_GLTFObjectModelProperty>` che definisce come la proprietà deve essere mappata. Se l'estensione non riesce a gestire la proprietà, restituisci ``null`` o un'istanza senza NodePath (vedi :ref:`GLTFObjectModelProperty.has_node_paths()<class_GLTFObjectModelProperty_method_has_node_paths>`). Dovresti usare :ref:`GLTFObjectModelProperty.set_types()<class_GLTFObjectModelProperty_method_set_types>` per impostare i tipi. La funzione :ref:`GLTFObjectModelProperty.append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` è per lo più utile nei casi semplici.

In molti casi, ``partial_paths`` conterrà l'inizio di un percorso, consentendo all'estensione di completarlo. Ad esempio, per ``/nodes/3/extensions/MY_ext/prop``, Godot ti passerà un NodePath che porta al nodo 3, quindi la classe GLTFDocumentExtension deve risolvere solo l'ultima parte ``MY_ext/prop`` del percorso. In questo esempio, l'estensione dovrebbe verufucare ``split.size() > 4 e split[0] == "nodes" e split[2] == "extensions" e split[3] == "MY_ext"`` all'inizio della funzione per verificare se questo puntatore JSON si applica ad essa, successivamente può usare ``partial_paths`` e gestire ``split[4]``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_post:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_post**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, root\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_post>`

Parte del processo di importazione. Questo metodo viene eseguito per ultimo, dopo tutte le altre parti del processo di importazione.

Questo metodo può essere utilizzato per modificare la scena finale di Godot generata dal processo di importazione.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_post_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_post_parse**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_post_parse>`

Parte del processo di importazione. Questo metodo viene eseguito dopo :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` e prima di :ref:`_import_pre_generate()<class_GLTFDocumentExtension_private_method__import_pre_generate>`.

Questo metodo può essere utilizzato per modificare uno qualsiasi dei dati importati finora dopo aver analizzato ogni nodo, ma prima di generare la scena o uno qualsiasi dei suoi nodi.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_pre_generate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_pre_generate**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_pre_generate>`

Parte del processo di importazione. Questo metodo viene eseguito dopo :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>` e prima di :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`.

Questo metodo può essere utilizzato per modificare o leggere da una qualsiasi delle strutture dati elaborate, prima di generare i nodi e successivamente eseguire il passaggio finale di importazione per ogni nodo.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__import_preflight:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_import_preflight**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, extensions\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__import_preflight>`

Parte del processo di importazione. Questo metodo viene eseguito per primo, prima di tutte le altre parti del processo di importazione.

Il valore restituito serve per determinare se questa istanza di **GLTFDocumentExtension** deve essere utilizzata per importare un determinato file glTF. Se è :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, l'importazione utilizzerà questa istanza di **GLTFDocumentExtension**. Se non sovrascritto, viene restituito :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_image_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_image_data**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image_data\: :ref:`PackedByteArray<class_PackedByteArray>`, mime_type\: :ref:`String<class_String>`, ret_image\: :ref:`Image<class_Image>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_image_data>`

Parte del processo di importazione. Questo metodo viene eseguito dopo :ref:`_parse_node_extensions()<class_GLTFDocumentExtension_private_method__parse_node_extensions>` e prima di :ref:`_parse_texture_json()<class_GLTFDocumentExtension_private_method__parse_texture_json>`.

È eseguito durante l'elaborazione dei dati immagine da un file glTF. I dati potrebbero provenire da un file separato, un URI o un buffer, e sono passati come array di byte.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_node_extensions:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_node_extensions**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, extensions\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_node_extensions>`

Parte del processo di importazione. Questo metodo viene eseguito dopo :ref:`_get_supported_extensions()<class_GLTFDocumentExtension_private_method__get_supported_extensions>` e prima di :ref:`_import_post_parse()<class_GLTFDocumentExtension_private_method__import_post_parse>`.

È eseguito durante l'elaborazione delle estensioni di nodo di un GLTFNode. Questo metodo può essere utilizzato per elaborare i dati JSON dell'estensione in un formato che può essere utilizzato da :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`. Il valore restituito deve essere un membro dell'enumerazione :ref:`Error<enum_@GlobalScope_Error>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__parse_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_parse_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, ret_gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__parse_texture_json>`

Parte del processo di importazione. Questo metodo viene eseguito dopo :ref:`_parse_image_data()<class_GLTFDocumentExtension_private_method__parse_image_data>` e prima di :ref:`_generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>`.

Viene eseguito durante l'analisi del JSON della texture dall'array di texture glTF. Può essere utilizzato per impostare l'indice dell'immagine sorgente da utilizzare come texture.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__save_image_at_path:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save_image_at_path**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, file_path\: :ref:`String<class_String>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__save_image_at_path>`

Parte del processo di esportazione. Questo metodo viene eseguito dopo :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` e prima di :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

Questo metodo viene eseguito quando si salvano le immagini separatamente dal file glTF. Quando le immagini sono incorporate, viene invece eseguito :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`. Nota che questi metodi vengono eseguiti solo quando questo **GLTFDocumentExtension** è selezionato come esportatore di immagini.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_image_to_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_serialize_image_to_bytes**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, image\: :ref:`Image<class_Image>`, image_dict\: :ref:`Dictionary<class_Dictionary>`, image_format\: :ref:`String<class_String>`, lossy_quality\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>`

Parte del processo di esportazione. Questo metodo viene eseguito dopo :ref:`_get_saveable_image_formats()<class_GLTFDocumentExtension_private_method__get_saveable_image_formats>` e prima di :ref:`_serialize_texture_json()<class_GLTFDocumentExtension_private_method__serialize_texture_json>`.

Questo metodo viene eseguito quando si incorporano immagini nel file glTF. Quando si salvano le immagini separatamente, viene invece eseguito :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>`. Nota che questi metodi vengono eseguiti solo quando questo **GLTFDocumentExtension** è selezionato come esportatore di immagini.

Questo metodo deve impostare il tipo MIME dell'immagine nel ``image_dict`` con la chiave ``"mimeType"``. Ad esempio, per un'immagine PNG, verrebbe impostato su ``"image/png"``. Il valore restituito deve essere un :ref:`PackedByteArray<class_PackedByteArray>` contenente i dati dell'immagine.

.. rst-class:: classref-item-separator

----

.. _class_GLTFDocumentExtension_private_method__serialize_texture_json:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_serialize_texture_json**\ (\ state\: :ref:`GLTFState<class_GLTFState>`, texture_json\: :ref:`Dictionary<class_Dictionary>`, gltf_texture\: :ref:`GLTFTexture<class_GLTFTexture>`, image_format\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_GLTFDocumentExtension_private_method__serialize_texture_json>`

Parte del processo di esportazione. Questo metodo viene eseguito dopo :ref:`_save_image_at_path()<class_GLTFDocumentExtension_private_method__save_image_at_path>` o :ref:`_serialize_image_to_bytes()<class_GLTFDocumentExtension_private_method__serialize_image_to_bytes>` e prima di :ref:`_export_node()<class_GLTFDocumentExtension_private_method__export_node>`. Nota che questo metodo viene eseguito solo quando questo **GLTFDocumentExtension** è selezionato come esportatore di immagini.

Questo metodo può essere utilizzato per configurare le estensioni per la texture JSON modificando ``texture_json``. L'estensione deve anche essere aggiunta come estensione utilizzata con :ref:`GLTFState.add_used_extension()<class_GLTFState_method_add_used_extension>`, assicurati di impostare ``required`` su ``true`` se non stai fornendo un'alternativa di riserva.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
