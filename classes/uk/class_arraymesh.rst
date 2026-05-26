:github_url: hide

.. _class_ArrayMesh:

ArrayMesh
=========

**Успадковує:** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Тип :ref:`Mesh<class_Mesh>`, який надає утиліту для побудови поверхні з масивів.

.. rst-class:: classref-introduction-group

Опис
--------

**ArrayMesh** використовується для створення :ref:`Mesh<class_Mesh>` шляхом визначення таких атрибутів, як масиви.

Найпростішим прикладом є створення одного трикутника:


.. tabs::

 .. code-tab:: gdscript

    var vertices = PackedVector3Array()
    vertices.push_back(Vector3(0, 1, 0))
    vertices.push_back(Vector3(1, 0, 0))
    vertices.push_back(Vector3(0, 0, 1))

    # Ініціалізація Масивів Мешу.
    var arr_mesh = ArrayMesh.new()
    var arrays = []
    arrays.resize(Mesh.ARRAY_MAX)
    arrays[Mesh.ARRAY_VERTEX] = vertices

    # Створення Мешу.
    arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
    var m = MeshInstance3D.new()
    m.mesh = arr_mesh

 .. code-tab:: csharp

    var vertices = new Vector3[]
    {
        new Vector3(0, 1, 0),
        new Vector3(1, 0, 0),
        new Vector3(0, 0, 1),
    };

    // Initialize the ArrayMesh.
    var arrMesh = new ArrayMesh();
    var arrays = new Godot.Collections.Array();
    arrays.Resize((int)Mesh.ArrayType.Max);
    arrays[(int)Mesh.ArrayType.Vertex] = vertices;

    // Create the Mesh.
    arrMesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, arrays);
    var m = new MeshInstance3D();
    m.Mesh = arrMesh;



\ :ref:`MeshInstance3D<class_MeshInstance3D>` готовий до додавання до :ref:`SceneTree<class_SceneTree>`.

Дивіться також :ref:`ImmediateMesh<class_ImmediateMesh>`, :ref:`MeshDataTool<class_MeshDataTool>` і :ref:`SurfaceTool<class_SurfaceTool>` для генерації процедурної геометрії.

\ **Примітка:** Godot використовує `порядок намотування <https://learnopengl.com/Advanced-OpenGL/Face-culling>`__ за годинниковою стрілкою для передніх граней примітивів трикутників.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Процедурна геометрія з використанням ArrayMesh <../tutorials/3d/procedural_geometry/arraymesh>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Описи властивостей
------------------------------------

.. _class_ArrayMesh_property_blend_shape_mode:

.. rst-class:: classref-property

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **blend_shape_mode** = ``1`` :ref:`🔗<class_ArrayMesh_property_blend_shape_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_shape_mode**\ (\ value\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ )
- :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **get_blend_shape_mode**\ (\ )

Режим накладання фігур.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_ArrayMesh_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

Замінює :ref:`AABB<class_AABB>` на один, визначений користувачем для використання з вибракуванням усеченої точки. Особливо корисно, щоб уникнути несподіваного відсікання під час використання шейдера для зміщення вершин.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_property_shadow_mesh:

.. rst-class:: classref-property

:ref:`ArrayMesh<class_ArrayMesh>` **shadow_mesh** :ref:`🔗<class_ArrayMesh_property_shadow_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mesh**\ (\ value\: :ref:`ArrayMesh<class_ArrayMesh>`\ )
- :ref:`ArrayMesh<class_ArrayMesh>` **get_shadow_mesh**\ (\ )

Додаткова сітка, яку можна використовувати для візуалізації тіней і попереднього проходу глибини. Можна використовувати для підвищення продуктивності шляхом надання сітки з об’єднаними вершинами та лише даними про положення вершин (без нормалей, UV, кольорів тощо).

\ **Примітка:** ця сітка повинна мати точно такі ж позиції вершин, як і вихідна сітка (включаючи LOD вихідної сіті, якщо вони є). Якщо положення вершин відрізняються, сітка не буде намальована правильно.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ArrayMesh_method_add_blend_shape:

.. rst-class:: classref-method

|void| **add_blend_shape**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ArrayMesh_method_add_blend_shape>`

Додає назву для форми змішування, яку буде додано за допомогою :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`. Має викликатися перед додаванням поверхні.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_add_surface_from_arrays:

.. rst-class:: classref-method

|void| **add_surface_from_arrays**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, flags\: |bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] = 0\ ) :ref:`🔗<class_ArrayMesh_method_add_surface_from_arrays>`

Створює нову поверхню. :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>` стане ``surf_idx`` для цієї нової поверхні.

Поверхні створюються для візуалізації за допомогою ``primitive``, який може бути будь-яким зі значень, визначених у :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`.

