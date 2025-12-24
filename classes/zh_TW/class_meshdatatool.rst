:github_url: hide

.. _class_MeshDataTool:

MeshDataTool
============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於存取和編輯 :ref:`Mesh<class_Mesh>` 資料的輔助工具。

.. rst-class:: classref-introduction-group

說明
----

MeshDataTool 提供對 :ref:`Mesh<class_Mesh>` 中各個頂點的存取。它允許使用者讀取和編輯網格的頂點數據。它還建立了一系列面和邊。

要使用 MeshDataTool，請使用 :ref:`create_from_surface()<class_MeshDataTool_method_create_from_surface>` 載入一個網格。完成數據編輯後，使用 :ref:`commit_to_surface()<class_MeshDataTool_method_commit_to_surface>` 將資料提交到一個網格。

下面是如何使用 MeshDataTool 的範例。


.. tabs::

 .. code-tab:: gdscript

    var mesh = ArrayMesh.new()
    mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, BoxMesh.new().get_mesh_arrays())
    var mdt = MeshDataTool.new()
    mdt.create_from_surface(mesh, 0)
    for i in range(mdt.get_vertex_count()):
        var vertex = mdt.get_vertex(i)
        # 在這個例子中，我們將網格擠出一個單位，這會導致分離的面，因為它是平直著色的。
        vertex += mdt.get_vertex_normal(i)
        # 保存你的更改。
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
        // 在這個例子中，我們將網格擠出一個單位，這會導致分離的面，因為它是平直著色的。
        vertex += mdt.GetVertexNormal(i);
        // 保存你的更改。
        mdt.SetVertex(i, vertex);
    }
    mesh.ClearSurfaces();
    mdt.CommitToSurface(mesh);
    var mi = new MeshInstance();
    mi.Mesh = mesh;
    AddChild(mi);



另請參閱 :ref:`ArrayMesh<class_ArrayMesh>`\ 、\ :ref:`ImmediateMesh<class_ImmediateMesh>`\ 、和 :ref:`SurfaceTool<class_SurfaceTool>`\ ，以瞭解程式化幾何生成。

\ **注意：**\ 對於三角形基元模式的前面，Godot 使用順時針\ `纏繞順序 <https://learnopengl.com/Advanced-OpenGL/Face-culling>`__\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 MeshDataTool <../tutorials/3d/procedural_geometry/meshdatatool>`

.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

.. _class_MeshDataTool_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_MeshDataTool_method_clear>`

將目前 MeshDataTool 中所有的資料全部清除。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_commit_to_surface:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **commit_to_surface**\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, compression_flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_MeshDataTool_method_commit_to_surface>`

使用編輯後的資料，向指定的 :ref:`Mesh<class_Mesh>` 中新增一個新的表面。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_create_from_surface:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_surface**\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, surface\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshDataTool_method_create_from_surface>`

使用給定 :ref:`Mesh<class_Mesh>` 的指定表面來填充 MeshDataTool 的資料。

要求 :ref:`Mesh<class_Mesh>` 的圖元型別為 :ref:`Mesh.PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_edge_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_count>`

返回這個 :ref:`Mesh<class_Mesh>` 的邊數。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_faces:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_edge_faces**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_faces>`

返回與給定邊相鄰的面陣列。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_edge_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_meta>`

返回給定邊的中繼資料。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_vertex:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_edge_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_vertex>`

Returns the index of the specified ``vertex`` connected to the edge at index ``idx``.

\ ``vertex`` can only be ``0`` or ``1``, as edges are composed of two vertices.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_count>`

