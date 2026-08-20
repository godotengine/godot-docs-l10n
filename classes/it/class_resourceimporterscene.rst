:github_url: hide

.. _class_ResourceImporterScene:

ResourceImporterScene
=====================

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa una scena 3D da glTF, FBX, COLLADA o Blender.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Vedi anche :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`, che è utilizzato per i modelli OBJ che è possibile importare come :ref:`Mesh<class_Mesh>` indipendente o come scena.

Ulteriori opzioni (come l'estrazione di singole mesh o materiali in file) sono disponibili nella finestra di dialogo **Impostazioni di importazione avanzate**. Questa finestra di dialogo è accessibile facendo doppio clic su una scena 3D nel pannello Filesystem o selezionando una scena 3D nel pannello Filesystem, andando al pannello Importazione e scegliendo **Avanzate**.

\ **Nota:** **ResourceImporterScene** non è *utilizzato* per i :ref:`PackedScene<class_PackedScene>`, come i file ``.tscn`` e ``.scn``.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Importazione di scene 3D <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`_subresources<class_ResourceImporterScene_property__subresources>`                                                         | ``{}``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`animation/fps<class_ResourceImporterScene_property_animation/fps>`                                                         | ``30``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/import<class_ResourceImporterScene_property_animation/import>`                                                   | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/import_rest_as_RESET<class_ResourceImporterScene_property_animation/import_rest_as_RESET>`                       | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/remove_immutable_tracks<class_ResourceImporterScene_property_animation/remove_immutable_tracks>`                 | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/trimming<class_ResourceImporterScene_property_animation/trimming>`                                               | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`array_mesh/deduplicate_surfaces<class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces>`                     | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`import_script/path<class_ResourceImporterScene_property_import_script/path>`                                               | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`materials/extract<class_ResourceImporterScene_property_materials/extract>`                                                 | ``0``     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`materials/extract_format<class_ResourceImporterScene_property_materials/extract_format>`                                   | ``0``     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`materials/extract_path<class_ResourceImporterScene_property_materials/extract_path>`                                       | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`mesh_library/use_node_names_as_mesh_names<class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names>` | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/create_shadow_meshes<class_ResourceImporterScene_property_meshes/create_shadow_meshes>`                             | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/ensure_tangents<class_ResourceImporterScene_property_meshes/ensure_tangents>`                                       | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/force_disable_compression<class_ResourceImporterScene_property_meshes/force_disable_compression>`                   | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/generate_lods<class_ResourceImporterScene_property_meshes/generate_lods>`                                           | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`meshes/light_baking<class_ResourceImporterScene_property_meshes/light_baking>`                                             | ``1``     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`meshes/lightmap_texel_size<class_ResourceImporterScene_property_meshes/lightmap_texel_size>`                               | ``0.2``   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/apply_root_scale<class_ResourceImporterScene_property_nodes/apply_root_scale>`                                       | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/import_as_skeleton_bones<class_ResourceImporterScene_property_nodes/import_as_skeleton_bones>`                       | ``false`` |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`nodes/root_name<class_ResourceImporterScene_property_nodes/root_name>`                                                     | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>`                                                   | ``1.0``   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Script<class_Script>`         | :ref:`nodes/root_script<class_ResourceImporterScene_property_nodes/root_script>`                                                 | ``null``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`nodes/root_type<class_ResourceImporterScene_property_nodes/root_type>`                                                     | ``""``    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/use_name_suffixes<class_ResourceImporterScene_property_nodes/use_name_suffixes>`                                     | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/use_node_type_suffixes<class_ResourceImporterScene_property_nodes/use_node_type_suffixes>`                           | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>`                                         | ``true``  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterScene_property__subresources:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **_subresources** = ``{}`` :ref:`🔗<class_ResourceImporterScene_property__subresources>`

Contiene proprietà per le sotto-risorse della scena. Questa è un'opzione interna che non è visibile nel pannello dell'Importazione.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/fps:

.. rst-class:: classref-property

:ref:`float<class_float>` **animation/fps** = ``30`` :ref:`🔗<class_ResourceImporterScene_property_animation/fps>`