Аргумент ``arrays`` — це масив масивів. Кожен з елементів :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>` містить масив із деякими даними сітки для цієї поверхні, як описано відповідним елементом :ref:`ArrayType<enum_Mesh_ArrayType>` або ``null``, якщо він не використовується поверхні. Наприклад, ``arrays[0]`` — це масив вершин. Цей підмасив перших вершин завжди потрібен; інші необов'язкові. Додавання індексного масиву переводить цю поверхню в «індексний режим», де вершина та інші масиви стають джерелами даних, а індексний масив визначає порядок вершин. Усі підмасиви повинні мати таку ж довжину, як і масив вершин (або бути кратним довжині масиву вершин, якщо кілька елементів підмасиву відповідають одній вершині) або бути порожніми, за винятком :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>`, якщо він використовується.

Аргумент ``blend_shapes`` — це масив даних вершин для кожної фігури змішування. Кожен елемент є масивом такої самої структури, що й ``arrays``, але :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`, :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` і :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>` встановлені тоді та лише тоді, коли вони встановлені в ``arrays`` і всі інші записи мають значення ``null``.

Аргумент ``lods`` — це словник із ключами :ref:`float<class_float>` і значеннями :ref:`PackedInt32Array<class_PackedInt32Array>`. Кожен запис у словнику представляє рівень LOD поверхні, де значенням є масив :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` для використання рівня LOD, а ключ приблизно пропорційний відстані, на якій використовується статистика LOD. Тобто збільшення ключа LOD також збільшує відстань, на якій об’єкти повинні бути від камери до використання LOD.

Аргумент ``flags`` є порозрядним АБО, якщо потрібно: одне значення :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` зміщено вліво на ``ARRAY_FORMAT_CUSTOMn_SHIFT`` для кожного користувацького каналу, що використовується, :ref:`Mesh.ARRAY_FLAG_USE_DYNAMIC_UPDATE<class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE>`, :ref:`Mesh.ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` або :ref:`Mesh.ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY<class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY>`.

\ **Примітка:** Під час використання індексів рекомендується використовувати лише точки, лінії чи трикутники.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_clear_blend_shapes:

.. rst-class:: classref-method

|void| **clear_blend_shapes**\ (\ ) :ref:`🔗<class_ArrayMesh_method_clear_blend_shapes>`

Видаляє всі форми змішування з цього **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_clear_surfaces:

.. rst-class:: classref-method

|void| **clear_surfaces**\ (\ ) :ref:`🔗<class_ArrayMesh_method_clear_surfaces>`

Видаляє всі поверхні з цього **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_ArrayMesh_method_get_blend_shape_count>`

Повертає кількість форм змішування, які містить **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_get_blend_shape_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_blend_shape_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_get_blend_shape_name>`

Повертає назву форми змішування за цим індексом.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_lightmap_unwrap:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **lightmap_unwrap**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, texel_size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ArrayMesh_method_lightmap_unwrap>`

Виконує ультрафіолетове розгортання **ArrayMesh**, щоб підготувати сітку до світлового відображення.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_regen_normal_maps:

.. rst-class:: classref-method

|void| **regen_normal_maps**\ (\ ) :ref:`🔗<class_ArrayMesh_method_regen_normal_maps>`

Повторно генерує дотичні для кожної поверхні **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_set_blend_shape_name:

.. rst-class:: classref-method

|void| **set_blend_shape_name**\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ArrayMesh_method_set_blend_shape_name>`

Встановлює назву форми змішування за цим індексом.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_find_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_find_by_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_find_by_name>`

Повертає індекс першої поверхні з такою назвою у цьому **ArrayMesh**. Якщо не знайдено жодної, повертається -1.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_array_index_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_get_array_index_len**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_array_index_len>`

Повертає довжину в індексах масиву індексів у запитуваній поверхні (див. :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_array_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_get_array_len**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_array_len>`

Повертає довжину у вершинах масиву вершин запитуваної поверхні (див. :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_format:

.. rst-class:: classref-method

|bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] **surface_get_format**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_format>`

Повертає маску формату запитуваної поверхні (див. :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **surface_get_name**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_name>`

Отримує назву, призначену цій поверхні.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_primitive_type:

.. rst-class:: classref-method

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **surface_get_primitive_type**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_primitive_type>`

Повертає тип примітиву запитуваної поверхні (див. :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_remove:

.. rst-class:: classref-method

|void| **surface_remove**\ (\ surf_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_remove>`

Видаляє поверхню з заданим індексом із сітки, зміщуючи поверхні з вищим індексом на одиницю вниз.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_set_name:

.. rst-class:: classref-method

|void| **surface_set_name**\ (\ surf_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_set_name>`

Задає назву для заданої поверхні.

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

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
