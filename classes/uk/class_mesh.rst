:github_url: hide

.. _class_Mesh:

Mesh
====

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`ArrayMesh<class_ArrayMesh>`, :ref:`ImmediateMesh<class_ImmediateMesh>`, :ref:`PlaceholderMesh<class_PlaceholderMesh>`, :ref:`PrimitiveMesh<class_PrimitiveMesh>`

:ref:`Resource<class_Resource>`, що містить геометрію на основі вертексу.

.. rst-class:: classref-introduction-group

Опис
--------

Сітка — це тип :ref:`Resource<class_Resource>`, який містить геометрію на основі масиву вершин, розділену на *поверхні*. Кожна поверхня містить повністю окремий масив і матеріал, який використовується для її малювання. Що стосується дизайну, сітка з кількома поверхнями є кращою, ніж одна поверхня, оскільки об’єкти, створені в програмному забезпеченні для редагування 3D, зазвичай містять кілька матеріалів. Максимальна кількість поверхонь на сітку становить :ref:`RenderingServer.MAX_MESH_SURFACES<class_RenderingServer_constant_MAX_MESH_SURFACES>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `3D Матеріал Тестери Демо <https://godotengine.org/asset-library/asset/2742>`__

- `Демонстрація тривимірного кінематичного персонажа <https://godotengine.org/asset-library/asset/2739>`__

- `Демонстрація 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`lightmap_size_hint<class_Mesh_property_lightmap_size_hint>` | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Методи
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

Переліки
----------------

.. _enum_Mesh_PrimitiveType:

.. rst-class:: classref-enumeration

enum **PrimitiveType**: :ref:`🔗<enum_Mesh_PrimitiveType>`

.. _class_Mesh_constant_PRIMITIVE_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_POINTS** = ``0``

Рендерний масив як точки (одна вершина дорівнює одній точці).

.. _class_Mesh_constant_PRIMITIVE_LINES:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_LINES** = ``1``

Рендерний масив як лінії (все два вершини створюється лінія).

.. _class_Mesh_constant_PRIMITIVE_LINE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_LINE_STRIP** = ``2``

Рендерний масив як смуга лінії.

.. _class_Mesh_constant_PRIMITIVE_TRIANGLES:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_TRIANGLES** = ``3``

Рендерний масив як трикутники (все три вершини створюється трикутник).

.. _class_Mesh_constant_PRIMITIVE_TRIANGLE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_TRIANGLE_STRIP** = ``4``

Рендерний масив як трикутник смуги.

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayType:

.. rst-class:: classref-enumeration

enum **ArrayType**: :ref:`🔗<enum_Mesh_ArrayType>`

.. _class_Mesh_constant_ARRAY_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_VERTEX** = ``0``

:ref:`PackedVector3Array<class_PackedVector3Array>`, :ref:`PackedVector2Array<class_PackedVector2Array>`, або :ref:`Array<class_Array>` позицій вершини.

.. _class_Mesh_constant_ARRAY_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_NORMAL** = ``1``

:ref:`PackedVector3Array<class_PackedVector3Array>` нормалів вершини.

\ **Примітка:** масив повинен складатися з нормальних векторів, інакше вони будуть нормалізовані двигуном, потенційно викликаючи візуальні недоліки.

.. _class_Mesh_constant_ARRAY_TANGENT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TANGENT** = ``2``

:ref:`PackedFloat32Array<class_PackedFloat32Array>` з тангенсів вершини. Кожен елемент у групах 4 плавок, перші 3 плавань визначають тангенс, а останній двонормальний напрямок -1 або 1.

.. _class_Mesh_constant_ARRAY_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_COLOR** = ``3``

:ref:`PackedColorArray<class_PackedColorArray>` квітів вершини.

.. _class_Mesh_constant_ARRAY_TEX_UV:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TEX_UV** = ``4``

:ref:`PackedVector2Array<class_PackedVector2Array>` для УФ-координат.

.. _class_Mesh_constant_ARRAY_TEX_UV2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TEX_UV2** = ``5``

:ref:`PackedVector2Array<class_PackedVector2Array>` для координат другого УФ.

.. _class_Mesh_constant_ARRAY_CUSTOM0:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM0** = ``6``

Містить користувальницький кольоровий канал `` (формат >> Mesh.ARRAY_FORMAT_CUSTOM0_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>`, або :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

