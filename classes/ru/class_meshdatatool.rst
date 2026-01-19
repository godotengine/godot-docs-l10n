:github_url: hide

.. _class_MeshDataTool:

MeshDataTool
============

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вспомогательный инструмент для доступа и редактирования данных :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-introduction-group

Описание
----------------

MeshDataTool предоставляет доступ к отдельным вершинам в :ref:`Mesh<class_Mesh>`. Он позволяет пользователям читать и редактировать данные вершин сеток. Он также создает массив граней и ребер.

Чтобы использовать MeshDataTool, загрузите сетку с помощью :ref:`create_from_surface()<class_MeshDataTool_method_create_from_surface>`. Когда вы закончите редактирование данных, зафиксируйте данные в сетке с помощью :ref:`commit_to_surface()<class_MeshDataTool_method_commit_to_surface>`.

Ниже приведен пример того, как можно использовать MeshDataTool.


.. tabs::

 .. code-tab:: gdscript

    var mesh = ArrayMesh.new()
    mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, BoxMesh.new().get_mesh_arrays())
    var mdt = MeshDataTool.new()
    mdt.create_from_surface(mesh, 0)
    for i in range(mdt.get_vertex_count()):
        var vertex = mdt.get_vertex(i)
        # В этом примере мы расширяем сетку на одну единицу, что приводит к разделению граней, поскольку она имеет плоское затенение.
        vertex += mdt.get_vertex_normal(i)
        # Сохраните изменения.
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
        // В этом примере мы расширяем сетку на одну единицу, что приводит к разделению граней, поскольку она имеет плоское затенение.
        vertex += mdt.GetVertexNormal(i);
        // Сохраните изменения.
        mdt.SetVertex(i, vertex);
    }
    mesh.ClearSurfaces();
    mdt.CommitToSurface(mesh);
    var mi = new MeshInstance();
    mi.Mesh = mesh;
    AddChild(mi);



См. также :ref:`ArrayMesh<class_ArrayMesh>`, :ref:`ImmediateMesh<class_ImmediateMesh>` и :ref:`SurfaceTool<class_SurfaceTool>` для создания процедурной геометрии.

\ **Примечание:** Godot использует по часовой стрелке `порядок намотки <https://learnopengl.com/Advanced-OpenGL/Face-culling>`__ для передних граней примитивных режимов треугольников.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование MeshDataTool <../tutorials/3d/procedural_geometry/meshdatatool>`

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_MeshDataTool_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_MeshDataTool_method_clear>`

Очищает все текущие данные в MeshDataTool.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_commit_to_surface:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **commit_to_surface**\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, compression_flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_MeshDataTool_method_commit_to_surface>`

Добавляет новую поверхность к указанному :ref:`Mesh<class_Mesh>` с отредактированными данными.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_create_from_surface:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_surface**\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, surface\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshDataTool_method_create_from_surface>`

Использует указанную поверхность заданной :ref:`Mesh<class_Mesh>` для заполнения данных для MeshDataTool.

Требуется :ref:`Mesh<class_Mesh>` с примитивным типом :ref:`Mesh.PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_edge_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_count>`

Возвращает количество ребер в этом :ref:`Mesh<class_Mesh>`-е.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_faces:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_edge_faces**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_faces>`

Возвращает массив граней (Faces), касающихся заданного ребра.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_edge_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_meta>`

Возвращает мета-информацию, назначенную данному ребру.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_vertex:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_edge_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_vertex>`

Возвращает индекс указанной вершины ``vertex``, соединённой с ребром с индексом ``idx``.

\ ``vertex`` может быть только ``0`` или ``1``, поскольку ребра состоят из двух вершин.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_count>`