Il numero di fotogrammi al secondo da utilizzare per preparare le curve di animazione in una serie di punti con interpolazione lineare. Si consiglia di configurare questo valore in modo che corrisponda al valore che si sta usando come base nel software di modellazione 3D. Valori più alti producono un'animazione più precisa con rapidi cambiamenti di movimento, a scapito di maggiori dimensioni del file e utilizzo della memoria. Grazie all'interpolazione, di solito andare oltre i 30 FPS non è molto vantaggioso (poiché l'animazione apparirà comunque fluida a frame rate di rendering più elevati).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/import>`

Se ``true``, importa le animazioni dalla scena 3D.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import_rest_as_RESET:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import_rest_as_RESET** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/import_rest_as_RESET>`

Se ``true``, aggiunge un':ref:`Animation<class_Animation>` denominata ``RESET``, contenente il :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>` dai nodi :ref:`Skeleton3D<class_Skeleton3D>`. Questo può essere utile per estrarre un'animazione nella posa di riferimento.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/remove_immutable_tracks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/remove_immutable_tracks** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/remove_immutable_tracks>`

Se ``true``, rimuovi le tracce di animazione che contengono solo valori predefiniti. Ciò può ridurre le dimensioni del file risultante e l'utilizzo di memoria con alcune scene 3D, a seconda del contenuto delle loro tracce di animazione.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/trimming:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/trimming** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/trimming>`

Se ``true``, taglia l'inizio e la fine delle animazioni se non ci sono cambiamenti per i fotogrammi chiave. Ciò può ridurre le dimensioni del file risultante e l'utilizzo di memoria con alcune scene 3D, a seconda del contenuto delle loro tracce di animazione.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **array_mesh/deduplicate_surfaces** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_array_mesh/deduplicate_surfaces>`

Se il file del modello 3D contiene una sola mesh, questa opzione non ha alcun effetto. Se ``true`` e il file del modello 3D contiene più mesh con gli stessi nomi e formati di superficie, le superfici verranno unite assieme durante l'unione delle mesh. È utile per ridurre il numero di superfici nella mesh risultante ed evita di duplicare i materiali. Se ``false`` e il file del modello 3D contiene più mesh, le superfici verranno sempre mantenute separate.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_import_script/path:

.. rst-class:: classref-property

:ref:`String<class_String>` **import_script/path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_import_script/path>`

Percorso a uno script di importazione, il quale può eseguire codice dopo il completamento del processo di importazione per un'elaborazione personalizzata. Vedi `Utilizzo di script di importazione per l'automazione <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__ per maggiori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract>`

Modalità di estrazione dei materiali.

- ``0 (Keep Internal)``, i materiali non sono estratti.

- ``1 (Extract Once)``, i materiali sono estratti una volta e riutilizzati nelle importazioni successive.

- ``2 (Extract and Overwrite)``, i materiali sono estratti e sovrascritti a ogni importazione.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_format:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract_format** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_format>`

Formato dei file dei materiali estratti.

- ``0 (Text)``, formato di file testuale (``*.tres``).

- ``1 (Binary)``, formato di file binario (``*.res``).

- ``2 (Material)``, formato di file bionario (``*.material``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **materials/extract_path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_path>`

Il percorso in cui i materiali estratti sono salvati. Se vuoto, è utilizzato il percorso della scena sorgente.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mesh_library/use_node_names_as_mesh_names** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_mesh_library/use_node_names_as_mesh_names>`

Se ``true``, i nomi delle mesh verranno impostati sui nomi dei nodi nel file del modello 3D. Se ``false``, i nomi delle mesh verranno impostati sui nomi delle mesh nel file del modello 3D. Abilitare questa opzione è una soluzione comune quando l'autore del file del modello 3D non ha impostato correttamente i nomi delle mesh in Blender o in altre applicazioni di modellazione 3D. Ad esempio, un file potrebbe avere un nodo denominato "Turret" con una mesh denominata "Cube.002", quindi abilitando questa opzione il nome della mesh verrà impostato su "Turret" anziché su "Cube_002".

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/create_shadow_meshes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/create_shadow_meshes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/create_shadow_meshes>`

Se ``true``, abilita la generazione di mesh per le ombre all'importazione. Ciò ottimizza il rendering delle ombre senza ridurre la qualità saldando i vertici insieme quando possibile. Ciò a sua volta riduce la banda di memoria richiesta per renderizzare le ombre. La generazione dei mesh per le ombre al momento non supporta l'uso di un livello di dettaglio inferiore rispetto alla mesh sorgente (ma il rendering delle ombre utilizzerà i LOD quando appropriato).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/ensure_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/ensure_tangents** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/ensure_tangents>`

Se ``true``, genera le tangenti dei vertici usando `Mikktspace <http://www.mikktspace.com/>`__ se le mesh sorgenti non hanno dati per le tangenti. Quando possibile, si consiglia di lasciare che il software di modellazione 3D generi le tangenti durante l'esportazione invece di affidarsi a questa opzione. Le tangenti sono necessarie per visualizzare correttamente le mappe di normali e heightmap, insieme a qualsiasi funzionalità di un materiale o shader che le richiede.

Se non c'è bisogno di funzionalità che richiedono le tangenti, disabilitando questa opzione potrebbe ridurre le dimensioni del file risultante e velocizzare l'importazione se il file 3D sorgente non contiene tangenti.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/force_disable_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/force_disable_compression** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_meshes/force_disable_compression>`

Se ``true``, la compressione della mesh non sarà utilizzata. Considera di abilitarla se noti artefatti a blocchi nelle normali o UV della mesh, o se hai mesh più grandi di qualche migliaio di metri in ogni direzione.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/generate_lods>`

Se ``true``, genera variazioni di dettaglio inferiori della mesh che saranno visualizzate in lontananza per migliorare le prestazioni di rendering. Non tutte le mesh approfittano dei LOD, soprattutto se non sono mai renderizzate da lontano. Disattivando questa opzione è possibile ridurre le dimensioni del file risultante e velocizzare l'importazione. Consulta `Livello di dettaglio delle mesh (LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ per maggiori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/light_baking:

.. rst-class:: classref-property

:ref:`int<class_int>` **meshes/light_baking** = ``1`` :ref:`🔗<class_ResourceImporterScene_property_meshes/light_baking>`

Configura la :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` delle mesh nella scena 3D. Se impostato su **Static Lightmaps**, imposta la modalità GI delle mesh su Static e genera gli UV2 all'importazione per il precalcolo di :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/lightmap_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **meshes/lightmap_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterScene_property_meshes/lightmap_texel_size>`

Controlla la dimensione di ogni texel sulla lightmap precalcolata. Un valore più piccolo produce lightmap più precise, a costo di dimensioni maggiori e tempi di precalcolo più lunghi.

\ **Nota:** Efficace solo se :ref:`meshes/light_baking<class_ResourceImporterScene_property_meshes/light_baking>` è impostato su **Static Lightmaps**.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/apply_root_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/apply_root_scale** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/apply_root_scale>`

Se ``true``, :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>` sarà applicato ai nodi discendenti, mesh, animazioni, ossa, ecc. Ciò significa che se aggiungi in seguito un nodo figlio all'interno della scena importata, non sarà ridimensionato. Se ``false``, :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>` moltiplicherà invece la scala del nodo radice.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/import_as_skeleton_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/import_as_skeleton_bones** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_nodes/import_as_skeleton_bones>`

Tratta tutti i nodi nella scena importata come se fossero ossa all'interno di un singolo :ref:`Skeleton3D<class_Skeleton3D>`. Può essere utilizzato per assicurare che le animazioni importate puntino alle ossa dello scheletro piuttosto che ai nodi. Può anche essere utilizzato per assegnare l'osso ``"Root"`` in una :ref:`BoneMap<class_BoneMap>`. Consulta :doc:`Retargeting 3D Skeletons <../tutorials/assets_pipeline/retargeting_3d_skeletons>` per maggiori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_name** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_name>`

Sostituzione per il nome del nodo radice. Se vuoto, il nodo radice usare ciò che specifica la scena, o il nome del file se la scena non specifica un nome radice.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **nodes/root_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_scale>`

La scala uniforme da usare per la radice della scena. Il valore predefinito di ``1.0`` non effettuerà alcun ridimensionamento. Vedi :ref:`nodes/apply_root_scale<class_ResourceImporterScene_property_nodes/apply_root_scale>` per i dettagli su come viene applicata questa scala.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_script:

.. rst-class:: classref-property

:ref:`Script<class_Script>` **nodes/root_script** = ``null`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_script>`

Se impostato su uno script valido, allega lo script al nodo radice della scena importata. Se il tipo del nodo radice non è compatibile con lo script, il nodo radice sarà sostituito con un tipo compatibile. È possibile utilizzare questa impostazione anche su altri nodi non mesh nella scena per allegarvi degli script.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_type** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_type>`

Sostituzione per il tipo di nodo radice. Se vuoto, il nodo radice utilizzerà ciò che specifica la scena, oppure :ref:`Node3D<class_Node3D>` se la scena non specifica un tipo radice. Si consiglia di utilizzare un tipo di nodo che eredita da :ref:`Node3D<class_Node3D>`. Altrimenti, non sarà possibile posizionare il nodo direttamente nell'editor 3D.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_name_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_name_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_name_suffixes>`

Se ``true``, usa i suffissi nei nomi degli oggetti importati, come nodi e risorse, per determinare i tipi e le proprietà, come ``-noimp`` per saltare l'importazione di un nodo o di un'animazione, ``-alpha`` per abilitare la trasparenza alfa su un materiale, e ``-vcol`` per abilitare i colori dei vertici su un materiale. Disattivando questa opzione, i file importati dall'editor diventano più simili ai file originali e ai file importati in fase di esecuzione. Vedi :doc:`Personalizzazione del tipo di nodo tramite suffissi dei nomi <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>` per maggiori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_node_type_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_node_type_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_node_type_suffixes>`

Se ``true``, userà i suffissi nei nomi dei nodi per determinare il tipo di nodo, come ``-col`` per le forme di collisione. Questo è utilizzato solo quando :ref:`nodes/use_name_suffixes<class_ResourceImporterScene_property_nodes/use_name_suffixes>` è ``true``. Disattivando questa opzione, i file importati dall'editor diventano più simili ai file originali e ai file importati in fase di esecuzione. Vedi :doc:`Personalizzazione del tipo di nodo tramite suffissi dei nomi <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>` per maggiori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_skins/use_named_skins:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **skins/use_named_skins** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_skins/use_named_skins>`

Se spuntato, usa :ref:`Skin<class_Skin>` denominate per l'animazione. Il nodo :ref:`MeshInstance3D<class_MeshInstance3D>` contiene 3 proprietà qui rilevanti: un :ref:`NodePath<class_NodePath>` che punta al nodo :ref:`Skeleton3D<class_Skeleton3D>` (solitamente ``..``), una mesh e una skin:

- Il nodo :ref:`Skeleton3D<class_Skeleton3D>` contiene un elenco di ossa con nomi, la loro posa e riposo, un nome e un osso padre.

- La mesh è composta da tutti i dati grezzi dei vertici necessari per visualizzare una mesh. In termini di mesh, sa come i vertici sono dipinti con peso e usa una numerazione interna spesso importata dal software di modellazione 3D.

- La skin contiene le informazioni necessarie per associare questa mesh a questo Skeleton3D. Per ognuno degli ID delle ossa interne scelti dal software di modellazione 3D, contiene due cose. Innanzitutto, una matrice nota come Bind Pose Matrix, Inverse Bind Matrix o IBM in breve. Inoltre, la :ref:`Skin<class_Skin>` contiene il nome di ogni osso (se :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` è ``true``), o l'indice dell'osso dentro l'elenco dello :ref:`Skeleton3D<class_Skeleton3D>` (se :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>` è ``false``).

Insieme, queste informazioni sono sufficienti per dire a Godot come usare le pose dell'osso nel nodo :ref:`Skeleton3D<class_Skeleton3D>` per renderizzare la mesh da ogni :ref:`MeshInstance3D<class_MeshInstance3D>`. Nota che ogni :ref:`MeshInstance3D<class_MeshInstance3D>` può condividere i bind, come è comune nei modelli esportati da Blender, oppure ogni :ref:`MeshInstance3D<class_MeshInstance3D>` può usare un oggetto :ref:`Skin<class_Skin>` separato, come è comune nei modelli esportati da altri strumenti come Maya.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