.. _class_Mesh_constant_ARRAY_CUSTOM1:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM1** = ``7``

Містить користувальницький кольоровий канал 1. :ref:`PackedByteArray<class_PackedByteArray>` якщо `` (формат >> Mesh.ARRAY_FORMAT_CUSTOM1_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>`, або :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

.. _class_Mesh_constant_ARRAY_CUSTOM2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM2** = ``8``

Містить користувальницький кольоровий канал 2. :ref:`PackedByteArray<class_PackedByteArray>` якщо `` (формат >> Mesh.ARRAY_FORMAT_CUSTOM2_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>`, або :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

.. _class_Mesh_constant_ARRAY_CUSTOM3:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM3** = ``9``

Містить користувальницький кольоровий канал 3. :ref:`PackedByteArray<class_PackedByteArray>` якщо `` (формат >> Mesh.ARRAY_FORMAT_CUSTOM3_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>`, або :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

.. _class_Mesh_constant_ARRAY_BONES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_BONES** = ``10``

:ref:`PackedFloat32Array<class_PackedFloat32Array>` або :ref:`PackedInt32Array<class_PackedInt32Array>` кісткових індексів. Містить 4 або 8 номерів на вершину в залежності від наявності :ref:`ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` прапор.

.. _class_Mesh_constant_ARRAY_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_WEIGHTS** = ``11``

:ref:`PackedFloat32Array<class_PackedFloat32Array>` або :ref:`PackedFloat64Array<class_PackedFloat64Array>` кісткової маси в діапазоні ``0.0`` to ``1.0`` (включаючи). Містить 4 або 8 номерів на вершину в залежності від наявності :ref:`ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` прапор.

.. _class_Mesh_constant_ARRAY_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_INDEX** = ``12``

:ref:`PackedInt32Array<class_PackedInt32Array>` цілих чисел, використовуваних як індекси, що посилаються вершини, кольори, нормали, тангенси і текстури. Всі ці масиви повинні мати однакову кількість елементів, як verex масив. Немає індексу може бути поза розмірами вершини. Коли цей індексний масив присутній, він кладе функцію в режим "індекс", де індекс вибирає *i*'th vertex, нормальний, тангенс, колір, УФ і т.д. Це означає, якщо ви хочете мати різні нормали або кольори по краю, ви повинні дублювати вершини.

Для трикутників індексний масив інтерпретується як потрійки, посилаючись на вершини кожного трикутника. Для ліній, індексний масив в парах, що вказують на початок і кінець кожної лінії.

.. _class_Mesh_constant_ARRAY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_MAX** = ``13``

Представляємо розмір :ref:`ArrayType<enum_Mesh_ArrayType>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayCustomFormat:

.. rst-class:: classref-enumeration

enum **ArrayCustomFormat**: :ref:`🔗<enum_Mesh_ArrayCustomFormat>`

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA8_UNORM** = ``0``

Призначає цей користувальницький канал містить невизначені нормалізовані кольори байтів від 0 до 1, закодовані як :ref:`PackedByteArray<class_PackedByteArray>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA8_SNORM** = ``1``

Призначає цей користувальницький канал, який містить укладено нормалізований колір байтів від -1 до 1, зашифрований як :ref:`PackedByteArray<class_PackedByteArray>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_RG_HALF:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RG_HALF** = ``2``

Призначає цей користувальницький канал містить половину прецизійних плавальних кольорів, закодованих як :ref:`PackedByteArray<class_PackedByteArray>`. Використовуються тільки червоні і зелені канали.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA_HALF** = ``3``

Призначає цей користувальницький канал містить половину прецизійних плавальних кольорів, закодованих як :ref:`PackedByteArray<class_PackedByteArray>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_R_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_R_FLOAT** = ``4``

Цей користувальницький канал містить повно плаваючі кольори, в :ref:`PackedFloat32Array<class_PackedFloat32Array>`. Тільки використовується червоний канал.

.. _class_Mesh_constant_ARRAY_CUSTOM_RG_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RG_FLOAT** = ``5``

Цей користувальницький канал містить повно плаваючі кольори, в :ref:`PackedFloat32Array<class_PackedFloat32Array>`. Використовуються тільки червоні і зелені канали.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGB_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGB_FLOAT** = ``6``

Цей користувальницький канал містить повно плаваючі кольори, в :ref:`PackedFloat32Array<class_PackedFloat32Array>`. Використовуються тільки червоні, зелені і сині канали.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA_FLOAT** = ``7``

Цей користувальницький канал містить повно плаваючі кольори, в :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_MAX** = ``8``

Представляємо розмір :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayFormat:

.. rst-class:: classref-enumeration

flags **ArrayFormat**: :ref:`🔗<enum_Mesh_ArrayFormat>`

.. _class_Mesh_constant_ARRAY_FORMAT_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_VERTEX** = ``1``

Сітчастий масив містить вершини. Всі сітки вимагають хребта, тому це завжди повинно бути присутнім.

.. _class_Mesh_constant_ARRAY_FORMAT_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_NORMAL** = ``2``

Сітчастий масив містить нормалі.

.. _class_Mesh_constant_ARRAY_FORMAT_TANGENT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TANGENT** = ``4``

Сітчастий масив містить тангенси.

.. _class_Mesh_constant_ARRAY_FORMAT_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_COLOR** = ``8``

Сітчастий масив містить кольори.

.. _class_Mesh_constant_ARRAY_FORMAT_TEX_UV:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TEX_UV** = ``16``

Сітчастий масив містить УФ.

.. _class_Mesh_constant_ARRAY_FORMAT_TEX_UV2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TEX_UV2** = ``32``

Сітка масиву містить другий УФ.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM0:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM0** = ``64``

Сітка масиву містить індекс користувацького каналу 0 р.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM1:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM1** = ``128``

Сітка масиву містить індекс користувацького каналу 1.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM2** = ``256``

Сітка масиву містить індекс користувацького каналу 2.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM3:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM3** = ``512``

Сітка масиву містить індекс користувацького каналу 3.

.. _class_Mesh_constant_ARRAY_FORMAT_BONES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_BONES** = ``1024``

Сітчастий масив містить кістки.

.. _class_Mesh_constant_ARRAY_FORMAT_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_WEIGHTS** = ``2048``

Сітчастий масив містить кісткові маси.

.. _class_Mesh_constant_ARRAY_FORMAT_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_INDEX** = ``4096``

Сітчастий масив використовує індекси.

.. _class_Mesh_constant_ARRAY_FORMAT_BLEND_SHAPE_MASK:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_BLEND_SHAPE_MASK** = ``7``

Маска сітчастих каналів дозволяється в формі блендера.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_BASE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_BASE** = ``13``

Шифт першого користувацького каналу.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_BITS** = ``3``

Кількість форматних біт на користувальницький канал. :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM0_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM0_SHIFT** = ``13``

Сума для перемикання :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` для індексу каналів 0.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM1_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM1_SHIFT** = ``16``

Сума для перемикання :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` для індексу каналів 1.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM2_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM2_SHIFT** = ``19``

Сума для перемикання :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` для індексу каналів 2.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM3_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM3_SHIFT** = ``22``

Сума для перемикання :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` для індексу каналів 3.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_MASK:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_MASK** = ``7``

Маска користувальницьких форматів біт на користувацькому каналі. Необхідно перенести один з констанцій SHIFT. :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`.

.. _class_Mesh_constant_ARRAY_COMPRESS_FLAGS_BASE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_COMPRESS_FLAGS_BASE** = ``25``

Шифт першого компресорного прапора. Стискачі повинні бути передані в :ref:`ArrayMesh.add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>` і :ref:`SurfaceTool.commit()<class_SurfaceTool_method_commit>`.

.. _class_Mesh_constant_ARRAY_FLAG_USE_2D_VERTICES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_2D_VERTICES** = ``33554432``

Прапор використовується для позначення, що масив містить 2D вершини.

.. _class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_DYNAMIC_UPDATE** = ``67108864``

Прапорець, що використовується для позначення того, що дані сітки використовуватимуть ``GL_DYNAMIC_DRAW`` на GLES. Не використовується на Vulkan.

.. _class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_8_BONE_WEIGHTS** = ``134217728``

Прапор використовується для позначення, що сітка містить до 8 кісткових впливів на вершину. Цей прапор вказує, що :ref:`ARRAY_BONES<class_Mesh_constant_ARRAY_BONES>` і :ref:`ARRAY_WEIGHTS<class_Mesh_constant_ARRAY_WEIGHTS>` елементи будуть мати подвійну довжину.

.. _class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY** = ``268435456``

Прапор використовується для позначення того, що сітка навмисно не містить хребта.

.. _class_Mesh_constant_ARRAY_FLAG_COMPRESS_ATTRIBUTES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_COMPRESS_ATTRIBUTES** = ``536870912``

Прапор використовується для позначення, що сітка використовує стиснені атрибути (перетворювачі, норми, тангенси, УФ). Коли ця форма стиснення ввімкнена, позиції вершини будуть упаковані в атрибут RGBA16UNORM і масштабовані в шейдері вершини. Нормальний і tangent буде упаковано в RG16UNORM, що представляє вісь, і 16-бітний плавлення, що зберігається в A-каналі вершини. УФС використовуватимуть 16-бітні нормалізовані плавки замість повної 32-бітової підписаної плавки. При використанні цього режиму стиснення ви повинні використовувати або вершини, нормали, тангенси або тільки вершини. Ви не можете використовувати нормалі без тангенсів. Імпортери автоматично ввімкнуть цю компресію, якщо вони можуть.

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

Норматизовані форми суміша.

.. _class_Mesh_constant_BLEND_SHAPE_MODE_RELATIVE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **BLEND_SHAPE_MODE_RELATIVE** = ``1``

Блендерні форми відносно базової ваги.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Mesh_property_lightmap_size_hint:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **lightmap_size_hint** = ``Vector2i(0, 0)`` :ref:`🔗<class_Mesh_property_lightmap_size_hint>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_size_hint**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_lightmap_size_hint**\ (\ )

Налаштовується підказка, яка використовується для роздільної здатності Lightmap.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Mesh_private_method__get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **_get_aabb**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_aabb>`

Віртуальний спосіб перевизначення :ref:`AABB<class_AABB>` для розширення користувацького класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_blend_shape_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_blend_shape_count>`

Віртуальний спосіб перевизначення кількості форм суміша для розширення індивідуального класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_blend_shape_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_blend_shape_name**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_blend_shape_name>`

Віртуальний спосіб перевизначення назв форм сумішшю для розширення індивідуального класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_surface_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_surface_count>`

Віртуальний спосіб перевизначити кількість поверхні для розширення користувацького класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__set_blend_shape_name:

.. rst-class:: classref-method

|void| **_set_blend_shape_name**\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| :ref:`🔗<class_Mesh_private_method__set_blend_shape_name>`

Віртуальний спосіб перевизначити імена форм суміша для розширення індивідуального класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_array_index_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_array_index_len**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_array_index_len>`

Віртуальний спосіб перевизначення довжини індексу поверхні для розширення користувацького класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_array_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_array_len**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_array_len>`

Віртуальний спосіб перевизначення довжини масиву поверхні для розширення користувацького класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_surface_get_arrays**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_arrays>`

Віртуальний спосіб перевизначення поверхневих масивів для розширення користувацького класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **_surface_get_blend_shape_arrays**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_blend_shape_arrays>`

Віртуальний метод для перевизначення масивів форми блендера для розширення індивідуального класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_format**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_format>`

Віртуальний спосіб перевизначити формат поверхні для розширення користувацького класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_lods:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_surface_get_lods**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_lods>`

Віртуальний спосіб перевизначення поверхні LODs для розширення користувацького класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **_surface_get_material**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_material>`

Віртуальний спосіб перевизначення поверхневого матеріалу для розширення користувацького класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_primitive_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_primitive_type**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_primitive_type>`

Віртуальний спосіб перевизначення поверхневого примітивного типу для розширення індивідуального класу **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_set_material:

.. rst-class:: classref-method

|void| **_surface_set_material**\ (\ index\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) |virtual| |required| :ref:`🔗<class_Mesh_private_method__surface_set_material>`

Віртуальний метод для перевизначення значення ``material`` за заданим ``index`` для користувацького класу, що розширює **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_convex_shape:

.. rst-class:: classref-method

:ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` **create_convex_shape**\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Mesh_method_create_convex_shape>`

Розрахунок :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` з сітки.

Якщо ``clear`` є ``true`` (default), дублікати та інтер'єрні вершини видаляються автоматично. Ви можете налаштувати його на ``false``, щоб зробити процес швидше, якщо не потрібно.

Якщо ``спрощує`` ``true``, геометрія може бути додатково спрощена для зменшення кількості вершин. Вимкнено за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_outline:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **create_outline**\ (\ margin\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Mesh_method_create_outline>`

Розрахунок окресленої сітки при визначеному офсеті (маргіні) з оригінальної сітки.

\ **Примітка:** Цей метод, як правило, повертає вершини в зворотному порядку (наприклад, годинниковою стрілкою, щоб проти годинникової стрілки).

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Mesh_method_create_placeholder>`

Створює резиденцію вкладника цього ресурсу (:ref:`PlaceholderMesh<class_PlaceholderMesh>`).

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_trimesh_shape:

.. rst-class:: classref-method

:ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` **create_trimesh_shape**\ (\ ) |const| :ref:`🔗<class_Mesh_method_create_trimesh_shape>`

Розрахунок :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` з сітки.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_Mesh_method_generate_triangle_mesh>`

Генерувати :ref:`TriangleMesh<class_TriangleMesh>` з сітки. Розглядаються тільки поверхні за допомогою одного з цих примітивних типів: :ref:`PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>`, :ref:`PRIMITIVE_TRIANGLE_STRIANGLE_STRIP<class_Mesh_constant_PRIMITIVE_TRIANGLE_STRIANGLE_STRIP>`.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_aabb>`

Повертає найменшу :ref:`AABB<class_AABB>` закриваючи цю сітку в локальному просторі. Не впливає ``custom_aabb``.

\ **Примітка:** Для :ref:`ArrayMesh<class_ArrayMesh>` та :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_faces>`

Повертає всі вершини, які складають обличчя сітки. Кожен три вершини представляють один трикутник.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_count**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_surface_count>`

Повертаємо кількість поверхонь, які тримається **Mesh**. :ref:`MeshInstance3D.get_surface_override_material_count()<class_MeshInstance3D_method_get_surface_override_material_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **surface_get_arrays**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_arrays>`

Повертає масиви для вершин, нормалей, УФів і т.д., що складають затребувану поверхню (див. :ref:`ArrayMesh.add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **surface_get_blend_shape_arrays**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_blend_shape_arrays>`

Повертає масиви форми блендера на задану поверхню.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **surface_get_material**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_material>`

Повертаємо :ref:`Material<class_Material>` в даній поверхні. Поверхня подається за допомогою цього матеріалу.

\ **Примітка:** Це повертає матеріал в межах **Mesh** ресурсу, а не :ref:`Material<class_Material>`, пов'язаний з :ref:`MeshInstance3D<class_MeshInstance3D>` поверхневим матеріалом Override властивості. Щоб отримати :ref:`Material<class_Material>`, пов'язаний з :ref:`MeshInstance3D<class_MeshInstance3D>`'s Surface Material Override властивості, скористайтеся :ref:`MeshInstance3D.get_surface_override_material()<class_MeshInstance3D_method_get_surface_override_material>`.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_set_material:

.. rst-class:: classref-method

|void| **surface_set_material**\ (\ surf_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_Mesh_method_surface_set_material>`

Настроювання :ref:`Material<class_Material>` для даної поверхні. Поверхня буде надано за допомогою цього матеріалу.

\ **Примітка:** Це відзначає матеріал в межах **Mesh** ресурсу, а не :ref:`Material<class_Material>`, пов'язаний з :ref:`MeshInstance3D<class_MeshInstance3D>` поверхневими властивостями. Щоб встановити :ref:`Material<class_Material>`, пов'язаний з :ref:`MeshInstance3D<class_MeshInstance3D>`'s Surface Material Override властивості, скористайтеся :ref:`MeshInstance3D.set_surface_override_material()<class_MeshInstance3D_method_set_surface_override_material>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
