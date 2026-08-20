:github_url: hide

.. _class_MeshDataTool:

MeshDataTool
============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Strumento di supporto per accedere e modificare i dati della :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

MeshDataTool fornisce l'accesso ai singoli vertici in una :ref:`Mesh<class_Mesh>`. Consente agli utenti di leggere e modificare i dati dei vertici delle mesh. Crea anche una matrice di facce e spigoli.

Per utilizzare MeshDataTool, caricare una mesh con :ref:`create_from_surface()<class_MeshDataTool_method_create_from_surface>`. Quando hai finito di modificare i dati, commetti i dati in una mesh con :ref:`commit_to_surface()<class_MeshDataTool_method_commit_to_surface>`.

Di seguito è riportato un esempio di come può essere utilizzato MeshDataTool.


.. tabs::

 .. code-tab:: gdscript

    var mesh = ArrayMesh.new()
    mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, BoxMesh.new().get_mesh_arrays())
    var mdt = MeshDataTool.new()
    mdt.create_from_surface(mesh, 0)
    for i in range(mdt.get_vertex_count()):
        var vertex = mdt.get_vertex(i)
        # In questo esempio estendiamo la mesh di un'unità, il che risulta in facce separate poiché è ombreggiata in modo piatto.
        vertex += mdt.get_vertex_normal(i)
        # Salva la modifica.
        mdt.set_vertex(i, vertex)
    mesh.clear_surfaces()
    mdt.commit_to_surface(mesh)
    var mi = MeshInstance.new()
    mi.mesh = mesh
    add_child(mi)

 .. code-tab:: csharp

    var mesh = new ArrayMesh();
    mesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, new BoxMesh().GetMeshArrays());
    var mdt = new MeshDataTool();
    mdt.CreateFromSurface(mesh, 0);
    for (var i = 0; i < mdt.GetVertexCount(); i++)
    {
        Vector3 vertex = mdt.GetVertex(i);
        // In questo esempio estendiamo la mesh di un'unità, il che risulta in facce separate poiché è ombreggiata in modo piatto.
        vertex += mdt.GetVertexNormal(i);
        // Salva la modifica.
        mdt.SetVertex(i, vertex);
    }
    mesh.ClearSurfaces();
    mdt.CommitToSurface(mesh);
    var mi = new MeshInstance();
    mi.Mesh = mesh;
    AddChild(mi);



Vedi anche :ref:`ArrayMesh<class_ArrayMesh>`, :ref:`ImmediateMesh<class_ImmediateMesh>` e :ref:`SurfaceTool<class_SurfaceTool>` per la generazione di geometria procedurale.