Возвращает количество граней в этом :ref:`Mesh<class_Mesh>`-е.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_edge:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_edge**\ (\ idx\: :ref:`int<class_int>`, edge\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_edge>`

Возвращает ребро, связанное с гранью с индексом ``idx``.

Аргумент ``edge`` должен иметь значение ``0``, ``1`` или ``2``, поскольку грань имеет только три ребра.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_face_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_meta>`

Возвращает метаданные, связанные с указанным лицом (Face).

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_face_normal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_normal>`

Вычисляет и возвращает нормаль заданной грани (Face).

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_vertex:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_vertex>`

Возвращает указанный индекс вершины заданной грани.

\ ``vertex`` должен быть либо ``0``, ``1``, либо ``2``, поскольку грани содержат три вершины.


.. tabs::

 .. code-tab:: gdscript

    var index = mesh_data_tool.get_face_vertex(0, 1) # Получает индекс второй вершины первой грани.
    var position = mesh_data_tool.get_vertex(index)
    var normal = mesh_data_tool.get_vertex_normal(index)

 .. code-tab:: csharp

    int index = meshDataTool.GetFaceVertex(0, 1); // Получает индекс второй вершины первой грани.
    Vector3 position = meshDataTool.GetVertex(index);
    Vector3 normal = meshDataTool.GetVertexNormal(index);



.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_format**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_format>`

Возвращает формат :ref:`Mesh<class_Mesh>` как комбинацию флагов :ref:`ArrayFormat<enum_Mesh_ArrayFormat>`. Например, сетка, содержащая как вершины, так и нормали, вернет формат ``3``, поскольку :ref:`Mesh.ARRAY_FORMAT_VERTEX<class_Mesh_constant_ARRAY_FORMAT_VERTEX>` — это ``1``, а :ref:`Mesh.ARRAY_FORMAT_NORMAL<class_Mesh_constant_ARRAY_FORMAT_NORMAL>` — это ``2``.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_material**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_material>`

Возвращает материал, назначенный :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_vertex**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex>`

Возвращает положение заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_bones:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_bones**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_bones>`

Возвращает кости указанной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_vertex_color**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_color>`

Возвращает цвет заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_vertex_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_count>`

Возвращает общее количество вершин в :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_edges:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_edges**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_edges>`

Возвращает массив ребер, имеющих общую вершину.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_faces:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_faces**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_faces>`

Возвращает массив граней (Faces), имеющих общую вершину.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_vertex_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_meta>`

Возвращает метаданные, связанные с заданной вершиной.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_vertex_normal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_normal>`

Возвращает нормаль заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_tangent:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_vertex_tangent**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_tangent>`

Возвращает тангенс заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_uv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vertex_uv**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_uv>`

Возвращает UV заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_uv2:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vertex_uv2**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_uv2>`

Возвращает UV2 заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_weights:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_vertex_weights**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_weights>`

Возвращает вес костей заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_edge_meta:

.. rst-class:: classref-method

|void| **set_edge_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_edge_meta>`

Устанавливает метаданные указанного ребра.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_face_meta:

.. rst-class:: classref-method

|void| **set_face_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_face_meta>`

Устанавливает метаданные указанной грани (Faces).

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_material:

.. rst-class:: classref-method

|void| **set_material**\ (\ material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_MeshDataTool_method_set_material>`

Устанавливает материал, который будет использоваться для вновь созданной :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex:

.. rst-class:: classref-method

|void| **set_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex>`

Устанавливает положение заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_bones:

.. rst-class:: classref-method

|void| **set_vertex_bones**\ (\ idx\: :ref:`int<class_int>`, bones\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_bones>`

Устанавливает кости заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_color:

.. rst-class:: classref-method

|void| **set_vertex_color**\ (\ idx\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_color>`

Устанавливает цвет заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_meta:

.. rst-class:: classref-method

|void| **set_vertex_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_meta>`

Устанавливает метаданные, связанные с заданной вершиной.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_normal:

.. rst-class:: classref-method

|void| **set_vertex_normal**\ (\ idx\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_normal>`

Устанавливает нормаль заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_tangent:

.. rst-class:: classref-method

|void| **set_vertex_tangent**\ (\ idx\: :ref:`int<class_int>`, tangent\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_tangent>`

Задает касательную к заданной вершине.

\ **Примечание:** Хотя ``tangent`` является :ref:`Plane<class_Plane>`, он не представляет собой непосредственно касательную плоскость. Его :ref:`Plane.x<class_Plane_property_x>`, :ref:`Plane.y<class_Plane_property_y>` и :ref:`Plane.z<class_Plane_property_z>` представляют собой касательный вектор, а :ref:`Plane.d<class_Plane_property_d>` должен быть либо ``-1``, либо ``1``. См. также :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_uv:

.. rst-class:: classref-method

|void| **set_vertex_uv**\ (\ idx\: :ref:`int<class_int>`, uv\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_uv>`

Устанавливает UV заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_uv2:

.. rst-class:: classref-method

|void| **set_vertex_uv2**\ (\ idx\: :ref:`int<class_int>`, uv2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_uv2>`

Устанавливает UV2 заданной вершины.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_weights:

.. rst-class:: classref-method

|void| **set_vertex_weights**\ (\ idx\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_weights>`

Устанавливает вес костей заданной вершины.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
