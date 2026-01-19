:github_url: hide

.. _class_ImporterMesh:

ImporterMesh
============

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Resource<class_Resource>` содержащий геометрию на основе массива вершин во время процесса импорта.

.. rst-class:: classref-introduction-group

Описание
----------------

ImporterMesh — это тип :ref:`Resource<class_Resource>`, аналогичный :ref:`ArrayMesh<class_ArrayMesh>`. Он содержит геометрию на основе массива вершин, разделенную на *поверхности*. Каждая поверхность содержит полностью отдельный массив и материал, используемый для ее рисования. С точки зрения дизайна сетка с несколькими поверхностями предпочтительнее одной поверхности, поскольку объекты, созданные в программном обеспечении для редактирования 3D, обычно содержат несколько материалов.

В отличие от своего аналога во время выполнения, **ImporterMesh** содержит данные сетки до того, как будут выполнены различные шаги импорта, такие как генерация сетки lod и теней. Измените данные поверхности, вызвав :ref:`clear()<class_ImporterMesh_method_clear>`, а затем :ref:`add_surface()<class_ImporterMesh_method_add_surface>` для каждой поверхности.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_blend_shape<class_ImporterMesh_method_add_blend_shape>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_surface<class_ImporterMesh_method_add_surface>`\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, material\: :ref:`Material<class_Material>` = null, name\: :ref:`String<class_String>` = "", flags\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_ImporterMesh_method_clear>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>`         | :ref:`from_mesh<class_ImporterMesh_method_from_mesh>`\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) |static|                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`generate_lods<class_ImporterMesh_method_generate_lods>`\ (\ normal_merge_angle\: :ref:`float<class_float>`, normal_split_angle\: :ref:`float<class_float>`, bone_transform_array\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                                      |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_blend_shape_count<class_ImporterMesh_method_get_blend_shape_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` | :ref:`get_blend_shape_mode<class_ImporterMesh_method_get_blend_shape_mode>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`get_blend_shape_name<class_ImporterMesh_method_get_blend_shape_name>`\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                 | :ref:`get_lightmap_size_hint<class_ImporterMesh_method_get_lightmap_size_hint>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`               | :ref:`get_mesh<class_ImporterMesh_method_get_mesh>`\ (\ base_mesh\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                                                                                                                                                                                                                                                                                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                       | :ref:`get_surface_arrays<class_ImporterMesh_method_get_surface_arrays>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                       | :ref:`get_surface_blend_shape_arrays<class_ImporterMesh_method_get_surface_blend_shape_arrays>`\ (\ surface_idx\: :ref:`int<class_int>`, blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_count<class_ImporterMesh_method_get_surface_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_format<class_ImporterMesh_method_get_surface_format>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_lod_count<class_ImporterMesh_method_get_surface_lod_count>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_surface_lod_indices<class_ImporterMesh_method_get_surface_lod_indices>`\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                      |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`get_surface_lod_size<class_ImporterMesh_method_get_surface_lod_size>`\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                 | :ref:`get_surface_material<class_ImporterMesh_method_get_surface_material>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`get_surface_name<class_ImporterMesh_method_get_surface_name>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`   | :ref:`get_surface_primitive_type<class_ImporterMesh_method_get_surface_primitive_type>`\ (\ surface_idx\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_blend_shape_mode<class_ImporterMesh_method_set_blend_shape_mode>`\ (\ mode\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ )                                                                                                                                                                                                                                                                                  |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_lightmap_size_hint<class_ImporterMesh_method_set_lightmap_size_hint>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_surface_material<class_ImporterMesh_method_set_surface_material>`\ (\ surface_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ )                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_surface_name<class_ImporterMesh_method_set_surface_name>`\ (\ surface_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ImporterMesh_method_add_blend_shape:

.. rst-class:: classref-method

|void| **add_blend_shape**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ImporterMesh_method_add_blend_shape>`

Добавляет имя для формы смешивания, которая будет добавлена с помощью :ref:`add_surface()<class_ImporterMesh_method_add_surface>`. Необходимо вызвать перед добавлением поверхности.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_add_surface:

.. rst-class:: classref-method

|void| **add_surface**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, material\: :ref:`Material<class_Material>` = null, name\: :ref:`String<class_String>` = "", flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ImporterMesh_method_add_surface>`

Создает новую поверхность. :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>` станет ``surf_idx`` для этой новой поверхности.

Поверхности создаются для визуализации с использованием ``primitive``, который может быть любым из значений, определенных в :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`.

Аргумент ``arrays`` — это массив массивов. Каждый из элементов :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>` содержит массив с некоторыми данными сетки для этой поверхности, как описано соответствующим членом :ref:`ArrayType<enum_Mesh_ArrayType>` или ``null``, если он не используется поверхностью. Например, ``arrays[0]`` — это массив вершин. Этот первый подмассив вершин всегда обязателен; остальные необязательны. Добавление индексного массива переводит эту поверхность в «индексный режим», где вершины и другие массивы становятся источниками данных, а индексный массив определяет порядок вершин. Все подмассивы должны иметь ту же длину, что и массив вершин (или быть кратными длине массива вершин, когда несколько элементов подмассива соответствуют одной вершине) или быть пустыми, за исключением :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>`, если он используется.

Аргумент ``blend_shapes`` — это массив данных вершин для каждой формы смешивания. Каждый элемент — это массив той же структуры, что и ``arrays``, но :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`, :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` и :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>` устанавливаются тогда и только тогда, когда они установлены в ``arrays``, а все остальные записи — ``null``.

Аргумент ``lods`` — это словарь с ключами :ref:`float<class_float>` и значениями :ref:`PackedInt32Array<class_PackedInt32Array>`. Каждая запись в словаре представляет уровень детализации поверхности, где значение — это массив :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>`, используемый для уровня детализации, а ключ примерно пропорционален расстоянию, на котором используются характеристики детализации. То есть, увеличение ключа детализации также увеличивает расстояние, на котором объекты должны находиться от камеры, прежде чем будет использован детализация.

Аргумент ``flags`` представляет собой побитовое ИЛИ, при необходимости: одного значения :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`, сдвинутого влево на ``ARRAY_FORMAT_CUSTOMn_SHIFT`` для каждого используемого пользовательского канала, :ref:`Mesh.ARRAY_FLAG_USE_DYNAMIC_UPDATE<class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE>`, :ref:`Mesh.ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` или :ref:`Mesh.ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY<class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY>`.

\ **Примечание:** При использовании индексов рекомендуется использовать только точки, линии или треугольники.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_ImporterMesh_method_clear>`

Удаляет все поверхности и формы смешивания из этого **ImporterMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_from_mesh:

.. rst-class:: classref-method

:ref:`ImporterMesh<class_ImporterMesh>` **from_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) |static| :ref:`🔗<class_ImporterMesh_method_from_mesh>`

Преобразует заданный :ref:`Mesh<class_Mesh>` в **ImporterMesh**, копируя все её поверхности, формы смешивания, материалы и метаданные в новый объект **ImporterMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_generate_lods:

.. rst-class:: classref-method

|void| **generate_lods**\ (\ normal_merge_angle\: :ref:`float<class_float>`, normal_split_angle\: :ref:`float<class_float>`, bone_transform_array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_ImporterMesh_method_generate_lods>`

Генерирует все уровни детализации для этого ImporterMesh.

\ ``normal_merge_angle`` указывается в градусах и используется так же, как настройки импортера в ``lods``.

\ ``normal_split_angle`` не используется и остается только для совместимости со старыми версиями API.

К количеству сгенерированных уровней детализации можно получить доступ с помощью :ref:`get_surface_lod_count()<class_ImporterMesh_method_get_surface_lod_count>`, а каждый уровень детализации доступен в :ref:`get_surface_lod_size()<class_ImporterMesh_method_get_surface_lod_size>` и :ref:`get_surface_lod_indices()<class_ImporterMesh_method_get_surface_lod_indices>`.

\ ``bone_transform_array`` — это :ref:`Array<class_Array>`, который может быть как пустым, так и содержать :ref:`Transform3D<class_Transform3D>`, которые для каждого идентификатора костей сетки будут применять скиннинг сетки при генерации вариаций сетки LOD. Обычно это используется для учета расхождений в масштабе между самой сеткой и ее данными скиннинга.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_count>`

Возвращает количество форм смешивания, которые содержит сетка.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_mode:

.. rst-class:: classref-method

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **get_blend_shape_mode**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_mode>`

Возвращает режим смешивания форм для данной сетки.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_blend_shape_name**\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_name>`

Возвращает имя формы смешивания по данному индексу.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_lightmap_size_hint:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_lightmap_size_hint**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_lightmap_size_hint>`

Возвращает подсказку о размере этой сетки для развертки карты освещения в UV-пространстве.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **get_mesh**\ (\ base_mesh\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_ImporterMesh_method_get_mesh>`

Возвращает данные сетки, представленные этим **ImporterMesh**, как пригодный для использования :ref:`ArrayMesh<class_ArrayMesh>`.

Этот метод кэширует возвращенную сетку, и последующие вызовы будут возвращать кэшированные данные до тех пор, пока не будет вызван :ref:`clear()<class_ImporterMesh_method_clear>`.

Если еще не кэшированы и предоставлен ``base_mesh``, ``base_mesh`` будет использоваться и мутироваться.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_surface_arrays**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_arrays>`

Возвращает :ref:`Texture2D<class_Texture2D>` заданного кадра.Возвращает массивы вершин, нормалей, UV и т. д., которые составляют запрошенную поверхность. См. :ref:`add_surface()<class_ImporterMesh_method_add_surface>`.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_surface_blend_shape_arrays**\ (\ surface_idx\: :ref:`int<class_int>`, blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_blend_shape_arrays>`

Возвращает один набор массивов форм смешивания для запрошенного индекса формы смешивания для поверхности.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_count**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_count>`

Возвращает количество поверхностей, которые содержит сетка.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_format**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_format>`

Возвращает формат поверхности, которую содержит сетка.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_lod_count**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_count>`

Возвращает количество уровней детализации (LOD), которые сетка содержит на заданной поверхности.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_surface_lod_indices**\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_indices>`

Возвращает индекс буфера уровня детализации (LOD) данных для поверхности.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_surface_lod_size**\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_size>`

Возвращает соотношение сторон экрана, которое активирует уровень детализации для поверхности.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_surface_material**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_material>`

Возвращает :ref:`Material<class_Material>` в заданной поверхности. Поверхность визуализируется с использованием этого материала.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_surface_name**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_name>`

Получает имя, назначенное этой поверхности.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_primitive_type:

.. rst-class:: classref-method

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **get_surface_primitive_type**\ (\ surface_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ImporterMesh_method_get_surface_primitive_type>`

Возвращает тип примитива запрошенной поверхности (см. :ref:`add_surface()<class_ImporterMesh_method_add_surface>`).

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_blend_shape_mode:

.. rst-class:: classref-method

|void| **set_blend_shape_mode**\ (\ mode\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ ) :ref:`🔗<class_ImporterMesh_method_set_blend_shape_mode>`

Устанавливает режим смешивания форм.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_lightmap_size_hint:

.. rst-class:: classref-method

|void| **set_lightmap_size_hint**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImporterMesh_method_set_lightmap_size_hint>`

Задает подсказку по размеру этой сетки для развертки карты освещения в UV-пространстве.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_surface_material:

.. rst-class:: classref-method

|void| **set_surface_material**\ (\ surface_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_ImporterMesh_method_set_surface_material>`

Устанавливает :ref:`Material<class_Material>` для заданной поверхности. Поверхность будет визуализироваться с использованием этого материала.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_surface_name:

.. rst-class:: classref-method

|void| **set_surface_name**\ (\ surface_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ImporterMesh_method_set_surface_name>`

Задает имя для данной поверхности.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