\ **Nota:** Godot utilizza l'`ordine di avvolgimento <https://learnopengl.com/Advanced-OpenGL/Face-culling>`__ in senso orario per le facce frontali delle modalità di triangoli primitivi.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di MeshDataTool <../tutorials/3d/procedural_geometry/meshdatatool>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_MeshDataTool_method_clear>`\ (\ )                                                                                                                       |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`               | :ref:`commit_to_surface<class_MeshDataTool_method_commit_to_surface>`\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, compression_flags\: :ref:`int<class_int>` = 0\ )      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`               | :ref:`create_from_surface<class_MeshDataTool_method_create_from_surface>`\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, surface\: :ref:`int<class_int>`\ )                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_edge_count<class_MeshDataTool_method_get_edge_count>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_edge_faces<class_MeshDataTool_method_get_edge_faces>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`get_edge_meta<class_MeshDataTool_method_get_edge_meta>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_edge_vertex<class_MeshDataTool_method_get_edge_vertex>`\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const|                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_face_count<class_MeshDataTool_method_get_face_count>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_face_edge<class_MeshDataTool_method_get_face_edge>`\ (\ idx\: :ref:`int<class_int>`, edge\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`get_face_meta<class_MeshDataTool_method_get_face_meta>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_face_normal<class_MeshDataTool_method_get_face_normal>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_face_vertex<class_MeshDataTool_method_get_face_vertex>`\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const|                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_format<class_MeshDataTool_method_get_format>`\ (\ ) |const|                                                                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                     | :ref:`get_material<class_MeshDataTool_method_get_material>`\ (\ ) |const|                                                                                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_vertex<class_MeshDataTool_method_get_vertex>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_vertex_bones<class_MeshDataTool_method_get_vertex_bones>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`get_vertex_color<class_MeshDataTool_method_get_vertex_color>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_vertex_count<class_MeshDataTool_method_get_vertex_count>`\ (\ ) |const|                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_vertex_edges<class_MeshDataTool_method_get_vertex_edges>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_vertex_faces<class_MeshDataTool_method_get_vertex_faces>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`get_vertex_meta<class_MeshDataTool_method_get_vertex_meta>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_vertex_normal<class_MeshDataTool_method_get_vertex_normal>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`                           | :ref:`get_vertex_tangent<class_MeshDataTool_method_get_vertex_tangent>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_vertex_uv<class_MeshDataTool_method_get_vertex_uv>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_vertex_uv2<class_MeshDataTool_method_get_vertex_uv2>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_vertex_weights<class_MeshDataTool_method_get_vertex_weights>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_edge_meta<class_MeshDataTool_method_set_edge_meta>`\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ )                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_face_meta<class_MeshDataTool_method_set_face_meta>`\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ )                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_material<class_MeshDataTool_method_set_material>`\ (\ material\: :ref:`Material<class_Material>`\ )                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex<class_MeshDataTool_method_set_vertex>`\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ )                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_bones<class_MeshDataTool_method_set_vertex_bones>`\ (\ idx\: :ref:`int<class_int>`, bones\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_color<class_MeshDataTool_method_set_vertex_color>`\ (\ idx\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_meta<class_MeshDataTool_method_set_vertex_meta>`\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ )                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_normal<class_MeshDataTool_method_set_vertex_normal>`\ (\ idx\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ )                          |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_tangent<class_MeshDataTool_method_set_vertex_tangent>`\ (\ idx\: :ref:`int<class_int>`, tangent\: :ref:`Plane<class_Plane>`\ )                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_uv<class_MeshDataTool_method_set_vertex_uv>`\ (\ idx\: :ref:`int<class_int>`, uv\: :ref:`Vector2<class_Vector2>`\ )                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_uv2<class_MeshDataTool_method_set_vertex_uv2>`\ (\ idx\: :ref:`int<class_int>`, uv2\: :ref:`Vector2<class_Vector2>`\ )                                   |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_weights<class_MeshDataTool_method_set_vertex_weights>`\ (\ idx\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_MeshDataTool_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_MeshDataTool_method_clear>`

Cancella tutti i dati attualmente presenti in MeshDataTool.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_commit_to_surface:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **commit_to_surface**\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, compression_flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_MeshDataTool_method_commit_to_surface>`

Aggiunge una nuova superficie alla :ref:`Mesh<class_Mesh>` specificata con i dati modificati.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_create_from_surface:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_surface**\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, surface\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshDataTool_method_create_from_surface>`

Utilizza la superficie specificata della :ref:`Mesh<class_Mesh>` fornita per costruire i dati per MeshDataTool.

Richiede una :ref:`Mesh<class_Mesh>` con il tipo di primitiva :ref:`Mesh.PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_edge_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_count>`

Restituisce il numero di spigoli in questa :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_faces:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_edge_faces**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_faces>`

Restituisce un array di facce che toccano lo spigolo specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_edge_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_meta>`

Restituisce i metadati assegnati allo spigolo specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_vertex:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_edge_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_vertex>`

Restituisce l'indice del vertice ``vertex`` connesso allo spigolo all'indice ``idx``.

\ ``vertex`` può essere solo ``0`` o ``1`` poiché gli spigoli sono composti da due vertici.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_count>`

