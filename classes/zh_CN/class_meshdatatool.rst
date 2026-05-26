:github_url: hide

.. _class_MeshDataTool:

MeshDataTool
============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于访问和编辑 :ref:`Mesh<class_Mesh>` 数据的辅助工具。

.. rst-class:: classref-introduction-group

描述
----

MeshDataTool 提供对 :ref:`Mesh<class_Mesh>` 中各个顶点的访问。它允许用户读取和编辑网格的顶点数据。它还创建了一系列面和边。

要使用 MeshDataTool，请使用 :ref:`create_from_surface()<class_MeshDataTool_method_create_from_surface>` 加载一个网格。完成数据编辑后，使用 :ref:`commit_to_surface()<class_MeshDataTool_method_commit_to_surface>` 将数据提交到一个网格。

下面是如何使用 MeshDataTool 的示例。


.. tabs::

 .. code-tab:: gdscript

    var mesh = ArrayMesh.new()
    mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, BoxMesh.new().get_mesh_arrays())
    var mdt = MeshDataTool.new()
    mdt.create_from_surface(mesh, 0)
    for i in range(mdt.get_vertex_count()):
        var vertex = mdt.get_vertex(i)
        # 在这个例子中，我们将网格挤出一个单位，这会导致分离的面，因为它是平直着色的。
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
        // 在这个例子中，我们将网格挤出一个单位，这会导致分离的面，因为它是平直着色的。
        vertex += mdt.GetVertexNormal(i);
        // 保存你的更改。
        mdt.SetVertex(i, vertex);
    }
    mesh.ClearSurfaces();
    mdt.CommitToSurface(mesh);
    var mi = new MeshInstance();
    mi.Mesh = mesh;
    AddChild(mi);



另见 :ref:`ArrayMesh<class_ArrayMesh>`\ 、\ :ref:`ImmediateMesh<class_ImmediateMesh>` 和 :ref:`SurfaceTool<class_SurfaceTool>`\ ，以了解程序化几何生成。

\ **注意：**\ 对于三角形基元模式的前面，Godot 使用顺时针\ `缠绕顺序 <https://learnopengl.com/Advanced-OpenGL/Face-culling>`__\ 。

.. rst-class:: classref-introduction-group

教程
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

方法说明
--------

.. _class_MeshDataTool_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_MeshDataTool_method_clear>`

将当前 MeshDataTool 中所有的数据全部清除。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_commit_to_surface:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **commit_to_surface**\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, compression_flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_MeshDataTool_method_commit_to_surface>`

使用编辑后的数据，向指定的 :ref:`Mesh<class_Mesh>` 中添加一个新的表面。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_create_from_surface:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_surface**\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, surface\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshDataTool_method_create_from_surface>`

使用给定 :ref:`Mesh<class_Mesh>` 的指定表面来填充 MeshDataTool 的数据。

要求 :ref:`Mesh<class_Mesh>` 的图元类型为 :ref:`Mesh.PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_edge_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_count>`

返回这个 :ref:`Mesh<class_Mesh>` 的边数。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_faces:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_edge_faces**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_faces>`

返回与给定边相邻的面数组。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_edge_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_meta>`

返回给定边的元数据。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_vertex:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_edge_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_vertex>`

返回连接到索引为 ``idx`` 的边的顶点 ``vertex`` 的索引。

\ ``vertex`` 只能是 ``0`` 或 ``1``\ ，因为一条边由两个顶点组成。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_count>`

返回这个 :ref:`Mesh<class_Mesh>` 中的面数。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_edge:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_edge**\ (\ idx\: :ref:`int<class_int>`, edge\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_edge>`

返回与索引为 ``idx`` 的面相关联的边。

\ ``edge`` 参数只能是 ``0``\ 、\ ``1`` 或 ``2``\ ，因为一个面只有三条边。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_face_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_meta>`

返回与给定面关联的元数据。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_face_normal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_normal>`

计算并返回给定面的面法线。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_vertex:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_vertex>`

返回给定面的指定顶点索引。

\ ``vertex`` 必须为 ``0``\ 、\ ``1`` 或 ``2``\ ，因为一个面包含三个顶点。


.. tabs::

 .. code-tab:: gdscript

    var index = mesh_data_tool.get_face_vertex(0, 1) # 获取第一个面的第二个顶点的索引。
    var position = mesh_data_tool.get_vertex(index)
    var normal = mesh_data_tool.get_vertex_normal(index)

 .. code-tab:: csharp

    int index = meshDataTool.GetFaceVertex(0, 1); // 获取第一个面的第二个顶点的索引。
    Vector3 position = meshDataTool.GetVertex(index);
    Vector3 normal = meshDataTool.GetVertexNormal(index);



.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_format**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_format>`

