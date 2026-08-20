:github_url: hide

.. _class_NavigationMeshGenerator:

NavigationMeshGenerator
=======================

**Deprecato:** This class may be changed or removed in future versions.

**Eredita:** :ref:`Object<class_Object>`

Classe di supporto per la creazione e la cancellazione delle mesh di navigazione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe è responsabile della creazione e della cancellazione di mesh di navigazione 3D utilizzate come risorse :ref:`NavigationMesh<class_NavigationMesh>` all'interno di :ref:`NavigationRegion3D<class_NavigationRegion3D>`. **NavigationMeshGenerator** ha un utilizzo molto limitato o nullo per 2D poiché la preparazione della mesh di navigazione si aspetta tipi di nodi 3D e geometria sorgente 3D da analizzare.

L'intera preparazione della mesh di navigazione è meglio eseguita in un thread separato poiché la voxelizzazione, i test di collisione e l'ottimizzazione della mesh coinvolti sono operazioni molto lente e ad alta intensità di prestazioni.

La preparazione della mesh di navigazione avviene in più passaggi e il risultato dipende dalla geometria sorgente 3D e dalle proprietà della risorsa :ref:`NavigationMesh<class_NavigationMesh>`. Nel primo passaggio, partendo da un nodo radice e in base alle proprietà :ref:`NavigationMesh<class_NavigationMesh>`, tutti i nodi validi di geometria sorgente 3D vengono raccolti dal :ref:`SceneTree<class_SceneTree>`. Successivamente, tutti i nodi raccolti vengono analizzati per i loro dati di geometria 3D applicabili e viene creata una mesh 3D combinata. A causa dei molti tipi diversi di oggetti analizzabili, dai normali :ref:`MeshInstance3D<class_MeshInstance3D>` ai :ref:`CSGShape3D<class_CSGShape3D>` o vari :ref:`CollisionObject3D<class_CollisionObject3D>`, alcune operazioni per raccogliere i dati geometrici possono attivare sincronizzazioni sul :ref:`RenderingServer<class_RenderingServer>` e :ref:`PhysicsServer3D<class_PhysicsServer3D>`. La sincronizzazione dei server può avere un effetto negativo sul tempo di preparazione o sul frame rate poiché spesso provoca il blocco :ref:`Mutex<class_Mutex>` per la sicurezza dei thread. Molti oggetti analizzabili e la sincronizzazione continua con altri server con thread possono aumentare significativamente il tempo di preparazione. D'altro canto, solo pochi oggetti molto grandi e complessi impiegheranno tempo per prepararsi per i server, il che può bloccare notevolmente il rendering del frame successivo. Come regola generale, il numero totale di oggetti analizzabili e le loro singole dimensioni e complessità dovrebbero essere bilanciati per evitare problemi di frame rate o tempi di preparazione molto lunghi. La mesh combinata viene quindi passata al Recast Navigation Object per testare la geometria di origine per un terreno percorribile adatto alle proprietà dell'agente :ref:`NavigationMesh<class_NavigationMesh>`, creando un mondo di voxel attorno all'area di delimitazione delle mesh.

La mesh di navigazione finalizzata viene quindi restituita e archiviata all'interno di :ref:`NavigationMesh<class_NavigationMesh>` per essere utilizzata come risorsa all'interno dei nodi :ref:`NavigationRegion3D<class_NavigationRegion3D>`.

\ **Nota:** Utilizzare le mesh non solo per definire superfici percorribili ma anche per ostacolare la preparazione della navigazione non funziona sempre. La preparazione della navigazione non ha idea di cosa sia una geometria "interna" quando si ha a che fare con la geometria sorgente della mesh e questo è intenzionale. A seconda dei parametri attuali di preparazione, non appena la mesh ostruente è abbastanza grande da contenere un'area di mesh di navigazione al suo interno, la preparazione genererà aree di mesh di navigazione che si trovano all'interno della mesh della geometria sorgente ostruente.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei NavigationMesh <../tutorials/navigation/navigation_using_navigationmeshes>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`bake<class_NavigationMeshGenerator_method_bake>`\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, root_node\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`bake_from_source_geometry_data<class_NavigationMeshGenerator_method_bake_from_source_geometry_data>`\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, source_geometry_data\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, callback\: :ref:`Callable<class_Callable>` = Callable()\ )                              |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`clear<class_NavigationMeshGenerator_method_clear>`\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ )                                                                                                                                                                                                                                                     |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`parse_source_geometry_data<class_NavigationMeshGenerator_method_parse_source_geometry_data>`\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, source_geometry_data\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, root_node\: :ref:`Node<class_Node>`, callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_NavigationMeshGenerator_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, root_node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_NavigationMeshGenerator_method_bake>`

**Deprecato:** This method is deprecated due to core threading changes. To upgrade existing code, first create a :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>` resource. Use this resource with :ref:`parse_source_geometry_data()<class_NavigationMeshGenerator_method_parse_source_geometry_data>` to parse the :ref:`SceneTree<class_SceneTree>` for nodes that should contribute to the navigation mesh baking. The :ref:`SceneTree<class_SceneTree>` parsing needs to happen on the main thread. After the parsing is finished use the resource with :ref:`bake_from_source_geometry_data()<class_NavigationMeshGenerator_method_bake_from_source_geometry_data>` to bake a navigation mesh.

Precalcola la mesh di navigazione (``navigation_mesh``) con la geometria sorgente raccolta a partire dal nodo radice (``root_node``).

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshGenerator_method_bake_from_source_geometry_data:

.. rst-class:: classref-method

|void| **bake_from_source_geometry_data**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, source_geometry_data\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_NavigationMeshGenerator_method_bake_from_source_geometry_data>`

Prepara la mesh di navigazione ``navigation_mesh`` con i dati della geometria sorgente ``source_geometry_data``. Una volta terminato il processo, verrà chiamato il ``callback`` facoltativo.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshGenerator_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ ) :ref:`🔗<class_NavigationMeshGenerator_method_clear>`

Rimuove tutti i poligoni e i vertici dalla risorsa ``navigation_mesh`` fornita.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshGenerator_method_parse_source_geometry_data:

.. rst-class:: classref-method

|void| **parse_source_geometry_data**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, source_geometry_data\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, root_node\: :ref:`Node<class_Node>`, callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_NavigationMeshGenerator_method_parse_source_geometry_data>`

Analizza il :ref:`SceneTree<class_SceneTree>` per la geometria sorgente in base alle proprietà di ``navigation_mesh``. Aggiorna la risorsa ``source_geometry_data`` fornita con i dati risultanti. La risorsa può quindi essere utilizzata per preparare una mesh di navigazione con :ref:`bake_from_source_geometry_data()<class_NavigationMeshGenerator_method_bake_from_source_geometry_data>`. Dopo che il processo è terminato, verrà chiamato il ``callback`` facoltativo.

\ **Nota:** Questa funzione deve essere eseguita sul thread principale o con una chiamata differita poiché il SceneTree non è sicuro su altri thread.

\ **Prestazioni:** Sebbene sia conveniente, leggere gli array di dati dalle risorse :ref:`Mesh<class_Mesh>` può influire negativamente sul frame rate. I dati devono essere ricevuti dalla GPU, bloccando il :ref:`RenderingServer<class_RenderingServer>` nel processo. Per le prestazioni, si preferisce utilizzare, ad esempio, forme di collisione o creare gli array di dati interamente in codice.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
