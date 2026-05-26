:github_url: hide

.. _class_ArrayMesh:

ArrayMesh
=========

**Наследует:** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Тип :ref:`Mesh<class_Mesh>`, предоставляющий утилиту для построения поверхности из массивов.

.. rst-class:: classref-introduction-group

Описание
----------------

**ArrayMesh** используется для построения :ref:`Mesh<class_Mesh>` путем указания атрибутов как массивов.

Самый простой пример — создание одного треугольника:


.. tabs::

 .. code-tab:: gdscript

    var vertices = PackedVector3Array()
    vertices.push_back(Vector3(0, 1, 0))
    vertices.push_back(Vector3(1, 0, 0))
    vertices.push_back(Vector3(0, 0, 1))

    #Инициализируйте ArrayMesh.
    var arr_mesh = ArrayMesh.new()
    var arrays = []
    arrays.resize(Mesh.ARRAY_MAX)
    arrays[Mesh.ARRAY_VERTEX] = vertices

    # Создать сетку.
    arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
    var m = MeshInstance3D.new()
    m.mesh = arr_mesh

 .. code-tab:: csharp

    Vector3[] vertices =
    [
        new Vector3(0, 1, 0),
        new Vector3(1, 0, 0),
        new Vector3(0, 0, 1),
    ];

    // Инициализируйте ArrayMesh.
    var arrMesh = new ArrayMesh();
    Godot.Collections.Array arrays = [];
    arrays.Resize((int)Mesh.ArrayType.Max);
    arrays[(int)Mesh.ArrayType.Vertex] = vertices;

    // Создать сетку.
    arrMesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, arrays);
    var m = new MeshInstance3D();
    m.Mesh = arrMesh;



\ :ref:`MeshInstance3D<class_MeshInstance3D>` готов к добавлению в :ref:`SceneTree<class_SceneTree>` для отображения.

См. также :ref:`ImmediateMesh<class_ImmediateMesh>`, :ref:`MeshDataTool<class_MeshDataTool>` и :ref:`SurfaceTool<class_SurfaceTool>` для создания процедурной геометрии.