返回這個 :ref:`Mesh<class_Mesh>` 中的面數。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_edge:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_edge**\ (\ idx\: :ref:`int<class_int>`, edge\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_edge>`

Returns the edge associated with the face at index ``idx``.

\ ``edge`` argument must be either ``0``, ``1``, or ``2`` because a face only has three edges.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_face_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_meta>`

返回與給定面關聯的中繼資料。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_face_normal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_normal>`

計算並返回給定面的面法線。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_vertex:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_vertex>`

Returns the specified vertex index of the given face.

\ ``vertex`` must be either ``0``, ``1``, or ``2`` because faces contain three vertices.


.. tabs::

 .. code-tab:: gdscript

    var index = mesh_data_tool.get_face_vertex(0, 1) # Gets the index of the second vertex of the first face.
    var position = mesh_data_tool.get_vertex(index)
    var normal = mesh_data_tool.get_vertex_normal(index)

 .. code-tab:: csharp

    int index = meshDataTool.GetFaceVertex(0, 1); // Gets the index of the second vertex of the first face.
    Vector3 position = meshDataTool.GetVertex(index);
    Vector3 normal = meshDataTool.GetVertexNormal(index);



.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_format**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_format>`

Returns the :ref:`Mesh<class_Mesh>`'s format as a combination of the :ref:`ArrayFormat<enum_Mesh_ArrayFormat>` flags. For example, a mesh containing both vertices and normals would return a format of ``3`` because :ref:`Mesh.ARRAY_FORMAT_VERTEX<class_Mesh_constant_ARRAY_FORMAT_VERTEX>` is ``1`` and :ref:`Mesh.ARRAY_FORMAT_NORMAL<class_Mesh_constant_ARRAY_FORMAT_NORMAL>` is ``2``.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_material**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_material>`

返回分配給該 :ref:`Mesh<class_Mesh>` 的材質。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_vertex**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex>`

設定給定頂點的位置。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_bones:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_bones**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_bones>`

返回給定頂點的骨骼。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_vertex_color**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_color>`

返回給定頂點的顏色。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_vertex_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_count>`

返回 :ref:`Mesh<class_Mesh>` 中頂點的總數。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_edges:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_edges**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_edges>`

返回共用給定頂點的邊的陣列。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_faces:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_faces**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_faces>`

返回共用給定頂點的面陣列。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_vertex_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_meta>`

返回與給定頂點關聯的中繼資料。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_vertex_normal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_normal>`

返回給定頂點的法線。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_tangent:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_vertex_tangent**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_tangent>`

返回給定頂點的切線。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_uv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vertex_uv**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_uv>`

返回給定頂點的 UV。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_uv2:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vertex_uv2**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_uv2>`

返回給定頂點的 UV2。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_weights:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_vertex_weights**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_weights>`

返回給定頂點的骨骼權重。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_edge_meta:

.. rst-class:: classref-method

|void| **set_edge_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_edge_meta>`

設定給定邊的中繼資料。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_face_meta:

.. rst-class:: classref-method

|void| **set_face_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_face_meta>`

設定給定面的中繼資料。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_material:

.. rst-class:: classref-method

|void| **set_material**\ (\ material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_MeshDataTool_method_set_material>`

設定新建構的 :ref:`Mesh<class_Mesh>` 使用的材質。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex:

.. rst-class:: classref-method

|void| **set_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex>`

設定給定頂點的位置。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_bones:

.. rst-class:: classref-method

|void| **set_vertex_bones**\ (\ idx\: :ref:`int<class_int>`, bones\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_bones>`

設定給定頂點的骨骼。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_color:

.. rst-class:: classref-method

|void| **set_vertex_color**\ (\ idx\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_color>`

設定給定頂點的顏色。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_meta:

.. rst-class:: classref-method

|void| **set_vertex_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_meta>`

設定與給定頂點關聯的中繼資料。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_normal:

.. rst-class:: classref-method

|void| **set_vertex_normal**\ (\ idx\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_normal>`

設定給定頂點的法線。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_tangent:

.. rst-class:: classref-method

|void| **set_vertex_tangent**\ (\ idx\: :ref:`int<class_int>`, tangent\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_tangent>`

設定給定頂點的切線。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_uv:

.. rst-class:: classref-method

|void| **set_vertex_uv**\ (\ idx\: :ref:`int<class_int>`, uv\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_uv>`

設定給定頂點的 UV。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_uv2:

.. rst-class:: classref-method

|void| **set_vertex_uv2**\ (\ idx\: :ref:`int<class_int>`, uv2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_uv2>`

設定給定頂點的 UV2。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_weights:

.. rst-class:: classref-method

|void| **set_vertex_weights**\ (\ idx\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_weights>`

設定給定頂點的骨骼權重。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
