:github_url: hide

.. _class_Mesh:

Mesh
====

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`ArrayMesh<class_ArrayMesh>`, :ref:`ImmediateMesh<class_ImmediateMesh>`, :ref:`PlaceholderMesh<class_PlaceholderMesh>`, :ref:`PrimitiveMesh<class_PrimitiveMesh>`

:ref:`Resource<class_Resource>` содержащий геометрию на основе массива вершин.

.. rst-class:: classref-introduction-group

Описание
----------------

Mesh — это тип :ref:`Resource<class_Resource>`, который содержит геометрию на основе массива вершин, разделенную на *поверхности*. Каждая поверхность содержит полностью отдельный массив и материал, используемый для ее рисования. С точки зрения дизайна, сетка с несколькими поверхностями предпочтительнее одной поверхности, поскольку объекты, созданные в программном обеспечении для редактирования 3D, обычно содержат несколько материалов. Максимальное количество поверхностей на сетку — :ref:`RenderingServer.MAX_MESH_SURFACES<class_RenderingServer_constant_MAX_MESH_SURFACES>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация 3D-испытателей материалов <https://godotengine.org/asset-library/asset/2742>`__

- `Демонстрация 3D-кинематического персонажа <https://godotengine.org/asset-library/asset/2739>`__

- `Демо-версия 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`lightmap_size_hint<class_Mesh_property_lightmap_size_hint>` | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                                   | :ref:`_get_aabb<class_Mesh_private_method__get_aabb>`\ (\ ) |virtual| |required| |const|                                                                                            |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_get_blend_shape_count<class_Mesh_private_method__get_blend_shape_count>`\ (\ ) |virtual| |required| |const|                                                                  |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                       | :ref:`_get_blend_shape_name<class_Mesh_private_method__get_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_get_surface_count<class_Mesh_private_method__get_surface_count>`\ (\ ) |virtual| |required| |const|                                                                          |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_set_blend_shape_name<class_Mesh_private_method__set_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_array_index_len<class_Mesh_private_method__surface_get_array_index_len>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_array_len<class_Mesh_private_method__surface_get_array_len>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`_surface_get_arrays<class_Mesh_private_method__surface_get_arrays>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\]    | :ref:`_surface_get_blend_shape_arrays<class_Mesh_private_method__surface_get_blend_shape_arrays>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                 |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_format<class_Mesh_private_method__surface_get_format>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                       | :ref:`_surface_get_lods<class_Mesh_private_method__surface_get_lods>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                             |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                           | :ref:`_surface_get_material<class_Mesh_private_method__surface_get_material>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_primitive_type<class_Mesh_private_method__surface_get_primitive_type>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_surface_set_material<class_Mesh_private_method__surface_set_material>`\ (\ index\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) |virtual| |required| |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`   | :ref:`create_convex_shape<class_Mesh_method_create_convex_shape>`\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) |const|                 |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`                                   | :ref:`create_outline<class_Mesh_method_create_outline>`\ (\ margin\: :ref:`float<class_float>`\ ) |const|                                                                           |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                           | :ref:`create_placeholder<class_Mesh_method_create_placeholder>`\ (\ ) |const|                                                                                                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` | :ref:`create_trimesh_shape<class_Mesh_method_create_trimesh_shape>`\ (\ ) |const|                                                                                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TriangleMesh<class_TriangleMesh>`                   | :ref:`generate_triangle_mesh<class_Mesh_method_generate_triangle_mesh>`\ (\ ) |const|                                                                                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                                   | :ref:`get_aabb<class_Mesh_method_get_aabb>`\ (\ ) |const|                                                                                                                           |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`       | :ref:`get_faces<class_Mesh_method_get_faces>`\ (\ ) |const|                                                                                                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_surface_count<class_Mesh_method_get_surface_count>`\ (\ ) |const|                                                                                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`surface_get_arrays<class_Mesh_method_surface_get_arrays>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\]    | :ref:`surface_get_blend_shape_arrays<class_Mesh_method_surface_get_blend_shape_arrays>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                             |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                           | :ref:`surface_get_material<class_Mesh_method_surface_get_material>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`surface_set_material<class_Mesh_method_surface_set_material>`\ (\ surf_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ )                             |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Mesh_PrimitiveType:

.. rst-class:: classref-enumeration

enum **PrimitiveType**: :ref:`🔗<enum_Mesh_PrimitiveType>`

.. _class_Mesh_constant_PRIMITIVE_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_POINTS** = ``0``

Отобразить массив в виде точек (одна вершина равна одной точке).

.. _class_Mesh_constant_PRIMITIVE_LINES:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_LINES** = ``1``

Визуализирует массив в виде линий (через каждые две вершины создается линия).

.. _class_Mesh_constant_PRIMITIVE_LINE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_LINE_STRIP** = ``2``

Визуализируйте массив как линейную полосу (Line Strip).

.. _class_Mesh_constant_PRIMITIVE_TRIANGLES:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_TRIANGLES** = ``3``

Визуализируем массив в виде треугольников (через каждые три вершины создается треугольник).

.. _class_Mesh_constant_PRIMITIVE_TRIANGLE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_TRIANGLE_STRIP** = ``4``

Визуализируйте массив в виде полосок треугольников (Triangle Strips).

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayType:

.. rst-class:: classref-enumeration

enum **ArrayType**: :ref:`🔗<enum_Mesh_ArrayType>`

.. _class_Mesh_constant_ARRAY_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_VERTEX** = ``0``

:ref:`PackedVector3Array<class_PackedVector3Array>`, :ref:`PackedVector2Array<class_PackedVector2Array>` или :ref:`Array<class_Array>` позиций вершин.

.. _class_Mesh_constant_ARRAY_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_NORMAL** = ``1``

:ref:`PackedVector3Array<class_PackedVector3Array>` нормалей вершин.

\ **Примечание:** Массив должен состоять из векторов нормалей, в противном случае они будут нормализованы движком, что может привести к визуальным расхождениям.

.. _class_Mesh_constant_ARRAY_TANGENT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TANGENT** = ``2``

:ref:`PackedFloat32Array<class_PackedFloat32Array>` касательных вершин. Каждый элемент в группах по 4 плавающих элемента, первые 3 плавающих элемента определяют касательную, а последний — направление бинормали как -1 или 1.

.. _class_Mesh_constant_ARRAY_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_COLOR** = ``3``

:ref:`PackedColorArray<class_PackedColorArray>` цветов вершин.

.. _class_Mesh_constant_ARRAY_TEX_UV:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TEX_UV** = ``4``

:ref:`PackedVector2Array<class_PackedVector2Array>` для UV-координат.

.. _class_Mesh_constant_ARRAY_TEX_UV2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TEX_UV2** = ``5``

:ref:`PackedVector2Array<class_PackedVector2Array>` для вторых UV-координат.

.. _class_Mesh_constant_ARRAY_CUSTOM0:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM0** = ``6``