Restituisce il numero di facce in questa :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_edge:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_edge**\ (\ idx\: :ref:`int<class_int>`, edge\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_edge>`

Restituisce lo spigolo associato alla faccia all'indice ``idx``.

\ ``edge`` deve essere ``0``, ``1`` o ``2`` perché una faccia ha solo tre spigoli.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_face_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_meta>`

Restituisce i metadati associati alla faccia specificata.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_face_normal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_normal>`

Calcola e restituisce la normale alla faccia specificata.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_vertex:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_vertex>`

Restituisce l'indice del vertice specificato della faccia fornita.

\ ``vertex`` deve essere ``0``, ``1`` o ``2`` perché le facce contengono tre vertici.


.. tabs::

 .. code-tab:: gdscript

    var index = mesh_data_tool.get_face_vertex(0, 1) # Ottiene l'indice del secondo vertice della prima faccia.
    var position = mesh_data_tool.get_vertex(index)
    var normal = mesh_data_tool.get_vertex_normal(index)

 .. code-tab:: csharp

    int index = meshDataTool.GetFaceVertex(0, 1); // Ottiene l'indice del secondo vertice della prima faccia.
    Vector3 position = meshDataTool.GetVertex(index);
    Vector3 normal = meshDataTool.GetVertexNormal(index);



.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_format**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_format>`

Restituisce il formato della :ref:`Mesh<class_Mesh>` come una combinazione dei flag :ref:`ArrayFormat<enum_Mesh_ArrayFormat>`. Ad esempio, una mesh contenente sia vertici sia normali restituirebbe un formato di ``3`` perché :ref:`Mesh.ARRAY_FORMAT_VERTEX<class_Mesh_constant_ARRAY_FORMAT_VERTEX>` è ``1`` e :ref:`Mesh.ARRAY_FORMAT_NORMAL<class_Mesh_constant_ARRAY_FORMAT_NORMAL>` è ``2``.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_material**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_material>`

Restituisce il materiale assegnato alla :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_vertex**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex>`

Restituisce la posizione del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_bones:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_bones**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_bones>`

Restituisce le ossa del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_vertex_color**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_color>`

Restituisce il colore del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_vertex_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_count>`

Restituisce il numero totale di vertici nella :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_edges:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_edges**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_edges>`

Restituisce un array di spigoli che condividono il vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_faces:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_faces**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_faces>`

Restituisce un array di facce che condividono il vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_vertex_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_meta>`

Restituisce i metadati associati al vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_vertex_normal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_normal>`

Restituisce la normale del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_tangent:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_vertex_tangent**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_tangent>`

Restituisce la tangente del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_uv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vertex_uv**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_uv>`

Restituisce l'UV del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_uv2:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vertex_uv2**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_uv2>`

Restituisce l'UV2 del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_weights:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_vertex_weights**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_weights>`

Restituisce i pesi delle ossa del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_edge_meta:

.. rst-class:: classref-method

|void| **set_edge_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_edge_meta>`

Imposta i metadati dello spigolo specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_face_meta:

.. rst-class:: classref-method

|void| **set_face_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_face_meta>`

Imposta i metadati della faccia specificata.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_material:

.. rst-class:: classref-method

|void| **set_material**\ (\ material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_MeshDataTool_method_set_material>`

Imposta il materiale da utilizzare per la :ref:`Mesh<class_Mesh>` appena costruita.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex:

.. rst-class:: classref-method

|void| **set_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex>`

Imposta la posizione del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_bones:

.. rst-class:: classref-method

|void| **set_vertex_bones**\ (\ idx\: :ref:`int<class_int>`, bones\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_bones>`

Imposta le ossa del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_color:

.. rst-class:: classref-method

|void| **set_vertex_color**\ (\ idx\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_color>`

Imposta il colore del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_meta:

.. rst-class:: classref-method

|void| **set_vertex_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_meta>`

Imposta i metadati associati al vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_normal:

.. rst-class:: classref-method

|void| **set_vertex_normal**\ (\ idx\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_normal>`

Imposta la normale del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_tangent:

.. rst-class:: classref-method

|void| **set_vertex_tangent**\ (\ idx\: :ref:`int<class_int>`, tangent\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_tangent>`

Imposta la tangente del vertice specificato.

\ **Nota:** Sebbene ``tangent`` sia un :ref:`Plane<class_Plane>`, non rappresenta direttamente il piano tangente. I suoi :ref:`Plane.x<class_Plane_property_x>`, :ref:`Plane.y<class_Plane_property_y>` e :ref:`Plane.z<class_Plane_property_z>` rappresentano il vettore tangente e :ref:`Plane.d<class_Plane_property_d>` dovrebbe essere ``-1`` o ``1``. Vedi anche :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_uv:

.. rst-class:: classref-method

|void| **set_vertex_uv**\ (\ idx\: :ref:`int<class_int>`, uv\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_uv>`

Imposta l'UV del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_uv2:

.. rst-class:: classref-method

|void| **set_vertex_uv2**\ (\ idx\: :ref:`int<class_int>`, uv2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_uv2>`

Imposta l'UV2 del vertice specificato.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_weights:

.. rst-class:: classref-method

|void| **set_vertex_weights**\ (\ idx\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_weights>`

Imposta i pesi delle ossa del vertice specificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