将 :ref:`Mesh<class_Mesh>` 的格式返回为 :ref:`ArrayFormat<enum_Mesh_ArrayFormat>` 标志的组合。例如，包含顶点和法线的网格将返回为 ``3`` 的格式，因为 :ref:`Mesh.ARRAY_FORMAT_VERTEX<class_Mesh_constant_ARRAY_FORMAT_VERTEX>` 是 ``1``\ ，而 :ref:`Mesh.ARRAY_FORMAT_NORMAL<class_Mesh_constant_ARRAY_FORMAT_NORMAL>` 是 ``2``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_material**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_material>`

返回分配给该 :ref:`Mesh<class_Mesh>` 的材质。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_vertex**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex>`

返回给定顶点的位置。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_bones:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_bones**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_bones>`

返回给定顶点的骨骼。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_vertex_color**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_color>`

返回给定顶点的颜色。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_vertex_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_count>`

返回 :ref:`Mesh<class_Mesh>` 中顶点的总数。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_edges:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_edges**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_edges>`

返回共享给定顶点的边的数组。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_faces:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_faces**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_faces>`

返回共享给定顶点的面数组。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_vertex_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_meta>`

返回与给定顶点关联的元数据。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_vertex_normal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_normal>`

返回给定顶点的法线。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_tangent:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_vertex_tangent**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_tangent>`

返回给定顶点的切线。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_uv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vertex_uv**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_uv>`

返回给定顶点的 UV。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_uv2:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vertex_uv2**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_uv2>`

返回给定顶点的 UV2。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_weights:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_vertex_weights**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_weights>`

返回给定顶点的骨骼权重。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_edge_meta:

.. rst-class:: classref-method

|void| **set_edge_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_edge_meta>`

设置给定边的元数据。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_face_meta:

.. rst-class:: classref-method

|void| **set_face_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_face_meta>`

设置给定面的元数据。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_material:

.. rst-class:: classref-method

|void| **set_material**\ (\ material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_MeshDataTool_method_set_material>`

设置新构建的 :ref:`Mesh<class_Mesh>` 使用的材质。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex:

.. rst-class:: classref-method

|void| **set_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex>`

设置给定顶点的位置。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_bones:

.. rst-class:: classref-method

|void| **set_vertex_bones**\ (\ idx\: :ref:`int<class_int>`, bones\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_bones>`

设置给定顶点的骨骼。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_color:

.. rst-class:: classref-method

|void| **set_vertex_color**\ (\ idx\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_color>`

设置给定顶点的颜色。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_meta:

.. rst-class:: classref-method

|void| **set_vertex_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_meta>`

设置与给定顶点关联的元数据。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_normal:

.. rst-class:: classref-method

|void| **set_vertex_normal**\ (\ idx\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_normal>`

设置给定顶点的法线。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_tangent:

.. rst-class:: classref-method

|void| **set_vertex_tangent**\ (\ idx\: :ref:`int<class_int>`, tangent\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_tangent>`

设置给定顶点的切线。

\ **注意：**\ 尽管 ``tangent`` 是一个 :ref:`Plane<class_Plane>`\ ，但它并不直接表示切平面。它的 :ref:`Plane.x<class_Plane_property_x>`\ 、\ :ref:`Plane.y<class_Plane_property_y>` 和 :ref:`Plane.z<class_Plane_property_z>` 表示切向量，而 :ref:`Plane.d<class_Plane_property_d>` 应该为 ``-1`` 或 ``1``\ 。另见 :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_uv:

.. rst-class:: classref-method

|void| **set_vertex_uv**\ (\ idx\: :ref:`int<class_int>`, uv\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_uv>`

设置给定顶点的 UV。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_uv2:

.. rst-class:: classref-method

|void| **set_vertex_uv2**\ (\ idx\: :ref:`int<class_int>`, uv2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_uv2>`

设置给定顶点的 UV2。

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_weights:

.. rst-class:: classref-method

|void| **set_vertex_weights**\ (\ idx\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_weights>`

设置给定顶点的骨骼权重。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