Содержит пользовательский цветовой канал 0. :ref:`PackedByteArray<class_PackedByteArray>`, если ``(format >> Mesh.ARRAY_FORMAT_CUSTOM0_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` равен :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>` или :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>` в противном случае.

.. _class_Mesh_constant_ARRAY_CUSTOM1:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM1** = ``7``

Содержит пользовательский цветовой канал 1. :ref:`PackedByteArray<class_PackedByteArray>`, если ``(format >> Mesh.ARRAY_FORMAT_CUSTOM1_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` равен :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>` или :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>` в противном случае.

.. _class_Mesh_constant_ARRAY_CUSTOM2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM2** = ``8``

Содержит пользовательский цветовой канал 2. :ref:`PackedByteArray<class_PackedByteArray>`, если ``(format >> Mesh.ARRAY_FORMAT_CUSTOM2_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` равен :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>` или :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>` в противном случае.

.. _class_Mesh_constant_ARRAY_CUSTOM3:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM3** = ``9``

Содержит пользовательский цветовой канал 3. :ref:`PackedByteArray<class_PackedByteArray>`, если ``(format >> Mesh.ARRAY_FORMAT_CUSTOM3_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` равен :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>` или :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>` в противном случае.

.. _class_Mesh_constant_ARRAY_BONES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_BONES** = ``10``

:ref:`PackedFloat32Array<class_PackedFloat32Array>` или :ref:`PackedInt32Array<class_PackedInt32Array>` индексов костей. Содержит 4 или 8 чисел на вершину в зависимости от наличия флага :ref:`ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>`.

.. _class_Mesh_constant_ARRAY_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_WEIGHTS** = ``11``

:ref:`PackedFloat32Array<class_PackedFloat32Array>` или :ref:`PackedFloat64Array<class_PackedFloat64Array>` весов костей в диапазоне от ``0.0`` до ``1.0`` (включительно). Содержит 4 или 8 чисел на вершину в зависимости от наличия флага :ref:`ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>`.

.. _class_Mesh_constant_ARRAY_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_INDEX** = ``12``

:ref:`PackedInt32Array<class_PackedInt32Array>` целых чисел, используемых в качестве индексов, ссылающихся на вершины, цвета, нормали, касательные и текстуры. Все эти массивы должны иметь то же количество элементов, что и массив вершин. Ни один индекс не может выходить за пределы размера массива вершин. Когда присутствует этот массив индексов, он переводит функцию в «индексный режим», где индекс выбирает *i*-ю вершину, нормаль, касательную, цвет, UV и т. д. Это означает, что если вы хотите иметь разные нормали или цвета вдоль ребра, вам нужно дублировать вершины.

Для треугольников массив индексов интерпретируется как тройки, ссылающиеся на вершины каждого треугольника. Для линий массив индексов состоит из пар, указывающих начало и конец каждой линии.

.. _class_Mesh_constant_ARRAY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_MAX** = ``13``

Представляет размер перечисления :ref:`ArrayType<enum_Mesh_ArrayType>`.

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayCustomFormat:

.. rst-class:: classref-enumeration

enum **ArrayCustomFormat**: :ref:`🔗<enum_Mesh_ArrayCustomFormat>`

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA8_UNORM** = ``0``

Указывает, что этот пользовательский канал содержит беззнаковые нормализованные байтовые цвета от 0 до 1, закодированные как :ref:`PackedByteArray<class_PackedByteArray>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA8_SNORM** = ``1``

Указывает, что этот пользовательский канал содержит знаковые нормализованные байтовые цвета от -1 до 1, закодированные как :ref:`PackedByteArray<class_PackedByteArray>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_RG_HALF:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RG_HALF** = ``2``

Указывает, что этот пользовательский канал содержит цвета с плавающей точкой половинной (precision) точности, закодированные как :ref:`PackedByteArray<class_PackedByteArray>`. Используются только красный и зеленый каналы.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA_HALF** = ``3``

Указывает, что этот пользовательский канал содержит цвета с плавающей точкой половинной (precision) точности, закодированные как :ref:`PackedByteArray<class_PackedByteArray>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_R_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_R_FLOAT** = ``4``

Указывает, что этот пользовательский канал содержит полные плавающие цвета в :ref:`PackedFloat32Array<class_PackedFloat32Array>`. Используется только красный канал.

.. _class_Mesh_constant_ARRAY_CUSTOM_RG_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RG_FLOAT** = ``5``

Указывает, что этот пользовательский канал содержит полные плавающие цвета в :ref:`PackedFloat32Array<class_PackedFloat32Array>`. Используются только красные и зеленые каналы.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGB_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGB_FLOAT** = ``6``

Указывает, что этот пользовательский канал содержит полные плавающие цвета в :ref:`PackedFloat32Array<class_PackedFloat32Array>`. Используются только красный, зеленый и синий каналы.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA_FLOAT** = ``7``

Указывает, что этот пользовательский канал содержит полные плавающие цвета в :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_MAX** = ``8``

Представляет размер перечисления :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`.

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayFormat:

.. rst-class:: classref-enumeration

flags **ArrayFormat**: :ref:`🔗<enum_Mesh_ArrayFormat>`

.. _class_Mesh_constant_ARRAY_FORMAT_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_VERTEX** = ``1``

Массив сетки содержит вершины. Все сетки требуют массив вершин, поэтому он всегда должен присутствовать.

.. _class_Mesh_constant_ARRAY_FORMAT_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_NORMAL** = ``2``

Массив сетки содержит нормали.

.. _class_Mesh_constant_ARRAY_FORMAT_TANGENT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TANGENT** = ``4``

Массив сетки содержит касательные.

.. _class_Mesh_constant_ARRAY_FORMAT_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_COLOR** = ``8``

Массив сетки содержит цвета.

.. _class_Mesh_constant_ARRAY_FORMAT_TEX_UV:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TEX_UV** = ``16``

Массив сетки содержит UV.

.. _class_Mesh_constant_ARRAY_FORMAT_TEX_UV2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TEX_UV2** = ``32``

Массив сетки содержит второй UV.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM0:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM0** = ``64``

Массив сетки содержит пользовательский индекс канала 0.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM1:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM1** = ``128``

Массив ячеек содержит пользовательский индекс канала 1.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM2** = ``256``

Массив ячеек содержит пользовательский индекс канала 2.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM3:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM3** = ``512``

Массив ячеек содержит пользовательский индекс канала 3.

.. _class_Mesh_constant_ARRAY_FORMAT_BONES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_BONES** = ``1024``

Массив сетки содержит кости.

.. _class_Mesh_constant_ARRAY_FORMAT_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_WEIGHTS** = ``2048``

Массив сетки содержит веса костей.

.. _class_Mesh_constant_ARRAY_FORMAT_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_INDEX** = ``4096``

Массив сетки использует индексы.

.. _class_Mesh_constant_ARRAY_FORMAT_BLEND_SHAPE_MASK:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_BLEND_SHAPE_MASK** = ``7``

Маска каналов сетки разрешена в смешанных формах.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_BASE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_BASE** = ``13``

Сдвиг первого пользовательского канала.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_BITS** = ``3``

Количество бит формата на пользовательский канал. См. :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM0_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM0_SHIFT** = ``13``

Величина сдвига :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` для индекса пользовательского канала 0.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM1_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM1_SHIFT** = ``16``

Величина сдвига :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` для индекса пользовательского канала 1.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM2_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM2_SHIFT** = ``19``

Величина сдвига :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` для индекса пользовательского канала 2.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM3_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM3_SHIFT** = ``22``

Величина сдвига :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` для индекса пользовательского канала 3.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_MASK:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_MASK** = ``7``

Маска битов пользовательского формата для каждого пользовательского канала. Должна быть сдвинута на одну из констант SHIFT. См. :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`.

.. _class_Mesh_constant_ARRAY_COMPRESS_FLAGS_BASE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_COMPRESS_FLAGS_BASE** = ``25``

Сдвиг первого флага сжатия. Флаги сжатия должны быть переданы в :ref:`ArrayMesh.add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>` и :ref:`SurfaceTool.commit()<class_SurfaceTool_method_commit>`.

.. _class_Mesh_constant_ARRAY_FLAG_USE_2D_VERTICES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_2D_VERTICES** = ``33554432``

Флаг, используемый для обозначения того, что массив содержит 2D вершины.

.. _class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_DYNAMIC_UPDATE** = ``67108864``

Флаг, используемый для обозначения того, что данные сетки будут использовать ``GL_DYNAMIC_DRAW`` на GLES. Не используется на Vulkan.

.. _class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_8_BONE_WEIGHTS** = ``134217728``

Флаг, используемый для обозначения того, что сетка содержит до 8 влияний костей на вершину. Этот флаг указывает, что элементы :ref:`ARRAY_BONES<class_Mesh_constant_ARRAY_BONES>` и :ref:`ARRAY_WEIGHTS<class_Mesh_constant_ARRAY_WEIGHTS>` будут иметь двойную длину.

.. _class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY** = ``268435456``

Флаг, используемый для обозначения того, что сетка намеренно не содержит массива вершин.

.. _class_Mesh_constant_ARRAY_FLAG_COMPRESS_ATTRIBUTES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_COMPRESS_ATTRIBUTES** = ``536870912``

Флаг, используемый для обозначения того, что сетка использует сжатые атрибуты (вершины, нормали, касательные, UV). Когда включена эта форма сжатия, позиции вершин будут упакованы в атрибут RGBA16UNORM и масштабированы в вершинном шейдере. Нормаль и касательная будут упакованы в RG16UNORM, представляющий ось, и 16-битное число с плавающей точкой, сохраненное в A-канале вершины. UV будут использовать 16-битные нормализованные числа с плавающей точкой вместо полных 32-битных знаковых чисел с плавающей точкой. При использовании этого режима сжатия необходимо использовать либо для вершины, нормали и касательные, либо только вершины. Вы не можете использовать нормали без касательных. Импортеры автоматически включат это сжатие, если смогут.

.. _class_Mesh_constant_ARRAY_FLAG_USE_STORAGE_BUFFER:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_STORAGE_BUFFER** = ``1073741824``

Flag used to mark that the surface's vertex, attribute, skin, and index buffers must be created with the storage-buffer usage bit so they can be bound as storage buffers in compute shaders. This is required to write into them from a compute pipeline through the :ref:`RID<class_RID>`\ s returned by :ref:`RenderingServer.mesh_surface_get_vertex_buffer_rd_rid()<class_RenderingServer_method_mesh_surface_get_vertex_buffer_rd_rid>` and the matching methods for the attribute, skin, and index buffers. Has no effect on the OpenGL backend, which does not expose :ref:`RenderingDevice<class_RenderingDevice>` :ref:`RID<class_RID>`\ s.

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_BlendShapeMode:

.. rst-class:: classref-enumeration

enum **BlendShapeMode**: :ref:`🔗<enum_Mesh_BlendShapeMode>`

.. _class_Mesh_constant_BLEND_SHAPE_MODE_NORMALIZED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **BLEND_SHAPE_MODE_NORMALIZED** = ``0``

Формы смешивания нормализованы.

.. _class_Mesh_constant_BLEND_SHAPE_MODE_RELATIVE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **BLEND_SHAPE_MODE_RELATIVE** = ``1``

Формы смешивания определяются относительно базового веса.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Mesh_property_lightmap_size_hint:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **lightmap_size_hint** = ``Vector2i(0, 0)`` :ref:`🔗<class_Mesh_property_lightmap_size_hint>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_size_hint**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_lightmap_size_hint**\ (\ )

Устанавливает подсказку, которая будет использоваться для разрешения карты освещения (lightmap).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Mesh_private_method__get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **_get_aabb**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_aabb>`

Виртуальный метод для переопределения :ref:`AABB<class_AABB>` для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_blend_shape_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_blend_shape_count>`

Виртуальный метод для переопределения количества форм смешивания для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_blend_shape_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_blend_shape_name**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_blend_shape_name>`

Виртуальный метод для переопределения извлечения имен форм смешивания для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_surface_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_surface_count>`

Виртуальный метод для переопределения количества поверхностей для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__set_blend_shape_name:

.. rst-class:: classref-method

|void| **_set_blend_shape_name**\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| :ref:`🔗<class_Mesh_private_method__set_blend_shape_name>`

Виртуальный метод для переопределения имен форм смешивания для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_array_index_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_array_index_len**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_array_index_len>`

Виртуальный метод для переопределения длины индекса массива поверхности для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_array_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_array_len**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_array_len>`

Виртуальный метод для переопределения длины массива поверхности для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_surface_get_arrays**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_arrays>`

Виртуальный метод для переопределения массивов поверхности для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **_surface_get_blend_shape_arrays**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_blend_shape_arrays>`

Виртуальный метод для переопределения массивов формы смешивания для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_format**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_format>`

Виртуальный метод для переопределения формата поверхности для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_lods:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_surface_get_lods**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_lods>`

Виртуальный метод для переопределения уровней детализации (LOD) поверхности для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **_surface_get_material**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_material>`

Виртуальный метод для переопределения материала поверхности для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_primitive_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_primitive_type**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_primitive_type>`

Виртуальный метод для переопределения типа примитива поверхности, для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_set_material:

.. rst-class:: classref-method

|void| **_surface_set_material**\ (\ index\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) |virtual| |required| :ref:`🔗<class_Mesh_private_method__surface_set_material>`

Виртуальный метод для переопределения настройки ``material`` по указанному ``index`` для пользовательского класса, расширяющего **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_convex_shape:

.. rst-class:: classref-method

:ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` **create_convex_shape**\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Mesh_method_create_convex_shape>`

Рассчитайте :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` из сетки.

Если ``clean`` равен ``true`` (по умолчанию), дублирующиеся и внутренние вершины удаляются автоматически. Вы можете установить его на ``false``, чтобы ускорить процесс, если он не нужен.

Если ``simplify`` равен ``true``, геометрию можно дополнительно упростить, чтобы уменьшить количество вершин. По умолчанию отключено.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_outline:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **create_outline**\ (\ margin\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Mesh_method_create_outline>`

Рассчитайте контурную сетку с определенным смещением (границей) от исходной сетки.

\ **Примечание:** Этот метод обычно возвращает вершины в обратном порядке (например, по часовой стрелке против часовой стрелки).

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Mesh_method_create_placeholder>`

Создает версию-заполнитель этого ресурса (:ref:`PlaceholderMesh<class_PlaceholderMesh>`).

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_trimesh_shape:

.. rst-class:: classref-method

:ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` **create_trimesh_shape**\ (\ ) |const| :ref:`🔗<class_Mesh_method_create_trimesh_shape>`

Рассчитайте :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` из сетки.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_Mesh_method_generate_triangle_mesh>`

Сгенерировать :ref:`TriangleMesh<class_TriangleMesh>` из сетки. Рассматривает только поверхности, использующие один из этих примитивных типов: :ref:`PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>`, :ref:`PRIMITIVE_TRIANGLE_STRIP<class_Mesh_constant_PRIMITIVE_TRIANGLE_STRIP>`.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_aabb>`

Возвращает наименьший :ref:`AABB<class_AABB>`, охватывающий эту сетку в локальном пространстве. Не влияет на ``custom_aabb``.

\ **Примечание:** Это реализовано только для :ref:`ArrayMesh<class_ArrayMesh>` и :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_faces>`

Возвращает все вершины, составляющие грани сетки. Каждые три вершины представляют один треугольник.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_count**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_surface_count>`

Возвращает количество поверхностей, которые содержит **Mesh**. Это эквивалентно :ref:`MeshInstance3D.get_surface_override_material_count()<class_MeshInstance3D_method_get_surface_override_material_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **surface_get_arrays**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_arrays>`

Возвращает массивы вершин, нормалей, UV и т. д., составляющих запрошенную поверхность (см. :ref:`ArrayMesh.add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **surface_get_blend_shape_arrays**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_blend_shape_arrays>`

Возвращает массивы форм смешивания для запрошенной поверхности.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **surface_get_material**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_material>`

Возвращает :ref:`Material<class_Material>` в заданной поверхности. Поверхность визуализируется с использованием этого материала.

\ **Примечание:** Это возвращает материал в ресурсе **Mesh**, а не :ref:`Material<class_Material>`, связанный со свойствами переопределения материала поверхности :ref:`MeshInstance3D<class_MeshInstance3D>`. Чтобы получить :ref:`Material<class_Material>`, связанный со свойствами переопределения материала поверхности :ref:`MeshInstance3D<class_MeshInstance3D>`, используйте вместо этого :ref:`MeshInstance3D.get_surface_override_material()<class_MeshInstance3D_method_get_surface_override_material>`.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_set_material:

.. rst-class:: classref-method

|void| **surface_set_material**\ (\ surf_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_Mesh_method_surface_set_material>`

Устанавливает :ref:`Material<class_Material>` для заданной поверхности. Поверхность будет визуализирована с использованием этого материала.

\ **Примечание:** Это назначает материал в ресурсе **Mesh**, а не :ref:`Material<class_Material>`, связанный со свойствами переопределения материала поверхности :ref:`MeshInstance3D<class_MeshInstance3D>`. Чтобы установить :ref:`Material<class_Material>`, связанный со свойствами переопределения материала поверхности :ref:`MeshInstance3D<class_MeshInstance3D>`, используйте вместо этого :ref:`MeshInstance3D.set_surface_override_material()<class_MeshInstance3D_method_set_surface_override_material>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