\ **Примечание:** Годо использует `порядок намотки <https://learnopengl.com/Advanced-OpenGL/Face-culling>`__ по часовой стрелке для передних граней примитивных режимов треугольника.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Процедурная геометрия с использованием ArrayMesh <../tutorials/3d/procedural_geometry/arraymesh>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+
   | :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` | :ref:`blend_shape_mode<class_ArrayMesh_property_blend_shape_mode>` | ``1``                      |
   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`                         | :ref:`custom_aabb<class_ArrayMesh_property_custom_aabb>`           | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`               | :ref:`shadow_mesh<class_ArrayMesh_property_shadow_mesh>`           |                            |
   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`add_blend_shape<class_ArrayMesh_method_add_blend_shape>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                                                                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`add_surface_from_arrays<class_ArrayMesh_method_add_surface_from_arrays>`\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, flags\: |bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] = 0\ ) |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`clear_blend_shapes<class_ArrayMesh_method_clear_blend_shapes>`\ (\ )                                                                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`clear_surfaces<class_ArrayMesh_method_clear_surfaces>`\ (\ )                                                                                                                                                                                                                                                                                                                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`get_blend_shape_count<class_ArrayMesh_method_get_blend_shape_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                     | :ref:`get_blend_shape_name<class_ArrayMesh_method_get_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                   | :ref:`lightmap_unwrap<class_ArrayMesh_method_lightmap_unwrap>`\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, texel_size\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                       |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`regen_normal_maps<class_ArrayMesh_method_regen_normal_maps>`\ (\ )                                                                                                                                                                                                                                                                                                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`set_blend_shape_name<class_ArrayMesh_method_set_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                             |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`surface_find_by_name<class_ArrayMesh_method_surface_find_by_name>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`surface_get_array_index_len<class_ArrayMesh_method_surface_get_array_index_len>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`surface_get_array_len<class_ArrayMesh_method_surface_get_array_len>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] | :ref:`surface_get_format<class_ArrayMesh_method_surface_get_format>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                             | :ref:`surface_get_name<class_ArrayMesh_method_surface_get_name>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`           | :ref:`surface_get_primitive_type<class_ArrayMesh_method_surface_get_primitive_type>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_remove<class_ArrayMesh_method_surface_remove>`\ (\ surf_idx\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_set_name<class_ArrayMesh_method_surface_set_name>`\ (\ surf_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_update_attribute_region<class_ArrayMesh_method_surface_update_attribute_region>`\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_update_skin_region<class_ArrayMesh_method_surface_update_skin_region>`\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_update_vertex_region<class_ArrayMesh_method_surface_update_vertex_region>`\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ArrayMesh_property_blend_shape_mode:

.. rst-class:: classref-property

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **blend_shape_mode** = ``1`` :ref:`🔗<class_ArrayMesh_property_blend_shape_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_shape_mode**\ (\ value\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ )
- :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **get_blend_shape_mode**\ (\ )

Режим смешивания форм.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_ArrayMesh_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

Переопределяет :ref:`AABB<class_AABB>` на определенный пользователем для использования с отсечением по усеченной пирамиде. Особенно полезно для избежания неожиданного отсечения при использовании шейдера для смещения вершин.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_property_shadow_mesh:

.. rst-class:: classref-property

:ref:`ArrayMesh<class_ArrayMesh>` **shadow_mesh** :ref:`🔗<class_ArrayMesh_property_shadow_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mesh**\ (\ value\: :ref:`ArrayMesh<class_ArrayMesh>`\ )
- :ref:`ArrayMesh<class_ArrayMesh>` **get_shadow_mesh**\ (\ )

Необязательная сетка, которая может использоваться для рендеринга теней и предварительного прохода глубины. Может использоваться для повышения производительности путем предоставления сетки с объединенными вершинами и только данными о положении вершин (без нормалей, UV, цветов и т. д.).

\ **Примечание:** Эта сетка должна иметь точно такие же положения вершин, как и исходная сетка (включая LOD исходной сетки, если они есть). Если положения вершин отличаются, то сетка не будет отрисовываться правильно.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ArrayMesh_method_add_blend_shape:

.. rst-class:: classref-method

|void| **add_blend_shape**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ArrayMesh_method_add_blend_shape>`

Добавляет имя для формы смешивания, которая будет добавлена с помощью :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`. Необходимо вызвать перед добавлением поверхности.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_add_surface_from_arrays:

.. rst-class:: classref-method

|void| **add_surface_from_arrays**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, flags\: |bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] = 0\ ) :ref:`🔗<class_ArrayMesh_method_add_surface_from_arrays>`

Создает новую поверхность. :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>` станет ``surf_idx`` для этой новой поверхности.

Поверхности создаются для визуализации с использованием ``primitive``, который может быть любым из значений, определенных в :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`.

Аргумент ``arrays`` — это массив массивов. Каждый из элементов :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>` содержит массив с некоторыми данными сетки для этой поверхности, как описано соответствующим членом :ref:`ArrayType<enum_Mesh_ArrayType>` или ``null``, если он не используется поверхностью. Например, ``arrays[0]`` — это массив вершин. Этот первый подмассив вершин всегда обязателен; остальные необязательны. Добавление индексного массива переводит эту поверхность в «индексный режим», где вершины и другие массивы становятся источниками данных, а индексный массив определяет порядок вершин. Все подмассивы должны иметь ту же длину, что и массив вершин (или быть кратными длине массива вершин, когда несколько элементов подмассива соответствуют одной вершине) или быть пустыми, за исключением :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>`, если он используется.

Аргумент ``blend_shapes`` — это массив данных вершин для каждой формы смешивания. Каждый элемент — это массив той же структуры, что и ``arrays``, но :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`, :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` и :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>` устанавливаются тогда и только тогда, когда они установлены в ``arrays``, а все остальные записи — ``null``.

Аргумент ``lods`` — это словарь с ключами :ref:`float<class_float>` и значениями :ref:`PackedInt32Array<class_PackedInt32Array>`. Каждая запись в словаре представляет уровень детализации поверхности, где значение — это массив :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>`, используемый для уровня детализации, а ключ примерно пропорционален расстоянию, на котором используются характеристики детализации. То есть, увеличение ключа детализации также увеличивает расстояние, на котором объекты должны находиться от камеры, прежде чем будет использован детализация.

Аргумент ``flags`` представляет собой побитовое ИЛИ, при необходимости: одного значения :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`, сдвинутого влево на ``ARRAY_FORMAT_CUSTOMn_SHIFT`` для каждого используемого пользовательского канала, :ref:`Mesh.ARRAY_FLAG_USE_DYNAMIC_UPDATE<class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE>`, :ref:`Mesh.ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` или :ref:`Mesh.ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY<class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY>`.

\ **Примечание:** При использовании индексов рекомендуется использовать только точки, линии или треугольники.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_clear_blend_shapes:

.. rst-class:: classref-method

|void| **clear_blend_shapes**\ (\ ) :ref:`🔗<class_ArrayMesh_method_clear_blend_shapes>`

Удаляет все смешанные фигуры из этого **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_clear_surfaces:

.. rst-class:: classref-method

|void| **clear_surfaces**\ (\ ) :ref:`🔗<class_ArrayMesh_method_clear_surfaces>`

Удаляет все поверхности из этого **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_ArrayMesh_method_get_blend_shape_count>`

Возвращает количество смешанных фигур, хранящихся в **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_get_blend_shape_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_blend_shape_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_get_blend_shape_name>`

Возвращает имя формы смешивания по данному индексу.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_lightmap_unwrap:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **lightmap_unwrap**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, texel_size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ArrayMesh_method_lightmap_unwrap>`

Выполняет UV-развертку на **ArrayMesh**, чтобы подготовить сетку для светового отображения.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_regen_normal_maps:

.. rst-class:: classref-method

|void| **regen_normal_maps**\ (\ ) :ref:`🔗<class_ArrayMesh_method_regen_normal_maps>`

Регенерирует касательные для каждой из поверхностей **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_set_blend_shape_name:

.. rst-class:: classref-method

|void| **set_blend_shape_name**\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ArrayMesh_method_set_blend_shape_name>`

Задает имя формы смешивания по данному индексу.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_find_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_find_by_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_find_by_name>`

Возвращает индекс первой поверхности с этим именем, хранящейся в этом **ArrayMesh**. Если ничего не найдено, возвращается -1.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_array_index_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_get_array_index_len**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_array_index_len>`

Возвращает длину в индексах массива индексов в запрошенной поверхности (см. :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_array_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_get_array_len**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_array_len>`

Возвращает длину в вершинах массива вершин в запрошенной поверхности (см. :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_format:

.. rst-class:: classref-method

|bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] **surface_get_format**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_format>`

Возвращает маску формата запрошенной поверхности (см. :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **surface_get_name**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_name>`

Получает имя, назначенное этой поверхности.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_primitive_type:

.. rst-class:: classref-method

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **surface_get_primitive_type**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_primitive_type>`

Возвращает примитивный тип запрошенной поверхности (см. :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_remove:

.. rst-class:: classref-method

|void| **surface_remove**\ (\ surf_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_remove>`

Удаляет поверхность с указанным индексом из сетки, сдвигая поверхности с более высоким индексом на одну единицу вниз.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_set_name:

.. rst-class:: classref-method

|void| **surface_set_name**\ (\ surf_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_set_name>`

Задает имя для данной поверхности.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_update_attribute_region:

.. rst-class:: classref-method

|void| **surface_update_attribute_region**\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_update_attribute_region>`

Updates the attribute buffer of this mesh's surface with the given ``data``. The expected data per attribute is 12 or 8 bytes (4 bytes per float, 2 floats per :ref:`Vector2<class_Vector2>`, and 3 floats per :ref:`Vector3<class_Vector3>`) depending on if the mesh is using :ref:`Vector3<class_Vector3>` or :ref:`Vector2<class_Vector2>` vertices. This value can be determined with :ref:`RenderingServer.mesh_surface_get_format_attribute_stride()<class_RenderingServer_method_mesh_surface_get_format_attribute_stride>`.

The starting point of the updates can be changed with ``offset``. The value of ``offset`` should be a multiple of 12 bytes in most cases to align to each attribute.

A :ref:`PackedVector3Array<class_PackedVector3Array>` of attribute locations can be converted into a :ref:`PackedByteArray<class_PackedByteArray>` using :ref:`PackedVector3Array.to_byte_array()<class_PackedVector3Array_method_to_byte_array>` for use in ``data``.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_update_skin_region:

.. rst-class:: classref-method

|void| **surface_update_skin_region**\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_update_skin_region>`

Updates the skin buffer of this mesh's surface with the given ``data``. The expected data per skin is 12 or 8 bytes (4 bytes per float, 2 floats per :ref:`Vector2<class_Vector2>`, and 3 floats per :ref:`Vector3<class_Vector3>`) depending on if the mesh is using :ref:`Vector3<class_Vector3>` or :ref:`Vector2<class_Vector2>` vertices. This value can be determined with :ref:`RenderingServer.mesh_surface_get_format_skin_stride()<class_RenderingServer_method_mesh_surface_get_format_skin_stride>`.

The starting point of the updates can be changed with ``offset``. The value of ``offset`` should be a multiple of 12 bytes in most cases to align to each skin.

A :ref:`PackedVector3Array<class_PackedVector3Array>` of skin locations can be converted into a :ref:`PackedByteArray<class_PackedByteArray>` using :ref:`PackedVector3Array.to_byte_array()<class_PackedVector3Array_method_to_byte_array>` for use in ``data``.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_update_vertex_region:

.. rst-class:: classref-method

|void| **surface_update_vertex_region**\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_update_vertex_region>`

Updates the vertex buffer of this mesh's surface with the given ``data``. The expected data per vertex is 12 or 8 bytes (4 bytes per float, 2 floats per :ref:`Vector2<class_Vector2>`, and 3 floats per :ref:`Vector3<class_Vector3>`) depending on if the mesh is using :ref:`Vector3<class_Vector3>` or :ref:`Vector2<class_Vector2>` vertices. This value can be determined with :ref:`RenderingServer.mesh_surface_get_format_vertex_stride()<class_RenderingServer_method_mesh_surface_get_format_vertex_stride>`.

The starting point of the updates can be changed with ``offset``. The value of ``offset`` should be a multiple of 12 bytes in most cases to align to each vertex.

A :ref:`PackedVector3Array<class_PackedVector3Array>` of vertex locations can be converted into a :ref:`PackedByteArray<class_PackedByteArray>` using :ref:`PackedVector3Array.to_byte_array()<class_PackedVector3Array_method_to_byte_array>` for use in ``data``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
